package com.facebook.ads.redexgen.X;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import com.facebook.ads.internal.ipc.AdsMessengerService;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4O, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C4O extends Handler {
    private static byte[] A07;

    @Nullable
    public Messenger A00;
    public boolean A01;
    public boolean A02;
    private ServiceConnection A03;
    private final Context A04;
    private final Messenger A05;
    private final AnonymousClass43 A06;

    static {
        A03();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 101);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A07 = new byte[]{106, 81, 93, 86, 81, 91, 86, 81, 88, 17, 74, 125, 123, 125, 113, 110, 125, 124, 56, 117, 125, 107, 107, 121, 127, 125, 56, 97, 102, 96, 109, 115, 118, 109, 123, 118, 109, 121, 119, 107, 119, 64, 70, 64, 76, 83, 64, 65, 5, 70, 77, 64, 70, 78, 5, 68, 73, 76, 83, 64, 11, 27, 93, 84, 73, 27, 122, 95, 1, 27, 34, 0, 15, 70, 21, 65, 3, 8, 15, 5, 65, 21, 14, 65, 18, 4, 19, 23, 8, 2, 4, 79, 65, 52, 18, 4, 65, 8, 15, 21, 4, 19, 15, 0, 13, 79, 26, 3, 16, 14, 57, 57, 36, 57, 107, 47, 62, 57, 34, 37, 44, 107, 56, 46, 37, 47, 34, 37, 44, 107, 40, 36, 38, 38, 42, 37, 47, 106, 109, 70, 65, 75, 70, 65, 72, 1, 31, 51, 50, 40, 57, 36, 40, 114, 62, 53, 50, 56, 116, 117, 124, 46, 57, 40, 41, 46, 50, 57, 56, 124, 58, 61, 48, 47, 57, 114};
    }

    public C4O(Context context, AnonymousClass43 anonymousClass43) {
        super(Looper.getMainLooper());
        this.A03 = new ServiceConnection() { // from class: com.facebook.ads.redexgen.X.4N
            private static byte[] A01;

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
                            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 99);
                            i4++;
                            c = 2;
                            break;
                        case 4:
                            return new String(bArrCopyOfRange);
                    }
                }
            }

            private static void A01() {
                A01 = new byte[]{49, 4, 4, 17, 19, 24, 21, 20, 94, 92, 107, 99, 97, 122, 107, 46, 125, 107, 124, 120, 103, 109, 107, 46, 109, 97, 96, 96, 107, 109, 122, 107, 106, 32, 9, 36, 62, 46, 34, 35, 35, 40, 46, 57, 40, 41, 99};
            }

            @Override // android.content.ServiceConnection
            public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                this.A00.A00 = new Messenger(iBinder);
                this.A00.A0A(A00(0, 9, 19));
                try {
                    this.A00.A04(this.A00.A00, 1, null);
                    if (this.A00.A02) {
                        this.A00.A02 = false;
                        this.A00.A06.A03();
                    }
                } catch (RemoteException unused) {
                    this.A00.A02();
                }
                this.A00.A0A(A00(9, 25, 109));
            }

            @Override // android.content.ServiceConnection
            public final void onServiceDisconnected(ComponentName componentName) {
                this.A00.A0A(A00(34, 13, 46));
                if (!this.A00.A01) {
                    return;
                }
                this.A00.A02();
            }
        };
        this.A04 = context;
        this.A05 = new Messenger(this);
        this.A06 = anonymousClass43;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02() {
        this.A00 = null;
        A08();
        this.A06.A06(10, AdErrorType.REMOTE_ADS_SERVICE_ERROR, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04(Messenger messenger, int i, @Nullable Bundle bundle) throws RemoteException {
        Message messageObtain = Message.obtain((Handler) null, i);
        messageObtain.replyTo = this.A05;
        if (bundle != null) {
            messageObtain.setData(bundle);
        }
        messageObtain.getData().putString(A01(27, 13, 87), this.A06.A04);
        messenger.send(messageObtain);
    }

    public final void A07() {
        C4O c4o = this;
        c4o.A01 = c4o.A04.bindService(new Intent(c4o.A04, (Class<?>) AdsMessengerService.class), c4o.A03, 1);
        char c = c4o.A01 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4o = c4o;
                    c4o.A0A(A01(138, 8, 74));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c4o = c4o;
                    P7.A08(c4o.A04, A01(106, 3, 22), P8.A1L, new PA(A01(146, 30, 57)));
                    c4o.A02 = false;
                    c4o.A0A(A01(70, 36, 4));
                    c4o.A06.A0A();
                    c = 3;
                    break;
            }
        }
    }

    public final void A08() {
        if (this.A01) {
            if (this.A00 != null) {
                try {
                    A04(this.A00, 2, null);
                } catch (RemoteException unused) {
                }
            }
            this.A01 = false;
            this.A04.unbindService(this.A03);
            A0A(A01(0, 10, 90));
        }
    }

    public final void A09(int i, @Nullable Bundle bundle) {
        try {
            Messenger messenger = this.A00;
            if (messenger != null) {
                A04(messenger, i, bundle);
            }
        } catch (RemoteException unused) {
            A08();
            A0A(A01(109, 29, 46));
        }
    }

    public final void A0A(String str) {
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        C4O c4o = this;
        char c = message.what == 3 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c4o = c4o;
                    c4o.A0A(A01(40, 21, 64));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c4o = c4o;
                    message = message;
                    String string = message.getData().getString(A01(27, 13, 87));
                    c4o.A0A(A01(10, 17, 125) + message.what + A01(61, 9, 94) + string);
                    if (!c4o.A06.A04.equals(string)) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c4o = c4o;
                    message = message;
                    c4o.A06.A07(message);
                    c = 3;
                    break;
            }
        }
    }
}
