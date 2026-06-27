package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.Nullable;
import android.util.Log;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Semaphore;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.0u, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C01740u {
    private C01740u() {
    }

    public static InterfaceC01730t A00(final Context context, final AnonymousClass11 anonymousClass11, final C1O c1o) {
        return new InterfaceC01730t(context, anonymousClass11, c1o) { // from class: com.facebook.ads.redexgen.X.13
            private static byte[] A09;
            private static final String A0A;
            private final int A00;
            private final int A01;
            private final Context A02;
            private final AnonymousClass11 A03;
            private final C1O A05;
            private final boolean A08;
            private final Map<String, File> A06 = Collections.synchronizedMap(new HashMap());
            private final Map<String, Semaphore> A07 = new HashMap();
            private final AnonymousClass14 A04 = new AnonymousClass14();

            private static String A02(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
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
                            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 23);
                            i4++;
                            c = 2;
                            break;
                        case 4:
                            return new String(bArrCopyOfRange);
                    }
                }
            }

            private static void A03() {
                A09 = new byte[]{53, 39, 39, 49, 32, 110, 123, 123, 123, 32, 2, 0, 11, 10, 13, 4, 67, 5, 10, 15, 6, 67, 0, 12, 14, 19, 15, 6, 23, 6, 113, 125, 59, 52, 49, 56, 125, 62, 49, 56, 60, 51, 56, 57, 103, 125, 60, 11, 11, 22, 11, 89, 26, 21, 22, 10, 16, 23, 30, 89, 10, 22, 12, 11, 26, 28, 53, 19, 24, 8, 15, 6, 65, 21, 14, 65, 19, 4, 0, 5, 65, 78, 108, 110, 101, 100, 99, 106, 45, 107, 100, 97, 104, 45, 99, 98, 121, 45, 110, 98, 96, 125, 97, 104, 121, 104, 45, 81, 115, 124, 53, 102, 50, 96, 119, 115, 118, 50, 126, 119, 124, 117, 102, 122, 50, 125, 116, 50, 63, 8, 8, 21, 8, 90, 25, 27, 25, 18, 19, 20, 29, 90, 14, 18, 31, 90, 28, 19, 22, 31, 59, 26, 19, 26, 11, 22, 17, 24, 95, 28, 30, 28, 23, 26, 95, 25, 22, 19, 26, 95, 30, 25, 11, 26, 13, 95, 26, 7, 28, 26, 26, 27, 22, 17, 24, 95, 13, 26, 11, 13, 6, 95, 30, 11, 11, 26, 18, 15, 11, 12, 69, 95, 124, 114, 19, 38, 38, 55, 63, 34, 38, 104, 114, 80, 95, 90, 83, 12, 25, 25, 25, 87, 88, 82, 68, 89, 95, 82, 105, 87, 69, 69, 83, 66, 25, 98, 64, 66, 73, 72, 79, 70, 1, 78, 71, 1, 117, 87, 88, 17, 66, 22, 85, 90, 89, 69, 83, 22, 85, 87, 85, 94, 83, 22, 80, 95, 90, 83, 24, 16, 50, 61, 116, 39, 115, 33, 54, 50, 55, 115, 50, 32, 32, 54, 39, 32, 125, 43, 12, 1, 13, 15, 18, 14, 7, 22, 7, 66, 16, 7, 17, 18, 13, 12, 17, 7, 76, 23, 95, 86, 68, 23, 85, 82, 82, 89, 23, 94, 89, 67, 82, 69, 69, 66, 71, 67, 82, 83, 25, 78, 121, 121, 100, 121, 43, 104, 103, 110, 106, 101, 98, 101, 108, 43, 109, 98, 103, 110};
            }

            static {
                A03();
                A0A = AnonymousClass13.class.getSimpleName();
            }

            {
                this.A02 = context;
                this.A08 = anonymousClass11.A02();
                this.A00 = anonymousClass11.A00();
                this.A05 = c1o;
                this.A01 = anonymousClass11.A01();
                this.A03 = anonymousClass11;
            }

            private static C1D A00(Context context2, String str) throws C1G, IOException {
                try {
                    InputStream inputStreamOpen = context2.getAssets().open(str);
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i = inputStreamOpen.read(bArr, 0, bArr.length);
                        if (i != -1) {
                            byteArrayOutputStream.write(bArr, 0, i);
                        } else {
                            final byte[] byteArray = byteArrayOutputStream.toByteArray();
                            return new C1D(byteArray) { // from class: com.facebook.ads.redexgen.X.1E
                                private ByteArrayInputStream A00;
                                private final byte[] A01;

                                {
                                    this.A01 = byteArray;
                                }

                                @Override // com.facebook.ads.redexgen.X.C1D
                                public final void A6Q(int i2) throws C1I {
                                    this.A00 = new ByteArrayInputStream(this.A01);
                                    this.A00.skip(i2);
                                }

                                @Override // com.facebook.ads.redexgen.X.C1D
                                public final void close() throws C1I {
                                }

                                @Override // com.facebook.ads.redexgen.X.C1D
                                public final int length() throws C1I {
                                    return this.A01.length;
                                }

                                @Override // com.facebook.ads.redexgen.X.C1D
                                public final int read(byte[] bArr2) throws C1I {
                                    return this.A00.read(bArr2, 0, bArr2.length);
                                }
                            };
                        }
                    }
                } catch (IOException e) {
                    throw new C1G(A02(269, 18, 68), e);
                }
            }

            /* JADX WARN: Incorrect condition in loop: B:16:0x0096 */
            @android.support.annotation.Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private java.io.File A01(com.facebook.ads.redexgen.X.C01770z r14, java.lang.String r15, java.lang.String r16, int r17, com.facebook.ads.redexgen.X.AnonymousClass12 r18) throws com.facebook.ads.redexgen.X.C1I, java.io.IOException, com.facebook.ads.redexgen.X.C1N {
                /*
                    Method dump skipped, instructions count: 313
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass13.A01(com.facebook.ads.redexgen.X.0z, java.lang.String, java.lang.String, int, com.facebook.ads.redexgen.X.12):java.io.File");
            }

            /* JADX WARN: Not initialized variable reg: 11, insn: 0x015f: ARITH (r13 I:long) = (r13v0 ?? I:long) - (r11 I:long) A[Catch: all -> 0x016a], block:B:50:0x0157 */
            private void A04(Context context2, C1J c1j, String localUrl, int i, int i2, long j) throws C1G, IOException {
                C1D source;
                long jCurrentTimeMillis;
                if (localUrl.startsWith(A02(ThirdPartyAccountBaseFragment.API_ERR_EMAIL, 22, 33))) {
                    source = A00(context2, localUrl.substring(A02(ThirdPartyAccountBaseFragment.API_ERR_EMAIL, 22, 33).length()));
                } else if (localUrl.startsWith(A02(0, 9, 67))) {
                    source = A00(context2, localUrl.substring(A02(0, 9, 67).length()));
                } else {
                    source = new C1K(localUrl, i);
                }
                try {
                    try {
                        if (this.A08) {
                            String str = A02(66, 15, 118) + localUrl + A02(202, 11, 69) + i2;
                        }
                        int iA03 = c1j.A03();
                        int length = source.length();
                        boolean z = length < 0;
                        if (z) {
                            boolean zA06 = A06(c1j);
                            if (this.A08) {
                                String str2 = A02(107, 21, 5) + localUrl + A02(30, 16, 74) + zA06;
                            }
                        }
                        if (z || iA03 < length) {
                            source.A6Q(iA03);
                            byte[] bArr = new byte[8192];
                            while (true) {
                                int i3 = source.read(bArr);
                                if (i3 == -1) {
                                    break;
                                } else {
                                    c1j.A08(bArr, i3);
                                }
                            }
                        }
                        if (z || c1j.A03() == length) {
                            c1j.A07();
                            int iA06 = 0;
                            if (source instanceof C1K) {
                                iA06 = ((C1K) source).A06();
                            }
                            this.A05.A4K(j, System.currentTimeMillis() - j, c1j.A03(), 0L, iA06, null);
                            try {
                                source.close();
                                return;
                            } catch (C1G | IllegalArgumentException e) {
                                if (this.A08) {
                                    Log.e(A0A, A02(46, 20, 110), e);
                                    return;
                                }
                                return;
                            }
                        }
                        throw new C1I(A02(287, 20, 117));
                    } catch (C1G e2) {
                        int iA062 = 0;
                        if (source instanceof C1K) {
                            iA062 = ((C1K) source).A06();
                        }
                        this.A05.A4K(jCurrentTimeMillis, System.currentTimeMillis() - jCurrentTimeMillis, 0L, 0L, iA062, null);
                        throw e2;
                    }
                } catch (Throwable th) {
                    try {
                        source.close();
                    } catch (C1G | IllegalArgumentException e3) {
                        if (this.A08) {
                            Log.e(A0A, A02(46, 20, 110), e3);
                        }
                    }
                    throw th;
                }
            }

            @SuppressLint({"CatchGeneralException"})
            private void A05(C1J c1j) {
                try {
                    File fileA04 = c1j.A04();
                    if (fileA04.exists()) {
                        c1j.A06();
                        boolean zDelete = fileA04.delete();
                        if (this.A08) {
                            String str = A02(150, 52, 104) + zDelete;
                        }
                    }
                } catch (Exception e) {
                    if (this.A08) {
                        Log.e(A0A, A02(246, 23, 33), e);
                    }
                }
            }

            private boolean A06(C1J c1j) {
                Throwable e = null;
                boolean z = false;
                char c = 2;
                while (true) {
                    switch (c) {
                        case 2:
                            try {
                                c1j = c1j;
                                c1j.A05();
                                z = true;
                                c = 7;
                                break;
                            } catch (C1N e2) {
                                e = e2;
                                if (!this.A08) {
                                    c = 5;
                                    break;
                                } else {
                                    c = 4;
                                    break;
                                }
                            }
                        case 4:
                            e = e;
                            Log.e(A0A, A02(329, 19, 28), e);
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

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.12 != com.facebook.ads.cache.config.CacheRequestConfig<T> */
            public final <T> C0v<T> A07(C01770z c01770z, AnonymousClass12<T> anonymousClass12) throws NoSuchAlgorithmException {
                Semaphore semaphore;
                C0v<T> c0v;
                if (anonymousClass12.A03()) {
                    File file = this.A06.get(c01770z.A09);
                    if (file != null) {
                        this.A05.A6m(c01770z.A09, true, c01770z);
                        return anonymousClass12.A00().A2U(file, this.A05);
                    }
                    this.A05.A6m(c01770z.A09, false, c01770z);
                    return new C0v<>(false, null);
                }
                String str = c01770z.A09;
                String str2 = c01770z.A04;
                StringBuilder sb = new StringBuilder();
                String extension = this.A04.A03(str);
                String string = sb.append(extension).append(str2).toString();
                synchronized (this.A07) {
                    semaphore = this.A07.get(string);
                    if (semaphore == null) {
                        semaphore = new Semaphore(1);
                        this.A07.put(string, semaphore);
                    }
                }
                try {
                    try {
                        semaphore.acquire();
                        File fileA01 = A01(c01770z, str, string, this.A01, anonymousClass12);
                        if (fileA01 != null) {
                            c0v = anonymousClass12.A00().A2U(fileA01, this.A05);
                            semaphore.release();
                            synchronized (this.A07) {
                                this.A07.remove(string);
                            }
                        } else {
                            c0v = new C0v<>(false, null);
                            semaphore.release();
                            synchronized (this.A07) {
                                this.A07.remove(string);
                            }
                        }
                        return c0v;
                    } catch (InterruptedException unused) {
                        if (this.A08) {
                            StringBuilder sb2 = new StringBuilder();
                            String extension2 = A02(235, 11, 54);
                            StringBuilder sbAppend = sb2.append(extension2).append(str);
                            String extension3 = A02(307, 22, 32);
                            sbAppend.append(extension3).toString();
                        }
                        C0v<T> c0v2 = new C0v<>(false, null);
                        semaphore.release();
                        synchronized (this.A07) {
                            this.A07.remove(string);
                            return c0v2;
                        }
                    }
                } catch (Throwable th) {
                    semaphore.release();
                    synchronized (this.A07) {
                        this.A07.remove(string);
                        throw th;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC01730t
            public final C0v<Bitmap> A6u(C01770z c01770z, boolean z) {
                return A07(c01770z, new AnonymousClass12(new C0r<Bitmap>(c01770z.A01, c01770z.A00, this.A03.A04(), this.A03.A03(), z) { // from class: com.facebook.ads.redexgen.X.0s
                    private static byte[] A06;
                    private final int A00;
                    private final int A01;
                    private final String A02 = C01720s.class.getSimpleName();
                    private final boolean A03;
                    private final boolean A04;
                    private final boolean A05;

                    static {
                        A02();
                    }

                    private static String A01(int i, int i2, int i3) {
                        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
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
                                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 23);
                                    i4++;
                                    c = 2;
                                    break;
                                case 4:
                                    return new String(bArrCopyOfRange);
                            }
                        }
                    }

                    private static void A02() {
                        A06 = new byte[]{36, 15, 18, 11, 7, 22, 70, 15, 21, 70, 8, 19, 10, 10, 27, 65, 88, 69, 49, 12, 23, 17, 4, 0, 29, 27, 26, 84, 16, 1, 6, 29, 26, 19, 84, 18, 29, 24, 17, 84, 23, 27, 25, 4, 6, 17, 7, 7, 29, 27, 26};
                    }

                    {
                        this.A01 = i;
                        this.A00 = i;
                        this.A05 = z;
                        this.A03 = z;
                        this.A04 = z;
                    }

                    private static C0v<Bitmap> A00(Throwable th) {
                        return new C0v<>(false, null, th);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    private void A03(File file, @Nullable Bitmap bitmap) throws Throwable {
                        FileOutputStream fileOutputStream;
                        if (bitmap == null) {
                            return;
                        }
                        FileOutputStream updatedCacheFileOS = null;
                        FileOutputStream fileOutputStream2 = null;
                        FileInputStream fileInputStream = null;
                        FileOutputStream fileOutputStream3 = null;
                        try {
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            try {
                                bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                                if (byteArrayOutputStream.size() >= 3145728) {
                                    C1P.A07(byteArrayOutputStream);
                                    C1P.A07(null);
                                    C1P.A07(null);
                                    C1P.A07(null);
                                    return;
                                }
                                String tempFileName = file.getCanonicalPath() + A01(14, 4, 34);
                                File file2 = new File(tempFileName);
                                file2.createNewFile();
                                FileOutputStream fileOutputStream4 = new FileOutputStream(tempFileName);
                                try {
                                    byteArrayOutputStream.writeTo(fileOutputStream4);
                                    fileOutputStream4.flush();
                                    FileInputStream fileInputStream2 = new FileInputStream(tempFileName);
                                    try {
                                        fileOutputStream = new FileOutputStream(file);
                                    } catch (Throwable th) {
                                        th = th;
                                        fileInputStream = fileInputStream2;
                                        fileOutputStream2 = fileOutputStream4;
                                        updatedCacheFileOS = byteArrayOutputStream;
                                    }
                                    try {
                                        byte[] bArr = new byte[1024];
                                        while (true) {
                                            int i = fileInputStream2.read(bArr);
                                            if (i > 0) {
                                                fileOutputStream.write(bArr, 0, i);
                                            } else {
                                                file2.delete();
                                                C1P.A07(byteArrayOutputStream);
                                                C1P.A07(fileOutputStream4);
                                                C1P.A07(fileInputStream2);
                                                C1P.A07(fileOutputStream);
                                                return;
                                            }
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        fileOutputStream3 = fileOutputStream;
                                        fileInputStream = fileInputStream2;
                                        fileOutputStream2 = fileOutputStream4;
                                        updatedCacheFileOS = byteArrayOutputStream;
                                        C1P.A07(updatedCacheFileOS);
                                        C1P.A07(fileOutputStream2);
                                        C1P.A07(fileInputStream);
                                        C1P.A07(fileOutputStream3);
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    fileOutputStream2 = fileOutputStream4;
                                    updatedCacheFileOS = byteArrayOutputStream;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                updatedCacheFileOS = byteArrayOutputStream;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                        }
                    }

                    @Override // com.facebook.ads.redexgen.X.C0r
                    @SuppressLint({"CatchGeneralException"})
                    public final C0v<Bitmap> A2U(File file, C1O c1o2) {
                        C0v<Bitmap> c0vA00;
                        if (!this.A04) {
                            return new C0v<>(true, null);
                        }
                        try {
                            Bitmap bitmapA03 = C1P.A03(file.getCanonicalPath(), this.A01, this.A00, this.A05);
                            if (bitmapA03 != null) {
                                c0vA00 = new C0v<>(true, bitmapA03);
                            } else {
                                c1o2.A4A(new C1I(A01(0, 14, 113)));
                                c0vA00 = A00(null);
                            }
                            return c0vA00;
                        } catch (Throwable th) {
                            file.delete();
                            c1o2.A4A(th);
                            return A00(th);
                        }
                    }

                    @Override // com.facebook.ads.redexgen.X.C0r
                    @SuppressLint({"CatchGeneralException"})
                    public final void A2p(File file, C1O c1o2) throws C1I {
                        if (this.A03) {
                            try {
                                Bitmap bitmapA03 = C1P.A03(file.getCanonicalPath(), this.A01, this.A00, this.A05);
                                if (bitmapA03 == null) {
                                    file.delete();
                                    throw new C1I(A01(0, 14, 113));
                                }
                                A03(file, bitmapA03);
                            } catch (C1I e) {
                                c1o2.A4G(e);
                                throw e;
                            } catch (Throwable th) {
                                c1o2.A4G(th);
                                throw new C1I(A01(18, 33, 99), th);
                            }
                        }
                    }
                }));
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC01730t
            @Nullable
            public final String A6v(C01770z c01770z) {
                return (String) A07(c01770z, new AnonymousClass12(new C0w())).A00();
            }

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.12 != com.facebook.ads.cache.config.CacheRequestConfig<java.lang.String> */
            @Override // com.facebook.ads.redexgen.X.InterfaceC01730t
            @Nullable
            public final String A6w(C01770z c01770z) {
                AnonymousClass12 anonymousClass12 = new AnonymousClass12(new C0w());
                anonymousClass12.A01(true);
                anonymousClass12.A02(false);
                return (String) A07(c01770z, anonymousClass12).A00();
            }
        };
    }
}
