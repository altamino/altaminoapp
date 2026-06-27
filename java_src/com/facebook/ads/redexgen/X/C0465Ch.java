package com.facebook.ads.redexgen.X;

import android.bluetooth.BluetoothDevice;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ch, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0465Ch implements InterfaceC0442Bk {
    public final /* synthetic */ C0468Ck A00;

    public C0465Ch(C0468Ck c0468Ck) {
        this.A00 = c0468Ck;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() throws Exception {
        C0465Ch c0465Ch = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        ArrayList arrayList = null;
        Iterator<BluetoothDevice> it = null;
        char c = c0465Ch.A00.A00 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0465Ch = c0465Ch;
                    abstractC0528EsA07 = c0465Ch.A00.A07(F6.A04);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    c0465Ch = c0465Ch;
                    it = c0465Ch.A00.A00.getBondedDevices().iterator();
                    arrayList = new ArrayList();
                    c = 5;
                    break;
                case 5:
                    it = it;
                    if (!it.hasNext()) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    it = it;
                    arrayList = arrayList;
                    arrayList.add(new C0467Cj(it.next()));
                    c = 5;
                    break;
                case 7:
                    c0465Ch = c0465Ch;
                    arrayList = arrayList;
                    abstractC0528EsA07 = c0465Ch.A00.A0D(arrayList);
                    c = 3;
                    break;
            }
        }
    }
}
