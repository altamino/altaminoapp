package androidx.media3.exoplayer.util;

import android.os.SystemClock;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.upstream.Loader;
import com.google.common.base.c;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.util.Arrays;
import java.util.ConcurrentModificationException;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class SntpClient {
    public static final String DEFAULT_NTP_HOST = "time.android.com";
    private static final int NTP_LEAP_NOSYNC = 3;
    private static final int NTP_MODE_BROADCAST = 5;
    private static final int NTP_MODE_CLIENT = 3;
    private static final int NTP_MODE_SERVER = 4;
    private static final int NTP_PACKET_SIZE = 48;
    private static final int NTP_PORT = 123;
    private static final int NTP_STRATUM_DEATH = 0;
    private static final int NTP_STRATUM_MAX = 15;
    private static final int NTP_VERSION = 3;
    private static final long OFFSET_1900_TO_1970 = 2208988800L;
    private static final int ORIGINATE_TIME_OFFSET = 24;
    private static final int RECEIVE_TIME_OFFSET = 32;
    private static final int TIMEOUT_MS = 10000;
    private static final int TRANSMIT_TIME_OFFSET = 40;

    @GuardedBy
    private static long elapsedRealtimeOffsetMs = 0;

    @GuardedBy
    private static boolean isInitialized = false;

    @GuardedBy
    private static String ntpHost = "time.android.com";
    private static final Object loaderLock = new Object();
    private static final Object valueLock = new Object();

    public interface InitializationCallback {
        void a();

        void b(IOException iOException);
    }

    private static final class NtpTimeCallback implements Loader.Callback<Loader.Loadable> {

        @Nullable
        private final InitializationCallback callback;

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void H(Loader.Loadable loadable, long j6, long j10, boolean z6) {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public void Y(Loader.Loadable loadable, long j6, long j10) {
            if (this.callback != null) {
                if (SntpClient.k()) {
                    this.callback.a();
                } else {
                    this.callback.b(new IOException(new ConcurrentModificationException()));
                }
            }
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Callback
        public Loader.LoadErrorAction w(Loader.Loadable loadable, long j6, long j10, IOException iOException, int i10) {
            InitializationCallback initializationCallback = this.callback;
            if (initializationCallback != null) {
                initializationCallback.b(iOException);
            }
            return Loader.DONT_RETRY;
        }

        public NtpTimeCallback(@Nullable InitializationCallback initializationCallback) {
            this.callback = initializationCallback;
        }
    }

    private static void g(byte b7, byte b10, int i10, long j6) throws IOException {
        if (b7 == 3) {
            throw new IOException("SNTP: Unsynchronized server");
        }
        if (b10 != 4 && b10 != 5) {
            throw new IOException("SNTP: Untrusted mode: " + ((int) b10));
        }
        if (i10 != 0 && i10 <= 15) {
            if (j6 == 0) {
                throw new IOException("SNTP: Zero transmitTime");
            }
        } else {
            throw new IOException("SNTP: Untrusted stratum: " + i10);
        }
    }

    private static final class NtpTimeLoadable implements Loader.Loadable {
        private NtpTimeLoadable() {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public void cancelLoad() {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public void load() throws IOException {
            synchronized (SntpClient.loaderLock) {
                synchronized (SntpClient.valueLock) {
                    if (!SntpClient.isInitialized) {
                        long jL = SntpClient.l();
                        synchronized (SntpClient.valueLock) {
                            long unused = SntpClient.elapsedRealtimeOffsetMs = jL;
                            boolean unused2 = SntpClient.isInitialized = true;
                        }
                    }
                }
            }
        }
    }

    public static long h() {
        long j6;
        synchronized (valueLock) {
            try {
                j6 = isInitialized ? elapsedRealtimeOffsetMs : -9223372036854775807L;
            } catch (Throwable th) {
                throw th;
            }
        }
        return j6;
    }

    public static String i() {
        String str;
        synchronized (valueLock) {
            str = ntpHost;
        }
        return str;
    }

    public static boolean k() {
        boolean z6;
        synchronized (valueLock) {
            z6 = isInitialized;
        }
        return z6;
    }

    private static long m(byte[] bArr, int i10) {
        int i11 = bArr[i10];
        int i12 = bArr[i10 + 1];
        int i13 = bArr[i10 + 2];
        int i14 = bArr[i10 + 3];
        if ((i11 & 128) == 128) {
            i11 = (i11 & 127) + 128;
        }
        if ((i12 & 128) == 128) {
            i12 = (i12 & 127) + 128;
        }
        if ((i13 & 128) == 128) {
            i13 = (i13 & 127) + 128;
        }
        if ((i14 & 128) == 128) {
            i14 = (i14 & 127) + 128;
        }
        return (((long) i11) << 24) + (((long) i12) << 16) + (((long) i13) << 8) + ((long) i14);
    }

    private static void o(byte[] bArr, int i10, long j6) {
        if (j6 == 0) {
            Arrays.fill(bArr, i10, i10 + 8, (byte) 0);
            return;
        }
        long j10 = j6 / 1000;
        long j11 = j6 - (j10 * 1000);
        long j12 = j10 + OFFSET_1900_TO_1970;
        bArr[i10] = (byte) (j12 >> 24);
        bArr[i10 + 1] = (byte) (j12 >> 16);
        bArr[i10 + 2] = (byte) (j12 >> 8);
        bArr[i10 + 3] = (byte) j12;
        long j13 = (j11 * 4294967296L) / 1000;
        bArr[i10 + 4] = (byte) (j13 >> 24);
        bArr[i10 + 5] = (byte) (j13 >> 16);
        bArr[i10 + 6] = (byte) (j13 >> 8);
        bArr[i10 + 7] = (byte) (Math.random() * 255.0d);
    }

    private SntpClient() {
    }

    public static void j(@Nullable Loader loader, @Nullable InitializationCallback initializationCallback) {
        if (k()) {
            if (initializationCallback != null) {
                initializationCallback.a();
            }
        } else {
            if (loader == null) {
                loader = new Loader("SntpClient");
            }
            loader.m(new NtpTimeLoadable(), new NtpTimeCallback(initializationCallback), 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long l() throws IOException {
        InetAddress byName = InetAddress.getByName(i());
        DatagramSocket datagramSocket = new DatagramSocket();
        try {
            datagramSocket.setSoTimeout(10000);
            byte[] bArr = new byte[48];
            DatagramPacket datagramPacket = new DatagramPacket(bArr, 48, byName, 123);
            bArr[0] = c.ESC;
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            o(bArr, 40, jCurrentTimeMillis);
            datagramSocket.send(datagramPacket);
            datagramSocket.receive(new DatagramPacket(bArr, 48));
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            long j6 = jCurrentTimeMillis + (jElapsedRealtime2 - jElapsedRealtime);
            byte b7 = bArr[0];
            int i10 = bArr[1] & 255;
            long jN = n(bArr, 24);
            long jN2 = n(bArr, 32);
            long jN3 = n(bArr, 40);
            g((byte) ((b7 >> 6) & 3), (byte) (b7 & 7), i10, jN3);
            long j10 = (j6 + (((jN2 - jN) + (jN3 - j6)) / 2)) - jElapsedRealtime2;
            datagramSocket.close();
            return j10;
        } catch (Throwable th) {
            try {
                datagramSocket.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static long n(byte[] bArr, int i10) {
        long jM = m(bArr, i10);
        long jM2 = m(bArr, i10 + 4);
        if (jM == 0 && jM2 == 0) {
            return 0L;
        }
        return ((jM - OFFSET_1900_TO_1970) * 1000) + ((jM2 * 1000) / 4294967296L);
    }
}
