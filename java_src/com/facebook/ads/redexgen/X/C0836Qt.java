package com.facebook.ads.redexgen.X;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.RewardData;
import com.narvii.prompt.ReputationPromptHelper;
import com.narvii.util.ws.WsMessage;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Qt, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0836Qt extends RelativeLayout implements PK {
    private static byte[] A0j;
    private static final int A0k;
    private static final int A0l;
    private static final int A0m;
    private static final int A0n;
    private static final int A0o;
    private static final int A0p;
    private static final RelativeLayout.LayoutParams A0q;
    public static final int A0r;
    public static final int A0s;
    public static final int A0t;
    public static final int A0u;
    public static final int A0v;
    public static final /* synthetic */ boolean A0w;
    private int A00;
    private int A01;

    @Nullable
    private Context A02;

    @Nullable
    private View A03;

    @Nullable
    private InterfaceC03688m A04;

    @Nullable
    private C0797Pg A05;

    @Nullable
    private SU A06;
    private C0785Ou A07;

    @Nullable
    private QL A08;

    @Nullable
    private EnumC0697Lh A09;
    private C0632Is A0A;

    @Nullable
    private IS A0B;

    @Nullable
    private C0438Bg A0C;

    @Nullable
    private AM A0D;
    private C7M A0E;
    private boolean A0F;
    private boolean A0G;
    private boolean A0H;
    private boolean A0I;
    private boolean A0J;
    private final int A0K;
    private final int A0L;
    private final BroadcastReceiver A0M;
    private final Handler A0N;
    private final Handler A0O;
    private final RelativeLayout A0P;
    private final C02282y A0Q;
    private final C3D A0R;
    private final InterfaceC03718p A0S;
    private final KM A0T;
    private final KX A0U;
    private final OP A0V;
    private final MA A0W;
    private final C9T A0X;
    private final C9X A0Y;
    private final C9N A0Z;
    private final C9L A0a;
    private final Q1 A0b;
    private final C0596Hi A0c;
    private final B8 A0d;
    private final AbstractC02052b A0e;
    private final C6K A0f;
    private final AtomicBoolean A0g;
    private final boolean A0h;
    private final boolean A0i;

    private static String A0G(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0j, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 15);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0T() {
        A0j = new byte[]{-16, -4, -6, -69, -13, -18, -16, -14, -17, -4, -4, -8, -69, -18, -15, 0, -69, 0, -14, -16, -4, -5, -15, -18, -1, 6, -20, -18, -15, -20, -1, -14, -18, -15, 6, -35, -48, -53, -52, -42};
    }

    static {
        A0T();
        A0w = !C0836Qt.class.desiredAssertionStatus();
        A0m = (int) (10.0f * OY.A01);
        A0n = (int) (18.0f * OY.A01);
        A0p = (int) (16.0f * OY.A01);
        A0l = (int) (48.0f * OY.A01);
        A0o = (int) (28.0f * OY.A01);
        A0k = (int) (250.0f * OY.A01);
        A0v = (int) (12.0f * OY.A01);
        A0u = (int) (26.0f * OY.A01);
        A0r = (int) (4.0f * OY.A01);
        A0s = C02794x.A01(-1, 77);
        A0t = C02794x.A01(A0s, 90);
        A0q = new RelativeLayout.LayoutParams(-1, -1);
    }

    public C0836Qt(Context context, KM km, QL ql, InterfaceC03688m interfaceC03688m, C3D c3d) {
        super(context);
        this.A0N = new Handler(Looper.getMainLooper());
        this.A0S = new C0824Qh(this);
        this.A0X = new C0825Qi(this);
        this.A0Y = new C0826Qj(this);
        this.A0a = new C0827Qk(this);
        this.A0Z = new C0828Ql(this);
        this.A0b = new C0830Qn(this);
        this.A0V = new OP();
        this.A0g = new AtomicBoolean(false);
        this.A0O = new Handler();
        this.A0M = new C0835Qs(this, null);
        this.A0I = false;
        this.A0H = false;
        this.A0G = false;
        this.A0J = false;
        this.A0F = false;
        this.A01 = -1;
        this.A02 = context;
        this.A0h = K1.A20(this.A02);
        this.A0i = K1.A1z(this.A02);
        this.A04 = interfaceC03688m;
        this.A0T = km;
        this.A0R = c3d;
        this.A0U = new KX(this.A0R.A0C(), this.A0T);
        this.A08 = ql;
        this.A08.setFunnelLoggingHandler(this.A0U);
        this.A0Q = this.A0R.A0G().A01();
        this.A0P = new RelativeLayout(context);
        this.A0d = new B8(this.A02);
        this.A0c = new C0596Hi(this.A02, this.A0U);
        this.A0L = Math.min(this.A0R.A0H().A02(), this.A0R.A0H().A04());
        this.A0K = this.A0R.A0T() ? ReputationPromptHelper.REPUTATION_GAINED_SHOW_DURATION : 0;
        this.A0e = new C0831Qo(this);
        this.A0f = new C6K(this, 1, this.A0e);
        this.A0f.A0V(250);
        this.A0W = new MA(this.A02, this.A0T, this.A08, this.A0R.A0C());
        this.A07 = new C0785Ou(this.A02, this.A0T, this.A0R, this.A04, this.A0f, this.A0V);
        new SM(this).A07(this.A0R.A0H().A06());
        if (!A0w && this.A08 == null) {
            throw new AssertionError();
        }
        this.A08.setVideoProgressReportIntervalMs(c3d.A03());
        this.A08.getEventBus().A03(this.A0X, this.A0Y, this.A0a, this.A0Z, this.A0b);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(A0G(0, 35, 126));
        C02784w.A00(getContext()).A06(this.A0M, intentFilter);
    }

    private void A0I() {
        if (this.A02 == null) {
            return;
        }
        FrameLayout frameLayout = new FrameLayout(this.A02);
        frameLayout.setLayoutParams(A0q);
        OY.A0P(frameLayout, 1711276032);
        this.A0P.addView(frameLayout, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0J() {
        if (this.A04 == null) {
            return;
        }
        this.A04.A2f(J8.A09.A02());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0K() {
        C0836Qt c0836Qt = this;
        Pair<EnumC0786Ov, View> pairA05 = null;
        RelativeLayout.LayoutParams layoutParams = null;
        int i = 0;
        c0836Qt.A0I = true;
        OY.A0U(c0836Qt.A0P);
        char c = c0836Qt.A08 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0836Qt = c0836Qt;
                    c0836Qt.A08.A0L();
                    c0836Qt.A08.setVisibility(4);
                    c = 3;
                    break;
                case 3:
                    c0836Qt = c0836Qt;
                    if (c0836Qt.A05 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return;
                case 5:
                    c0836Qt = c0836Qt;
                    i = 0;
                    setupToolbarForEndcard(c0836Qt.getContext(), c0836Qt.A05);
                    OY.A0a(c0836Qt.A08, c0836Qt.A0c, c0836Qt.A0d);
                    pairA05 = c0836Qt.A07.A05();
                    c0836Qt.A03 = (View) pairA05.second;
                    switch (C0823Qg.A00[((EnumC0786Ov) pairA05.first).ordinal()]) {
                        case 1:
                            c = 7;
                            break;
                        case 2:
                            c = 6;
                            break;
                        default:
                            c = 4;
                            break;
                    }
                case 6:
                    c0836Qt = c0836Qt;
                    pairA05 = pairA05;
                    View[] viewArr = new View[1];
                    viewArr[i] = c0836Qt.A06;
                    OY.A0a(viewArr);
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                    layoutParams2.setMargins(A0p, A0p, A0p, A0p);
                    c0836Qt.A0P.addView((View) pairA05.second, layoutParams2);
                    c0836Qt.A0V.A05();
                    c = 4;
                    break;
                case 7:
                    c0836Qt = c0836Qt;
                    if (!c0836Qt.A0i) {
                        c = '\b';
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\b':
                    c0836Qt = c0836Qt;
                    pairA05 = pairA05;
                    layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    layoutParams.setMargins(i, c0836Qt.A05.getToolbarHeight(), i, i);
                    c0836Qt.A0P.addView((View) pairA05.second, layoutParams);
                    if (c0836Qt.A06 == null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c0836Qt = c0836Qt;
                    layoutParams = layoutParams;
                    layoutParams.addRule(2, c0836Qt.A06.getId());
                    c = '\n';
                    break;
                case '\n':
                    c0836Qt = c0836Qt;
                    if (c0836Qt.A06 == null) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c0836Qt = c0836Qt;
                    c0836Qt.A06.setVisibility(i);
                    c0836Qt.A06.A00(true);
                    c0836Qt.A06.A09(true);
                    c = '\f';
                    break;
                case '\f':
                    c0836Qt = c0836Qt;
                    c0836Qt.A0R();
                    c0836Qt.A0V.A05();
                    c = 4;
                    break;
                case '\r':
                    c0836Qt = c0836Qt;
                    pairA05 = pairA05;
                    c0836Qt.A0P.addView((View) pairA05.second);
                    c = '\n';
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0L() {
        C0836Qt c0836Qt = this;
        QN qn = null;
        boolean z = false;
        RewardData rewardDataA04 = c0836Qt.A0R.A04();
        char c = rewardDataA04 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0836Qt = c0836Qt;
                    c0836Qt.A0J();
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c0836Qt = c0836Qt;
                    rewardDataA04 = rewardDataA04;
                    qn = new QN(c0836Qt.getContext(), -1, ViewCompat.MEASURED_STATE_MASK, c0836Qt.A0R.A0L().A08(rewardDataA04.getCurrency(), rewardDataA04.getQuantity()), c0836Qt.A0R.A0L().A07(rewardDataA04.getCurrency(), rewardDataA04.getQuantity()), c0836Qt.A0R.A0L().A04(), c0836Qt.A0R.A0L().A03(), C0769Oe.A01(EnumC0768Od.REWARD_ICON_PLAY));
                    qn.A02.setOnClickListener(new ViewOnClickListenerC0818Qb(c0836Qt));
                    qn.A01.setOnClickListener(new ViewOnClickListenerC0819Qc(c0836Qt));
                    OY.A0U(c0836Qt.A0P);
                    if (!K1.A1d(c0836Qt.getContext())) {
                        c = 5;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 5:
                    c0836Qt = c0836Qt;
                    OY.A0L(c0836Qt.A05);
                    c = 6;
                    break;
                case 6:
                    c0836Qt = c0836Qt;
                    qn = qn;
                    OY.A0L(c0836Qt.A03);
                    OY.A0L(c0836Qt.A06);
                    c0836Qt.A0P.addView(qn, A0q);
                    c0836Qt.A0F = z;
                    c = 3;
                    break;
                case 7:
                    c0836Qt = c0836Qt;
                    if (c0836Qt.A05 == null) {
                        c = 6;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c0836Qt = c0836Qt;
                    z = false;
                    c0836Qt.A05.A05(false);
                    c = 6;
                    break;
            }
        }
    }

    private void A0M() {
        int iA03;
        if (this.A08 == null || this.A02 == null) {
            return;
        }
        this.A08.A0L();
        this.A08.A0Q(new FK(this.A02));
        this.A08.A0Q(this.A0c);
        this.A08.A0Q(this.A0d);
        this.A0C = new C0438Bg(this.A02, true, this.A0U);
        View view = new View(this.A02);
        view.setLayoutParams(A0q);
        OY.A0P(view, 1711276032);
        IS is = new IS(view, IT.A02, true);
        this.A08.addView(view);
        this.A08.A0Q(is);
        IS fadeableTouchPlayPausePlugin = new IS(this.A0C, IT.A02, true);
        this.A08.A0Q(this.A0C);
        this.A08.A0Q(fadeableTouchPlayPausePlugin);
        this.A00 = OY.A03(this.A02);
        boolean landscapeFonts = this.A07.A06() == EnumC0786Ov.A03 && this.A00 == 2 && this.A0i;
        if (!this.A0h) {
            this.A06 = new C0841Qy(this.A02, A0l, this.A0Q, this.A0T, this.A04, this.A07.A06() == EnumC0786Ov.A02 || landscapeFonts, this.A07.A06() == EnumC0786Ov.A02, this.A0f, this.A0V, this.A0i);
            IS fadeableTouchPlayPausePlugin2 = new IS(this.A06, IT.A02, true);
            this.A0B = fadeableTouchPlayPausePlugin2;
            this.A08.A0Q(this.A0B);
        } else {
            this.A06 = new C0876Sh(this.A02, A0l, this.A0R.A0I().A00() == EnumC02232t.A04, this.A0Q, J8.A04.A02(), this.A0T, this.A04, this.A0f, this.A0V, this.A0i);
            this.A06.setCTAVisibility(this.A02);
            this.A0E = new C7M(this.A06, WsMessage.LIVE_LAYER_USER_JOINED_EVENT, 100, 0);
            A0U();
            A0P();
        }
        this.A06.setInfo(this.A0R.A0I(), this.A0R.A0J(), this.A0R.A0C(), this.A0R.A0N().A01(), null);
        if (K1.A1k(getContext())) {
            this.A05 = new C0799Pi(this.A02, this.A04, this.A0U, 1, this.A0R.A0F());
        } else {
            this.A05 = new C0797Pg(this.A02, this.A04, this.A0U, R3.A02, this.A0R.A0F());
        }
        if (this.A0R.A0H().A03() < 0) {
            iA03 = this.A0R.A0H().A04();
        } else {
            iA03 = this.A0R.A0H().A03();
        }
        this.A01 = iA03;
        this.A05.setPageDetails(this.A0R.A0N(), this.A0R.A0C(), this.A01, this.A0R.A0O());
        if (this.A0R.A0H().A03() < 0) {
            this.A05.setToolbarActionMode(4);
        }
        if (this.A07.A06() != EnumC0786Ov.A02 || this.A0h) {
            this.A05.A03();
        }
        this.A05.setToolbarListener(new QZ(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0N() {
        C0836Qt c0836Qt = this;
        String strA05 = null;
        QN qn = null;
        RewardData rewardDataA04 = c0836Qt.A0R.A04();
        char c = rewardDataA04 == null ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    c0836Qt = c0836Qt;
                    strA05 = c0836Qt.A0R.A0M().A05();
                    c = 3;
                    break;
                case 3:
                    c0836Qt = c0836Qt;
                    strA05 = strA05;
                    qn = new QN(c0836Qt.getContext(), -1, ViewCompat.MEASURED_STATE_MASK, strA05, null, c0836Qt.A0R.A0M().A04(), c0836Qt.A0R.A0M().A03(), C0769Oe.A01(EnumC0768Od.REWARD_ICON));
                    qn.A02.setOnClickListener(new ViewOnClickListenerC0820Qd(c0836Qt, qn));
                    qn.A01.setOnClickListener(new ViewOnClickListenerC0821Qe(c0836Qt, qn));
                    OY.A0I(c0836Qt.A0P);
                    OY.A0I(c0836Qt.A05);
                    OY.A0P(qn, 1711276032);
                    qn.setClickable(true);
                    if (c0836Qt.A08 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0836Qt = c0836Qt;
                    if (!c0836Qt.A08.A0X()) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    c0836Qt = c0836Qt;
                    c0836Qt.A08.A0T(false, false);
                    c = 6;
                    break;
                case 6:
                    QN qn2 = qn;
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    c0836Qt.addView(qn2, layoutParams);
                    qn2.bringToFront();
                    return;
                case 7:
                    c0836Qt = c0836Qt;
                    rewardDataA04 = rewardDataA04;
                    strA05 = c0836Qt.A0R.A0M().A08(rewardDataA04.getCurrency(), rewardDataA04.getQuantity());
                    c = 3;
                    break;
            }
        }
    }

    private void A0O() {
        C0836Qt c0836Qt = this;
        char c = c0836Qt.A0R.A0T() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0836Qt = c0836Qt;
                    if (c0836Qt.A04 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0836Qt = c0836Qt;
                    C0813Pw c0813Pw = new C0813Pw(c0836Qt.getContext(), c0836Qt.A0R);
                    KZ.A07(c0813Pw, c0836Qt.A0U, KW.A0V);
                    View introView = c0836Qt.A0P;
                    OY.A0I(introView);
                    View introView2 = c0836Qt.A05;
                    OY.A0I(introView2);
                    c0836Qt.A04.A2Y(c0813Pw, 1, A0q);
                    AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                    alphaAnimation.setDuration(500L);
                    alphaAnimation.setAnimationListener(new C0834Qr(c0836Qt, c0813Pw));
                    c0813Pw.startAnimation(alphaAnimation);
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    private void A0P() {
        this.A0N.postDelayed(new C0817Qa(this), this.A0K);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0Q() {
        if (this.A08 == null) {
            return;
        }
        this.A08.A0P(EnumC0697Lh.A05);
        postDelayed(new QY(this), K1.A0Q(getContext()));
    }

    private void A0R() {
        if (this.A0i && this.A03 != null && this.A07 != null && this.A07.A06() == EnumC0786Ov.A03) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            boolean z = this.A00 == 2;
            layoutParams.setMargins(0, !z ? getToolbarHeight() : A0m, 0, !z ? 0 : A0m);
            this.A03.setLayoutParams(layoutParams);
            this.A03.setOverScrollMode(2);
            C0776Ol recyclerAdapter = (C0776Ol) ((C8H) this.A03).getAdapter();
            recyclerAdapter.A07();
            recyclerAdapter.A0K(this.A00, this.A0i);
            if (this.A06 != null) {
                if (z) {
                    this.A06.A08(this.A00);
                } else {
                    layoutParams.addRule(2, this.A06.getId());
                }
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(!z ? -1 : A0k, z ? -1 : -2);
                layoutParams2.addRule(12);
                this.A06.setPadding(A0p, !z ? A0p : A0p + getToolbarHeight(), A0p, A0p);
                this.A06.setLayoutParams(layoutParams2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0S() {
        int i = 0;
        C0596Hi c0596Hi = this.A0c;
        char c = this.A0g.get() ? (char) 2 : (char) 4;
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

    private final void A0U() {
        C0836Qt c0836Qt = this;
        char c = c0836Qt.A06 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c0836Qt = c0836Qt;
                    c0836Qt.A0A = new C0632Is(true);
                    if (c0836Qt.A0D == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0836Qt = c0836Qt;
                    c0836Qt.A0A.A0I(c0836Qt.A0D);
                    c = 5;
                    break;
                case 5:
                    c0836Qt = c0836Qt;
                    C02282y c02282yA01 = c0836Qt.A0R.A0G().A01();
                    c0836Qt.A0A.A0I(new C8A(c0836Qt.A06.getCTAButton(), 300, c02282yA01.A08(true), -14934495));
                    c0836Qt.A0A.A0I(new C0426At(c0836Qt.A06.getCTAButton(), 300, OY.A09(A0s, A0t, A0r), OY.A06(c02282yA01.A08(true), A0r)));
                    c0836Qt.A0A.A0I(new C8O(((C0876Sh) c0836Qt.A06).getExpandableLayout(), 150, false));
                    c0836Qt.A0A.A0H(2300);
                    c0836Qt.A0A.A46(c0836Qt.A08);
                    c = 2;
                    break;
            }
        }
    }

    private final void A0V() {
        C0836Qt c0836Qt = this;
        char c = c0836Qt.A08 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0836Qt = c0836Qt;
                    c0836Qt.A08.A0N();
                    c0836Qt.A08.A0J();
                    c = 3;
                    break;
                case 3:
                    c0836Qt = c0836Qt;
                    if (c0836Qt.A0f == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0836Qt = c0836Qt;
                    c0836Qt.A0f.A0U();
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0e(LN ln) {
        C0836Qt c0836Qt = this;
        char c = c0836Qt.A0I ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c0836Qt = c0836Qt;
                    c0836Qt.A07.A07();
                    c0836Qt.A0K();
                    if (c0836Qt.A04 == null) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0836Qt = c0836Qt;
                    ln = ln;
                    c0836Qt.A04.A2g(J8.A07.A02(), ln);
                    c = 2;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0f(String str) {
        C0836Qt c0836Qt = this;
        int currentPositionInMillis = 0;
        int duration = 0;
        char c = c0836Qt.A08 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0836Qt = c0836Qt;
                    currentPositionInMillis = c0836Qt.A08.getCurrentPositionInMillis();
                    duration = c0836Qt.A08.getDuration();
                    c = 3;
                    break;
                case 3:
                    c0836Qt = c0836Qt;
                    str = str;
                    c0836Qt.A0V();
                    P7.A07(c0836Qt.A02, A0G(35, 5, 88), P8.A1i, new PA(str));
                    if (!K1.A1B(c0836Qt.A02)) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0836Qt = c0836Qt;
                    c0836Qt.A0e(new LN(currentPositionInMillis, duration));
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    c0836Qt = c0836Qt;
                    if (c0836Qt.A04 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c0836Qt = c0836Qt;
                    c0836Qt.A04.A2f(J8.A0A.A02());
                    c = 5;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0g() {
        C0836Qt c0836Qt = this;
        boolean z = false;
        char c = c0836Qt.A08 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c0836Qt = c0836Qt;
                    if (c0836Qt.A08.getCurrentPositionInMillis() / 1000 < c0836Qt.A0R.A0H().A02()) {
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

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A45(Intent intent, Bundle bundle, C8s c8s) {
        C0836Qt c0836Qt = this;
        char c = c0836Qt.A08 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0836Qt = c0836Qt;
                    if (c0836Qt.A04 != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    c0836Qt = c0836Qt;
                    c8s = c8s;
                    c0836Qt.A0M();
                    c8s.A0N(c0836Qt.A0S);
                    c0836Qt.A08.setVideoURI(new C0607Ht(c0836Qt.getContext()).A0Q(c0836Qt.A0R.A0H().A07()));
                    c0836Qt.setUpContentLayoutForVideo(c8s.A0M().getResources().getConfiguration().orientation);
                    c0836Qt.addView(c0836Qt.A0P, A0q);
                    if (c0836Qt.A05 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0836Qt = c0836Qt;
                    OY.A0N(c0836Qt.A05);
                    c0836Qt.A05.A04(c0836Qt.A0Q, true);
                    c0836Qt.addView(c0836Qt.A05, new RelativeLayout.LayoutParams(-1, c0836Qt.A05.getToolbarHeight()));
                    c = 6;
                    break;
                case 6:
                    c0836Qt = c0836Qt;
                    c0836Qt.A04.A2Y(c0836Qt, 0, A0q);
                    c0836Qt.A0O();
                    c0836Qt.postDelayed(new C0832Qp(c0836Qt), K1.A0R(c0836Qt.getContext()));
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A5x(boolean z) {
        C0836Qt c0836Qt = this;
        char c = c0836Qt.A08 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0836Qt = c0836Qt;
                    if (!c0836Qt.A08.A0W()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    c0836Qt = c0836Qt;
                    c0836Qt.A09 = c0836Qt.A08.getVideoStartReason();
                    c0836Qt.A0H = z;
                    c0836Qt.A08.A0S(false);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A67(boolean z) {
        C0836Qt c0836Qt = this;
        char c = c0836Qt.A08 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0836Qt = c0836Qt;
                    if (!c0836Qt.A08.A0X()) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c0836Qt = c0836Qt;
                    if (!c0836Qt.A0I) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return;
                case 5:
                    c0836Qt = c0836Qt;
                    if (c0836Qt.A08.getState() == EnumC03216q.A06) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0836Qt = c0836Qt;
                    if (c0836Qt.A09 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c0836Qt = c0836Qt;
                    if (!c0836Qt.A0H) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    if (!z) {
                        c = 4;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c0836Qt = c0836Qt;
                    c0836Qt.A08.A0P(c0836Qt.A09);
                    c = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A6x(Bundle bundle) {
    }

    private int getToolbarHeight() {
        C0836Qt c0836Qt = this;
        int toolbarHeight = 0;
        char c = c0836Qt.A05 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    toolbarHeight = C0797Pg.A07;
                    c = 3;
                    break;
                case 3:
                    return toolbarHeight;
                case 4:
                    c0836Qt = c0836Qt;
                    toolbarHeight = c0836Qt.A05.getToolbarHeight();
                    c = 3;
                    break;
            }
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        C0836Qt c0836Qt = this;
        char c = c0836Qt.A06 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c0836Qt = c0836Qt;
                    configuration = configuration;
                    c0836Qt.A06.A08(configuration.orientation);
                    if (!c0836Qt.A0h) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0836Qt = c0836Qt;
                    if (c0836Qt.A0D == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0836Qt = c0836Qt;
                    configuration = configuration;
                    c0836Qt.A0D.A09(((C0876Sh) c0836Qt.A06).A0A(configuration.orientation));
                    c = 5;
                    break;
                case 5:
                    C0836Qt c0836Qt2 = c0836Qt;
                    c0836Qt2.A00 = configuration.orientation;
                    c0836Qt2.A0R();
                    return;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [android.content.Context, com.facebook.ads.redexgen.X.8m, com.facebook.ads.redexgen.X.IS, com.facebook.ads.redexgen.X.QL, com.facebook.ads.redexgen.X.SU] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    @Override // com.facebook.ads.redexgen.X.PK
    public final void onDestroy() {
        C0836Qt c0836Qt = this;
        ?? r4 = 0;
        c0836Qt.A0V();
        char c = c0836Qt.A08 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0836Qt = c0836Qt;
                    c0836Qt.A08.getEventBus().A04(c0836Qt.A0X, c0836Qt.A0Y, c0836Qt.A0a, c0836Qt.A0Z, c0836Qt.A0b);
                    c = 3;
                    break;
                case 3:
                    c0836Qt = c0836Qt;
                    C02784w.A00(c0836Qt.getContext()).A05(c0836Qt.A0M);
                    if (!TextUtils.isEmpty(c0836Qt.A0R.A0C())) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    c0836Qt = c0836Qt;
                    c0836Qt.A0T.A4D(c0836Qt.A0R.A0C(), new SN().A04(c0836Qt.A0f).A03(c0836Qt.A0V).A07());
                    c = 5;
                    break;
                case 5:
                    c0836Qt = c0836Qt;
                    if (c0836Qt.A05 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0836Qt = c0836Qt;
                    r4 = 0;
                    c0836Qt.A05.setToolbarListener(null);
                    c = 7;
                    break;
                case 7:
                    C0836Qt c0836Qt2 = c0836Qt;
                    c0836Qt2.A0W.A0f();
                    c0836Qt2.A08 = r4;
                    c0836Qt2.A06 = r4;
                    c0836Qt2.A0B = r4;
                    c0836Qt2.A04 = r4;
                    c0836Qt2.A02 = r4;
                    c0836Qt2.A0d.A09();
                    return;
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.A0V.A06(motionEvent, this, this);
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C0836Qt c0836Qt = this;
        super.onLayout(z, i, i2, i3, i4);
        char c = c0836Qt.A0h ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    if (!z) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0836Qt = c0836Qt;
                    if (c0836Qt.A0D != null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0836Qt = c0836Qt;
                    c0836Qt.A0D = new AM(((C0876Sh) c0836Qt.A06).getExpandableLayout(), 300, ((C0876Sh) c0836Qt.A06).getExpandableLayout().getHeight(), 0);
                    c0836Qt.A0A.A0I(c0836Qt.A0D);
                    c0836Qt.A0A.A0G();
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    @VisibleForTesting
    public void setEndCardController(C0785Ou c0785Ou) {
        this.A07 = c0785Ou;
    }

    public void setListener(InterfaceC03688m interfaceC03688m) {
    }

    private void setUpContentLayoutForVideo(int i) {
        this.A0P.removeAllViews();
        A0I();
        this.A0P.addView(this.A08, A0q);
        if (this.A06 != null) {
            this.A06.A09(false);
            OY.A0N(this.A06);
            this.A06.A08(i);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(12);
            this.A06.setPadding(A0p, A0p, A0p, A0p);
            this.A0P.addView(this.A06, layoutParams);
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(A0o, A0o);
        layoutParams2.addRule(10);
        layoutParams2.addRule(11);
        layoutParams2.setMargins(A0m, A0m + getToolbarHeight(), A0m, A0n);
        this.A0P.addView(this.A0c, layoutParams2);
        A0S();
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, this.A0h ? A0u : -2);
        if (this.A0h) {
            this.A0d.setPadding(A0v, A0v, A0v, A0v);
            this.A0d.A0A(-1, A0s);
        }
        layoutParams3.addRule(12);
        this.A0P.addView(this.A0d, layoutParams3);
    }

    private static void setupToolbarForEndcard(Context context, C0797Pg c0797Pg) {
        c0797Pg.setToolbarActionMode(4);
        c0797Pg.A03();
        new Handler(Looper.getMainLooper()).postDelayed(new C0822Qf(c0797Pg), K1.A0V(context));
    }
}
