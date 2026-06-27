package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.ads.internal.api.BuildConfigApi;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Hz, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0613Hz {
    private static byte[] A03;
    private static final Map<String, File> A04;
    private static final Map<String, ReentrantLock> A05;
    private final int A00;
    private final Context A01;
    private final NG A02 = new NG();

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 31);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A03 = new byte[]{43, 9, 11, 0, 1, 6, 15, 72, 14, 1, 4, 13, 72, 11, 7, 5, 24, 4, 13, 28, 13, 123, 119, 49, 62, 59, 50, 119, 52, 59, 50, 54, 57, 50, 51, 109, 119, 94, 81, 84, 93, 2, 23, 23, 72, 127, 127, 98, 127, 45, 110, 97, 98, 126, 100, 99, 106, 45, 126, 98, 120, 127, 110, 104, 45, 11, 0, 16, 23, 30, 89, 13, 22, 89, 11, 28, 24, 29, 89, 48, 18, 16, 27, 26, 29, 20, 83, 21, 26, 31, 22, 83, 29, 28, 7, 83, 16, 28, 30, 3, 31, 22, 7, 22, 83, 78, 108, 99, 42, 121, 45, 127, 104, 108, 105, 45, 97, 104, 99, 106, 121, 101, 45, 98, 107, 45, 20, 53, 60, 53, 36, 57, 62, 55, 112, 51, 49, 51, 56, 53, 112, 54, 57, 60, 53, 112, 49, 54, 36, 53, 34, 112, 53, 40, 51, 53, 53, 52, 57, 62, 55, 112, 34, 53, 36, 34, 41, 112, 49, 36, 36, 53, 61, 32, 36, 35, 106, 112, 32, 23, 23, 10, 23, 69, 6, 4, 6, 13, 12, 11, 2, 69, 17, 13, 0, 69, 3, 12, 9, 0, 90, 84, 53, 0, 0, 17, 25, 4, 0, 78, 84, 47, 32, 37, 44, 115, 102, 102, 102, 40, 39, 45, 59, 38, 32, 45, 22, 40, 58, 58, 44, 61, 102, 55, 21, 26, 83, 0, 84, 23, 24, 27, 7, 17, 84, 23, 21, 23, 28, 17, 84, 18, 29, 24, 17, 90, 11, 44, 33, 45, 47, 50, 46, 39, 54, 39, 98, 48, 39, 49, 50, 45, 44, 49, 39, 108, 99, 84, 84, 73, 84, 6, 69, 74, 67, 71, 72, 79, 72, 65, 6, 64, 79, 74, 67, 46, 45, 35, 38};
    }

    static {
        A02();
        A04 = new HashMap();
        A05 = new HashMap();
    }

    public C0613Hz(Context context, int i) {
        this.A01 = context;
        this.A00 = i;
    }

    @Nullable
    public static String A01(String str) {
        File cachedFile;
        synchronized (A04) {
            cachedFile = A04.get(str);
        }
        if (cachedFile == null) {
            return null;
        }
        return A00(37, 7, 39) + cachedFile.getPath();
    }

    private static void A03(Context context, N9 n9, String str, int i, int i2) throws IOException, C0724Ml {
        InterfaceC0721Mi n1;
        if (!str.startsWith(A00(211, 22, 86))) {
            n1 = new N1(str, i);
        } else {
            n1 = I0.A02(context, str);
        }
        try {
            if (BuildConfigApi.isDebug()) {
                String unused = I0.A02;
                String str2 = A00(64, 15, 102) + str + A00(200, 11, 107) + i2;
            }
            int iAvailable = n9.available();
            int length = n1.length();
            boolean z = length < 0;
            if (z) {
                boolean zA06 = A06(n9);
                if (BuildConfigApi.isDebug()) {
                    String unused2 = I0.A02;
                    String str3 = A00(105, 21, 18) + str + A00(21, 16, 72) + zA06;
                }
            }
            if (z || iAvailable < length) {
                n1.A6Q(iAvailable);
                byte[] bArr = new byte[8192];
                while (true) {
                    int i3 = n1.read(bArr);
                    if (i3 == -1) {
                        break;
                    } else {
                        n9.A2b(bArr, i3);
                    }
                }
            }
            if (z) {
                n9.A2n();
            } else {
                int sourceLength = n9.available();
                if (sourceLength == length) {
                    n9.A2n();
                } else {
                    throw new C0727Mo(A00(256, 20, 93));
                }
            }
            try {
                n1.close();
            } catch (C0724Ml | IllegalArgumentException e) {
                if (!BuildConfigApi.isDebug()) {
                    return;
                }
                Log.e(I0.A02, A00(44, 20, 18), e);
            }
        } catch (Throwable th) {
            try {
                n1.close();
            } catch (C0724Ml | IllegalArgumentException e2) {
                if (BuildConfigApi.isDebug()) {
                    Log.e(I0.A02, A00(44, 20, 18), e2);
                }
            }
            throw th;
        }
    }

    @SuppressLint({"CatchGeneralException"})
    private static void A04(N9 n9) {
        try {
            File fileA03 = n9.A03();
            if (fileA03.exists()) {
                n9.close();
                boolean zDelete = fileA03.delete();
                if (!BuildConfigApi.isDebug()) {
                    return;
                }
                String unused = I0.A02;
                String str = A00(126, 52, 79) + zDelete;
            }
        } catch (Exception e) {
            if (!BuildConfigApi.isDebug()) {
                return;
            }
            Log.e(I0.A02, A00(233, 23, 107), e);
        }
    }

    /* JADX WARN: Not initialized variable reg: 9, insn: 0x0118: INVOKE 
  (r9 I:java.lang.String)
  (r10 I:java.lang.String)
  (r11 I:int)
  (r12 I:java.lang.String)
  (r13 I:java.lang.Integer)
  (r14 I:java.lang.Long)
 STATIC call: com.facebook.ads.redexgen.X.IA.A06(java.lang.String, java.lang.String, int, java.lang.String, java.lang.Integer, java.lang.Long):void A[MD:(java.lang.String, java.lang.String, int, java.lang.String, java.lang.Integer, java.lang.Long):void (m)] (LINE:28211), block:B:43:0x0107 */
    /* JADX WARN: Not initialized variable reg: 9, insn: 0x0146: INVOKE 
  (r9 I:java.lang.String)
  (r10 I:java.lang.String)
  (r11 I:int)
  (r12 I:java.lang.String)
  (r13 I:java.lang.Integer)
  (r14 I:java.lang.Long)
 STATIC call: com.facebook.ads.redexgen.X.IA.A06(java.lang.String, java.lang.String, int, java.lang.String, java.lang.Integer, java.lang.Long):void A[MD:(java.lang.String, java.lang.String, int, java.lang.String, java.lang.Integer, java.lang.Long):void (m)] (LINE:28218), block:B:48:0x0135 */
    private boolean A05(C0605Hr c0605Hr, String str, String str2, int i) throws IOException, C0724Ml {
        String strA06;
        String strA062;
        IC.A03(c0605Hr, null);
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            File cacheRoot = N7.A00(this.A01);
            File targetFile = new File(cacheRoot, str2);
            N9 n9 = new N9(targetFile, new NI(67108864L));
            if (n9.A3u()) {
                if (BuildConfigApi.isDebug()) {
                    String unused = I0.A02;
                    String str3 = A00(0, 21, 119) + n9.A00.getName();
                }
                synchronized (A04) {
                    A04.put(str, targetFile);
                }
                n9.close();
                IA.A08(str, true, A00(295, 4, 93));
                return true;
            }
            if (BuildConfigApi.isDebug()) {
                String unused2 = I0.A02;
                String str4 = A00(79, 26, 108) + n9.A00.getName();
            }
            IA.A08(str, false, A00(295, 4, 93));
            int iA0J = K1.A0J(this.A01);
            for (int i2 = 0; i2 < iA0J; i2++) {
                try {
                    A03(this.A01, n9, str, i, i2);
                    break;
                } catch (C0724Ml proxyCacheException) {
                    if (i2 == iA0J - 1) {
                        A04(n9);
                        if (proxyCacheException instanceof C0727Mo) {
                            throw ((C0727Mo) proxyCacheException);
                        }
                        if (proxyCacheException instanceof C0725Mm) {
                            throw ((C0725Mm) proxyCacheException);
                        }
                    }
                }
            }
            int iAvailable = n9.available();
            n9.close();
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            synchronized (A04) {
                A04.put(str, targetFile);
            }
            IA.A06(str, A00(295, 4, 93), IA.A02, null, Integer.valueOf(iAvailable), Long.valueOf(jCurrentTimeMillis2));
            return true;
        } catch (C0725Mm e) {
            IA.A06(strA062, A00(295, 4, 93), IA.A01, e.toString(), null, null);
            if (BuildConfigApi.isDebug()) {
                Log.e(I0.A02, A00(178, 22, 122), e);
            }
            return false;
        } catch (C0727Mo e2) {
            IA.A06(strA06, A00(295, 4, 93), IA.A03, e2.toString(), null, null);
            if (BuildConfigApi.isDebug()) {
                Log.e(I0.A02, A00(178, 22, 122), e2);
            }
            return false;
        }
    }

    private static boolean A06(N9 n9) {
        Throwable e = null;
        boolean z = false;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        n9 = n9;
                        n9.A04();
                        z = true;
                        c = 7;
                        break;
                    } catch (C0725Mm e2) {
                        e = e2;
                        if (!BuildConfigApi.isDebug()) {
                            c = 5;
                            break;
                        } else {
                            c = 4;
                            break;
                        }
                    }
                case 4:
                    e = e;
                    Log.e(I0.A02, A00(276, 19, 57), e);
                    c = 5;
                    break;
                case 5:
                    z = false;
                    c = 7;
                    break;
                case 7:
                    return z;
            }
        }
    }

    public final boolean A07(C0605Hr c0605Hr) {
        ReentrantLock reentrantLock;
        String str = c0605Hr.A06;
        String str2 = this.A02.A39(str) + c0605Hr.A02;
        synchronized (A05) {
            reentrantLock = A05.get(str2);
            if (reentrantLock == null) {
                reentrantLock = new ReentrantLock();
                A05.put(str2, reentrantLock);
            }
        }
        try {
            reentrantLock.lock();
            boolean zA05 = A05(c0605Hr, str, str2, this.A00);
            reentrantLock.unlock();
            synchronized (A05) {
                A05.remove(str2);
            }
            return zA05;
        } catch (Throwable th) {
            reentrantLock.unlock();
            synchronized (A05) {
                A05.remove(str2);
                throw th;
            }
        }
    }
}
