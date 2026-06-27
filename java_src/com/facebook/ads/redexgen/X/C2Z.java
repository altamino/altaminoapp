package com.facebook.ads.redexgen.X;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.facebook.ads.AdError;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2Z, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C2Z extends BroadcastReceiver {
    private C2G A00;
    private C2Y A01;
    private String A02;

    public C2Z(String str, C2G c2g, C2Y c2y) {
        this.A00 = c2g;
        this.A01 = c2y;
        this.A02 = str;
    }

    public final IntentFilter A00() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(J8.A07.A03(this.A02));
        intentFilter.addAction(J8.A0A.A03(this.A02));
        intentFilter.addAction(J8.A04.A03(this.A02));
        intentFilter.addAction(J8.A0B.A03(this.A02));
        intentFilter.addAction(J8.A06.A03(this.A02));
        intentFilter.addAction(J8.A0E.A03(this.A02));
        intentFilter.addAction(J8.A0D.A03(this.A02));
        intentFilter.addAction(J8.A0C.A03(this.A02));
        intentFilter.addAction(J8.A03.A03(this.A02));
        return intentFilter;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        C2Z c2z = this;
        String action = intent.getAction();
        char c = J8.A07.A03(c2z.A02).equals(action) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c2z = c2z;
                    c2z.A01.A6D(c2z.A00);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c2z = c2z;
                    action = action;
                    if (!J8.A0A.A03(c2z.A02).equals(action)) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c2z = c2z;
                    c2z.A01.A6E(c2z.A00, AdError.INTERNAL_ERROR);
                    c = 3;
                    break;
                case 6:
                    c2z = c2z;
                    action = action;
                    if (!J8.A04.A03(c2z.A02).equals(action)) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c2z = c2z;
                    c2z.A01.A6A(c2z.A00);
                    c = 3;
                    break;
                case '\b':
                    c2z = c2z;
                    action = action;
                    if (!J8.A0B.A03(c2z.A02).equals(action)) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c2z = c2z;
                    c2z.A01.A6C(c2z.A00);
                    c = 3;
                    break;
                case '\n':
                    c2z = c2z;
                    action = action;
                    if (!J8.A06.A03(c2z.A02).equals(action)) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c2z = c2z;
                    c2z.A01.onRewardedVideoClosed();
                    c = 3;
                    break;
                case '\f':
                    c2z = c2z;
                    action = action;
                    if (!J8.A0D.A03(c2z.A02).equals(action)) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c2z = c2z;
                    c2z.A01.A68(c2z.A00);
                    c = 3;
                    break;
                case 14:
                    c2z = c2z;
                    action = action;
                    if (!J8.A0E.A03(c2z.A02).equals(action)) {
                        c = 16;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    c2z = c2z;
                    c2z.A01.A69(c2z.A00);
                    c = 3;
                    break;
                case 16:
                    c2z = c2z;
                    action = action;
                    if (!J8.A0C.A03(c2z.A02).equals(action)) {
                        c = 18;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    c2z = c2z;
                    c2z.A01.A5s();
                    c = 3;
                    break;
                case 18:
                    c2z = c2z;
                    action = action;
                    if (!J8.A03.A03(c2z.A02).equals(action)) {
                        c = 3;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    c2z = c2z;
                    c2z.A01.onRewardedVideoActivityDestroyed();
                    c = 3;
                    break;
            }
        }
    }
}
