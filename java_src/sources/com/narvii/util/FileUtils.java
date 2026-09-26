package com.narvii.util;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.node.ObjectNode;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;
import java.util.UUID;
import org.apache.commons.compress.archivers.zip.UnixStat;

/* JADX INFO: loaded from: classes11.dex */
public class FileUtils {
    private static void copyFile(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, i10);
            }
        }
    }

    public static boolean isEmpty(File file) {
        return file == null || !file.exists() || file.length() == 0;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x006d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x0068 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:? A[SYNTHETIC] */
    public static boolean moveFromAssetsToFile(Context context, String str, File file) throws Throwable {
        FileOutputStream fileOutputStream;
        if (str == null) {
            return false;
        }
        InputStream inputStream = null;
        try {
            InputStream inputStreamOpen = context.getAssets().open(str.startsWith("assets://") ? str.substring(9) : str);
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    copyFile(inputStreamOpen, fileOutputStream);
                    if (inputStreamOpen != null) {
                        try {
                            inputStreamOpen.close();
                        } catch (IOException unused) {
                        }
                    }
                    try {
                        fileOutputStream.close();
                        return true;
                    } catch (IOException unused2) {
                        return true;
                    }
                } catch (IOException e) {
                    e = e;
                    inputStream = inputStreamOpen;
                    e = e;
                    try {
                        Log.e("tag", "Failed to copy asset file: " + str, e);
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException unused3) {
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused4) {
                            }
                        }
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException unused5) {
                            }
                        }
                        if (fileOutputStream != null) {
                            throw th;
                        }
                        try {
                            fileOutputStream.close();
                            throw th;
                        } catch (IOException unused6) {
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = inputStreamOpen;
                    th = th;
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    if (fileOutputStream != null) {
                        throw th;
                    }
                    fileOutputStream.close();
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
                fileOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        } catch (IOException e6) {
            e = e6;
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
    }

    public static void writeJsonObjectToFile(ObjectNode objectNode, File file) {
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                fileOutputStream2.write(objectNode.toString().getBytes());
            } catch (IOException unused) {
                fileOutputStream = fileOutputStream2;
                Utils.safeClose(fileOutputStream);
            }
        } catch (IOException unused2) {
        }
    }

    public static synchronized boolean deleteFile(File file) {
        if (file == null) {
            return true;
        }
        try {
            File[] fileArrListFiles = file.listFiles();
            if (file.isDirectory() && fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    deleteFile(file2);
                }
            }
            return file.exists() && file.delete();
        } catch (Throwable th) {
            throw th;
        }
    }

    public static String getNewFileName(File file, String str) {
        if (str == null) {
            str = "";
        }
        if (!str.startsWith(".")) {
            str = "." + str;
        }
        Random random = new Random(System.currentTimeMillis());
        for (int i10 = 0; i10 < 256; i10++) {
            String strSubstring = Integer.toHexString((random.nextInt() & UnixStat.PERM_MASK) | 4096).substring(1);
            if (!new File(file, strSubstring + str).exists()) {
                return strSubstring + str;
            }
        }
        return UUID.randomUUID().toString() + str;
    }

    public static String md5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b7 : bArrDigest) {
                String hexString = Integer.toHexString(b7 & 255);
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
        for (int i10 = inputStreamOpenInputStream.read(bArr); i10 != -1; i10 = inputStreamOpenInputStream.read(bArr)) {
            try {
                safeFileOutputStream.write(bArr, 0, i10);
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

    public static boolean moveFile(String str, String str2) throws Throwable {
        File file;
        File file2;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (str.startsWith("file://")) {
                file = new File(URI.create(str));
            } else {
                file = new File(str);
            }
            if (str.startsWith("file://")) {
                file2 = new File(URI.create(str));
            } else {
                file2 = new File(str2);
            }
            try {
                Utils.copyFile(file, file2);
                return true;
            } catch (IOException e) {
                e.printStackTrace();
                return false;
            }
        }
        throw new RuntimeException("Both sourceFilePath and destFilePath cannot be null.");
    }
}
