package pl.droidsonroids.gif;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes4.dex */
class ReLinker {
    private static final int COPY_BUFFER_SIZE = 8192;
    private static final String LIB_DIR = "lib";
    private static final String MAPPED_BASE_LIB_NAME = System.mapLibraryName("pl_droidsonroids_gif");
    private static final int MAX_TRIES = 5;

    private ReLinker() {
    }

    @SuppressLint({"UnsafeDynamicallyLoadedCode"})
    static void loadLibrary(Context context) {
        synchronized (ReLinker.class) {
            System.load(unpackLibrary(context).getAbsolutePath());
        }
    }

    private static File unpackLibrary(Context context) throws Throwable {
        ZipFile zipFileOpenZipFile;
        Throwable th;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        String str = MAPPED_BASE_LIB_NAME + "1.2.15";
        int i = 0;
        File file = new File(context.getDir(LIB_DIR, 0), str);
        if (file.isFile()) {
            return file;
        }
        File file2 = new File(context.getCacheDir(), str);
        if (file2.isFile()) {
            return file2;
        }
        final String strMapLibraryName = System.mapLibraryName("pl_droidsonroids_gif_surface");
        FilenameFilter filenameFilter = new FilenameFilter() { // from class: pl.droidsonroids.gif.ReLinker.1
            @Override // java.io.FilenameFilter
            public boolean accept(File file3, String str2) {
                return str2.startsWith(ReLinker.MAPPED_BASE_LIB_NAME) || str2.startsWith(strMapLibraryName);
            }
        };
        clearOldLibraryFiles(file, filenameFilter);
        clearOldLibraryFiles(file2, filenameFilter);
        File file3 = new File(context.getApplicationInfo().sourceDir);
        FileOutputStream fileOutputStream2 = null;
        try {
            zipFileOpenZipFile = openZipFile(file3);
            while (true) {
                int i2 = i + 1;
                if (i >= 5) {
                    break;
                }
                try {
                    ZipEntry zipEntryFindLibraryEntry = findLibraryEntry(zipFileOpenZipFile);
                    if (zipEntryFindLibraryEntry == null) {
                        throw new IllegalStateException("Library " + MAPPED_BASE_LIB_NAME + " for supported ABIs not found in APK file");
                    }
                    try {
                        inputStream = zipFileOpenZipFile.getInputStream(zipEntryFindLibraryEntry);
                        try {
                            fileOutputStream = new FileOutputStream(file);
                            try {
                                copy(inputStream, fileOutputStream);
                                closeSilently(inputStream);
                                closeSilently(fileOutputStream);
                                setFilePermissions(file);
                                break;
                            } catch (IOException unused) {
                                if (i2 > 2) {
                                    file = file2;
                                }
                                closeSilently(inputStream);
                                closeSilently(fileOutputStream);
                                i = i2;
                            } catch (Throwable th2) {
                                th = th2;
                                fileOutputStream2 = fileOutputStream;
                                closeSilently(inputStream);
                                closeSilently(fileOutputStream2);
                                throw th;
                            }
                        } catch (IOException unused2) {
                            fileOutputStream = null;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } catch (IOException unused3) {
                        inputStream = null;
                        fileOutputStream = null;
                    } catch (Throwable th4) {
                        th = th4;
                        inputStream = null;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    if (zipFileOpenZipFile != null) {
                        try {
                            zipFileOpenZipFile.close();
                        } catch (IOException unused4) {
                        }
                    }
                    throw th;
                }
                closeSilently(inputStream);
                closeSilently(fileOutputStream);
                i = i2;
            }
            if (zipFileOpenZipFile != null) {
                try {
                    zipFileOpenZipFile.close();
                } catch (IOException unused5) {
                }
            }
            return file;
        } catch (Throwable th6) {
            zipFileOpenZipFile = null;
            th = th6;
        }
    }

    private static ZipEntry findLibraryEntry(ZipFile zipFile) {
        for (String str : getSupportedABIs()) {
            ZipEntry entry = getEntry(zipFile, str);
            if (entry != null) {
                return entry;
            }
        }
        return null;
    }

    private static String[] getSupportedABIs() {
        return Build.VERSION.SDK_INT >= 21 ? Build.SUPPORTED_ABIS : new String[]{Build.CPU_ABI, Build.CPU_ABI2};
    }

    private static ZipEntry getEntry(ZipFile zipFile, String str) {
        return zipFile.getEntry("lib/" + str + "/" + MAPPED_BASE_LIB_NAME);
    }

    private static ZipFile openZipFile(File file) {
        ZipFile zipFile;
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i >= 5) {
                zipFile = null;
                break;
            }
            try {
                zipFile = new ZipFile(file, 1);
                break;
            } catch (IOException unused) {
                i = i2;
            }
        }
        if (zipFile != null) {
            return zipFile;
        }
        throw new IllegalStateException("Could not open APK file: " + file.getAbsolutePath());
    }

    private static void clearOldLibraryFiles(File file, FilenameFilter filenameFilter) {
        File[] fileArrListFiles = file.getParentFile().listFiles(filenameFilter);
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                file2.delete();
            }
        }
    }

    @SuppressLint({"SetWorldReadable"})
    private static void setFilePermissions(File file) {
        file.setReadable(true, false);
        file.setExecutable(true, false);
        file.setWritable(true);
    }

    private static void copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, i);
            }
        }
    }

    private static void closeSilently(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
