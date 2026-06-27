package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.SystemClock;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@SuppressLint({"POSSIBLE_VARIABLE_NAME_TYPO"})
/* loaded from: assets/assets/audience_network.dex */
public final class CI extends C0454Bw {
    private final Context A00;
    private final ApplicationInfo A01;

    public CI(Context context, C0430Ay c0430Ay) {
        super(context, c0430Ay);
        this.A01 = context.getApplicationInfo();
        this.A00 = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"Nullable Dereference"})
    public AbstractC0528Es A03(HashMap<Integer, CH> map) {
        return new F3(SystemClock.elapsedRealtime(), A02(), map, F9.A06);
    }

    public final InterfaceC0442Bk A0G() {
        return new C5(this);
    }

    public final InterfaceC0442Bk A0H() {
        return new C4(this);
    }

    public final InterfaceC0442Bk A0I() {
        return new C0(this);
    }

    public final InterfaceC0442Bk A0J() {
        return new CB(this);
    }

    public final InterfaceC0442Bk A0K() {
        return new CE(this);
    }

    public final InterfaceC0442Bk A0L() {
        return new C7(this);
    }

    public final InterfaceC0442Bk A0M() {
        return new C8(this);
    }

    public final InterfaceC0442Bk A0N() {
        return new CC(this);
    }

    public final InterfaceC0442Bk A0O() {
        return new CF(this);
    }

    public final InterfaceC0442Bk A0P() {
        return new CD(this);
    }

    public final InterfaceC0442Bk A0Q() {
        return new CA(this);
    }

    public final InterfaceC0442Bk A0R() {
        return new C9(this);
    }

    public final InterfaceC0442Bk A0S() {
        return new C0456By(this);
    }

    public final InterfaceC0442Bk A0T() {
        return new C0457Bz(this);
    }

    public final InterfaceC0442Bk A0U() {
        return new C1(this);
    }

    public final InterfaceC0442Bk A0V() {
        return new C2(this);
    }

    public final InterfaceC0442Bk A0W() {
        return new C3(this);
    }

    public final InterfaceC0442Bk A0X() {
        return new C6(this);
    }
}
