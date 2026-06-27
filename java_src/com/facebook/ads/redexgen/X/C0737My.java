package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.SystemClock;
import android.support.annotation.Nullable;
import android.support.v8.renderscript.ScriptIntrinsicBLAS;
import android.util.Log;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.narvii.permisson.NVPermission;
import com.tonyodev.fetch.FetchService;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@SuppressLint({"HardcodedIPAddressUse"})
/* renamed from: com.facebook.ads.redexgen.X.My, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0737My {

    @Nullable
    private static I2 A08;
    private static byte[] A09;
    private boolean A00;
    private final int A01;
    private final C0726Mn A02;
    private final Object A03;
    private final Thread A04;
    private final ServerSocket A05;
    private final Map<String, N0> A06;
    private final ExecutorService A07;

    static {
        A08();
    }

    private static String A03(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 100);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A08() {
        A09 = new byte[]{-8, 13, 26, 25, 9, 20, 28, 19, -59, 24, 10, 23, 27, 10, 23, -45, -45, -45, -59, -22, 23, 23, 20, 23, -59, 21, 23, 10, 8, 6, 8, 13, 14, 19, 12, -59, 26, 23, 17, -59, 0, 6, 25, 25, 10, 18, 21, 25, 24, -33, -59, 1, 13, 13, 9, -45, -56, -56, -66, 12, -45, -66, -3, -56, -66, 12, 16, 61, 61, 58, 61, -21, 46, 55, 58, 62, 52, 57, 50, -21, 62, 58, 46, 54, 48, 63, -17, 17, 14, 23, 24, -65, 18, 4, 17, 21, 4, 17, -65, 8, 18, 13, -58, 19, -65, 15, 8, 13, 6, 4, 3, -51, -65, -30, 0, 2, 7, 8, 13, 6, -65, 3, 14, 4, 18, 13, -58, 19, -65, 22, 14, 17, 10, -51, 25, 18, 23, 16, -55, 24, 20, -31, -10, 3, 2, -14, -3, 5, -4, -82, 1, -13, 0, 4, -13, 0, -68, -68, -68, -82, -45, 0, 0, -3, 0, -82, -2, -9, -4, -11, -9, -4, -11, -82, 1, -13, 0, 4, -13, 0, -82, -23, -17, 2, 2, -13, -5, -2, 2, 1, -56, -82, 62, 10, -2, 78, 71, 76, 69, 67, 66, 29, -2, -47, -2, -2, -5, -2, -84, -4, -2, -15, -17, -19, -17, -12, -11, -6, -13, -84, 1, -2, -8, -84, -25, -19, 0, 0, -15, -7, -4, 0, -58, -84, -97, -109, -32, -44, -21, -109, -25, -36, -32, -40, -30, -24, -25, -83, -109, -52, -40, -40, -44, -77, -75, -78, -75, -92, -74, -76, -76, -92, -45, -49, -114, -114, -72, -27, -27, -30, -27, -109, -27, -40, -44, -41, -36, -31, -38, -109, -29, -36, -31, -38, -109, -27, -40, -26, -29, -30, -31, -26, -40, -37, -3, -6, 3, 4, -50, -20, -18, -13, -16, -77, -76, -71, -80, -78, -80, -78, -80, -77, 21, 66, 66, 63, 66, -16, 64, 57, 62, 55, 57, 62, 55, -16, 67, 53, 66, 70, 53, 66, -16, 43, 49, 68, 68, 53, 61, 64, 68, 10, -16, -28, 17, 17, 14, 17, -65, 2, 11, 14, 18, 8, 13, 6, -65, 18, 14, 2, 10, 4, 19, -65, 8, 13, 15, 20, 19, -65, 18, 19, 17, 4, 0, 12, 41, -6, 18, -29, -43, -54, -9, -9, -12, -9, -91, -24, -15, -12, -8, -18, -13, -20, -91, -8, -12, -24, -16, -22, -7, -91, -12, -6, -7, -11, -6, -7, -91, -8, -7, -9, -22, -26, -14, -22, -4, -4, -18, -3, -61, -72, -72, -60, -15, -15, -18, -15, -97, -17, -15, -18, -30, -28, -14, -14, -24, -19, -26, -97, -15, -28, -16, -12, -28, -14, -13, -21, -28, -23, -30, 2, 21, 33, 37, 21, 35, 36, -48, 36, 31, -48, 19, 17, 19, 24, 21, -48, 32, 34, 31, 40, 41, -22, -37, -49, 35, 24, 28, 20, 30, 36, 35, -23, -49, -25, 9, 9, 11, 22, 26, -58, 20, 11, 29, -58, 25, 21, 9, 17, 11, 26, -58, -84, -40, -40, -44, -76, -42, -45, -36, -35, -89, -59, -57, -52, -55, -73, -55, -42, -38, -55, -42, -124, -55, -42, -42, -45, -42, -22, 23, 23, 20, 23, -59, 23, 10, 6, 9, 14, 19, 12, -59, 26, 23, 17, -18, 27, 27, 24, 27, -55, 28, 17, 30, 29, 29, 18, 23, 16, -55, 13, 24, 32, 23, -55, 25, 27, 24, 33, 34, -55, 28, 14, 27, 31, 14, 27, 43, 68, 73, 66, -5, 77, 64, 78, 75, 74, 73, 78, 64, 21, -5, 59, -24, 21, 21, 18, 21, -61, 22, 23, 4, 21, 23, 12, 17, 10, -61, 15, 18, 6, 4, 15, -61, 19, 21, 18, 27, 28, -61, 22, 8, 21, 25, 8, 21, -46, -13, -24, -15, -24, -25, -93, -26, -14, -15, -15, -24, -26, -9, -20, -14, -15, -10, -67, -93, -40, -52, 33, 30, 24, -26, -52, -19, 26, 26, 23, 26, -56, 12, 29, 26, 17, 22, 15, -56, 31, 9, 17, 28, 17, 22, 15, -56, 11, 23, 22, 22, 13, 11, 28, 17, 23, 22};
    }

    public C0737My(Context context) {
        this(new C0732Mt(context).A00());
    }

    private C0737My(C0726Mn c0726Mn) throws InterruptedException {
        this.A03 = new Object();
        this.A07 = Executors.newFixedThreadPool(8);
        this.A06 = new ConcurrentHashMap();
        this.A02 = (C0726Mn) N3.A00(c0726Mn);
        try {
            this.A05 = new ServerSocket(0, 8, InetAddress.getByName(A03(303, 9, 30)));
            this.A01 = this.A05.getLocalPort();
            CountDownLatch countDownLatch = new CountDownLatch(1);
            this.A04 = new Thread(new C0736Mx(this, countDownLatch));
            this.A04.start();
            countDownLatch.await();
            A05();
        } catch (IOException | InterruptedException e) {
            this.A07.shutdown();
            throw new IllegalStateException(A03(594, 33, 63), e);
        }
    }

    private int A00() {
        int iA03;
        synchronized (this.A03) {
            iA03 = 0;
            Iterator<N0> it = this.A06.values().iterator();
            while (it.hasNext()) {
                iA03 += it.next().A03();
            }
        }
        return iA03;
    }

    public static I2 A01() {
        Object c0731Ms = null;
        char c = A08 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0731Ms = new C0731Ms();
                    c = 3;
                    break;
                case 3:
                    return (I2) c0731Ms;
                case 4:
                    c0731Ms = A08;
                    c = 3;
                    break;
            }
        }
    }

    private N0 A02(String str) throws C0724Ml {
        N0 n0;
        synchronized (this.A03) {
            n0 = this.A06.get(str);
            if (n0 == null) {
                n0 = new N0(str, this.A02);
                this.A06.put(str, n0);
            }
        }
        return n0;
    }

    private String A04(String str) {
        return String.format(Locale.US, A03(51, 15, 53), A03(303, 9, 30), Integer.valueOf(this.A01), N6.A02(str));
    }

    private void A05() throws IOException {
        int maxPingAttempts = 300;
        int pingAttempts = 0;
        while (pingAttempts < 3) {
            try {
                this.A00 = ((Boolean) this.A07.submit(new CallableC0733Mu(this, null)).get(maxPingAttempts, TimeUnit.MILLISECONDS)).booleanValue();
            } catch (InterruptedException | ExecutionException | TimeoutException e) {
                Log.e(A03(293, 10, 39), A03(FetchService.ACTION_RESUME, 31, 108) + pingAttempts + A03(474, 11, 75) + maxPingAttempts + A03(378, 3, 81), e);
            }
            if (!this.A00) {
                SystemClock.sleep(maxPingAttempts);
                pingAttempts++;
                maxPingAttempts *= 2;
            } else {
                return;
            }
        }
        Log.e(A03(293, 10, 39), A03(ScriptIntrinsicBLAS.LEFT, 51, 42) + pingAttempts + A03(234, 15, 15) + (maxPingAttempts / 2) + A03(376, 2, 104));
        A09();
    }

    private void A06() {
        synchronized (this.A03) {
            Iterator<N0> it = this.A06.values().iterator();
            while (it.hasNext()) {
                it.next().A04();
            }
            this.A06.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07() throws IOException {
        while (!Thread.currentThread().isInterrupted()) {
            try {
                Socket socketAccept = this.A05.accept();
                String str = A03(485, 18, 66) + socketAccept;
                this.A07.submit(new C0735Mw(this, socketAccept));
            } catch (IOException e) {
                A0D(new C0724Ml(A03(654, 31, 68), e));
                return;
            }
        }
    }

    private final void A09() throws IOException {
        A06();
        this.A04.interrupt();
        try {
            if (!this.A05.isClosed()) {
                this.A05.close();
            }
        } catch (IOException e) {
            A0D(new C0724Ml(A03(546, 32, 69), e));
        }
    }

    public static void A0A(@Nullable I2 i2) {
        A08 = i2;
    }

    private void A0D(Throwable th) {
        Log.e(A03(293, 10, 39), A03(503, 26, 0), th);
    }

    private void A0E(Socket socket) throws IOException {
        try {
            if (!socket.isClosed()) {
                socket.close();
            }
        } catch (IOException e) {
            A0D(new C0724Ml(A03(66, 20, 103), e));
        }
    }

    private void A0F(Socket socket) throws IOException {
        try {
            if (!socket.isInputShutdown()) {
                socket.shutdownInput();
            }
        } catch (SocketException unused) {
        } catch (IOException e) {
            A0D(new C0724Ml(A03(343, 33, 59), e));
        }
    }

    private void A0G(Socket socket) throws IOException {
        try {
            if (socket.isOutputShutdown()) {
                socket.shutdownOutput();
            }
        } catch (IOException e) {
            A0D(new C0724Ml(A03(381, 34, 33), e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0H(Socket socket) throws IOException {
        try {
            try {
                C0728Mp c0728MpA01 = C0728Mp.A01(socket.getInputStream());
                String str = A03(451, 23, 76) + c0728MpA01;
                String strA01 = N6.A01(c0728MpA01.A01);
                if (A03(447, 4, 23).equals(strA01)) {
                    A0J(socket);
                } else {
                    A02(strA01).A05(c0728MpA01, socket);
                }
            } finally {
                A0I(socket);
                String str2 = A03(627, 20, 31) + A00();
            }
        } catch (C0724Ml e) {
            e = e;
            A0D(new C0724Ml(A03(423, 24, 27), e));
        } catch (SocketException unused) {
        } catch (IOException e2) {
            e = e2;
            A0D(new C0724Ml(A03(423, 24, 27), e));
        }
    }

    private void A0I(Socket socket) throws IOException {
        A0F(socket);
        A0G(socket);
        A0E(socket);
    }

    private void A0J(Socket socket) throws IOException {
        OutputStream outputStream = socket.getOutputStream();
        outputStream.write(A03(249, 17, 32).getBytes());
        outputStream.write(A03(134, 7, 69).getBytes());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0K() throws C0724Ml {
        boolean zEquals;
        N1 n1 = new N1(A04(A03(447, 4, 23)));
        try {
            try {
                byte[] bytes = A03(134, 7, 69).getBytes();
                n1.A6Q(0);
                byte[] bArr = new byte[bytes.length];
                n1.read(bArr);
                zEquals = Arrays.equals(bytes, bArr);
                String str = A03(IjkMediaMeta.FF_PROFILE_H264_CONSTRAINED_BASELINE, 16, 119) + new String(bArr) + A03(PsExtractor.AUDIO_STREAM, 11, 122) + zEquals;
            } catch (C0724Ml e) {
                Log.e(A03(293, 10, 39), A03(266, 27, 15), e);
                n1.close();
                zEquals = false;
            }
            return zEquals;
        } finally {
            n1.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Finally extract failed */
    public boolean A0N(String str) throws C0724Ml {
        C0724Ml e = null;
        byte[] bArr = null;
        boolean z = false;
        N1 n1 = new N1(A04(str));
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    n1 = n1;
                    n1.A6Q(0);
                    bArr = new byte[8192];
                    c = 5;
                    break;
                case 5:
                    try {
                        try {
                            n1 = n1;
                            bArr = bArr;
                            if (n1.read(bArr) != -1) {
                                c = 5;
                                break;
                            } else {
                                c = '\f';
                                break;
                            }
                        } catch (C0724Ml e2) {
                            e = e2;
                            c = '\b';
                            break;
                        }
                    } catch (Throwable th) {
                        n1.close();
                        throw th;
                    }
                case '\b':
                    Log.e(A03(293, 10, 39), A03(529, 17, 65), e);
                    n1.close();
                    c = '\r';
                    break;
                case '\f':
                    n1 = n1;
                    n1.close();
                    z = true;
                    c = '\r';
                    break;
                case '\r':
                    return z;
            }
        }
    }

    public final String A0O(String str) {
        C0737My c0737My = this;
        char c = !c0737My.A00 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    Log.e(A03(293, 10, 39), A03(86, 48, 59));
                    c = 3;
                    break;
                case 3:
                    c0737My = c0737My;
                    if (!c0737My.A00) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    str = str;
                    if (!str.startsWith(A03(415, 8, 37))) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    c0737My = c0737My;
                    str = c0737My.A04(str);
                    c = 6;
                    break;
                case 6:
                    return str;
            }
        }
    }

    public final boolean A0P(String str, I5 i5) throws IOException {
        int i = 300;
        int i2 = 0;
        while (i2 < 3) {
            try {
                i5.A62(i2);
            } catch (InterruptedException | ExecutionException e) {
                Log.e(A03(293, 10, 39), A03(NVPermission.REQ_SHARE_BUTTON_SAVE_STORY, 31, 40) + i2 + A03(647, 7, 72) + str + A03(378, 3, 81), e);
            }
            if (!((Boolean) this.A07.submit(new CallableC0734Mv(this, str)).get()).booleanValue()) {
                SystemClock.sleep(i);
                i2++;
                i *= 2;
            } else {
                return true;
            }
        }
        Log.e(A03(293, 10, 39), A03(0, 51, 65) + i2 + A03(647, 7, 72) + str + A03(376, 2, 104));
        A09();
        return false;
    }
}
