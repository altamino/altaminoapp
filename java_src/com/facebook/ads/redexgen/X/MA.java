package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class MA extends MB {
    public int A00;
    private boolean A01;
    private final AbstractC01971t<LN> A02;
    private final AbstractC01971t<KF> A03;
    private final AbstractC01971t<K4> A04;
    private final AbstractC01971t<K0> A05;
    private final AbstractC01971t<C0662Jx> A06;
    private final AbstractC01971t<C0659Ju> A07;
    private final AbstractC01971t<C0658Jt> A08;
    private final AbstractC01971t<JA> A09;
    private final AbstractC01971t<J9> A0A;
    private final QL A0B;
    private final C9L A0C;
    private final C9V A0D;

    public MA(Context context, KM km, QL ql, String str) {
        this(context, km, ql, new ArrayList(), str);
    }

    public MA(Context context, KM km, QL ql, String str, @Nullable Bundle bundle) {
        this(context, km, ql, new ArrayList(), str, bundle, null);
    }

    public MA(Context context, KM km, QL ql, String str, @Nullable Map<String, String> extraParams) {
        this(context, km, ql, new ArrayList(), str, null, extraParams);
    }

    public MA(Context context, KM km, QL ql, List<AbstractC02021y> list, String str) {
        super(context, km, ql, list, str);
        this.A0D = new NJ(this);
        this.A07 = new NH(this);
        this.A03 = new C0720Mh(this);
        this.A04 = new C0719Mf(this);
        this.A05 = new MM(this);
        this.A02 = new MI(this);
        this.A06 = new MH(this);
        this.A09 = new MF(this);
        this.A0A = new MC(this);
        this.A08 = new NS(this);
        this.A0C = new NL(this);
        this.A01 = false;
        this.A0B = ql;
        this.A0B.getEventBus().A03(this.A0D, this.A05, this.A07, this.A04, this.A03, this.A02, this.A06, this.A09, this.A0A, this.A0C, this.A08);
    }

    public MA(Context context, KM km, QL ql, List<AbstractC02021y> list, String str, @Nullable Bundle bundle, @Nullable Map<String, String> map) {
        super(context, km, ql, list, str, bundle, map);
        this.A0D = new NJ(this);
        this.A07 = new NH(this);
        this.A03 = new C0720Mh(this);
        this.A04 = new C0719Mf(this);
        this.A05 = new MM(this);
        this.A02 = new MI(this);
        this.A06 = new MH(this);
        this.A09 = new MF(this);
        this.A0A = new MC(this);
        this.A08 = new NS(this);
        this.A0C = new NL(this);
        this.A01 = false;
        this.A0B = ql;
        this.A0B.getEventBus().A03(this.A0D, this.A05, this.A07, this.A04, this.A03, this.A02, this.A06, this.A09, this.A0A, this.A08);
    }

    public final void A0f() {
        this.A0B.getStateHandler().post(new NK(this));
    }
}
