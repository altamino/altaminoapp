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

/* JADX INFO: loaded from: classes7.dex */
class i {
    private static final int COPY_BUFFER_SIZE = 8192;
    private static final String LIB_DIR = "lib";
    private static final String MAPPED_BASE_LIB_NAME = System.mapLibraryName("pl_droidsonroids_gif");
    private static final int MAX_TRIES = 5;

    static class a implements FilenameFilter {
        final /* synthetic */ String val$mappedSurfaceLibraryName;

        a(String str) {
            this.val$mappedSurfaceLibraryName = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            if (!str.startsWith(i.MAPPED_BASE_LIB_NAME) && !str.startsWith(this.val$mappedSurfaceLibraryName)) {
                return false;
            }
            return true;
        }
    }

    private static ZipFile i(File file) {
        ZipFile zipFile;
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            if (i10 >= 5) {
                zipFile = null;
                break;
            }
            try {
                zipFile = new ZipFile(file, 1);
                break;
            } catch (IOException unused) {
                i10 = i11;
            }
        }
        if (zipFile != null) {
            return zipFile;
        }
        throw new IllegalStateException("Could not open APK file: " + file.getAbsolutePath());
    }

    @SuppressLint({"SetWorldReadable"})
    private static void j(File file) {
        file.setReadable(true, false);
        file.setExecutable(true, false);
        file.setWritable(true);
    }

    private static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    private static void d(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, i10);
            }
        }
    }

    private static ZipEntry f(ZipFile zipFile, String str) {
        return zipFile.getEntry("lib/" + str + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + MAPPED_BASE_LIB_NAME);
    }

    private static String[] g() {
        return Build.SUPPORTED_ABIS;
    }

    @SuppressLint({"UnsafeDynamicallyLoadedCode"})
    static void h(Context context) {
        synchronized (i.class) {
            System.load(k(context).getAbsolutePath());
        }
    }

    private static File k(Context context) throws Throwable {
        ZipFile zipFileI;
        Throwable th;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        Throwable th2;
        String str = MAPPED_BASE_LIB_NAME + "1.2.15";
        int i10 = 0;
        File file = new File(context.getDir(LIB_DIR, 0), str);
        if (file.isFile()) {
            return file;
        }
        File file2 = new File(context.getCacheDir(), str);
        if (file2.isFile()) {
            return file2;
        }
        a aVar = new a(System.mapLibraryName("pl_droidsonroids_gif_surface"));
        b(file, aVar);
        b(file2, aVar);
        try {
            zipFileI = i(new File(context.getApplicationInfo().sourceDir));
            while (true) {
                int i11 = i10 + 1;
                if (i10 >= 5) {
                    break;
                }
                try {
                    ZipEntry zipEntryE = e(zipFileI);
                    if (zipEntryE == null) {
                        throw new IllegalStateException("Library " + MAPPED_BASE_LIB_NAME + " for supported ABIs not found in APK file");
                    }
                    try {
                        inputStream = zipFileI.getInputStream(zipEntryE);
                        try {
                            fileOutputStream = new FileOutputStream(file);
                            try {
                                d(inputStream, fileOutputStream);
                                c(inputStream);
                                c(fileOutputStream);
                                j(file);
                                break;
                            } catch (IOException unused) {
                                if (i11 > 2) {
                                    file = file2;
                                }
                                c(inputStream);
                                c(fileOutputStream);
                                i10 = i11;
                            } catch (Throwable th3) {
                                th2 = th3;
                                c(inputStream);
                                c(fileOutputStream);
                                throw th2;
                            }
                        } catch (IOException unused2) {
                            fileOutputStream = null;
                        } catch (Throwable th4) {
                            th = th4;
                            fileOutputStream = null;
                            th2 = th;
                            c(inputStream);
                            c(fileOutputStream);
                            throw th2;
                        }
                    } catch (IOException unused3) {
                        inputStream = null;
                        fileOutputStream = null;
                    } catch (Throwable th5) {
                        th = th5;
                        inputStream = null;
                        fileOutputStream = null;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    if (zipFileI == null) {
                        throw th;
                    }
                    try {
                        zipFileI.close();
                        throw th;
                    } catch (IOException unused4) {
                        throw th;
                    }
                }
                c(inputStream);
                c(fileOutputStream);
                i10 = i11;
            }
            if (zipFileI != null) {
                try {
                    zipFileI.close();
                } catch (IOException unused5) {
                }
            }
            return file;
        } catch (Throwable th7) {
            zipFileI = null;
            th = th7;
        }
    }

    private i() {
    }

    private static void b(File file, FilenameFilter filenameFilter) {
        File[] fileArrListFiles = file.getParentFile().listFiles(filenameFilter);
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                file2.delete();
            }
        }
    }

    private static ZipEntry e(ZipFile zipFile) {
        for (String str : g()) {
            ZipEntry zipEntryF = f(zipFile, str);
            if (zipEntryF != null) {
                return zipEntryF;
            }
        }
        return null;
    }
}
