package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import javax.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Gy, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0586Gy extends AbstractC0556Fu {
    private final Context A00;

    @Nullable
    private final PackageInfo A01;
    private final PackageManager A02;
    private final EnumC0590Hc A03;

    public C0586Gy(Context context, EnumC0590Hc enumC0590Hc) {
        this.A00 = context;
        this.A02 = context.getPackageManager();
        this.A01 = A01(context);
        this.A03 = enumC0590Hc;
    }

    @Nullable
    @SuppressLint({"CatchGeneralException"})
    private PackageInfo A01(Context context) {
        try {
            return this.A02.getPackageInfo(context.getPackageName(), 4096);
        } catch (Throwable th) {
            C0593Hf.A02(th);
            return null;
        }
    }

    @SuppressLint({"CatchGeneralException"})
    public final InterfaceC0552Fq A07() {
        return new C0574Gm(this);
    }

    @SuppressLint({"CatchGeneralException"})
    public final InterfaceC0552Fq A08() {
        return new C0576Go(this);
    }

    public final InterfaceC0552Fq A09() {
        return new C0583Gv(this);
    }

    @SuppressLint({"CatchGeneralException"})
    public final InterfaceC0552Fq A0A() {
        return new C0585Gx(this);
    }

    @SuppressLint({"CatchGeneralException"})
    public final InterfaceC0552Fq A0B() {
        return new C0577Gp(this);
    }

    @SuppressLint({"CatchGeneralException"})
    public final InterfaceC0552Fq A0C() {
        return new C0584Gw(this);
    }

    public final InterfaceC0552Fq A0D() {
        return new C0581Gt(this);
    }

    public final InterfaceC0552Fq A0E() {
        return new C0582Gu(this);
    }

    public final InterfaceC0552Fq A0F() {
        return new C0567Gf(this);
    }

    public final InterfaceC0552Fq A0G() {
        return new C0566Ge(this);
    }

    @SuppressLint({"CatchGeneralException"})
    public final InterfaceC0552Fq A0H() {
        return new C0573Gl(this);
    }

    public final InterfaceC0552Fq A0I() {
        return new C0570Gi(this);
    }

    public final InterfaceC0552Fq A0J() {
        return new C0569Gh(this);
    }

    @SuppressLint({"CatchGeneralException"})
    public final InterfaceC0552Fq A0K() {
        return new C0575Gn(this);
    }

    public final InterfaceC0552Fq A0L() {
        return new C0578Gq(this);
    }

    public final InterfaceC0552Fq A0M() {
        return new C0568Gg(this);
    }

    public final InterfaceC0552Fq A0N() {
        return new C0571Gj(this);
    }

    public final InterfaceC0552Fq A0O() {
        return new C0572Gk(this);
    }

    public final InterfaceC0552Fq A0P() {
        return new C0579Gr(this);
    }

    public final InterfaceC0552Fq A0Q() {
        return new C0565Gd(this);
    }

    public final InterfaceC0552Fq A0R() {
        return new C0580Gs(this);
    }

    public final InterfaceC0552Fq A0S() {
        return new C0564Gc(this);
    }
}
