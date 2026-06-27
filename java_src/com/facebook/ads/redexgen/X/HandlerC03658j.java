package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.VisibleForTesting;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@VisibleForTesting
/* renamed from: com.facebook.ads.redexgen.X.8j, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class HandlerC03658j extends Handler {
    private static byte[] A01;
    private final K3 A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 54);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-85, -84, -86, -73, -103, -100, -73, -95, -100, -73, -93, -99, -79};
    }

    private HandlerC03658j(Context context) {
        this.A00 = new K3(context);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        char c;
        HandlerC03658j handlerC03658j = this;
        String string = message.getData().getString(A00(0, 13, 34));
        switch (message.what) {
            case 1:
                c = 6;
                break;
            case 2:
                c = 5;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    handlerC03658j = handlerC03658j;
                    message = message;
                    if (!handlerC03658j.A00.A04(message)) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    handlerC03658j = handlerC03658j;
                    message = message;
                    super.handleMessage(message);
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    string = string;
                    C02634h.A00().A0A(string);
                    c = 4;
                    break;
                case 6:
                    message = message;
                    string = string;
                    C02634h.A00().A0B(string, message.replyTo);
                    c = 4;
                    break;
            }
        }
    }
}
