package com.facebook.ads.redexgen.X;

import tv.danmaku.ijk.media.player.IMediaPlayer;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class C3 implements InterfaceC0442Bk {
    public final /* synthetic */ CI A00;

    public C3(CI ci) {
        this.A00 = ci;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() throws Exception {
        C3 c3 = this;
        AbstractC0528Es abstractC0528EsA08 = null;
        String strA06 = FD.A00(c3.A00.A00).A06(IMediaPlayer.MEDIA_INFO_OPEN_INPUT);
        char c = strA06 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c3 = c3;
                    strA06 = strA06;
                    abstractC0528EsA08 = c3.A00.A08(strA06);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA08;
                case 4:
                    c3 = c3;
                    abstractC0528EsA08 = c3.A00.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
