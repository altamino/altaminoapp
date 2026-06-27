package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class QL extends RelativeLayout implements QI, QJ, QK {
    private int A00;
    private KX A01;
    private M4 A02;
    private boolean A03;
    private boolean A04;
    private boolean A05;
    private boolean A06;
    private final Handler A07;
    private final Handler A08;
    private final View.OnTouchListener A09;
    private final C0661Jw<AbstractC01971t, C0660Jv> A0A;
    private final List<InterfaceC0696Lg> A0B;
    public final InterfaceC03236s A0C;
    private static final K2 A0F = new K2();
    private static final C0667Kc A0D = new C0667Kc();
    private static final C0659Ju A0G = new C0659Ju();
    private static final C0658Jt A0H = new C0658Jt();
    private static final K4 A0E = new K4();
    private static final JG A0I = new JG();
    private static final J9 A0K = new J9();
    private static final JA A0J = new JA();

    public QL(Context context) {
        super(context);
        this.A0B = new ArrayList();
        this.A07 = new Handler();
        this.A08 = new Handler();
        this.A0A = new C0661Jw<>();
        this.A05 = false;
        this.A06 = true;
        this.A00 = 200;
        this.A09 = new ViewOnTouchListenerC0748Nj(this);
        this.A0C = new TextureViewSurfaceTextureListenerC03226r(context);
        A08();
    }

    public QL(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.A0B = new ArrayList();
        this.A07 = new Handler();
        this.A08 = new Handler();
        this.A0A = new C0661Jw<>();
        this.A05 = false;
        this.A06 = true;
        this.A00 = 200;
        this.A09 = new ViewOnTouchListenerC0748Nj(this);
        this.A0C = new TextureViewSurfaceTextureListenerC03226r(context, attributeSet);
        A08();
    }

    public QL(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.A0B = new ArrayList();
        this.A07 = new Handler();
        this.A08 = new Handler();
        this.A0A = new C0661Jw<>();
        this.A05 = false;
        this.A06 = true;
        this.A00 = 200;
        this.A09 = new ViewOnTouchListenerC0748Nj(this);
        this.A0C = new TextureViewSurfaceTextureListenerC03226r(context, attributeSet, i);
        A08();
    }

    private void A08() {
        this.A0C.setRequestedVolume(1.0f);
        this.A0C.setVideoStateChangeListener(this);
        this.A02 = new M4(getContext(), this.A0C);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(this.A02, layoutParams);
        setOnTouchListener(this.A09);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A09() {
        this.A07.postDelayed(new C0751Nm(this), this.A00);
    }

    private final void A0A() {
        QL ql = this;
        InterfaceC0696Lg next = null;
        Iterator<InterfaceC0696Lg> it = ql.A0B.iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    it = it;
                    next = it.next();
                    if (!(next instanceof AbstractC0692Lc)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    ql = ql;
                    next = next;
                    ql.A0F((AbstractC0692Lc) next);
                    c = 5;
                    break;
                case 5:
                    ql = ql;
                    next = next;
                    next.A46(ql);
                    c = 2;
                    break;
                case 6:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0B(KW kw) {
        if (this.A01 == null) {
            return;
        }
        this.A01.A02(kw, null);
    }

    private void A0E(InterfaceC0696Lg interfaceC0696Lg) {
        if (interfaceC0696Lg instanceof AbstractC0692Lc) {
            A0G((AbstractC0692Lc) interfaceC0696Lg);
        }
        interfaceC0696Lg.A7C(this);
    }

    private void A0F(AbstractC0692Lc abstractC0692Lc) {
        QL ql = this;
        char c = abstractC0692Lc.getParent() == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    abstractC0692Lc = abstractC0692Lc;
                    if (!(abstractC0692Lc instanceof HW)) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    ql = ql;
                    abstractC0692Lc = abstractC0692Lc;
                    ql.A02.A00(abstractC0692Lc);
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    ql = ql;
                    abstractC0692Lc = abstractC0692Lc;
                    ql.addView(abstractC0692Lc);
                    c = 4;
                    break;
            }
        }
    }

    private void A0G(AbstractC0692Lc abstractC0692Lc) {
        QL ql = this;
        char c = abstractC0692Lc instanceof HW ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    ql = ql;
                    abstractC0692Lc = abstractC0692Lc;
                    ql.A02.A01(abstractC0692Lc);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    abstractC0692Lc = abstractC0692Lc;
                    OY.A0L(abstractC0692Lc);
                    c = 3;
                    break;
            }
        }
    }

    public final void A0J() {
        this.A0C.setVideoStateChangeListener(null);
        this.A0C.destroy();
    }

    public final void A0K() {
        if (A0W()) {
            return;
        }
        this.A0C.A3p();
    }

    public final void A0L() {
        QL ql = this;
        Iterator<InterfaceC0696Lg> it = ql.A0B.iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    ql = ql;
                    it = it;
                    ql.A0E(it.next());
                    c = 2;
                    break;
                case 4:
                    ql.A0B.clear();
                    return;
            }
        }
    }

    public final void A0M() {
        this.A08.post(new C0747Ni(this));
        this.A0C.A77();
    }

    public final void A0N() {
        this.A0C.stop();
    }

    public final void A0O(int i) {
        this.A07.removeCallbacksAndMessages(null);
        this.A0C.seekTo(i);
    }

    public final void A0P(EnumC0697Lh enumC0697Lh) {
        QL ql = this;
        char c = ql.A03 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    ql = ql;
                    if (ql.A0C.getState() != EnumC03216q.A06) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    ql = ql;
                    ql.A03 = false;
                    c = 4;
                    break;
                case 4:
                    ql.A0C.A78(enumC0697Lh);
                    return;
            }
        }
    }

    public final void A0Q(InterfaceC0696Lg interfaceC0696Lg) {
        this.A0B.add(interfaceC0696Lg);
    }

    public final void A0R(InterfaceC0696Lg interfaceC0696Lg) {
        this.A0B.remove(interfaceC0696Lg);
        A0E(interfaceC0696Lg);
    }

    public final void A0S(boolean z) {
        if (A0W()) {
            return;
        }
        this.A0C.pause(z);
        this.A05 = z;
    }

    public final void A0T(boolean z, boolean z2) {
        this.A06 = z2;
        A0S(z);
    }

    public final boolean A0U() {
        return this.A0C.A3r();
    }

    public final boolean A0V() {
        boolean z = false;
        char c = getVolume() == 0.0f ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A0W() {
        boolean z = false;
        char c = getState() == EnumC03216q.A05 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A0X() {
        QL ql = this;
        boolean z = false;
        char c = ql.A0W() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    ql = ql;
                    if (!ql.A05) {
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

    public final boolean A0Y() {
        boolean z = false;
        char c = getState() == EnumC03216q.A0A ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A0Z() {
        return this.A06;
    }

    @Override // com.facebook.ads.redexgen.X.QJ
    public final boolean A3w() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.QJ
    public final boolean A3x() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.QI
    public final void A6F(int i, int i2) {
        this.A08.post(new C0749Nk(this, i, i2));
        A09();
    }

    @Override // com.facebook.ads.redexgen.X.QI
    public final void A6M(EnumC03216q enumC03216q) {
        int currentPositionInMillis = getCurrentPositionInMillis();
        this.A08.post(new C0750Nl(this, enumC03216q, getDuration(), currentPositionInMillis));
    }

    @Override // com.facebook.ads.redexgen.X.QJ
    public int getCurrentPositionInMillis() {
        return this.A0C.getCurrentPosition();
    }

    public int getDuration() {
        return this.A0C.getDuration();
    }

    @NonNull
    public C0661Jw<AbstractC01971t, C0660Jv> getEventBus() {
        return this.A0A;
    }

    @Override // com.facebook.ads.redexgen.X.QJ
    public long getInitialBufferTime() {
        return this.A0C.getInitialBufferTime();
    }

    public EnumC03216q getState() {
        return this.A0C.getState();
    }

    public Handler getStateHandler() {
        return this.A08;
    }

    public TextureView getTextureView() {
        return (TextureView) this.A0C;
    }

    public int getVideoHeight() {
        return this.A0C.getVideoHeight();
    }

    public int getVideoProgressReportIntervalMs() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.QJ
    public EnumC0697Lh getVideoStartReason() {
        return this.A0C.getStartReason();
    }

    public View getVideoView() {
        return this.A02;
    }

    public int getVideoWidth() {
        return this.A0C.getVideoWidth();
    }

    @Override // com.facebook.ads.redexgen.X.QJ
    public View getView() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.QJ
    public float getVolume() {
        return this.A0C.getVolume();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        this.A0A.A02(A0J);
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.A0A.A02(A0K);
        super.onDetachedFromWindow();
    }

    public void setControlsAnchorView(View view) {
        if (this.A0C != null) {
            this.A0C.setControlsAnchorView(view);
        }
    }

    public void setFunnelLoggingHandler(KX kx) {
        this.A01 = kx;
    }

    public void setIsFullScreen(boolean z) {
        this.A04 = z;
        this.A0C.setFullScreen(z);
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
    }

    public void setVideoMPD(@Nullable String str) {
        this.A0C.setVideoMPD(str);
    }

    public void setVideoProgressReportIntervalMs(int i) {
        this.A00 = i;
    }

    public void setVideoURI(@Nullable Uri uri) {
        QL ql = this;
        char c = uri == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    ql = ql;
                    ql.A0L();
                    c = 3;
                    break;
                case 3:
                    ql.A03 = false;
                    return;
                case 4:
                    ql = ql;
                    uri = uri;
                    ql.A0A();
                    ql.A0C.setup(uri);
                    c = 3;
                    break;
            }
        }
    }

    public void setVideoURI(@Nullable String str) {
        Uri uri = null;
        char c = str != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    uri = Uri.parse(str);
                    c = 3;
                    break;
                case 3:
                    setVideoURI(uri);
                    return;
                case 4:
                    uri = null;
                    c = 3;
                    break;
            }
        }
    }

    public void setVolume(float f) {
        KW kw = null;
        char c = f == 1.0f ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    kw = KW.A0c;
                    c = 3;
                    break;
                case 3:
                    QL ql = this;
                    ql.A0B(kw);
                    ql.A0C.setRequestedVolume(f);
                    ql.getEventBus().A02(A0I);
                    return;
                case 4:
                    kw = KW.A0b;
                    c = 3;
                    break;
            }
        }
    }
}
