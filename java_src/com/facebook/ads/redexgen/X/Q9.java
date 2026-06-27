package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.facebook.ads.internal.view.ToolbarActionView$ToolbarActionMode;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class Q9 extends AbstractC0810Pt {
    private static byte[] A0T;

    @Nullable
    private C8s A00;

    @Nullable
    private AbstractC0888St A01;

    @Nullable
    private EnumC0697Lh A02;
    private boolean A03;
    private boolean A04;
    private boolean A05;
    private boolean A06;
    private boolean A07;
    private boolean A08;
    private boolean A09;
    private final AnonymousClass32 A0A;
    private final InterfaceC03718p A0B;
    private final C0607Ht A0C;
    private final OP A0D;
    private final Q6 A0E;
    private final QL A0F;
    private final MB A0G;
    private final C9T A0H;
    private final C9X A0I;
    private final C9P A0J;
    private final C9N A0K;
    private final C9L A0L;
    private final Q1 A0M;
    private final C0596Hi A0N;
    private final B8 A0O;
    private final AbstractC02052b A0P;
    private final C6K A0Q;
    private final AtomicBoolean A0R;
    private final AtomicBoolean A0S;

    static {
        A0G();
    }

    private static String A0B(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0T, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 52);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0G() {
        A0T = new byte[]{25, 3, 21, 1, 24, 11, 6, 7, 17, 1, 15, 23, 22, 7, 6};
    }

    public Q9(Context context, KM km, AnonymousClass31 anonymousClass31, C0607Ht c0607Ht, InterfaceC03688m interfaceC03688m) {
        super(context, km, interfaceC03688m, anonymousClass31);
        this.A0B = new C0815Py(this);
        this.A0I = new C0816Pz(this);
        this.A0K = new Q0(this);
        this.A0M = new Q2(this);
        this.A0J = new Q3(this);
        this.A0H = new Q4(this);
        this.A0L = new Q5(this);
        this.A0D = new OP();
        this.A0S = new AtomicBoolean(false);
        this.A0R = new AtomicBoolean(false);
        this.A0E = new Q7(this);
        this.A04 = false;
        this.A06 = false;
        this.A03 = false;
        this.A05 = false;
        this.A08 = false;
        this.A09 = true;
        this.A07 = false;
        this.A0F = new QL(getContext());
        this.A0F.setFunnelLoggingHandler(super.A0A);
        this.A0F.setVideoProgressReportIntervalMs(anonymousClass31.A05());
        OY.A0N(this.A0F);
        OY.A0P(this.A0F, 0);
        this.A0A = anonymousClass31.A0H().get(0);
        this.A0C = c0607Ht;
        this.A0O = new B8(getContext());
        this.A0N = new C0596Hi(context, super.A0A);
        this.A0F.getEventBus().A03(this.A0K, this.A0M, this.A0J, this.A0H, this.A0I, this.A0L);
        setupPlugins(this.A0A);
        this.A0P = new Q8(this);
        this.A0Q = new C6K(this, 1, this.A0P);
        this.A0Q.A0V(anonymousClass31.A06());
        this.A0Q.A0W(anonymousClass31.A07());
        this.A0G = new MA(getContext(), super.A09, this.A0F, super.A08.A0D());
    }

    private T0 A08(int i) {
        return new C0894Sz(getContext(), super.A09, getAudienceNetworkListener(), super.A08, this.A0F, this.A0Q, this.A0D).A0E(super.A0B.getToolbarHeight()).A0D(i).A0I(this.A0O).A0F(this.A0N).A0G(super.A0B).A0H(this.A0E).A0J();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Access modifiers changed from: private */
    public void A0E() {
        Q9 q9 = this;
        QL ql = null;
        float f = 0.0f;
        AnonymousClass32 anonymousClass32 = null;
        char c = q9.A0F.getParent() == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    q9 = q9;
                    anonymousClass32 = ((AbstractC0810Pt) q9).A08.A0H().get(0);
                    ql = q9.A0F;
                    if (!anonymousClass32.A03().A08()) {
                        c = 11;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    q9 = q9;
                    if (!q9.A09) {
                        c = 11;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    f = 0.0f;
                    c = 6;
                    break;
                case 6:
                    q9 = q9;
                    ql = ql;
                    ql.setVolume(f);
                    if (!q9.A0F.A0X()) {
                        c = 7;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case 7:
                    q9 = q9;
                    if (!q9.A0F.A0Z()) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    q9 = q9;
                    q9.A0F.A0P(EnumC0697Lh.A03);
                    c = '\t';
                    break;
                case '\t':
                    anonymousClass32 = anonymousClass32;
                    if (anonymousClass32.A03().A03() <= 0) {
                        c = 2;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    q9 = q9;
                    q9.postDelayed(new C0814Px(q9), K1.A0R(q9.getContext()));
                    c = 2;
                    break;
                case 11:
                    f = 1.0f;
                    c = 6;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0F() {
        int i = 0;
        C0596Hi c0596Hi = this.A0N;
        char c = this.A0R.get() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i = 0;
                    c = 3;
                    break;
                case 3:
                    c0596Hi.setVisibility(i);
                    return;
                case 4:
                    i = 8;
                    c = 3;
                    break;
            }
        }
    }

    private void A0H(int i) {
        if (this.A01 == null) {
            return;
        }
        A08(this.A01, this.A01.A0Y(), i);
    }

    private void A0I(int i, @Nullable Bundle bundle) {
        Q9 q9 = this;
        T0 t0A08 = q9.A08(i);
        boolean zA0X = false;
        char c = q9.A01 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    q9 = q9;
                    zA0X = q9.A01.A0X();
                    if (!(q9.A01 instanceof TP)) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    q9 = q9;
                    q9.A01.A0V();
                    c = 4;
                    break;
                case 4:
                    q9.A01 = C0892Sx.A00(t0A08, bundle, false, zA0X);
                    return;
            }
        }
    }

    private void A0J(@Nullable Bundle bundle, AnonymousClass32 anonymousClass32, int i) {
        AnonymousClass32 anonymousClass322 = anonymousClass32;
        Bundle bundle2 = bundle;
        Q9 q9 = this;
        char c = q9.A01 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    q9 = q9;
                    bundle2 = bundle2;
                    anonymousClass322 = anonymousClass322;
                    q9.A01.A0W(anonymousClass322, ((AbstractC0810Pt) q9).A08.A0D(), C0887Ss.A00(anonymousClass322), bundle2, q9.A0E);
                    c = 3;
                    break;
                case 3:
                    bundle2 = bundle2;
                    if (bundle2 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    q9 = q9;
                    bundle2 = bundle2;
                    q9.A09 = bundle2.getBoolean(A0B(0, 15, 110), true);
                    c = 5;
                    break;
                case 5:
                    Q9 q92 = q9;
                    q92.A0F();
                    q92.A0H(i);
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A45(Intent intent, @Nullable Bundle bundle, C8s c8s) {
        super.A0A(c8s);
        this.A00 = c8s;
        AnonymousClass32 anonymousClass32 = super.A08.A0H().get(0);
        int i = c8s.A0M().getResources().getConfiguration().orientation;
        A0I(i, bundle);
        this.A0F.setVideoURI(this.A0C.A0Q(this.A0A.A03().A07()));
        A0J(bundle, anonymousClass32, i);
        if (this.A00 != null) {
            this.A00.A0N(this.A0B);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0810Pt, com.facebook.ads.redexgen.X.PK
    public final void A5x(boolean z) {
        Q9 q9 = this;
        char c = !q9.A04 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    q9 = q9;
                    if (!q9.A0F.A0W()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    q9 = q9;
                    q9.A02 = q9.A0F.getVideoStartReason();
                    q9.A06 = z;
                    q9.A0F.A0S(false);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0810Pt, com.facebook.ads.redexgen.X.PK
    public final void A67(boolean z) {
        Q9 q9 = this;
        char c = !q9.A04 ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    q9 = q9;
                    if (q9.A0F.getParent() == null) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    q9 = q9;
                    if (!q9.A0F.A0X()) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 4:
                    q9 = q9;
                    if (q9.A0F.getState() != EnumC03216q.A07) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    q9 = q9;
                    if (q9.A0F.getVideoStartReason() != EnumC0697Lh.A04) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    return;
                case 7:
                    q9 = q9;
                    if (q9.A0F.getState() == EnumC03216q.A06) {
                        c = 6;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    q9 = q9;
                    if (q9.A02 == null) {
                        c = 6;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    q9 = q9;
                    if (!q9.A06) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    if (!z) {
                        c = 6;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    q9 = q9;
                    q9.A0F.A0P(q9.A02);
                    c = 6;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A6x(Bundle bundle) {
        if (this.A01 != null) {
            bundle.putBoolean(A0B(0, 15, 110), this.A0F.A0V());
            this.A01.A0Q(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ToolbarActionView$ToolbarActionMode
    public int getCloseButtonStyle() {
        Q9 q9 = this;
        int i = 0;
        char c = q9.A01 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return i;
                case 3:
                    q9 = q9;
                    if (!q9.A0A.A09()) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    q9 = q9;
                    if (!(q9.A01 instanceof TC)) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    i = 1;
                    c = 2;
                    break;
                case 6:
                    q9 = q9;
                    if (!q9.A01.A0X()) {
                        c = 2;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    i = 3;
                    c = 2;
                    break;
            }
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        Bundle bundle = new Bundle();
        A6x(bundle);
        removeAllViews();
        OY.A0L(this.A0F);
        OY.A0L(this.A0O);
        OY.A0L(this.A0N);
        if (super.A08.A0H() == null) {
            return;
        }
        A0I(configuration.orientation, bundle);
        A0J(bundle, super.A08.A0H().get(0), configuration.orientation);
        super.onConfigurationChanged(configuration);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0810Pt, com.facebook.ads.redexgen.X.PK
    public final void onDestroy() {
        Q9 q9 = this;
        char c = !q9.A04 ? (char) 2 : '\n';
        while (true) {
            switch (c) {
                case 2:
                    q9 = q9;
                    if (!q9.A0S.get()) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    q9 = q9;
                    q9.A0F.A0M();
                    c = 4;
                    break;
                case 4:
                    q9 = q9;
                    if (((AbstractC0810Pt) q9).A08 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    q9 = q9;
                    if (!TextUtils.isEmpty(((AbstractC0810Pt) q9).A08.A0D())) {
                        c = 6;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 6:
                    q9 = q9;
                    ((AbstractC0810Pt) q9).A09.A4D(((AbstractC0810Pt) q9).A08.A0D(), new SN().A04(q9.A0Q).A03(q9.A0D).A07());
                    c = 7;
                    break;
                case 7:
                    q9 = q9;
                    if (q9.A01 == null) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    q9 = q9;
                    q9.A01.A0V();
                    c = '\t';
                    break;
                case '\t':
                    q9 = q9;
                    q9.A0F.A0N();
                    q9.A0F.A0J();
                    q9.A0F.getEventBus().A04(q9.A0K, q9.A0M, q9.A0J, q9.A0H, q9.A0I, q9.A0L);
                    q9.A04 = true;
                    c = '\n';
                    break;
                case '\n':
                    q9 = q9;
                    q9.A0Q.A0U();
                    q9.A00 = null;
                    if (q9.A01 == null) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    q9 = q9;
                    q9.A01.A0V();
                    c = '\f';
                    break;
                case '\f':
                    super.onDestroy();
                    return;
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.A0D.A06(motionEvent, this, this);
        return super.onInterceptTouchEvent(motionEvent);
    }

    private void setupPlugins(AnonymousClass32 anonymousClass32) {
        this.A0F.A0L();
        this.A0F.A0Q(this.A0O);
        this.A0F.A0Q(this.A0N);
        if (!TextUtils.isEmpty(anonymousClass32.A03().A06())) {
            HW hw = new HW(getContext());
            this.A0F.A0Q(hw);
            hw.setImage(anonymousClass32.A03().A06());
        }
        C0438Bg c0438Bg = new C0438Bg(getContext(), true, super.A0A);
        this.A0F.A0Q(c0438Bg);
        this.A0F.A0Q(new IS(c0438Bg, IT.A02, true));
        this.A0F.A0Q(new FK(getContext()));
    }
}
