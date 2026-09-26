package c.f.b.e;

import a0.a;
import android.util.Base64;
import android.util.Log;
import com.google.common.base.c;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes5.dex */
public class q5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f886a;

    private static native boolean a();

    public static byte[] a(byte[] bArr, int i10) {
        if (f886a) {
            try {
                byte[] bArr2 = new byte[bArr.length];
                if (b(bArr, bArr2, i10)) {
                    return bArr2;
                }
                Log.e(a.f28i, "natv fld wth c " + errc() + ": " + errs());
            } catch (Exception e) {
                Log.e(a.f28i, "natv fld wth b-func", e);
            }
        }
        return bArr;
    }

    public static String b(byte[] bArr) {
        byte[] bArrA = a(bArr, 0);
        int length = bArrA.length;
        for (int i10 = length - 1; i10 >= 0 && i10 >= length - 16; i10--) {
            if (bArrA[i10] != 0) {
                return new String(bArrA, 0, i10 + 1, a.f26b);
            }
        }
        return new String(bArrA, a.f26b);
    }

    private static native boolean b(byte[] bArr, byte[] bArr2, int i10);

    private static native String c(byte[] bArr, byte[] bArr2, int i10);

    public static byte[] c(String str) {
        byte[] bytes = str.getBytes(a.f26b);
        int length = bytes.length;
        int i10 = length % 16;
        if (i10 != 0) {
            int i11 = (16 - i10) + length;
            byte[] bArr = new byte[i11];
            for (int i12 = length; i12 < i11; i12++) {
                bArr[i12] = 0;
            }
            System.arraycopy(bytes, 0, bArr, 0, length);
            bytes = bArr;
        }
        return a(bytes, 1);
    }

    public static String d(byte[] bArr, String str, int i10) throws NoSuchAlgorithmException, InvalidKeyException {
        byte[] bArrH = h("e7309ecc0953c6fa60005b2765f99dbbc965c8e9");
        int length = bArr.length;
        byte[] bArr2 = new byte[length + 1];
        bArr2[0] = c.EM;
        System.arraycopy(bArr, 0, bArr2, 1, length);
        byte[] bArrHm = hm(bArrH, bArr2);
        int length2 = bArr2.length;
        int length3 = bArrHm.length;
        byte[] bArr3 = new byte[length2 + length3];
        System.arraycopy(bArr2, 0, bArr3, 0, length2);
        System.arraycopy(bArrHm, 0, bArr3, length2, length3);
        return g(bArr3);
    }

    public static native int errc();

    private static native String errs();

    public static String f(byte[] bArr, String str, int i10) {
        try {
            byte[] bArrHm = hm(h("dfa5ed192dda6e88a12fe12130dc6206b1251e44"), bArr);
            byte[] bArr2 = new byte[bArrHm.length + 1];
            bArr2[0] = c.EM;
            System.arraycopy(bArrHm, 0, bArr2, 1, bArrHm.length);
            return Base64.encodeToString(bArr2, 2);
        } catch (Exception e) {
            return null;
        }
    }

    private static String g(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte b7 = bArr[i10];
            int i11 = i10 * 2;
            char[] cArr2 = a.e;
            cArr[i11] = cArr2[(b7 & 255) >>> 4];
            cArr[i11 + 1] = cArr2[b7 & c.SI];
        }
        return new String(cArr);
    }

    private static byte[] hm(byte[] bArr, byte[] bArr2) throws NoSuchAlgorithmException, InvalidKeyException {
        Mac mac = Mac.getInstance("HmacSHA1");
        mac.init(new SecretKeySpec(bArr, "HmacSHA1"));
        return mac.doFinal(bArr2);
    }

    private static native byte[] s(byte[] bArr, byte[] bArr2, int i10);

    static {
        boolean zA;
        try {
            System.loadLibrary(a.f28i);
            zA = a();
        } catch (Throwable th) {
            Log.e(a.f28i, "ntv fld", th);
            zA = false;
        }
        f886a = zA;
    }

    public static String e(byte[] bArr, byte[] bArr2, int i10) {
        if (f886a) {
            try {
                String strC = c(bArr, bArr2, i10);
                if (strC != null) {
                    return strC;
                }
                Log.e(a.f28i, "natv fld wth c " + errc() + ": " + errs());
            } catch (Exception e) {
                Log.e(a.f28i, "natv fld wth c-func", e);
            }
        }
        return "FF" + g(new byte[]{(byte) i10}) + g(bArr);
    }

    private static byte[] h(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i10 = 0; i10 < length; i10 += 2) {
            bArr[i10 / 2] = (byte) ((Character.digit(str.charAt(i10), 16) << 4) + Character.digit(str.charAt(i10 + 1), 16));
        }
        return bArr;
    }
}
