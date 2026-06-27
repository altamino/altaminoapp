package com.narvii.util;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* loaded from: classes3.dex */
public class ZipUtils {
    private static final String TAG = "ZipUtils";

    public static boolean extract(File file, File file2) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(file);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            boolean zExtract = extract(fileInputStream, file2);
            Utils.safeClose(fileInputStream);
            return zExtract;
        } catch (Exception e2) {
            e = e2;
            fileInputStream2 = fileInputStream;
            Log.e(TAG, e.getMessage(), e);
            Utils.safeClose(fileInputStream2);
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            Utils.safeClose(fileInputStream2);
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0077, code lost:
    
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007a, code lost:
    
        com.narvii.util.Utils.safeClose((java.io.OutputStream) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007d, code lost:
    
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean extract(java.io.InputStream r8, java.io.File r9) throws java.lang.Throwable {
        /*
            r9.mkdirs()
            r0 = 0
            r1 = 0
            java.lang.String r2 = r9.getCanonicalPath()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            r3 = 4096(0x1000, float:5.74E-42)
            byte[] r3 = new byte[r3]     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            org.apache.commons.compress.archivers.zip.ZipArchiveInputStream r4 = new org.apache.commons.compress.archivers.zip.ZipArchiveInputStream     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            r4.<init>(r8)     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            r8 = 1
        L13:
            org.apache.commons.compress.archivers.zip.ZipArchiveEntry r5 = r4.getNextZipEntry()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            if (r5 == 0) goto L77
            java.lang.Thread r6 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            boolean r6 = r6.isInterrupted()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            if (r6 == 0) goto L25
            r8 = 0
            goto L77
        L25:
            java.io.File r6 = new java.io.File     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            java.lang.String r7 = r5.getName()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            r6.<init>(r9, r7)     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            java.lang.String r7 = r6.getCanonicalPath()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            boolean r7 = r7.startsWith(r2)     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            if (r7 == 0) goto L6f
            boolean r5 = r5.isDirectory()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            if (r5 == 0) goto L42
            r6.mkdirs()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            goto L13
        L42:
            java.io.File r5 = r6.getParentFile()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            r5.mkdirs()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            java.io.FileOutputStream r5 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
        L4e:
            int r6 = r4.read(r3)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            r7 = -1
            if (r6 == r7) goto L65
            java.lang.Thread r7 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            boolean r7 = r7.isInterrupted()     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            if (r7 == 0) goto L61
            r8 = 0
            goto L65
        L61:
            r5.write(r3, r1, r6)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            goto L4e
        L65:
            r5.close()     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6c
            goto L13
        L69:
            r8 = move-exception
            r0 = r5
            goto L8e
        L6c:
            r8 = move-exception
            r0 = r5
            goto L81
        L6f:
            java.lang.Exception r8 = new java.lang.Exception     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            java.lang.String r9 = "Zip Path Traversal Vulnerability"
            r8.<init>(r9)     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            throw r8     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
        L77:
            r4.close()     // Catch: java.lang.Throwable -> L7e java.lang.Exception -> L80
            com.narvii.util.Utils.safeClose(r0)
            return r8
        L7e:
            r8 = move-exception
            goto L8e
        L80:
            r8 = move-exception
        L81:
            java.lang.String r9 = com.narvii.util.ZipUtils.TAG     // Catch: java.lang.Throwable -> L7e
            java.lang.String r2 = r8.getMessage()     // Catch: java.lang.Throwable -> L7e
            com.narvii.util.Log.e(r9, r2, r8)     // Catch: java.lang.Throwable -> L7e
            com.narvii.util.Utils.safeClose(r0)
            return r1
        L8e:
            com.narvii.util.Utils.safeClose(r0)
            goto L93
        L92:
            throw r8
        L93:
            goto L92
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.util.ZipUtils.extract(java.io.InputStream, java.io.File):boolean");
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

    private static boolean createCompressedFile(ZipOutputStream zipOutputStream, File file, String str) throws Exception {
        boolean zCreateCompressedFile = true;
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            zipOutputStream.putNextEntry(new ZipEntry(str + "/"));
            String str2 = str.length() == 0 ? "" : str + "/";
            for (int i = 0; i < fileArrListFiles.length; i++) {
                zCreateCompressedFile = createCompressedFile(zipOutputStream, fileArrListFiles[i], str2 + fileArrListFiles[i].getName());
            }
        } else {
            FileInputStream fileInputStream = new FileInputStream(file);
            zipOutputStream.putNextEntry(new ZipEntry(str));
            byte[] bArr = new byte[4096];
            while (true) {
                int i2 = fileInputStream.read(bArr);
                if (i2 == -1) {
                    break;
                }
                if (Thread.currentThread().isInterrupted()) {
                    zCreateCompressedFile = false;
                    break;
                }
                zipOutputStream.write(bArr, 0, i2);
            }
            zipOutputStream.closeEntry();
            fileInputStream.close();
        }
        return zCreateCompressedFile;
    }
}
