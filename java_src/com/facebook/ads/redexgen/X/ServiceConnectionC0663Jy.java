package com.facebook.ads.redexgen.X;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Jy, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class ServiceConnectionC0663Jy implements ServiceConnection {
    private static byte[] A01;
    public final /* synthetic */ C0664Jz A00;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 88);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{113, 115, 120, 115, 100, 127, 117};
    }

    public ServiceConnectionC0663Jy(C0664Jz c0664Jz) {
        this.A00 = c0664Jz;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) throws RemoteException {
        this.A00.A01 = true;
        this.A00.A00 = new Messenger(iBinder);
        Message messageObtain = Message.obtain((Handler) null, 1);
        messageObtain.setData(this.A00.A01());
        try {
            this.A00.A00.send(messageObtain);
        } catch (RemoteException e) {
            P7.A07(this.A00.A02, A00(0, 7, 78), P8.A1A, new PA(e));
        }
        this.A00.A02.unbindService(this);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        try {
            this.A00.A02.unbindService(this);
        } catch (IllegalArgumentException unused) {
        }
        this.A00.A00 = null;
        this.A00.A01 = false;
    }
}
