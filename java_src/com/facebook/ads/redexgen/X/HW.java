package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.widget.ImageView;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class HW extends AbstractC0692Lc {
    private final ImageView A00;
    private final AbstractC01971t<LN> A01;
    private final AbstractC01971t<K4> A02;

    public HW(Context context) {
        super(context);
        this.A02 = new C0589Hb(this);
        this.A01 = new C0588Ha(this);
        this.A00 = new ImageView(context);
        this.A00.setScaleType(ImageView.ScaleType.FIT_CENTER);
        OY.A0P(this.A00, ViewCompat.MEASURED_STATE_MASK);
        this.A00.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        addView(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0692Lc
    public final void A09() {
        super.A09();
        if (getVideoView() != null) {
            getVideoView().getEventBus().A03(this.A02, this.A01);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0692Lc
    public final void A0A() {
        if (getVideoView() != null) {
            getVideoView().getEventBus().A04(this.A01, this.A02);
        }
        super.A0A();
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.A00.layout(0, 0, i3 - i, i4 - i2);
    }

    public void setImage(@Nullable String str) {
        setImage(str, null);
    }

    public void setImage(@Nullable String str, @Nullable InterfaceC02072d interfaceC02072d) {
        HW hw = this;
        SM smA04 = null;
        char c = str == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    hw = hw;
                    hw.setVisibility(8);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    hw = hw;
                    interfaceC02072d = interfaceC02072d;
                    hw.setVisibility(0);
                    smA04 = new SM(hw.A00).A04();
                    if (interfaceC02072d == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    interfaceC02072d = interfaceC02072d;
                    smA04 = smA04;
                    smA04.A06(interfaceC02072d);
                    c = 6;
                    break;
                case 6:
                    str = str;
                    smA04 = smA04;
                    smA04.A07(str);
                    c = 3;
                    break;
            }
        }
    }
}
