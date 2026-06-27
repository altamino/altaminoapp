package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.MediaViewVideoRenderer;
import com.facebook.ads.internal.api.DefaultMediaViewVideoRendererApi;
import com.facebook.ads.internal.api.MediaViewVideoRendererApi;
import com.facebook.ads.internal.settings.AdInternalSettings;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ku, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0684Ku extends C03608e implements DefaultMediaViewVideoRendererApi {
    private static byte[] A0E;
    private static final String A0F;
    private Context A00;
    private MediaViewVideoRenderer A01;

    @Nullable
    private InterfaceC0682Ks A02;

    @Nullable
    private QM A04;
    private HW A05;
    private AbstractC02052b A06;
    private C6K A07;
    private boolean A08;
    private boolean A09;
    private boolean A0A;
    private final InterfaceC0674Kj A0B = new C0675Kk(this);
    private final AtomicBoolean A0C = new AtomicBoolean(false);
    private final AtomicBoolean A0D = new AtomicBoolean(false);
    private LL A03 = LL.A02;

    private static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 81);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0E() {
        A0E = new byte[]{-73, -49, -50, -45, -53, -64, -45, -49, -31, -64, -45, -50, -49, -39, -118, -45, -35, -118, -40, -33, -42, -42, -91, -118, -33, -40, -53, -52, -42, -49, -118, -34, -39, -118, -48, -45, -40, -50, -118, -45, -34, -104, -32, -7, -20, -19, -9, -16, -85, -1, -6, -85, -15, -12, -7, -17, -85, -40, -16, -17, -12, -20, -31, -12, -16, 2, -31, -12, -17, -16, -6, -85, -18, -13, -12, -9, -17, -71, 0, 37, 45, 24, 35, 32, 27, -41, 41, 28, 37, 27, 28, 41, 28, 41, -41, 26, 31, 32, 35, 27, -41, 26, 38, 37, 29, 32, 30, -27};
    }

    static {
        A0E();
        A0F = C0684Ku.class.getSimpleName();
    }

    private InterfaceC0676Kl A01(MediaViewVideoRendererApi mediaViewVideoRendererApi) {
        return new C0677Km(this, mediaViewVideoRendererApi);
    }

    private InterfaceC0676Kl A02(MediaViewVideoRendererApi mediaViewVideoRendererApi) {
        return new C0678Kn(this, mediaViewVideoRendererApi);
    }

    private AbstractC02052b A04() {
        return new C0681Kr(this);
    }

    private C6K A05() {
        return new C6K(this.A01, 50, true, this.A06);
    }

    private void A09() {
        if (this.A04 != null) {
            ((M4) this.A04.getVideoView()).setViewImplInflationListener(this.A0B);
        }
    }

    private void A0A() {
        if (this.A04 != null) {
            this.A04.getVideoView().setOnTouchListener(new ViewOnTouchListenerC0680Kq(this));
        }
    }

    private void A0B() {
        if (this.A04 != null) {
            ((M4) this.A04.getVideoView()).setViewImplInflationListener(null);
        }
    }

    private void A0C() {
        C0684Ku c0684Ku = this;
        char c = c0684Ku.A01.getVisibility() == 0 ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    c0684Ku = c0684Ku;
                    if (!c0684Ku.A08) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0684Ku = c0684Ku;
                    if (!c0684Ku.A01.hasWindowFocus()) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0684Ku = c0684Ku;
                    c0684Ku.A07.A0T();
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    c0684Ku = c0684Ku;
                    if (c0684Ku.A04 == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c0684Ku = c0684Ku;
                    if (c0684Ku.A04.getState() != EnumC03216q.A05) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c0684Ku = c0684Ku;
                    c0684Ku.A0A = true;
                    c = '\t';
                    break;
                case '\t':
                    c0684Ku = c0684Ku;
                    c0684Ku.A07.A0U();
                    c = 5;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0D() {
        this.A03 = LL.A02;
        A0B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0I(L8 l8, @Nullable InterfaceC0682Ks interfaceC0682Ks) {
        String url = null;
        this.A09 = false;
        this.A0A = false;
        this.A02 = interfaceC0682Ks;
        A09();
        HW hw = this.A05;
        char c = l8 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    l8 = l8;
                    if (l8.getAdCoverImage() == null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    l8 = l8;
                    url = l8.getAdCoverImage().getUrl();
                    c = 4;
                    break;
                case 4:
                    C0684Ku c0684Ku = this;
                    hw.setImage(url, new C0679Ko(c0684Ku));
                    c0684Ku.A03 = l8.A0x();
                    c0684Ku.A07.A0T();
                    return;
                case 5:
                    url = null;
                    c = 4;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0J(EnumC0697Lh enumC0697Lh) {
        C0684Ku c0684Ku = this;
        char c = c0684Ku.A04 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0684Ku = c0684Ku;
                    enumC0697Lh = enumC0697Lh;
                    c0684Ku.A04.A0P(enumC0697Lh);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    if (!AdInternalSettings.isDebugBuild()) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    Log.e(A0F, A06(0, 42, 25));
                    c = 3;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0K() {
        C0684Ku c0684Ku = this;
        boolean z = false;
        char c = c0684Ku.A04 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0684Ku = c0684Ku;
                    if (c0684Ku.A04.getState() != EnumC03216q.A06) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return z;
                case 4:
                    c0684Ku = c0684Ku;
                    if (c0684Ku.A03 != LL.A04) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    z = true;
                    c = 3;
                    break;
            }
        }
    }

    public final void initialize(Context context, MediaViewVideoRenderer mediaViewVideoRenderer, MediaViewVideoRendererApi mediaViewVideoRendererApi, int i) {
        int smallPadding;
        C0684Ku c0684Ku = this;
        InterfaceC0676Kl interfaceC0676KlA01 = null;
        View childAt = null;
        int i2 = 0;
        ViewOnTouchListenerC0545Fj viewOnTouchListenerC0545Fj = null;
        ((C03608e) mediaViewVideoRendererApi.getAdComponentViewApi()).A00(c0684Ku);
        switch (i) {
            case 0:
                smallPadding = 4;
                break;
            case 1:
                smallPadding = 3;
                break;
            default:
                smallPadding = 2;
                break;
        }
        while (true) {
            switch (smallPadding) {
                case 2:
                    throw new IllegalArgumentException(A06(78, 30, 102));
                case 3:
                    c0684Ku = c0684Ku;
                    mediaViewVideoRendererApi = mediaViewVideoRendererApi;
                    interfaceC0676KlA01 = c0684Ku.A01(mediaViewVideoRendererApi);
                    smallPadding = 5;
                    break;
                case 4:
                    c0684Ku = c0684Ku;
                    mediaViewVideoRendererApi = mediaViewVideoRendererApi;
                    interfaceC0676KlA01 = c0684Ku.A02(mediaViewVideoRendererApi);
                    smallPadding = 5;
                    break;
                case 5:
                    c0684Ku = c0684Ku;
                    context = context;
                    mediaViewVideoRenderer = mediaViewVideoRenderer;
                    mediaViewVideoRendererApi = mediaViewVideoRendererApi;
                    interfaceC0676KlA01 = interfaceC0676KlA01;
                    ((C9Z) mediaViewVideoRendererApi).A06(interfaceC0676KlA01);
                    c0684Ku.A00 = context;
                    c0684Ku.A01 = mediaViewVideoRenderer;
                    c0684Ku.A05 = new HW(context);
                    c0684Ku.A06 = c0684Ku.A04();
                    c0684Ku.A07 = c0684Ku.A05();
                    float f = OY.A01;
                    int i3 = (int) (2.0f * f);
                    int i4 = (int) (25.0f * f);
                    viewOnTouchListenerC0545Fj = new ViewOnTouchListenerC0545Fj(c0684Ku.A00);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams.addRule(9);
                    layoutParams.addRule(12);
                    viewOnTouchListenerC0545Fj.setPadding(i3, i4, i4, i3);
                    viewOnTouchListenerC0545Fj.setLayoutParams(layoutParams);
                    i2 = 0;
                    smallPadding = 6;
                    break;
                case 6:
                    c0684Ku = c0684Ku;
                    int smallPadding2 = c0684Ku.A01.getChildCount();
                    if (i2 >= smallPadding2) {
                        smallPadding = 9;
                        break;
                    } else {
                        smallPadding = 7;
                        break;
                    }
                case 7:
                    c0684Ku = c0684Ku;
                    childAt = c0684Ku.A01.getChildAt(0);
                    if (!(childAt instanceof QM)) {
                        smallPadding = 14;
                        break;
                    } else {
                        smallPadding = 8;
                        break;
                    }
                case 8:
                    c0684Ku = c0684Ku;
                    childAt = childAt;
                    c0684Ku.A04 = (QM) childAt;
                    smallPadding = 9;
                    break;
                case 9:
                    c0684Ku = c0684Ku;
                    if (c0684Ku.A04 != null) {
                        smallPadding = 13;
                        break;
                    } else {
                        smallPadding = 10;
                        break;
                    }
                case 10:
                    if (!AdInternalSettings.isDebugBuild()) {
                        smallPadding = 12;
                        break;
                    } else {
                        smallPadding = 11;
                        break;
                    }
                case 11:
                    Log.e(A0F, A06(42, 36, 58));
                    smallPadding = 12;
                    break;
                case 12:
                    C0684Ku c0684Ku2 = c0684Ku;
                    c0684Ku2.A07.A0V(0);
                    c0684Ku2.A07.A0W(250);
                    interfaceC0676KlA01.A70();
                    return;
                case 13:
                    c0684Ku = c0684Ku;
                    viewOnTouchListenerC0545Fj = viewOnTouchListenerC0545Fj;
                    c0684Ku.A04.A0Q(c0684Ku.A05);
                    c0684Ku.A04.A0Q(viewOnTouchListenerC0545Fj);
                    smallPadding = 12;
                    break;
                case 14:
                    i2++;
                    smallPadding = 6;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C03608e
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.A08 = true;
        A0C();
    }

    @Override // com.facebook.ads.redexgen.X.C03608e
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A08 = false;
        A0C();
    }

    public final void onPrepared() {
        this.A01.setOnTouchListener(new Kp(this));
        A0A();
    }

    @Override // com.facebook.ads.redexgen.X.C03608e
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        A0C();
    }

    @Override // com.facebook.ads.redexgen.X.C03608e
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        A0C();
    }
}
