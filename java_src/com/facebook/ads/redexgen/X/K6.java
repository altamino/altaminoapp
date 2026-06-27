package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import dalvik.system.DexClassLoader;
import io.agora.rtc.Constants;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class K6 {
    private static byte[] A00;

    static {
        A06();
    }

    private static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 36);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A06() {
        A00 = new byte[]{-28, 9, 17, -4, 7, 4, -1, -69, 8, 0, 14, 14, -4, 2, 0, -43, -69, -62, 96, 89, -94, -89, 89, -99, -102, -83, -102, 106, -123, -115, -112, -119, -120, 68, -104, -109, 68, -120, -119, -112, -119, -104, -119, 68, 75, -18, -33, -25, -22, -34, -29, -20, -67, -40, -32, -29, -36, -37, -105, -21, -26, -105, -28, -30, -37, -32, -23, -105, -98, -125, -81, -75, -84, -92, 96, -82, -81, -76, 96, -90, -87, -82, -92, 96, -78, -91, -77, -81, -75, -78, -93, -91, 96, 103, 117, 105, -82, -69, -69, -72, -69, -125, 105, 115, -111, -98, -98, -97, -92, 80, -93, -107, -92, 80, 87, 4, 8, 11, 7, -55, -1, 0, 19, -25, -28, -35, -88, -62, -35, -27, -24, -31, -32, -100, -16, -21, -100, -32, -31, -24, -31, -16, -31, -100, -16, -23, -20, -100, -30, -27, -24, -31, -100, -93, 97, 120, 108, -69, -63, -64, -68, -63, -64, -122, 115, -87, -86, -67, 84, 77, -114, -96, 77, -110, -91, -110, -112, -94, -95, -114, -113, -103, -110, -99, -97, -100, -112, -110, -96, -96, 90, -67, -59, 2, 21, 2, -41, -67, -34, -5, 2, 2, 5, -74, 13, 5, 8, 2, -6, -73, -52, 17, 13, -48, -36, -38, -101, -45, -50, -48, -46, -49, -36, -36, -40, -101, -50, -47, -32, -101, -42, -37, -31, -46, -33, -37, -50, -39, -101, -41, -37, -42, -101, -69, -50, -31, -42, -29, -46, -70, -36, -47, -30, -39, -46, -74, -38, -35, -39, -103, 127, -95, -98, -110, -108, -94, -94, 79, -95, -108, -93, -92, -95, -99, -108, -109, 79, -70, -73, -80};
    }

    private K6() {
    }

    private static KB A00(Context context, String str) {
        try {
            File fileA04 = A04(context, str, null);
            if (!fileA04.setExecutable(true)) {
                throw new Exception(A05(103, 12, 12) + fileA04.getCanonicalPath() + A05(168, 15, 9));
            }
            Process processExec = Runtime.getRuntime().exec(new String[]{fileA04.getCanonicalPath()});
            String str2 = new String(A08(processExec.getInputStream()));
            String str3 = new String(A08(processExec.getErrorStream()));
            int iWaitFor = processExec.waitFor();
            if (iWaitFor != 0) {
                StringBuilder sb = new StringBuilder();
                String outputString = A05(260, 17, 11);
                StringBuilder sbAppend = sb.append(outputString).append(iWaitFor);
                String outputString2 = A05(191, 7, 121);
                StringBuilder sbAppend2 = sbAppend.append(outputString2);
                String outputString3 = fileA04.getCanonicalPath();
                StringBuilder sbAppend3 = sbAppend2.append(outputString3);
                String outputString4 = A05(Constants.ERR_PUBLISH_STREAM_NOT_FOUND, 9, 40);
                StringBuilder sbAppend4 = sbAppend3.append(outputString4).append(str2);
                String outputString5 = A05(94, 9, 37);
                StringBuilder sbAppend5 = sbAppend4.append(outputString5).append(str3);
                String outputString6 = A05(Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 1, 20);
                throw new Exception(sbAppend5.append(outputString6).toString());
            }
            String outputString7 = A05(198, 12, 114);
            if (str2.equals(outputString7)) {
                StringBuilder sb2 = new StringBuilder();
                String outputString8 = A05(0, 18, 119);
                throw new Exception(sb2.append(outputString8).append(str2).toString());
            }
            A07(fileA04);
            return new KB(true);
        } catch (Throwable unused) {
            return new KB(false);
        }
    }

    private static KB A01(Context context, String str, @Nullable String str2, ClassLoader classLoader) {
        try {
            File fileA04 = A04(context, str + (str2 == null ? A05(183, 0, 123) : str2), str2);
            KE ke = (KE) classLoader.loadClass(A05(ThirdPartyAccountBaseFragment.API_ERR_EMAIL, 46, 73)).newInstance();
            ke.load(fileA04.getCanonicalPath());
            String strSayHello = ke.sayHello();
            if (!strSayHello.equals(A05(198, 12, 114))) {
                throw new Exception(A05(0, 18, 119) + strSayHello + A05(259, 1, 78));
            }
            A07(fileA04);
            return new KB(true);
        } catch (Throwable unused) {
            return new KB(false);
        }
    }

    public static KD A02(Context context) {
        KC kcA00 = KD.A00();
        try {
            File fileA04 = A04(context, A05(115, 8, 119), A05(164, 4, 33));
            File fileA03 = A03(context);
            for (K5 k5 : K5.values()) {
                if (k5.A05()) {
                    kcA00.A00(k5, A00(context, A05(183, 8, 9) + k5.A04()));
                } else {
                    String str = A05(123, 4, 87) + k5.A04();
                    DexClassLoader dexClassLoader = new DexClassLoader(fileA04.getCanonicalPath(), fileA03.getCanonicalPath(), A05(183, 0, 123), K6.class.getClassLoader());
                    String fileInZipName = A05(210, 3, 122);
                    kcA00.A00(k5, A01(context, str, fileInZipName, dexClassLoader));
                }
            }
            A07(fileA04);
            A07(fileA03);
            return kcA00.A01();
        } catch (Throwable th) {
            return kcA00.A02(th);
        }
    }

    private static File A03(Context context) throws Exception {
        File tempFile = File.createTempFile(A05(45, 7, 86), null, context.getCacheDir());
        char c = !tempFile.delete() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new Exception(A05(127, 27, 88) + tempFile.getCanonicalPath() + A05(259, 1, 78));
                case 3:
                    tempFile = tempFile;
                    if (!tempFile.mkdir()) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    throw new Exception(A05(52, 17, 83) + tempFile.getCanonicalPath() + A05(259, 1, 78));
                case 5:
                    return tempFile;
            }
        }
    }

    private static File A04(Context context, String str, @Nullable String str2) throws IOException {
        ZipEntry nextEntry = null;
        GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(K7.A02()));
        byte[] bArrA08 = A08(gZIPInputStream);
        gZIPInputStream.close();
        ZipInputStream zipInputStream = new ZipInputStream(new ByteArrayInputStream(bArrA08));
        File fileCreateTempFile = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    zipInputStream = zipInputStream;
                    nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry == null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    str = str;
                    nextEntry = nextEntry;
                    if (!nextEntry.getName().equals(str)) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    context = context;
                    str2 = str2;
                    zipInputStream = zipInputStream;
                    fileCreateTempFile = File.createTempFile(A05(277, 3, 42), str2, context.getCacheDir());
                    FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                    fileOutputStream.write(A08(zipInputStream));
                    fileOutputStream.close();
                    c = 5;
                    break;
                case 5:
                    zipInputStream = zipInputStream;
                    zipInputStream.close();
                    if (fileCreateTempFile == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    return fileCreateTempFile;
                case 7:
                    throw new IOException(A05(69, 25, 28) + str + A05(18, 9, 21));
            }
        }
    }

    private static void A07(File f) throws Exception {
        int length = 0;
        int i = 0;
        File[] fileArrListFiles = null;
        char c = f.isDirectory() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    f = f;
                    fileArrListFiles = f.listFiles();
                    length = fileArrListFiles.length;
                    i = 0;
                    c = 3;
                    break;
                case 3:
                    if (i >= length) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    fileArrListFiles = fileArrListFiles;
                    A07(fileArrListFiles[i]);
                    i++;
                    c = 3;
                    break;
                case 5:
                    f = f;
                    if (!f.delete()) {
                        c = 6;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 6:
                    throw new Exception(A05(27, 18, 0) + f + A05(259, 1, 78));
                case 7:
                    return;
            }
        }
    }

    private static byte[] A08(InputStream inputStream) throws IOException {
        int i = 0;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        int r = 2;
        while (true) {
            switch (r) {
                case 2:
                    inputStream = inputStream;
                    bArr = bArr;
                    i = inputStream.read(bArr);
                    if (i <= 0) {
                        r = 4;
                        break;
                    } else {
                        r = 3;
                        break;
                    }
                case 3:
                    byteArrayOutputStream = byteArrayOutputStream;
                    bArr = bArr;
                    byteArrayOutputStream.write(bArr, 0, i);
                    r = 2;
                    break;
                case 4:
                    return byteArrayOutputStream.toByteArray();
            }
        }
    }
}
