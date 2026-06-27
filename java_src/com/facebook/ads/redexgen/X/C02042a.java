package com.facebook.ads.redexgen.X;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.tonyodev.fetch.FetchConst;
import java.io.Serializable;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2a, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02042a extends BroadcastReceiver {
    private static byte[] A03;
    private Context A00;
    private QM A01;
    private boolean A02 = false;

    static {
        A01();
    }

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_UNKNOWN);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A03 = new byte[]{50, 62, 60, -3, 53, 48, 50, 52, 49, 62, 62, 58, -3, 48, 51, 66, -3, 56, 61, 67, 52, 65, 66, 67, 56, 67, 56, 48, 59, -3, 51, 56, 66, 63, 59, 48, 72, 52, 51, 9, 75, 64, 77, 65, 74, 77, 72, 30, 79, 60, 30, 71, 68, 62, 70, -29, -42, -47, -46, -36, -74, -37, -31, -46, -33, -32, -31, -42, -31, -50, -39, -78, -29, -46, -37, -31, -89, 27, 44, 27, 36, 42, 59, 48, 61, 49, 58, 61, 56, 14, 63, 44, 14, 55, 52, 46, 54, 5, 54, 41, 36, 37, 47, 9, 46, 52, 37, 50, 51, 52, 41, 52, 33, 44, 5, 54, 37, 46, 52, 13, 25, 23, -40, 16, 11, 13, 15, 12, 25, 25, 21, -40, 11, 14, 29, -40, 19, 24, 30, 15, 28, 29, 30, 19, 30, 19, 11, 22, -40, 14, 19, 29, 26, 22, 11, 35, 15, 14, -56};
    }

    public C02042a(QM qm, Context context) {
        this.A01 = qm;
        this.A00 = context.getApplicationContext();
    }

    public final void A02() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(A00(0, 40, 106) + this.A01.getUniqueId());
        intentFilter.addAction(A00(55, 22, 8) + this.A01.getUniqueId());
        intentFilter.addAction(A00(82, 16, 102) + this.A01.getUniqueId());
        C02784w.A00(this.A00).A06(this, intentFilter);
    }

    public final void A03() {
        try {
            C02784w.A00(this.A00).A05(this);
        } catch (Exception unused) {
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        C02042a c02042a = this;
        Serializable serializableExtra = null;
        boolean z = false;
        String[] strArrSplit = intent.getAction().split(A00(158, 1, 41));
        char c = strArrSplit.length != 2 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c02042a = c02042a;
                    strArrSplit = strArrSplit;
                    if (!strArrSplit[1].equals(c02042a.A01.getUniqueId())) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    strArrSplit = strArrSplit;
                    z = false;
                    z = false;
                    if (!strArrSplit[0].equals(A00(119, 39, 69))) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c02042a = c02042a;
                    if (c02042a.A01.getListener() == null) {
                        c = 2;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c02042a = c02042a;
                    c02042a.A01.getListener().A5E();
                    c02042a.A01.getListener().A6O();
                    c = 2;
                    break;
                case 7:
                    strArrSplit = strArrSplit;
                    if (!strArrSplit[z ? 1 : 0].equals(A00(98, 21, 91))) {
                        c = ' ';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    intent = intent;
                    serializableExtra = intent.getSerializableExtra(A00(77, 5, 81));
                    if (!(serializableExtra instanceof C0662Jx)) {
                        c = 15;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c02042a = c02042a;
                    if (c02042a.A01.getListener() == null) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c02042a = c02042a;
                    c02042a.A01.getListener().A5K();
                    c02042a.A01.getListener().A6O();
                    c = 11;
                    break;
                case 11:
                    c02042a = c02042a;
                    if (!c02042a.A02) {
                        c = 14;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c02042a = c02042a;
                    c02042a.A01.A0O(1);
                    c = '\r';
                    break;
                case '\r':
                    c02042a = c02042a;
                    c02042a.A01.setVisibility(z ? 1 : 0);
                    c02042a.A01.A0P(EnumC0697Lh.A05);
                    c = 2;
                    break;
                case 14:
                    c02042a = c02042a;
                    serializableExtra = serializableExtra;
                    c02042a.A01.A0O(((C0662Jx) serializableExtra).A01());
                    c = '\r';
                    break;
                case 15:
                    serializableExtra = serializableExtra;
                    if (!(serializableExtra instanceof C0666Kb)) {
                        c = 18;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    c02042a = c02042a;
                    if (c02042a.A01.getListener() == null) {
                        c = 2;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    c02042a = c02042a;
                    c02042a.A01.getListener().A5M();
                    c = 2;
                    break;
                case 18:
                    serializableExtra = serializableExtra;
                    if (!(serializableExtra instanceof KV)) {
                        c = 21;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    c02042a = c02042a;
                    if (c02042a.A01.getListener() == null) {
                        c = 2;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    c02042a = c02042a;
                    c02042a.A01.getListener().A5N();
                    c = 2;
                    break;
                case 21:
                    serializableExtra = serializableExtra;
                    if (!(serializableExtra instanceof LN)) {
                        c = 25;
                        break;
                    } else {
                        c = 22;
                        break;
                    }
                case 22:
                    c02042a = c02042a;
                    if (c02042a.A01.getListener() == null) {
                        c = 24;
                        break;
                    } else {
                        c = 23;
                        break;
                    }
                case 23:
                    c02042a = c02042a;
                    c02042a.A01.getListener().A54();
                    c = 24;
                    break;
                case 24:
                    c02042a = c02042a;
                    c02042a.A02 = true;
                    c = 2;
                    break;
                case 25:
                    serializableExtra = serializableExtra;
                    if (!(serializableExtra instanceof K4)) {
                        c = 29;
                        break;
                    } else {
                        c = 26;
                        break;
                    }
                case 26:
                    c02042a = c02042a;
                    if (c02042a.A01.getListener() == null) {
                        c = 28;
                        break;
                    } else {
                        c = 27;
                        break;
                    }
                case 27:
                    c02042a = c02042a;
                    c02042a.A01.getListener().A5z();
                    c = 28;
                    break;
                case 28:
                    c02042a = c02042a;
                    c02042a.A02 = z;
                    c = 2;
                    break;
                case 29:
                    serializableExtra = serializableExtra;
                    if (!(serializableExtra instanceof KF)) {
                        c = 2;
                        break;
                    } else {
                        c = 30;
                        break;
                    }
                case 30:
                    c02042a = c02042a;
                    if (c02042a.A01.getListener() == null) {
                        c = 2;
                        break;
                    } else {
                        c = 31;
                        break;
                    }
                case 31:
                    c02042a = c02042a;
                    c02042a.A01.getListener().onPause();
                    c = 2;
                    break;
                case ' ':
                    strArrSplit = strArrSplit;
                    if (!strArrSplit[z ? 1 : 0].equals(A00(40, 15, 118))) {
                        c = 2;
                        break;
                    } else {
                        c = '!';
                        break;
                    }
                case '!':
                    c02042a = c02042a;
                    c02042a.A01.A0a();
                    c = 2;
                    break;
            }
        }
    }
}
