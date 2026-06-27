package com.narvii.util;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;
import java.util.UUID;
import org.apache.commons.compress.archivers.zip.UnixStat;

/* loaded from: classes3.dex */
public class FileUtils {
    /* JADX WARN: Removed duplicated region for block: B:19:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized boolean deleteFile(java.io.File r7) {
        /*
            java.lang.Class<com.narvii.util.FileUtils> r0 = com.narvii.util.FileUtils.class
            monitor-enter(r0)
            r1 = 1
            if (r7 != 0) goto L8
            monitor-exit(r0)
            return r1
        L8:
            java.io.File[] r2 = r7.listFiles()     // Catch: java.lang.Throwable -> L31
            boolean r3 = r7.isDirectory()     // Catch: java.lang.Throwable -> L31
            r4 = 0
            if (r3 == 0) goto L21
            if (r2 == 0) goto L21
            int r3 = r2.length     // Catch: java.lang.Throwable -> L31
            r5 = 0
        L17:
            if (r5 >= r3) goto L21
            r6 = r2[r5]     // Catch: java.lang.Throwable -> L31
            deleteFile(r6)     // Catch: java.lang.Throwable -> L31
            int r5 = r5 + 1
            goto L17
        L21:
            boolean r2 = r7.exists()     // Catch: java.lang.Throwable -> L31
            if (r2 == 0) goto L2e
            boolean r7 = r7.delete()     // Catch: java.lang.Throwable -> L31
            if (r7 == 0) goto L2e
            goto L2f
        L2e:
            r1 = 0
        L2f:
            monitor-exit(r0)
            return r1
        L31:
            r7 = move-exception
            monitor-exit(r0)
            goto L35
        L34:
            throw r7
        L35:
            goto L34
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.util.FileUtils.deleteFile(java.io.File):boolean");
    }

    public static boolean isEmpty(File file) {
        return file == null || !file.exists() || file.length() == 0;
    }

    public static boolean moveFile(String str, String str2) throws Throwable {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            throw new RuntimeException("Both sourceFilePath and destFilePath cannot be null.");
        }
        try {
            Utils.copyFile(str.startsWith("file://") ? new File(URI.create(str)) : new File(str), str.startsWith("file://") ? new File(URI.create(str)) : new File(str2));
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x006f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0068 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean moveFromAssetsToFile(android.content.Context r5, java.lang.String r6, java.io.File r7) throws java.lang.Throwable {
        /*
            r0 = 0
            if (r6 != 0) goto L4
            return r0
        L4:
            android.content.res.AssetManager r5 = r5.getAssets()
            r1 = 0
            java.lang.String r2 = "assets://"
            boolean r2 = r6.startsWith(r2)     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L40
            if (r2 == 0) goto L18
            r2 = 9
            java.lang.String r2 = r6.substring(r2)     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L40
            goto L19
        L18:
            r2 = r6
        L19:
            java.io.InputStream r5 = r5.open(r2)     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L40
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L38
            r2.<init>(r7)     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L38
            copyFile(r5, r2)     // Catch: java.lang.Throwable -> L2f java.io.IOException -> L31
            if (r5 == 0) goto L2a
            r5.close()     // Catch: java.io.IOException -> L2a
        L2a:
            r2.close()     // Catch: java.io.IOException -> L2d
        L2d:
            r5 = 1
            return r5
        L2f:
            r6 = move-exception
            goto L35
        L31:
            r7 = move-exception
            goto L3a
        L33:
            r6 = move-exception
            r2 = r1
        L35:
            r1 = r5
            r5 = r6
            goto L66
        L38:
            r7 = move-exception
            r2 = r1
        L3a:
            r1 = r5
            r5 = r7
            goto L42
        L3d:
            r5 = move-exception
            r2 = r1
            goto L66
        L40:
            r5 = move-exception
            r2 = r1
        L42:
            java.lang.String r7 = "tag"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L65
            r3.<init>()     // Catch: java.lang.Throwable -> L65
            java.lang.String r4 = "Failed to copy asset file: "
            r3.append(r4)     // Catch: java.lang.Throwable -> L65
            r3.append(r6)     // Catch: java.lang.Throwable -> L65
            java.lang.String r6 = r3.toString()     // Catch: java.lang.Throwable -> L65
            com.narvii.util.Log.e(r7, r6, r5)     // Catch: java.lang.Throwable -> L65
            if (r1 == 0) goto L5f
            r1.close()     // Catch: java.io.IOException -> L5e
            goto L5f
        L5e:
        L5f:
            if (r2 == 0) goto L64
            r2.close()     // Catch: java.io.IOException -> L64
        L64:
            return r0
        L65:
            r5 = move-exception
        L66:
            if (r1 == 0) goto L6d
            r1.close()     // Catch: java.io.IOException -> L6c
            goto L6d
        L6c:
        L6d:
            if (r2 == 0) goto L72
            r2.close()     // Catch: java.io.IOException -> L72
        L72:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.util.FileUtils.moveFromAssetsToFile(android.content.Context, java.lang.String, java.io.File):boolean");
    }

    private static void copyFile(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, i);
            }
        }
    }

    public static File copyFile(Context context, Uri uri, File file, String str) throws IOException {
        InputStream inputStreamOpenInputStream;
        if ("file".equals(uri.getScheme())) {
            inputStreamOpenInputStream = new FileInputStream(new File(uri.getPath()));
        } else {
            inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
        }
        byte[] bArr = new byte[4096];
        File file2 = new File(file, str);
        SafeFileOutputStream safeFileOutputStream = new SafeFileOutputStream(file2);
        for (int i = inputStreamOpenInputStream.read(bArr); i != -1; i = inputStreamOpenInputStream.read(bArr)) {
            try {
                safeFileOutputStream.write(bArr, 0, i);
            } catch (Throwable th) {
                inputStreamOpenInputStream.close();
                safeFileOutputStream.close(false);
                throw th;
            }
        }
        inputStreamOpenInputStream.close();
        safeFileOutputStream.close(true);
        return file2;
    }

    public static String getNewFileName(File file, String str) {
        if (str == null) {
            str = "";
        }
        if (!str.startsWith(".")) {
            str = "." + str;
        }
        Random random = new Random(System.currentTimeMillis());
        for (int i = 0; i < 256; i++) {
            String strSubstring = Integer.toHexString((random.nextInt() & UnixStat.PERM_MASK) | 4096).substring(1);
            if (!new File(file, strSubstring + str).exists()) {
                return strSubstring + str;
            }
        }
        return UUID.randomUUID().toString() + str;
    }

    public static String md5(String str) throws NoSuchAlgorithmException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : bArrDigest) {
                String hexString = Integer.toHexString(b & 255);
                while (hexString.length() < 2) {
                    hexString = "0" + hexString;
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        }
    }
}
