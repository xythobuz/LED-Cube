/*
 * HelperUtility.java
 *
 * Copyright 2011 Thomas Buck <xythobuz@me.com>
 * Copyright 2011 Max Nuding <max.nuding@gmail.com>
 * Copyright 2011 Felix Bäder <baeder.felix@gmail.com>
 *
 * This file is part of LED-Cube.
 *
 * LED-Cube is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * LED-Cube is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with LED-Cube.  If not, see <http://www.gnu.org/licenses/>.
 */

import java.io.File;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.BufferedReader;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.security.CodeSource;
import java.security.ProtectionDomain;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import java.lang.Process;

/**
 * This helper class extracts the serialHelper from the JAR file, makes it executable and executes it with the given Command line arguments.
 * @author Thomas Buck
 * @author Max Nuding
 * @author Felix Bäder
 * @version 1.0
 */

public class HelperUtility {

	/**
	 * Run the serialHelper with the given arguments
	 * @param args Command line arguments for serialHelper
	 * @return Output of helper
	 */
	public static String runHelper(String[] args) {
		String[] helperName = new String[args.length + 1];
		boolean windows = false;
		if ((System.getProperty("os.name").toLowerCase()).indexOf("win") >= 0) {
			helperName[0] = "serialHelper.exe";
			windows = true;
		} else {
			helperName[0] = "serialHelper";
		}
		for (int i = 0; i < args.length; i++) {
			helperName[i + 1] = args[i];
		}
		String ret = "";
		try {
			File helper = new File(getFile(getJarURI(), helperName[0]));
			helperName[0] = helper.getAbsolutePath();
			if (!windows) {
				Process execute = Runtime.getRuntime().exec("chmod a+x " + helper.getAbsolutePath());
				execute.waitFor();
				if (execute.exitValue() != 0) {
					System.out.println("Could not set helper as executeable (" + execute.exitValue()+ ")");
					return null;
				}
			}
			Process p = Runtime.getRuntime().exec(helperName);
			BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
			String line;
			boolean fin = false;
			
			do { // Wait for process to finish... Doesn't work...?
				fin = false;
				try {
					p.waitFor();
				} catch (Exception e) {
					fin = true;
				}

				// Read output in same loop... Should work...!
				line = br.readLine();
				if (line != null) {
					ret = ret + line + "\n";
					fin = true;
				}
			} while (fin);

			br.close();
			if (ret.length() == 0) {
				ret = "g"; // We have added a last \n... We will remove it, so add garbage to be removed...
			}
			ret = ret.substring(0, ret.length() - 1);
			return ret;
		} catch(Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	// From http://stackoverflow.com/questions/600146/run-exe-which-is-packaged-inside-jar
	private static URI getJarURI()
        throws URISyntaxException
    {
        final ProtectionDomain domain;
        final CodeSource       source;
        final URL              url;
        final URI              uri;

        domain = cubeWorker.class.getProtectionDomain();
        source = domain.getCodeSource();
        url    = source.getLocation();
        uri    = url.toURI();

        return (uri);
    }

    private static URI getFile(final URI    where,
                               final String fileName)
        throws ZipException,
               IOException
    {
        final File location;
        final URI  fileURI;

        location = new File(where);

        // not in a JAR, just return the path on disk
        if(location.isDirectory())
        {
            fileURI = URI.create(where.toString() + fileName);
        }
        else
        {
            final ZipFile zipFile;

            zipFile = new ZipFile(location);

            try
            {
                fileURI = extract(zipFile, fileName);
            }
            finally
            {
                zipFile.close();
            }
        }

        return (fileURI);
    }

    private static URI extract(final ZipFile zipFile,
                               final String  fileName)
        throws IOException
    {
        final File         tempFile;
        final ZipEntry     entry;
        final InputStream  zipStream;
        OutputStream       fileStream;

        tempFile = File.createTempFile(fileName, Long.toString(System.currentTimeMillis()));
        tempFile.deleteOnExit();
        entry    = zipFile.getEntry(fileName);

        if(entry == null)
        {
            throw new FileNotFoundException("cannot find file: " + fileName + " in archive: " + zipFile.getName());
        }

        zipStream  = zipFile.getInputStream(entry);
        fileStream = null;

        try
        {
            final byte[] buf;
            int          i;

            fileStream = new FileOutputStream(tempFile);
            buf        = new byte[1024];
            i          = 0;

            while((i = zipStream.read(buf)) != -1)
            {
                fileStream.write(buf, 0, i);
            }
        }
        finally
        {
            close(zipStream);
            close(fileStream);
        }

        return (tempFile.toURI());
    }

    private static void close(final Closeable stream)
    {
        if(stream != null)
        {
            try
            {
                stream.close();
            }
            catch(final IOException ex)
            {
                ex.printStackTrace();
            }
        }
    }
}
