package androidx.core.net;

import android.net.TrafficStats;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.net.DatagramSocket;
import java.net.SocketException;

/* JADX INFO: loaded from: classes9.dex */
public final class TrafficStatsCompat {

    @RequiresApi
    static class Api24Impl {
        private Api24Impl() {
        }

        @DoNotInline
        static void a(DatagramSocket datagramSocket) throws SocketException {
            TrafficStats.tagDatagramSocket(datagramSocket);
        }

        @DoNotInline
        static void b(DatagramSocket datagramSocket) throws SocketException {
            TrafficStats.untagDatagramSocket(datagramSocket);
        }
    }

    private TrafficStatsCompat() {
    }
}
