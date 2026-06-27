package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.support.annotation.Nullable;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Nd, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0742Nd {
    private static byte[] A00;
    private static final String A01;

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 22);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A00 = new byte[]{122, -66, -60, -66, -65, -80, -72, 122, -84, -69, -69, 122, -98, -64, -69, -80, -67, -64, -66, -80, -67, 121, -84, -69, -74, -34, -49, -35, -34, -105, -43, -49, -29, -35, -117, -88, -88, -83, -98, -99, 89, -100, -95, -98, -100, -92, 89, -97, -102, -94, -91, -98, -99, 111, 96, 115, 103, -31, -29, -48, -90, -83, -88, -79, -69, -80, -87, -103, 111, -62};
    }

    static {
        A05();
        A01 = C0742Nd.class.getSimpleName();
    }

    private C0742Nd() {
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:34:0x001e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0022 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0036 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x003b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0043 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0058 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x005d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0062 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0066 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0071 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x001a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0012  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0015  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x0012 -> B:11:0x001a). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0015 -> B:11:0x001a). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.X.EnumC0741Nc A00() {
        /*
            r6 = 0
            r5 = 0
            r4 = 0
            boolean r0 = A07()     // Catch: java.lang.Throwable -> Lb
            if (r0 != 0) goto L18
            r0 = 3
            goto L1a
        Lb:
            r5 = move-exception
            boolean r0 = com.facebook.ads.internal.api.BuildConfigApi.isDebug()
            if (r0 == 0) goto L15
            r0 = 16
            goto L1a
        L15:
            r0 = 17
            goto L1a
        L18:
            r0 = 9
        L1a:
            switch(r0) {
                case 3: goto L66;
                case 4: goto L1d;
                case 5: goto L43;
                case 6: goto L1d;
                case 7: goto L1d;
                case 8: goto L1e;
                case 9: goto L62;
                case 10: goto L3b;
                case 11: goto L58;
                case 12: goto L1d;
                case 13: goto L36;
                case 14: goto L1d;
                case 15: goto L1d;
                case 16: goto L22;
                case 17: goto L5d;
                case 18: goto L71;
                default: goto L1d;
            }
        L1d:
            goto L1a
        L1e:
            r6 = 0
            r0 = 10
            goto L1a
        L22:
            java.lang.Throwable r5 = (java.lang.Throwable) r5
            java.lang.String r3 = com.facebook.ads.redexgen.X.C0742Nd.A01
            r2 = 34
            r1 = 19
            r0 = 35
            java.lang.String r0 = A01(r2, r1, r0)
            android.util.Log.e(r3, r0, r5)
            r0 = 17
            goto L1a
        L36:
            com.facebook.ads.redexgen.X.Nc r4 = com.facebook.ads.redexgen.X.EnumC0741Nc.A05     // Catch: java.lang.Throwable -> Lb
            r0 = 18
            goto L1a
        L3b:
            if (r6 == 0) goto L40
            r0 = 11
            goto L1a
        L40:
            r0 = 13
            goto L1a
        L43:
            r2 = 57
            r1 = 2
            r0 = 88
            java.lang.String r0 = A01(r2, r1, r0)     // Catch: java.lang.Throwable -> Lb
            boolean r0 = A08(r0)     // Catch: java.lang.Throwable -> Lb
            if (r0 == 0) goto L55
            r0 = 9
            goto L1a
        L55:
            r0 = 8
            goto L1a
        L58:
            com.facebook.ads.redexgen.X.Nc r4 = com.facebook.ads.redexgen.X.EnumC0741Nc.A03     // Catch: java.lang.Throwable -> Lb
            r0 = 18
            goto L1a
        L5d:
            com.facebook.ads.redexgen.X.Nc r4 = com.facebook.ads.redexgen.X.EnumC0741Nc.A04
            r0 = 18
            goto L1a
        L62:
            r6 = 1
            r0 = 10
            goto L1a
        L66:
            boolean r0 = A06()     // Catch: java.lang.Throwable -> Lb
            if (r0 != 0) goto L6e
            r0 = 5
            goto L1a
        L6e:
            r0 = 9
            goto L1a
        L71:
            com.facebook.ads.redexgen.X.Nc r4 = (com.facebook.ads.redexgen.X.EnumC0741Nc) r4
            com.facebook.ads.redexgen.X.Nc r4 = (com.facebook.ads.redexgen.X.EnumC0741Nc) r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0742Nd.A00():com.facebook.ads.redexgen.X.Nc");
    }

    @Nullable
    public static String A02(Context context) {
        try {
            return A03(context);
        } catch (Exception unused) {
            return null;
        }
    }

    @SuppressLint({"PackageManagerGetSignatures"})
    private static String A03(Context context) throws PackageManager.NameNotFoundException, NoSuchAlgorithmException, CertificateException {
        StringBuilder sb = new StringBuilder();
        Signature[] signatureArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
        int length = signatureArr.length;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i >= length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    sb = sb;
                    signatureArr = signatureArr;
                    Signature cert = signatureArr[i];
                    byte[] publicKey = MessageDigest.getInstance(A01(64, 4, 82)).digest(A04(cert).getEncoded());
                    sb.append(C0758Nt.A03(publicKey));
                    sb.append(A01(68, 1, 30));
                    i++;
                    c = 2;
                    break;
                case 4:
                    return sb.toString();
            }
        }
    }

    private static PublicKey A04(Signature signature) throws CertificateException {
        return CertificateFactory.getInstance(A01(59, 5, 98)).generateCertificate(new ByteArrayInputStream(signature.toByteArray())).getPublicKey();
    }

    private static boolean A06() {
        boolean z = false;
        String str = Build.TAGS;
        char c = str != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    String buildTags = A01(25, 9, 84);
                    if (!str.contains(buildTags)) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    private static boolean A07() {
        File superUserApk = new File(A01(0, 25, 53));
        return superUserApk.exists();
    }

    private static boolean A08(String str) {
        File file = null;
        File[] fileArrListFiles = null;
        int length = 0;
        int i = 0;
        boolean z = false;
        String[] strArrSplit = System.getenv(A01(53, 4, 9)).split(A01(69, 1, 114));
        int length2 = strArrSplit.length;
        int i2 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i2 >= length2) {
                        c = 11;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    strArrSplit = strArrSplit;
                    String path = strArrSplit[i2];
                    file = new File(path);
                    if (!file.exists()) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    file = file;
                    if (!file.isDirectory()) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    i2++;
                    c = 2;
                    break;
                case 6:
                    file = file;
                    fileArrListFiles = file.listFiles();
                    if (fileArrListFiles == null) {
                        c = 5;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    fileArrListFiles = fileArrListFiles;
                    z = false;
                    length = fileArrListFiles.length;
                    i = 0;
                    c = '\b';
                    break;
                case '\b':
                    if (i >= length) {
                        c = 5;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    str = str;
                    fileArrListFiles = fileArrListFiles;
                    if (!fileArrListFiles[i].getName().equals(str)) {
                        c = '\f';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    z = true;
                    c = 11;
                    break;
                case 11:
                    return z;
                case '\f':
                    i++;
                    c = '\b';
                    break;
            }
        }
    }
}
