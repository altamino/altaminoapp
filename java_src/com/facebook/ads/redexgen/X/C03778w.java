package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.internal.api.AdComponentViewApi;
import com.facebook.ads.internal.api.NativeAdLayoutApi;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8w, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C03778w extends C03608e implements NativeAdLayoutApi {

    @Nullable
    private View A02;
    private NativeAdLayout A03;

    @Nullable
    private S6 A04;
    private int A01 = 0;
    private int A00 = 0;

    public final void A02() {
        OY.A0U(this.A03);
        this.A03.removeView(this.A02);
        this.A02 = null;
    }

    public final void A03(RU ru) {
        this.A02 = ru;
        ru.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        OY.A0U(this.A03);
        this.A03.addView(this.A02);
    }

    public final void A04(@Nullable String str) {
        C03778w c03778w = this;
        char c = c03778w.A04 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c03778w = c03778w;
                    c03778w.A03.removeView(c03778w.A04);
                    c = 3;
                    break;
                case 3:
                    c03778w = c03778w;
                    str = str;
                    c03778w.A04 = SA.A01(c03778w.A03.getContext(), str);
                    if (c03778w.A04 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c03778w = c03778w;
                    c03778w.A03.addView(c03778w.A04, new FrameLayout.LayoutParams(-1, -1));
                    c03778w.A03.bringChildToFront(c03778w.A04);
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    public final AdComponentViewApi getAdComponentViewApi() {
        return this;
    }

    public final void initialize(NativeAdLayout nativeAdLayout) {
        this.A03 = nativeAdLayout;
    }

    @Override // com.facebook.ads.redexgen.X.C03608e
    public final void onMeasure(int i, int i2) {
        C03778w c03778w = this;
        super.onMeasure(i, i2);
        char c = c03778w.A00 > 0 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c03778w = c03778w;
                    if (c03778w.A03.getMeasuredWidth() <= c03778w.A00) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c03778w = c03778w;
                    c03778w.setMeasuredDimension(c03778w.A00, c03778w.A03.getMeasuredHeight());
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    c03778w = c03778w;
                    if (c03778w.A03.getMeasuredWidth() >= c03778w.A01) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c03778w = c03778w;
                    c03778w.setMeasuredDimension(c03778w.A01, c03778w.A03.getMeasuredHeight());
                    c = 4;
                    break;
            }
        }
    }

    public final void setMaxWidth(int i) {
        this.A00 = i;
    }

    public final void setMinWidth(int i) {
        this.A01 = i;
    }
}
