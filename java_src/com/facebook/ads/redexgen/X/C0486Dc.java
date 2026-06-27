package com.facebook.ads.redexgen.X;

import java.net.NetworkInterface;
import java.util.Enumeration;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Dc, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0486Dc implements InterfaceC0442Bk {
    public final /* synthetic */ C0489Df A00;

    public C0486Dc(C0489Df c0489Df) {
        this.A00 = c0489Df;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() throws Exception {
        Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
        HashMap map = new HashMap();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    networkInterfaces = networkInterfaces;
                    if (!networkInterfaces.hasMoreElements()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    networkInterfaces = networkInterfaces;
                    map = map;
                    NetworkInterface networkInterface = networkInterfaces.nextElement();
                    map.put(networkInterface.getDisplayName(), new C0488De(networkInterface.getInetAddresses(), null));
                    c = 2;
                    break;
                case 4:
                    return this.A00.A01(map);
            }
        }
    }
}
