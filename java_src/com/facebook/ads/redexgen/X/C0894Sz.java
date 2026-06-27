package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Sz, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0894Sz {

    @Nullable
    private View A02;

    @Nullable
    private C0797Pg A03;

    @Nullable
    private Q6 A04;

    @Nullable
    private B8 A05;
    private final Context A06;
    private final View A07;
    private final AnonymousClass31 A08;
    private final KM A09;
    private final OP A0A;
    private final InterfaceC03688m A0B;
    private final C6K A0C;
    private int A01 = 0;
    private int A00 = 1;

    public C0894Sz(Context context, KM km, InterfaceC03688m interfaceC03688m, AnonymousClass31 anonymousClass31, View view, C6K c6k, OP op) {
        this.A06 = context;
        this.A09 = km;
        this.A0B = interfaceC03688m;
        this.A08 = anonymousClass31;
        this.A07 = view;
        this.A0C = c6k;
        this.A0A = op;
    }

    public final C0894Sz A0D(int i) {
        this.A00 = i;
        return this;
    }

    public final C0894Sz A0E(int i) {
        this.A01 = i;
        return this;
    }

    public final C0894Sz A0F(View view) {
        this.A02 = view;
        return this;
    }

    public final C0894Sz A0G(C0797Pg c0797Pg) {
        this.A03 = c0797Pg;
        return this;
    }

    public final C0894Sz A0H(Q6 q6) {
        this.A04 = q6;
        return this;
    }

    public final C0894Sz A0I(B8 b8) {
        this.A05 = b8;
        return this;
    }

    public final T0 A0J() {
        return new T0(this);
    }
}
