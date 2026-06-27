package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Do, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0498Do implements InterfaceC0442Bk {
    public final /* synthetic */ C0509Dz A00;

    public C0498Do(C0509Dz c0509Dz) {
        this.A00 = c0509Dz;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() {
        C0498Do c0498Do = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        int i = 0;
        char c = Build.VERSION.SDK_INT < 26 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0498Do = c0498Do;
                    abstractC0528EsA07 = c0498Do.A00.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    c0498Do = c0498Do;
                    if (c0498Do.A00.A02 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0498Do = c0498Do;
                    if (c0498Do.A00.A02.getPackageInstaller() == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0498Do = c0498Do;
                    i = 0;
                    if (c0498Do.A00.A02.getPackageInstaller().getSessionInfo(0) == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c0498Do = c0498Do;
                    abstractC0528EsA07 = c0498Do.A00.A04(c0498Do.A00.A02.getPackageInstaller().getSessionInfo(i).getInstallReason());
                    c = 3;
                    break;
                case '\b':
                    c0498Do = c0498Do;
                    abstractC0528EsA07 = c0498Do.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
