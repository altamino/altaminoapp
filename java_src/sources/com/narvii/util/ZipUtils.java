package com.narvii.util;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipArchiveInputStream;

/* JADX INFO: loaded from: classes9.dex */
public class ZipUtils {
    private static final String TAG = "ZipUtils";

    public static boolean extract(File file, File file2) {
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    boolean zExtract = extract(fileInputStream2, file2);
                    Utils.safeClose(fileInputStream2);
                    return zExtract;
                } catch (Exception e) {
                    e = e;
                    fileInputStream = fileInputStream2;
                    Log.e(TAG, e.getMessage(), e);
                    Utils.safeClose(fileInputStream);
                    return false;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    Utils.safeClose(fileInputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public static void compressedFile(File file, File file2) throws Exception {
        if (!file2.exists()) {
            file2.getParentFile().mkdirs();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
            ZipOutputStream zipOutputStream = new ZipOutputStream(bufferedOutputStream);
            createCompressedFile(zipOutputStream, file, "");
            zipOutputStream.close();
            bufferedOutputStream.close();
        } finally {
            fileOutputStream.close();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean createCompressedFile(ZipOutputStream zipOutputStream, File file, String str) throws Exception {
        String str2;
        int i10 = 0;
        boolean zCreateCompressedFile = true;
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            zipOutputStream.putNextEntry(new ZipEntry(str + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING));
            if (str.length() == 0) {
                str2 = "";
            } else {
                str2 = str + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING;
            }
            while (i10 < fileArrListFiles.length) {
                zCreateCompressedFile = createCompressedFile(zipOutputStream, fileArrListFiles[i10], str2 + fileArrListFiles[i10].getName());
                i10++;
            }
            return zCreateCompressedFile;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        zipOutputStream.putNextEntry(new ZipEntry(str));
        byte[] bArr = new byte[4096];
        while (true) {
            int i11 = fileInputStream.read(bArr);
            if (i11 != -1) {
                if (Thread.currentThread().isInterrupted()) {
                    break;
                }
                zipOutputStream.write(bArr, 0, i11);
            } else {
                i10 = 1;
                break;
            }
        }
        zipOutputStream.closeEntry();
        fileInputStream.close();
        return i10;
    }

    public static boolean storeFile(File file, File file2) throws Exception {
        if (!file2.exists()) {
            file2.getParentFile().mkdirs();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
            ZipOutputStream zipOutputStream = new ZipOutputStream(bufferedOutputStream);
            zipOutputStream.setMethod(8);
            zipOutputStream.setLevel(0);
            boolean zCreateCompressedFile = createCompressedFile(zipOutputStream, file, "");
            zipOutputStream.close();
            bufferedOutputStream.close();
            return zCreateCompressedFile;
        } finally {
            fileOutputStream.close();
        }
    }

    public static boolean extract(InputStream inputStream, File file) throws Throwable {
        file.mkdirs();
        FileOutputStream fileOutputStream = null;
        try {
            try {
                String canonicalPath = file.getCanonicalPath();
                byte[] bArr = new byte[4096];
                ZipArchiveInputStream zipArchiveInputStream = new ZipArchiveInputStream(inputStream);
                boolean z6 = true;
                while (true) {
                    ZipArchiveEntry nextZipEntry = zipArchiveInputStream.getNextZipEntry();
                    if (nextZipEntry == null) {
                        break;
                    }
                    if (Thread.currentThread().isInterrupted()) {
                        z6 = false;
                        break;
                    }
                    File file2 = new File(file, nextZipEntry.getName());
                    if (file2.getCanonicalPath().startsWith(canonicalPath)) {
                        if (nextZipEntry.isDirectory()) {
                            file2.mkdirs();
                        } else {
                            file2.getParentFile().mkdirs();
                            FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                            while (true) {
                                try {
                                    int i10 = zipArchiveInputStream.read(bArr);
                                    if (i10 == -1) {
                                        break;
                                    }
                                    if (Thread.currentThread().isInterrupted()) {
                                        z6 = false;
                                        break;
                                    }
                                    fileOutputStream2.write(bArr, 0, i10);
                                } catch (Exception e) {
                                    e = e;
                                    fileOutputStream = fileOutputStream2;
                                    Log.e(TAG, e.getMessage(), e);
                                    Utils.safeClose(fileOutputStream);
                                    return false;
                                } catch (Throwable th) {
                                    th = th;
                                    fileOutputStream = fileOutputStream2;
                                    Utils.safeClose(fileOutputStream);
                                    throw th;
                                }
                            }
                            fileOutputStream2.close();
                        }
                    } else {
                        throw new Exception("Zip Path Traversal Vulnerability");
                    }
                }
                zipArchiveInputStream.close();
                Utils.safeClose((OutputStream) null);
                return z6;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }
}
