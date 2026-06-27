package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.widget.RelativeLayout;
import com.narvii.util.ws.WsMessage;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Su, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AbstractC0889Su extends AbstractC0888St {
    private static byte[] A07;
    public static final int A08;
    public static final int A09;
    public static final int A0A;
    public static final int A0B;
    public static final int A0C;
    public static final int A0D;
    public static final int A0E;
    public static final int A0F;
    public static final int A0G;
    public static final int A0H;
    private C0632Is A00;

    @Nullable
    private AM A01;
    private C7M A02;
    private final AnonymousClass31 A03;
    private final AnonymousClass32 A04;

    @Nullable
    private final C0797Pg A05;
    private final C0876Sh A06;

    private static String A02(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 102);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A07 = new byte[]{12, 0, 2, 65, 9, 14, 12, 10, 13, 0, 0, 4, 65, 14, 11, 28, 65, 6, 1, 27, 10, 29, 28, 27, 6, 27, 6, 14, 3, 65, 12, 3, 6, 12, 4, 10, 11};
    }

    static {
        A03();
        A0B = (int) (48.0f * OY.A01);
        A0F = (int) (16.0f * OY.A01);
        A08 = (int) (4.0f * OY.A01);
        A0E = (int) (44.0f * OY.A01);
        A0C = (int) (8.0f * OY.A01);
        A0D = (int) (OY.A01 * 12.0f);
        A0H = (int) (OY.A01 * 12.0f);
        A0G = (int) (26.0f * OY.A01);
        A09 = C02794x.A01(-1, 77);
        A0A = C02794x.A01(A09, 90);
    }

    public AbstractC0889Su(T0 t0, C02282y c02282y, boolean z) {
        super(t0, c02282y, z);
        this.A03 = t0.A05();
        this.A04 = this.A03.A0H().get(0);
        this.A06 = A01(t0, c02282y);
        this.A05 = t0.A09();
        if (this.A05 != null) {
            this.A05.setLayoutParams(new RelativeLayout.LayoutParams(-1, this.A05.getToolbarHeight()));
            this.A05.A03();
        }
    }

    private C0876Sh A01(T0 t0, C02282y c02282y) {
        C0876Sh c0876Sh = new C0876Sh(t0.A02(), A0B, this.A04.A04().A00() == EnumC02232t.A04, c02282y, A02(0, 37, 9), t0.A06(), t0.A08(), t0.A0C(), t0.A07());
        OY.A0N(c0876Sh);
        c0876Sh.A08(t0.A00());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        this.A02 = new C7M(c0876Sh, WsMessage.LIVE_LAYER_USER_JOINED_EVENT, 100, 0);
        addView(c0876Sh, layoutParams);
        return c0876Sh;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public void A0W(AnonymousClass32 anonymousClass32, String str, double d, @Nullable Bundle bundle, @Nullable Q6 q6) {
        super.A0W(anonymousClass32, str, d, bundle, q6);
        this.A06.setInfo(anonymousClass32.A04(), anonymousClass32.A05(), str, this.A03.A0B().A01(), null);
    }

    public final int A0Z(@Nullable C0797Pg c0797Pg) {
        int toolbarHeight = 0;
        char c = c0797Pg == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    toolbarHeight = C0797Pg.A07;
                    c = 3;
                    break;
                case 3:
                    return toolbarHeight;
                case 4:
                    c0797Pg = c0797Pg;
                    toolbarHeight = c0797Pg.getToolbarHeight();
                    c = 3;
                    break;
            }
        }
    }

    public void A0a() {
        this.A00 = new C0632Is(true);
        if (this.A01 != null) {
            this.A00.A0I(this.A01);
        }
        C02282y c02282yA01 = this.A03.A09().A01();
        this.A00.A0I(new C8A(getAdDetailsView().getCTAButton(), 300, -1, c02282yA01.A09(true)));
        this.A00.A0I(new C0426At(getAdDetailsView().getCTAButton(), 300, OY.A09(A09, A0A, A08), OY.A06(c02282yA01.A08(true), A08)));
        this.A00.A0I(new C8O(getAdDetailsView().getExpandableLayout(), 150, false));
        this.A00.A0H(2300);
    }

    public AnonymousClass31 getAdDataBundle() {
        return this.A03;
    }

    public C7M getAdDetailsAnimation() {
        return this.A02;
    }

    public C0876Sh getAdDetailsView() {
        return this.A06;
    }

    public AnonymousClass32 getAdInfo() {
        return this.A04;
    }

    public C0632Is getAnimationPlugin() {
        return this.A00;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        AbstractC0889Su abstractC0889Su = this;
        super.onLayout(z, i, i2, i3, i4);
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    abstractC0889Su = abstractC0889Su;
                    if (abstractC0889Su.A01 != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    abstractC0889Su = abstractC0889Su;
                    abstractC0889Su.A01 = new AM(abstractC0889Su.getAdDetailsView().getExpandableLayout(), 300, abstractC0889Su.getAdDetailsView().getExpandableLayout().getHeight(), 0);
                    abstractC0889Su.A00.A0I(abstractC0889Su.A01);
                    abstractC0889Su.A00.A0G();
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }
}
