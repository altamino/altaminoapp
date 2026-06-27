package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.widget.FrameLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public abstract class RU extends FrameLayout {
    public boolean A00;
    private int A01;
    private EnumC02664k A02;
    private C02674l A03;

    @Nullable
    private C02684m A04;

    @Nullable
    private PZ A05;
    private final KM A06;

    @Nullable
    private final InterfaceC03688m A07;

    @Nullable
    private final PK A08;
    private final String A09;

    @Nullable
    public final AnonymousClass38 A0A;
    public final RS A0B;

    public abstract void A0K();

    public abstract void A0L();

    public abstract void A0M(C02684m c02684m, EnumC02664k enumC02664k);

    public abstract void A0N(C02684m c02684m, EnumC02664k enumC02664k);

    public abstract boolean A0P();

    public RU(Context context, KM km, String str) {
        this(context, km, str, null, null, null);
    }

    public RU(Context context, KM km, String str, @Nullable AnonymousClass38 anonymousClass38, @Nullable PK pk, @Nullable InterfaceC03688m interfaceC03688m) {
        super(context);
        this.A01 = 0;
        this.A02 = EnumC02664k.A04;
        this.A04 = null;
        this.A0B = new RT(this);
        this.A06 = km;
        this.A08 = pk;
        this.A07 = interfaceC03688m;
        this.A09 = str;
        this.A0A = anonymousClass38;
    }

    public static /* synthetic */ int A00(RU ru) {
        int i = ru.A01;
        ru.A01 = i + 1;
        return i;
    }

    public static /* synthetic */ int A01(RU ru) {
        int i = ru.A01;
        ru.A01 = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0A() {
        if (this.A03.A0A()) {
            this.A06.A48(this.A09, this.A03.A02());
            this.A03.A03();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0B() {
        this.A04 = null;
        this.A03.A05();
        A0K();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0C(C02684m c02684m) {
        this.A03.A08(this.A02);
        A0M(c02684m, this.A02);
        if (A0P()) {
            A0A();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0D(C02684m c02684m) {
        this.A04 = c02684m;
        this.A03.A09(this.A02, this.A01);
        A0N(c02684m, this.A02);
    }

    public final void A0I() {
        A0A();
    }

    public final void A0J() {
        RU ru = this;
        ru.A03 = new C02674l(new KX(ru.A09, ru.A06));
        char c = ru.A08 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    ru = ru;
                    ru.A08.A5x(true);
                    c = 3;
                    break;
                case 3:
                    ru = ru;
                    ru.A0B();
                    if (ru.A05 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    ru = ru;
                    ru.A05.A4p();
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    public final void A0O(boolean z) {
        this.A00 = z;
    }

    public void setAdReportingFlowListener(@Nullable PZ pz) {
        this.A05 = pz;
    }
}
