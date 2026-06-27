package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.ImageView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Pu, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0811Pu extends AbstractC0810Pt {
    private AbstractC0888St A00;
    private final OP A01;
    private final AbstractC02052b A02;
    private final C6K A03;

    public C0811Pu(Context context, AnonymousClass31 anonymousClass31, KM km, InterfaceC03688m interfaceC03688m) {
        super(context, km, interfaceC03688m, anonymousClass31);
        this.A01 = new OP();
        this.A02 = new C0807Pq(this);
        this.A03 = new C6K(this, 100, this.A02);
        this.A03.A0V(anonymousClass31.A06());
    }

    private void A05(int i, Bundle bundle) {
        C0811Pu c0811Pu = this;
        AnonymousClass32 anonymousClass32 = c0811Pu.A08.A0H().get(0);
        ImageView imageView = new ImageView(c0811Pu.getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setAdjustViewBounds(true);
        SM smA05 = new SM(imageView).A05(anonymousClass32.A03().A00(), anonymousClass32.A03().A01());
        smA05.A06(new C0809Ps(c0811Pu));
        smA05.A07(anonymousClass32.A03().A06());
        T0 t0A0J = new C0894Sz(c0811Pu.getContext(), c0811Pu.A09, c0811Pu.getAudienceNetworkListener(), c0811Pu.A08, imageView, c0811Pu.A03, c0811Pu.A01).A0E(c0811Pu.A0B.getToolbarHeight()).A0D(i).A0G(c0811Pu.A0B).A0J();
        boolean isBrowserViewOpened = false;
        char c = c0811Pu.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0811Pu = c0811Pu;
                    isBrowserViewOpened = c0811Pu.A00.A0X();
                    if (!(c0811Pu.A00 instanceof TP)) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c0811Pu = c0811Pu;
                    c0811Pu.A00.A0V();
                    c = 4;
                    break;
                case 4:
                    C0811Pu c0811Pu2 = c0811Pu;
                    c0811Pu2.A00 = C0892Sx.A00(t0A0J, bundle, true, isBrowserViewOpened);
                    c0811Pu2.A08(c0811Pu2.A00, c0811Pu2.A00.A0Y(), i);
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A45(Intent intent, Bundle bundle, C8s c8s) {
        super.A0A(c8s);
        c8s.A0N(new C0808Pr(this, c8s));
        A05(c8s.A0M().getResources().getConfiguration().orientation, bundle);
        int iA03 = this.A08.A0H().get(0).A03().A03();
        if (iA03 > 0) {
            A07(iA03);
        }
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A6x(Bundle bundle) {
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        Bundle bundle = new Bundle();
        A6x(bundle);
        removeAllViews();
        A05(configuration.orientation, bundle);
        super.onConfigurationChanged(configuration);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0810Pt, com.facebook.ads.redexgen.X.PK
    public final void onDestroy() {
        C0811Pu c0811Pu = this;
        char c = c0811Pu.A08 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0811Pu = c0811Pu;
                    if (!TextUtils.isEmpty(c0811Pu.A08.A0D())) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c0811Pu = c0811Pu;
                    c0811Pu.A09.A4D(c0811Pu.A08.A0D(), new SN().A04(c0811Pu.A03).A03(c0811Pu.A01).A07());
                    c = 4;
                    break;
                case 4:
                    c0811Pu = c0811Pu;
                    c0811Pu.A03.A0U();
                    if (c0811Pu.A00 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0811Pu = c0811Pu;
                    c0811Pu.A00.A0V();
                    c = 6;
                    break;
                case 6:
                    super.onDestroy();
                    return;
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.A01.A06(motionEvent, this, this);
        return super.onInterceptTouchEvent(motionEvent);
    }
}
