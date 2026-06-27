package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.api.AudienceNetworkActivityApi;
import com.facebook.ads.internal.view.dynamiclayout.DynamicFullScreenAdView$AdFormatType;
import io.agora.rtc.Constants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Tu, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0914Tu extends FrameLayout implements PK {
    private static byte[] A0Q;

    @Nullable
    private AudienceNetworkActivityApi A00;
    private InterfaceC03718p A01;
    private C0813Pw A02;
    private RK A03;
    private String A04;
    private boolean A05;
    private boolean A06;
    private boolean A07;
    private boolean A08;
    private final C02292z A09;
    private final AnonymousClass38 A0A;
    private final C0607Ht A0B;
    private final KM A0C;
    private final KX A0D;
    private final OP A0E;
    private final AbstractC0777Om A0F;
    private final InterfaceC03688m A0G;
    private final C0905Tk A0H;
    private final AbstractC02052b A0I;
    private final C6K A0J;
    private final String A0K;
    private final String A0L;
    private final String A0M;

    @Nullable
    private final String A0N;
    private final LinkedList<String> A0O;
    private final JSONObject A0P;

    static {
        A0E();
    }

    private static String A0A(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0Q, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 12);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0E() {
        A0Q = new byte[]{91, 64, 88, 64, 94, 107, 106, 69, 103, 112, 109, 114, 109, 112, 125, 86, 97, 119, 113, 105, 97, 96, 44, 35, 33, 119, 35, 45, 63, 69, 100, 114, 99, 85, 118, 100, 114, 33, 35, 86, 100, 100, 114, 99, 100, 63, 48, 50, 100, 48, 59, 48, 50, 100, 48, 62, 20, 17, 39, 16, 5, 26, 7, 1, 28, 27, 18, 38, 1, 20, 7, 1, 16, 17, 93, 82, 80, 6, 82, 92, 78, 123, 122, 85, 119, 96, 125, 98, 125, 96, 109, 68, 117, 97, 103, 113, 112, 60, 51, 49, 103, 51, 61, 47, 53, 48, 6, 49, 36, 59, 38, 32, 61, 58, 51, 18, 61, 58, 61, 39, 60, 49, 48, 124, 115, 113, 39, 115, 125, 111, 106, 117, 121, 107, 78, 121, 125, 120, 101, 72, 115, 79, 116, 115, 107, 52, 59, 57, 111, 59, 53, 39, 67, 108, 102, 112, 109, 107, 102, 75, 108, 118, 103, 112, 100, 99, 97, 103, 56, 46, 63, 10, 62, 63, 35, 0, 46, 50, 99, 108, 110, 56, 108, 103, 108, 110, 56, 108, 98, 112};
    }

    public C0914Tu(Context context, KM km, InterfaceC03688m interfaceC03688m, AnonymousClass31 anonymousClass31) {
        this(context, anonymousClass31.A0D(), km, interfaceC03688m, anonymousClass31.A0I(), anonymousClass31.A0E(), anonymousClass31.A0H().get(0).A05(), anonymousClass31.A0B(), anonymousClass31.A0G(), anonymousClass31.A0H().get(0).A03().A07(), anonymousClass31.A06(), anonymousClass31.A07(), new RL(false), 1);
        this.A02 = new C0813Pw(context, anonymousClass31);
        this.A08 = anonymousClass31.A0H().get(0).A0B();
    }

    public C0914Tu(Context context, KM km, InterfaceC03688m interfaceC03688m, C3D c3d) {
        this(context, c3d.A0C(), km, interfaceC03688m, c3d.A0Q(), c3d.A0D(), c3d.A0J(), c3d.A0N(), c3d.A0P(), c3d.A0H().A07(), 250, 1000, new RM(), 0);
        this.A04 = c3d.A0K().A00();
        this.A08 = c3d.A0T();
    }

    private C0914Tu(Context context, String str, KM km, InterfaceC03688m interfaceC03688m, JSONObject jSONObject, String str2, C02292z c02292z, AnonymousClass38 anonymousClass38, String str3, @Nullable String str4, int i, int i2, RK rk, @DynamicFullScreenAdView$AdFormatType int i3) {
        super(context);
        this.A01 = new C0906Tl(this);
        this.A0O = new LinkedList<>();
        this.A0E = new OP();
        this.A0I = new C0907Tm(this);
        this.A04 = A0A(130, 0, 29);
        this.A07 = true;
        this.A06 = false;
        this.A05 = true;
        this.A0L = str;
        this.A0C = km;
        this.A0D = new KX(str, this.A0C);
        this.A0G = interfaceC03688m;
        this.A0B = new C0607Ht(context);
        this.A0K = UUID.randomUUID().toString();
        this.A0N = str4;
        this.A0H = new C0905Tk(str3, str4, i3);
        this.A0P = C0918Ty.A01(context, jSONObject, this.A0B, this.A0D, this.A0H);
        this.A0F = new C0912Ts(this, context);
        this.A0J = new C6K(this.A0F, 1, this.A0I);
        this.A0J.A0V(i);
        this.A0J.A0W(i2);
        this.A0M = str2;
        this.A09 = c02292z;
        this.A0A = anonymousClass38;
        this.A03 = rk;
    }

    private void A0D() {
        OY.A0I(this.A0F);
        addView(this.A02, new FrameLayout.LayoutParams(-1, -1));
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setAnimationListener(new C0910Tp(this));
        startAnimation(alphaAnimation);
    }

    @SuppressLint({"AddJavascriptInterface"})
    private final void A0F() {
        if (Build.VERSION.SDK_INT > 16) {
            this.A0F.addJavascriptInterface(new C0917Tx(this, this.A0C, this.A0H, this.A0K, this.A0L), A0A(Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT, 16, 14));
        }
        this.A0D.A02(KW.A0P, null);
        this.A0F.loadUrl(this.A0B.A0P(this.A0M));
        A0J(String.format(Locale.US, A0A(168, 22, 71), this.A0K, A0A(0, 5, 98)));
        String strReplace = Base64.encodeToString(this.A0P.toString().getBytes(), 0).replace(A0A(29, 1, 67), A0A(130, 0, 29));
        Locale locale = Locale.US;
        String strA0A = A0A(30, 26, 27);
        String assets = this.A0K;
        A0J(String.format(locale, strA0A, strReplace, assets));
        addView(this.A0F, new FrameLayout.LayoutParams(-1, -1));
        this.A0G.A2Z(this, new RelativeLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(21)
    public synchronized void A0G() {
        if (this.A06) {
            while (!this.A0O.isEmpty()) {
                this.A0D.A02(KW.A0M, null);
                this.A0F.evaluateJavascript(this.A0O.poll(), null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void A0J(String str) {
        this.A0O.offer(str);
        A0G();
    }

    public final void A0M() {
        if (this.A00 == null) {
            return;
        }
        this.A00.finish();
    }

    public final void A0N() {
        this.A07 = true;
    }

    public final void A0O() {
        this.A07 = false;
    }

    @SuppressLint({"CatchGeneralException"})
    public final void A0P() {
        if (TextUtils.isEmpty(this.A09.A04())) {
            return;
        }
        new SY(getContext(), this.A03.A3O(), this.A0J, this.A0E, this.A0C, this.A0G).A08(this.A0L, this.A09.A04(), new HashMap());
    }

    public final void A0Q() {
        this.A0G.A2f(this.A03.A3B());
        new OQ(getContext(), this.A03, this.A04, this.A0G).A05();
    }

    public final void A0R() {
        new Handler(Looper.getMainLooper()).post(new C0908Tn(this));
    }

    public final void A0S() {
        this.A0J.A0T();
    }

    public final void A0T(Map<String, String> map) {
        KM km = this.A0C;
        String str = this.A0L;
        Map<String, String> extraData = new SN(map).A04(this.A0J).A07();
        km.A4E(str, extraData);
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A45(Intent intent, @Nullable Bundle bundle, C8s c8s) {
        C0914Tu c0914Tu = this;
        c8s.A0N(c0914Tu.A01);
        c0914Tu.A00 = c8s;
        c0914Tu.A0F();
        char c = c0914Tu.A08 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0914Tu = c0914Tu;
                    c0914Tu.A0D();
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c0914Tu = c0914Tu;
                    if (c0914Tu.A0N == null) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0914Tu = c0914Tu;
                    c0914Tu.A0J(String.format(Locale.US, A0A(130, 22, 16), c0914Tu.A0K));
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A5x(boolean z) {
        C0914Tu c0914Tu = this;
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0914Tu = c0914Tu;
                    c0914Tu.A0J(String.format(Locale.US, A0A(56, 25, 121), c0914Tu.A0K));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c0914Tu = c0914Tu;
                    c0914Tu.A0J(String.format(Locale.US, A0A(81, 23, 24), c0914Tu.A0K));
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A67(boolean z) {
        C0914Tu c0914Tu = this;
        char c = c0914Tu.A05 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0914Tu = c0914Tu;
                    c0914Tu.A05 = false;
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    if (!z) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0914Tu = c0914Tu;
                    c0914Tu.A0J(String.format(Locale.US, A0A(104, 26, 88), c0914Tu.A0K));
                    c = 3;
                    break;
                case 6:
                    c0914Tu = c0914Tu;
                    c0914Tu.A0J(String.format(Locale.US, A0A(5, 24, 8), c0914Tu.A0K));
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void A6x(Bundle bundle) {
    }

    @Override // com.facebook.ads.redexgen.X.PK
    public final void onDestroy() {
        this.A0C.A4D(this.A0L, new SN().A03(this.A0E).A04(this.A0J).A07());
        this.A01 = null;
        this.A00 = null;
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        requestDisallowInterceptTouchEvent(true);
        return super.onTouchEvent(motionEvent);
    }

    public void setListener(InterfaceC03688m interfaceC03688m) {
    }
}
