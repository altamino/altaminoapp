package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class U4 extends AbstractC02102g<SQ> {
    private int A00;
    private int A01;
    private int A02;
    private int A03;

    @Nullable
    private InterfaceC03688m A04;
    private String A05;
    private List<UB> A06;
    private final SparseBooleanArray A07 = new SparseBooleanArray();
    private final C02282y A08;
    private final C0607Ht A09;
    private final KM A0A;
    private final OP A0B;
    private final UA A0C;
    private final C6K A0D;

    public U4(List<UB> list, KM km, C0607Ht c0607Ht, C6K c6k, OP op, InterfaceC03688m interfaceC03688m, C02282y c02282y, String str, int i, int i2, int i3, int i4, UA ua) {
        this.A0A = km;
        this.A09 = c0607Ht;
        this.A0D = c6k;
        this.A0B = op;
        this.A04 = interfaceC03688m;
        this.A06 = list;
        this.A00 = i;
        this.A08 = c02282y;
        this.A03 = i4;
        this.A05 = str;
        this.A01 = i3;
        this.A02 = i2;
        this.A0C = ua;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC02102g
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final SQ A0I(ViewGroup viewGroup, int i) {
        return new SQ(C0900Tf.A00(new C0894Sz(viewGroup.getContext(), this.A0A, this.A04, null, null, this.A0D, this.A0B).A0J(), this.A03, this.A08, this.A05, this.A0C), this.A07, this.A0D, this.A00, this.A01, this.A02, this.A06.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC02102g
    /* renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final void A0J(SQ sq, int i) {
        sq.A0l(this.A06.get(i), this.A0A, this.A09, this.A0B, this.A05);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02102g
    public final int A03() {
        return this.A06.size();
    }
}
