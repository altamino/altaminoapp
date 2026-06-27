package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public abstract class SU extends LinearLayout {
    public static final LinearLayout.LayoutParams A04 = new LinearLayout.LayoutParams(-2, -2);
    public final int A00;
    public final RelativeLayout A01;
    public final ViewOnClickListenerC0869Sa A02;
    public final C0837Qu A03;

    public abstract void A08(int i);

    public abstract void A09(boolean z);

    public SU(Context context, int i, C02282y c02282y, String str, KM km, InterfaceC03688m interfaceC03688m, C6K c6k, OP op) {
        super(context);
        this.A00 = i;
        this.A03 = new C0837Qu(context);
        OY.A0P(this.A03, 0);
        OY.A0N(this.A03);
        this.A02 = new ViewOnClickListenerC0869Sa(context, str, c02282y, km, interfaceC03688m, c6k, op);
        OY.A0H(1001, this.A02);
        this.A01 = new RelativeLayout(context);
        this.A01.setLayoutParams(A04);
        OY.A0N(this.A01);
    }

    public final void A00(boolean z) {
        this.A02.setActionEnabled(z);
        if (!TextUtils.isEmpty(this.A02.getText())) {
            A01(true);
        }
    }

    public final void A01(boolean z) {
        int i = 0;
        ViewOnClickListenerC0869Sa viewOnClickListenerC0869Sa = this.A02;
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i = 0;
                    c = 3;
                    break;
                case 3:
                    viewOnClickListenerC0869Sa.setVisibility(i);
                    return;
                case 4:
                    i = 8;
                    c = 3;
                    break;
            }
        }
    }

    public final ViewOnClickListenerC0869Sa getCTAButton() {
        return this.A02;
    }

    @VisibleForTesting
    public final ImageView getIconView() {
        return this.A03;
    }

    public void setCTAVisibility(Context context) {
        A01(K1.A1c(context));
    }

    public void setInfo(C02252v c02252v, C02292z c02292z, String str, String str2, @Nullable SX sx) {
        SU su = this;
        su.A02.setCta(c02292z, str, new HashMap(), sx);
        new SM(su.A03).A05(su.A00, su.A00).A07(str2);
        char c = K1.A0w(su.getContext()) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    su = su;
                    su.A03.setOnClickListener(new SS(su));
                    c = 3;
                    break;
                case 3:
                    su = su;
                    if (!K1.A0x(su.getContext())) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    su = su;
                    su.A01.setOnClickListener(new ST(su));
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }
}
