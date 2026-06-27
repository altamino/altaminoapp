package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import java.util.ArrayList;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Kh, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0672Kh extends FrameLayout implements InterfaceC0671Kg {
    private static final int A04 = (int) (OY.A01 * 110.0f);
    private ArrayList<View> A00;
    private final AdOptionsView A01;
    private final L8 A02;
    private final LI A03;

    public C0672Kh(Context context, L8 l8, AdOptionsView adOptionsView, @Nullable MediaView mediaView, View view, LJ lj, LI li) {
        super(context);
        this.A03 = li;
        this.A02 = l8;
        this.A01 = adOptionsView;
        this.A00 = new ArrayList<>();
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        switch (lj) {
            case A09:
                A01(linearLayout);
            case A08:
                A02(linearLayout, mediaView);
                break;
        }
        A03(linearLayout, lj, view);
        addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
    }

    private static int A00(LJ lj) {
        char c;
        int iA03 = 0;
        switch (lj) {
            case A09:
                c = 6;
                break;
            case A08:
                c = 5;
                break;
            case A0A:
                c = 4;
                break;
            case A06:
                c = 4;
                break;
            case A07:
                c = 4;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    iA03 = 0;
                    c = 3;
                    break;
                case 3:
                    return iA03;
                case 4:
                    lj = lj;
                    iA03 = lj.A03();
                    c = 3;
                    break;
                case 5:
                    lj = lj;
                    iA03 = lj.A03() - 180;
                    c = 3;
                    break;
                case 6:
                    lj = lj;
                    iA03 = (lj.A03() - 180) / 2;
                    c = 3;
                    break;
            }
        }
    }

    private void A01(ViewGroup viewGroup) {
        C0881Sm c0881Sm = new C0881Sm(getContext(), this.A02, this.A03);
        c0881Sm.setLayoutParams(new LinearLayout.LayoutParams(-1, A04));
        viewGroup.addView(c0881Sm);
    }

    private void A02(ViewGroup viewGroup, RelativeLayout relativeLayout) {
        RelativeLayout relativeLayout2 = new RelativeLayout(getContext());
        relativeLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, (int) (OY.A01 * 180.0f)));
        OY.A0P(relativeLayout2, this.A03.A00());
        relativeLayout2.addView(relativeLayout);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, (int) (OY.A01 * 180.0f));
        layoutParams.addRule(13, -1);
        relativeLayout.setLayoutParams(layoutParams);
        viewGroup.addView(relativeLayout2);
        this.A00.add(relativeLayout);
    }

    private void A03(ViewGroup viewGroup, LJ lj, View view) {
        C0875Sg c0875Sg = new C0875Sg(getContext(), this.A02, this.A03, view, this.A01, A04(lj), A00(lj));
        c0875Sg.setLayoutParams(new LinearLayout.LayoutParams(-1, (int) (A00(lj) * OY.A01)));
        viewGroup.addView(c0875Sg);
        this.A00.add(c0875Sg.getIconView());
        this.A00.add(c0875Sg.getCallToActionView());
    }

    private static boolean A04(LJ lj) {
        boolean z = false;
        char c = lj != LJ.A08 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    lj = lj;
                    if (lj != LJ.A07) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
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
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0671Kg
    public final void unregisterView() {
        this.A02.unregisterView();
    }
}
