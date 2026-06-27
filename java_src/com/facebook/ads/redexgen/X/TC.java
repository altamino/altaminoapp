package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.facebook.ads.RewardData;
import com.narvii.prompt.ReputationPromptHelper;
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.util.ws.WsMessage;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class TC extends AbstractC0889Su {
    private static byte[] A0F;
    private static final int A0G;
    private static final int A0H;
    public static final /* synthetic */ boolean A0I;

    @Nullable
    private View A00;

    @Nullable
    private InterfaceC0796Pf A01;

    @Nullable
    private C0797Pg A02;
    private C0785Ou A03;

    @Nullable
    private C7M A04;
    private boolean A05;
    private boolean A06;
    private final int A07;
    private final Handler A08;
    private final FrameLayout A09;
    private final SP A0A;
    private final TF A0B;
    private final QL A0C;
    private final B8 A0D;
    private final AtomicBoolean A0E;

    private static String A0B(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 55);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0K() {
        A0F = new byte[]{-80, -87, -66, -83, -57, -69, -68, -87, -70, -68, -79, -74, -81, -57, -87, -74, -79, -75, -87, -68, -79, -73, -74, -69, -57, -72, -76, -87, -63, -83, -84, -26, -48, -30, -18, -44, -35, -45, -18, -46, -48, -31, -45, -18, -30, -41, -34, -26, -35, -22, -19, -15, -29, -3, -16, -29, -11, -33, -16, -30, -3, -15, -31, -16, -29, -29, -20, -3, -15, -26, -19, -11, -20};
    }

    static {
        A0K();
        A0I = !TC.class.desiredAssertionStatus();
        A0G = C02794x.A01(3618615, 255);
        A0H = (int) (OY.A01 * 16.0f);
    }

    public TC(T0 t0, C02282y c02282y) {
        super(t0, c02282y, false);
        this.A08 = new Handler(Looper.getMainLooper());
        this.A0E = new AtomicBoolean(false);
        this.A06 = false;
        this.A05 = false;
        this.A02 = t0.A09();
        this.A07 = getAdInfo().A0B() ? ReputationPromptHelper.REPUTATION_GAINED_SHOW_DURATION : 0;
        A0E();
        C0886Sr.A00(t0.A02(), this, getAdInfo().A03().A06());
        this.A0C = A07(t0);
        getAdDetailsView().bringToFront();
        this.A0D = A09(t0);
        A0a();
        this.A0A = A04();
        this.A03 = new C0785Ou(getContext(), t0.A06(), getAdDataBundle(), getAdDataBundle().A0H().get(0), t0.A08(), t0.A0C(), t0.A07());
        this.A09 = new FrameLayout(getContext());
        this.A0B = new TF(getAdDataBundle().A0H().get(0).A03().A02(), getAdDataBundle().A0C().A00(), getAdDataBundle().A0H().get(0).A07(), this.A02, new T4(this, t0));
        A0C();
    }

    private SP A04() {
        SP sp = new SP(getContext());
        sp.setIcon(EnumC0768Od.REWARD_ICON);
        sp.setBackgroundColor(A0G);
        sp.setHighlightColor(-1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(OY.A02.widthPixels / 2, -2);
        layoutParams.leftMargin = A0H;
        layoutParams.topMargin = A0Z(this.A02);
        addView(sp, layoutParams);
        OY.A0I(sp);
        return sp;
    }

    private QL A07(T0 t0) {
        View view = (QL) t0.A03();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(view, layoutParams);
        int iA0Z = A0Z(t0.A09());
        ImageView imageView = (ImageView) t0.A04();
        int toolbarHeight = !A0I ? 2 : 4;
        while (true) {
            switch (toolbarHeight) {
                case 2:
                    imageView = imageView;
                    if (imageView != null) {
                        toolbarHeight = 4;
                        break;
                    } else {
                        toolbarHeight = 3;
                        break;
                    }
                case 3:
                    throw new AssertionError();
                case 4:
                    QL ql = (QL) view;
                    ImageView imageView2 = imageView;
                    int i = AbstractC0889Su.A0D;
                    int i2 = AbstractC0889Su.A0D;
                    int i3 = AbstractC0889Su.A0D;
                    int toolbarHeight2 = AbstractC0889Su.A0D;
                    imageView2.setPadding(i, i2, i3, toolbarHeight2);
                    int i4 = AbstractC0889Su.A0E;
                    int toolbarHeight3 = AbstractC0889Su.A0E;
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i4, toolbarHeight3);
                    int toolbarHeight4 = AbstractC0889Su.A0C;
                    layoutParams2.setMargins(0, iA0Z, toolbarHeight4, 0);
                    layoutParams2.addRule(11);
                    layoutParams2.addRule(10);
                    ql.addView(imageView2, layoutParams2);
                    return ql;
            }
        }
    }

    private B8 A09(T0 t0) {
        B8 b8A0B = t0.A0B();
        char c = !A0I ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    b8A0B = b8A0B;
                    if (b8A0B != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    throw new AssertionError();
                case 4:
                    B8 b8 = b8A0B;
                    b8.setPadding(AbstractC0889Su.A0H, AbstractC0889Su.A0H, AbstractC0889Su.A0H, AbstractC0889Su.A0H);
                    b8.A0A(-1, AbstractC0889Su.A09);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, AbstractC0889Su.A0G);
                    layoutParams.addRule(12);
                    addView(b8, layoutParams);
                    return b8;
            }
        }
    }

    private void A0C() {
        TC tc = this;
        String strA05 = null;
        RewardData rewardDataA08 = tc.getAdDataBundle().A08();
        char c = rewardDataA08 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    tc = tc;
                    strA05 = tc.getAdDataBundle().A0A().A05();
                    c = 3;
                    break;
                case 3:
                    TC tc2 = tc;
                    QN qn = new QN(tc2.getContext(), -1, ViewCompat.MEASURED_STATE_MASK, strA05, null, tc2.getAdDataBundle().A0A().A04(), tc2.getAdDataBundle().A0A().A03(), C0769Oe.A01(EnumC0768Od.REWARD_ICON));
                    qn.A02.setOnClickListener(new T6(tc2));
                    qn.A01.setOnClickListener(new T7(tc2));
                    tc2.A09.addView(qn, new RelativeLayout.LayoutParams(-1, -1));
                    return;
                case 4:
                    tc = tc;
                    rewardDataA08 = rewardDataA08;
                    strA05 = tc.getAdDataBundle().A0A().A08(rewardDataA08.getCurrency(), rewardDataA08.getQuantity());
                    c = 3;
                    break;
            }
        }
    }

    private void A0D() {
        getAnimationPlugin().A0E();
        this.A0C.A0R(getAnimationPlugin());
    }

    private void A0E() {
        TC tc = this;
        char c = tc.A02 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    tc = tc;
                    if (!tc.getAdInfo().A09()) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    tc = tc;
                    if (!tc.getAdInfo().A07()) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    tc = tc;
                    tc.A01 = tc.A02.getToolbarListener();
                    tc.A02.setToolbarListener(new T5(tc));
                    c = 6;
                    break;
                case 6:
                    tc = tc;
                    tc.A04 = new C7M(tc.A02, WsMessage.LIVE_LAYER_USER_JOINED_EVENT, -tc.A02.getToolbarHeight(), 0);
                    c = 2;
                    break;
            }
        }
    }

    private void A0F() {
        TC tc = this;
        long jA0V = 0;
        int i = 0;
        new KX(tc.getAdDataBundle().A0D(), tc.getAdEventManager()).A02(KW.A0o, null);
        char c = !tc.getAdInfo().A09() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    tc = tc;
                    tc.A0E.set(true);
                    if (tc.A02 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    tc = tc;
                    if (tc.A01 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    tc = tc;
                    OY.A0O(tc.A02);
                    tc.A02.setToolbarActionMode(4);
                    tc.A02.setToolbarActionMessage(A0B(49, 0, 101));
                    if (!tc.A05) {
                        c = '\t';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    jA0V = 0;
                    c = 7;
                    break;
                case 7:
                    tc = tc;
                    tc.A08.postDelayed(new T8(tc), jA0V);
                    c = '\b';
                    break;
                case '\b':
                    tc = tc;
                    i = 0;
                    OY.A0U(tc);
                    OY.A0a(tc.A0D, tc.A09, tc.A00);
                    OY.A0Q(tc.A0C, 4);
                    tc.A00 = (View) tc.A03.A05().second;
                    switch ((EnumC0786Ov) r4.first) {
                        case A03:
                            c = 11;
                            break;
                        case A02:
                            c = '\n';
                            break;
                        default:
                            c = 2;
                            break;
                    }
                case '\t':
                    tc = tc;
                    jA0V = K1.A0V(tc.getContext());
                    c = 7;
                    break;
                case '\n':
                    tc = tc;
                    View[] viewArr = new View[1];
                    viewArr[i] = tc.getAdDetailsView();
                    OY.A0a(viewArr);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    layoutParams.setMargins(AbstractC0889Su.A0F, AbstractC0889Su.A0F, AbstractC0889Su.A0F, AbstractC0889Su.A0F);
                    tc.addView(tc.A00, layoutParams);
                    c = 2;
                    break;
                case 11:
                    tc = tc;
                    tc.getAdDetailsView().setVisibility(i);
                    tc.getAdDetailsView().A00(true);
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                    layoutParams2.setMargins(i, tc.A0Z(tc.A02), i, i);
                    layoutParams2.addRule(2, tc.getAdDetailsView().getId());
                    tc.addView(tc.A00, layoutParams2);
                    c = 2;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0G() {
        TC tc = this;
        char c = tc.A02 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    tc = tc;
                    OY.A0I(tc.A02);
                    c = 3;
                    break;
                case 3:
                    tc = tc;
                    if (!tc.A0C.A0X()) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    tc = tc;
                    tc.A0C.A0T(false, false);
                    c = 5;
                    break;
                case 5:
                    TC tc2 = tc;
                    OY.A0Q(tc2.A0C, 4);
                    OY.A0Q(tc2.A0D, 4);
                    OY.A0Q(tc2.getAdDetailsView(), 4);
                    tc2.addView(tc2.A09, new RelativeLayout.LayoutParams(-1, -1));
                    tc2.A06 = true;
                    return;
            }
        }
    }

    private void A0H() {
        TC tc = this;
        RewardData rewardDataA08 = tc.getAdDataBundle().A08();
        char c = tc.A0B.A06() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    rewardDataA08 = rewardDataA08;
                    if (rewardDataA08 != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    tc = tc;
                    rewardDataA08 = rewardDataA08;
                    tc.A0A.setText(tc.getAdDataBundle().A0A().A06(rewardDataA08.getCurrency(), rewardDataA08.getQuantity()));
                    tc.A0A.bringToFront();
                    OY.A0J(tc.A0A);
                    OY.A0O(tc.A0A);
                    tc.postDelayed(new TA(tc), ScenePollPlayView.POLL_RESULT_COUNT_DOWN_MS);
                    c = 3;
                    break;
            }
        }
    }

    private void A0I() {
        this.A08.postDelayed(new T9(this), this.A07);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0J() {
        if (this.A04 != null) {
            this.A04.A2a(true, false);
        }
        getAdDetailsAnimation().A2a(true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0N() {
        TC tc = this;
        boolean z = false;
        char c = tc.A0B.A06() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    tc = tc;
                    if (!tc.A06) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
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

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final void A0Q(Bundle bundle) {
        bundle.putBoolean(A0B(0, 31, 49), true);
        bundle.putBoolean(A0B(31, 18, 88), this.A0E.get());
        bundle.putBoolean(A0B(49, 24, 103), this.A06);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final void A0R(LN ln) {
        super.A0R(ln);
        A0F();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final void A0S(K2 k2) {
        super.A0S(k2);
        A0H();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final void A0T(K0 k0) {
        TC tc = this;
        super.A0T(k0);
        int iA00 = k0.A00();
        int duration = tc.A0C.getDuration();
        int videoLengthMs = duration - iA00 < 3000 ? 2 : 4;
        while (true) {
            switch (videoLengthMs) {
                case 2:
                    tc = tc;
                    if (!tc.getAnimationPlugin().A0J()) {
                        videoLengthMs = 4;
                        break;
                    } else {
                        videoLengthMs = 3;
                        break;
                    }
                case 3:
                    tc = tc;
                    tc.getAnimationPlugin().A0F();
                    videoLengthMs = 4;
                    break;
                case 4:
                    tc.A0B.A05(iA00, duration);
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final boolean A0U() {
        TC tc = this;
        boolean z = false;
        char c = tc.A0N() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    tc = tc;
                    tc.A0G();
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

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final void A0V() {
        TC tc = this;
        super.A0V();
        tc.A0D();
        char c = tc.A02 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    tc = tc;
                    if (tc.A01 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    tc = tc;
                    tc.A02.setToolbarListener(tc.A01);
                    c = 4;
                    break;
                case 4:
                    TC tc2 = tc;
                    tc2.A02 = null;
                    tc2.A01 = null;
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0889Su, com.facebook.ads.redexgen.X.AbstractC0888St
    public final void A0W(AnonymousClass32 anonymousClass32, String str, double d, @Nullable Bundle bundle, @Nullable Q6 q6) {
        Q6 q62 = q6;
        Bundle bundle2 = bundle;
        TC tc = this;
        boolean z = false;
        super.A0W(anonymousClass32, str, d, bundle2, q62);
        char c = bundle2 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    bundle2 = new Bundle();
                    c = 3;
                    break;
                case 3:
                    bundle2 = bundle2;
                    z = false;
                    if (!bundle2.getBoolean(A0B(0, 31, 49), false)) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    tc = tc;
                    tc.A0I();
                    c = 5;
                    break;
                case 5:
                    bundle2 = bundle2;
                    if (!bundle2.getBoolean(A0B(31, 18, 88), z)) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    tc = tc;
                    tc.A05 = true;
                    tc.A0F();
                    c = 7;
                    break;
                case 7:
                    bundle2 = bundle2;
                    if (!bundle2.getBoolean(A0B(49, 24, 103), z)) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    tc = tc;
                    tc.A0G();
                    c = '\t';
                    break;
                case '\t':
                    bundle2 = bundle2;
                    if (!bundle2.getBoolean(A0B(31, 18, 88), z)) {
                        c = '\n';
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\n':
                    bundle2 = bundle2;
                    if (!bundle2.getBoolean(A0B(49, 24, 103), z)) {
                        c = 11;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case 11:
                    q62 = q62;
                    if (q62 == null) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    q62 = q62;
                    q62.A4q();
                    c = '\r';
                    break;
                case '\r':
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final boolean A0Y() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0889Su
    public final void A0a() {
        super.A0a();
        getAnimationPlugin().A46(this.A0C);
    }
}
