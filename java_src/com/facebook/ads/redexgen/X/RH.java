package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class RH implements View.OnTouchListener {
    public final /* synthetic */ RG A00;

    private RH(RG rg) {
        this.A00 = rg;
    }

    public /* synthetic */ RH(RG rg, RI ri) {
        this(rg);
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            this.A00.A03.A4L(this.A00.A02.A0B(), new SN().A04(this.A00.getViewabilityChecker()).A03(this.A00.getTouchDataRecorder()).A07());
            return false;
        }
        return false;
    }
}
