package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.view.MotionEvent;
import android.webkit.WebChromeClient;
import android.webkit.WebViewClient;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class SI extends AbstractC0777Om {
    private static byte[] A0E;
    private static final String A0F;
    private float A00;
    private OP A01;
    private AbstractC02052b A02;

    @Nullable
    private C6K A03;

    @Nullable
    private WeakReference<SD> A04;
    private boolean A05;
    private boolean A06;
    private final Path A07;
    private final RectF A08;
    private final WeakReference<InterfaceC01921o> A09;
    private final AtomicBoolean A0A;
    private final AtomicBoolean A0B;
    private final AtomicInteger A0C;
    private final AtomicReference<String> A0D;

    private static String A02(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 118);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A0E = new byte[]{-71, -36, -69, -25, -26, -20, -22, -25, -28};
    }

    static {
        A05();
        A0F = SI.class.getSimpleName();
    }

    public SI(Context context, WeakReference<InterfaceC01921o> weakReference, int i) {
        super(context);
        this.A0A = new AtomicBoolean();
        this.A0B = new AtomicBoolean(true);
        this.A07 = new Path();
        this.A08 = new RectF();
        this.A0C = new AtomicInteger(5000);
        this.A0D = new AtomicReference<>();
        this.A01 = new OP();
        this.A06 = true;
        this.A05 = K1.A1X(context);
        this.A09 = weakReference;
        this.A02 = new SB(this);
        this.A03 = new C6K(this, i, this.A02);
        setWebChromeClient(A09());
        setWebViewClient(A0A());
        getSettings().setSupportZoom(false);
        getSettings().setCacheMode(1);
        if (Build.VERSION.SDK_INT > 16) {
            addJavascriptInterface(new SC(this, weakReference.get(), this.A03, this.A0A, this.A0B, this.A05), A02(0, 9, 2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04() {
        SI si = this;
        si.A0A.set(true);
        new Handler(Looper.getMainLooper()).post(new SE(si.A03));
        char c = si.A04 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    si = si;
                    if (si.A04.get() == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    si = si;
                    si.A04.get().onAssetsLoaded();
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    @VisibleForTesting
    private final boolean A07() {
        SI si = this;
        boolean z = false;
        char c = si.A05 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    si = si;
                    if (!si.A0A.get()) {
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

    @Override // com.facebook.ads.redexgen.X.AbstractC0777Om
    public final WebChromeClient A09() {
        return new SF();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0777Om
    public final WebViewClient A0A() {
        return new SH(getContext(), this.A09, new WeakReference(this.A03), new WeakReference(this.A01), new WeakReference(this.A0B), new WeakReference(this), this.A0C, this.A0D);
    }

    public final void A0B(int i, int i2) {
        if (this.A03 != null) {
            this.A03.A0V(i);
            this.A03.A0W(i2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0777Om, android.webkit.WebView
    public final void destroy() {
        if (this.A03 != null) {
            this.A03.A0U();
            this.A03 = null;
        }
        OY.A0L(this);
        this.A02 = null;
        this.A01 = null;
        C0778On.A03(this);
        super.destroy();
    }

    public OP getTouchDataRecorder() {
        return this.A01;
    }

    public C6K getViewabilityChecker() {
        return this.A03;
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.A00 > 0.0f) {
            this.A08.set(0.0f, 0.0f, getWidth(), getHeight());
            this.A07.reset();
            this.A07.addRoundRect(this.A08, this.A00, this.A00, Path.Direction.CW);
            canvas.clipPath(this.A07);
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        this.A01.A06(motionEvent, this, this);
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onWindowVisibilityChanged(int i) {
        SI si = this;
        super.onWindowVisibilityChanged(i);
        char c = si.A09.get() != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    si = si;
                    si.A09.get().A6P(i);
                    c = 3;
                    break;
                case 3:
                    si = si;
                    if (si.A03 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return;
                case 5:
                    if (i != 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    si = si;
                    if (!si.A07()) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    si = si;
                    si.A03.A0T();
                    c = 4;
                    break;
                case '\b':
                    if (i != 8) {
                        c = 4;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    si = si;
                    si.A03.A0U();
                    c = 4;
                    break;
            }
        }
    }

    public void setCheckAssetsByJavascriptBridge(boolean z) {
        this.A0B.set(z);
    }

    public void setCornerRadius(float f) {
        this.A00 = f;
        invalidate();
    }

    public void setLogMultipleImpressions(boolean z) {
        this.A06 = z;
    }

    public void setOnAssetsLoadedListener(SD sd) {
        this.A04 = new WeakReference<>(sd);
    }

    public void setRequestId(String str) {
        this.A0D.set(str);
    }

    public void setWaitForAssetsToLoad(boolean z) {
        this.A05 = z;
    }

    public void setWebViewTimeoutInMillis(int i) {
        if (i >= 0) {
            this.A0C.set(i);
        }
    }
}
