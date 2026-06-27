package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Dm, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0496Dm implements InterfaceC0442Bk {
    public final /* synthetic */ C0509Dz A00;

    public C0496Dm(C0509Dz c0509Dz) {
        this.A00 = c0509Dz;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0496Dm c0496Dm = this;
        AbstractC0528Es abstractC0528EsA08 = null;
        char c = c0496Dm.A00.A02 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0496Dm = c0496Dm;
                    abstractC0528EsA08 = c0496Dm.A00.A08(c0496Dm.A00.A02.getInstallerPackageName(c0496Dm.A00.A00.getPackageName()));
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA08;
                case 4:
                    c0496Dm = c0496Dm;
                    abstractC0528EsA08 = c0496Dm.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
