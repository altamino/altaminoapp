package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;

/* JADX INFO: loaded from: classes4.dex */
public final class n0 extends f {
    public static final int DEFAULT_MAX_PACKET_SIZE = 2000;
    public static final int DEFAULT_SOCKET_TIMEOUT_MILLIS = 8000;
    public static final int UDP_PORT_UNSET = -1;

    @Nullable
    private InetAddress address;

    @Nullable
    private MulticastSocket multicastSocket;
    private boolean opened;
    private final DatagramPacket packet;
    private final byte[] packetBuffer;
    private int packetRemaining;

    @Nullable
    private DatagramSocket socket;
    private final int socketTimeoutMillis;

    @Nullable
    private Uri uri;

    public n0() {
        this(2000);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() {
        this.uri = null;
        MulticastSocket multicastSocket = this.multicastSocket;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup((InetAddress) com.google.android.exoplayer2.util.a.e(this.address));
            } catch (IOException unused) {
            }
            this.multicastSocket = null;
        }
        DatagramSocket datagramSocket = this.socket;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.socket = null;
        }
        this.address = null;
        this.packetRemaining = 0;
        if (this.opened) {
            this.opened = false;
            e();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    @Nullable
    public Uri getUri() {
        return this.uri;
    }

    public static final class a extends l {
        public a(Throwable th, int i10) {
            super(th, i10);
        }
    }

    public n0(int i10) {
        this(i10, 8000);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long c(o oVar) throws a {
        Uri uri = oVar.uri;
        this.uri = uri;
        String str = (String) com.google.android.exoplayer2.util.a.e(uri.getHost());
        int port = this.uri.getPort();
        f(oVar);
        try {
            this.address = InetAddress.getByName(str);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.address, port);
            if (this.address.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.multicastSocket = multicastSocket;
                multicastSocket.joinGroup(this.address);
                this.socket = this.multicastSocket;
            } else {
                this.socket = new DatagramSocket(inetSocketAddress);
            }
            this.socket.setSoTimeout(this.socketTimeoutMillis);
            this.opened = true;
            g(oVar);
            return -1L;
        } catch (IOException e) {
            throw new a(e, 2001);
        } catch (SecurityException e2) {
            throw new a(e2, 2006);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public int read(byte[] bArr, int i10, int i11) throws a {
        if (i11 == 0) {
            return 0;
        }
        if (this.packetRemaining == 0) {
            try {
                ((DatagramSocket) com.google.android.exoplayer2.util.a.e(this.socket)).receive(this.packet);
                int length = this.packet.getLength();
                this.packetRemaining = length;
                d(length);
            } catch (SocketTimeoutException e) {
                throw new a(e, 2002);
            } catch (IOException e2) {
                throw new a(e2, 2001);
            }
        }
        int length2 = this.packet.getLength();
        int i12 = this.packetRemaining;
        int iMin = Math.min(i12, i11);
        System.arraycopy(this.packetBuffer, length2 - i12, bArr, i10, iMin);
        this.packetRemaining -= iMin;
        return iMin;
    }

    public n0(int i10, int i11) {
        super(true);
        this.socketTimeoutMillis = i11;
        byte[] bArr = new byte[i10];
        this.packetBuffer = bArr;
        this.packet = new DatagramPacket(bArr, 0, i10);
    }
}
