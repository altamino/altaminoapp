package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ef, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0515Ef implements InterfaceC0442Bk {
    private static byte[] A01;
    public final /* synthetic */ C0516Eg A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 22);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-31, -19, -20, -20, -29, -31, -14, -29, -30, -92, -79, -89, -75, -78, -84, -89, 113, -85, -92, -75, -89, -70, -92, -75, -88, 113, -72, -74, -91, 113, -92, -90, -73, -84, -78, -79, 113, -104, -106, -123, -94, -106, -105, -124, -105, -120};
    }

    public C0515Ef(C0516Eg c0516Eg) {
        this.A00 = c0516Eg;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0515Ef c0515Ef = this;
        Bundle extras = null;
        AbstractC0528Es abstractC0528EsA0F = null;
        Intent intentRegisterReceiver = c0515Ef.A00.A00.registerReceiver(null, new IntentFilter(A00(9, 37, 45)));
        char c = intentRegisterReceiver != null ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    intentRegisterReceiver = intentRegisterReceiver;
                    extras = intentRegisterReceiver.getExtras();
                    c = 3;
                    break;
                case 3:
                    if (extras == null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0515Ef = c0515Ef;
                    abstractC0528EsA0F = c0515Ef.A00.A0F(extras.getBoolean(A00(0, 9, 104)));
                    c = 5;
                    break;
                case 5:
                    return abstractC0528EsA0F;
                case 6:
                    c0515Ef = c0515Ef;
                    abstractC0528EsA0F = c0515Ef.A00.A07(F6.A05);
                    c = 5;
                    break;
                case 7:
                    extras = null;
                    c = 3;
                    break;
            }
        }
    }
}
