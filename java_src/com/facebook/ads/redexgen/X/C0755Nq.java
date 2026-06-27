package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeBannerAd;
import java.util.ArrayList;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Nq, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0755Nq extends LinearLayout implements InterfaceC0671Kg {
    private final NativeBannerAd A00;
    private final ArrayList<View> A01;
    private static final int A03 = (int) (OY.A01 * 42.0f);
    private static final int A02 = (int) (OY.A01 * 48.0f);
    private static final int A04 = (int) (OY.A01 * 54.0f);
    private static final int A06 = (int) (OY.A01 * 4.0f);
    private static final int A05 = (int) (OY.A01 * 8.0f);

    public C0755Nq(Context context, NativeBannerAd nativeBannerAd, LI li, LJ lj, MediaView mediaView, AdOptionsView adOptionsView) {
        LinearLayout.LayoutParams layoutParams;
        ViewGroup.LayoutParams iconContainerParams;
        super(context);
        this.A01 = new ArrayList<>();
        this.A00 = nativeBannerAd;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        int iA00 = A00(lj);
        C0878Sj c0878Sj = new C0878Sj(getContext());
        c0878Sj.setFullCircleCorners(true);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(iA00, iA00);
        layoutParams2.gravity = 16;
        c0878Sj.addView((View) mediaView, (ViewGroup.LayoutParams) new LinearLayout.LayoutParams(-1, -1));
        linearLayout.addView(c0878Sj, layoutParams2);
        C0757Ns c0757Ns = new C0757Ns(getContext(), this.A00, lj, li, adOptionsView);
        c0757Ns.setPadding(A05, 0, 0, 0);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -2);
        layoutParams3.weight = 1.0f;
        layoutParams3.gravity = 16;
        linearLayout.addView(c0757Ns, layoutParams3);
        if (lj == LJ.A0A) {
            int i = A06;
            int i2 = A06;
            int i3 = A06;
            int iconSize = A06;
            setPadding(i, i2, i3, iconSize);
            setOrientation(0);
            layoutParams = new LinearLayout.LayoutParams(0, -1);
            iconContainerParams = new LinearLayout.LayoutParams(-2, -1);
            linearLayout.setPadding(0, 0, A06, 0);
        } else {
            setPadding(A05, A05, A05, A05);
            setOrientation(1);
            layoutParams = new LinearLayout.LayoutParams(-1, 0);
            iconContainerParams = new LinearLayout.LayoutParams(-1, -2);
            linearLayout.setPadding(0, 0, 0, A05);
        }
        layoutParams.weight = 1.0f;
        addView(linearLayout, layoutParams);
        TextView textView = new TextView(getContext());
        textView.setPadding(A05, A06, A05, A06);
        li.A05(textView);
        textView.setText(this.A00.getAdCallToAction());
        addView(textView, iconContainerParams);
        this.A01.add(mediaView);
        this.A01.add(textView);
    }

    private static int A00(LJ lj) {
        char c;
        int i = 0;
        switch (lj) {
            case A0A:
                c = 4;
                break;
            case A06:
                c = 5;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    i = A04;
                    c = 3;
                    break;
                case 3:
                    return i;
                case 4:
                    i = A03;
                    c = 3;
                    break;
                case 5:
                    i = A02;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0671Kg
    public View getView() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0671Kg
    public ArrayList<View> getViewsForInteraction() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0671Kg
    public final void unregisterView() {
        this.A00.unregisterView();
    }
}
