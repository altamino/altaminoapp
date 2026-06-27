package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class U2 extends FrameLayout {
    private static final int A06 = (int) (16.0f * OY.A01);
    private R6 A00;

    @Nullable
    private MA A01;
    private C0596Hi A02;
    private HW A03;
    private C0438Bg A04;
    private final KX A05;

    public U2(Context context, KX kx) {
        super(context);
        this.A05 = kx;
        setUpView(context);
    }

    public final void A01() {
        this.A00.A0S(true);
    }

    public final void A02() {
        if (this.A01 != null) {
            this.A01.A0f();
            this.A01 = null;
        }
    }

    public final void A03(AbstractC01971t abstractC01971t) {
        this.A00.getEventBus().A05(abstractC01971t);
    }

    public final void A04(KM km, String str, Map<String, String> extraParams) {
        A02();
        this.A01 = new MA(getContext(), km, this.A00, str, extraParams);
    }

    public final void A05(EnumC0697Lh enumC0697Lh) {
        this.A00.A0P(enumC0697Lh);
    }

    public final boolean A06() {
        return this.A00.A0Y();
    }

    @VisibleForTesting
    public QL getSimpleVideoView() {
        return this.A00;
    }

    public float getVolume() {
        return this.A00.getVolume();
    }

    public void setPlaceholderUrl(String str) {
        this.A03.setImage(str);
    }

    private void setUpPlugins(Context context) {
        this.A00.A0L();
        this.A03 = new HW(context);
        this.A00.A0Q(this.A03);
        this.A02 = new C0596Hi(context, this.A05);
        this.A00.A0Q(new C0626Im(context));
        this.A00.A0Q(this.A02);
        this.A04 = new C0438Bg(context, true, this.A05);
        this.A00.A0Q(this.A04);
        this.A00.A0Q(new IS(this.A04, IT.A02, true, true));
        if (!this.A00.A0U()) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        layoutParams.setMargins(A06, A06, A06, A06);
        this.A02.setLayoutParams(layoutParams);
        this.A00.addView(this.A02);
    }

    private void setUpVideo(Context context) {
        this.A00 = new R6(context);
        this.A00.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        OY.A0N(this.A00);
        addView(this.A00);
        setOnClickListener(new U3(this));
    }

    private void setUpView(Context context) {
        setUpVideo(context);
        setUpPlugins(context);
    }

    public void setVideoURI(String str) {
        this.A00.setVideoURI(str);
    }

    public void setVolume(float f) {
        this.A00.setVolume(f);
        this.A02.A06();
    }
}
