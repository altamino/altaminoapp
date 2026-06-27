package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@SuppressLint({"ViewConstructor"})
/* loaded from: assets/assets/audience_network.dex */
public final class RG extends FrameLayout {
    private static byte[] A09;
    private static final float A0A;
    private static final RelativeLayout.LayoutParams A0B;
    private Map<String, String> A00;
    private final C3A A01;
    private final C3B A02;
    private final KM A03;
    private final InterfaceC01921o A04;
    private final SI A05;
    private final QV A06;
    private final AtomicBoolean A07;
    private final AtomicBoolean A08;

    private static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 65);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A07() {
        A09 = new byte[]{-62, -34, -52, -24, -35, -11, -35, -34, -24, -31, -67, -32, -22, -40, -43, -46, -23, -36, -40, -22};
    }

    static {
        A07();
        A0A = (int) (4.0f * OY.A01);
        A0B = new RelativeLayout.LayoutParams(-1, -1);
    }

    public RG(Context context, C3B c3b, C3A c3a, KM km, QV qv, Map<String, String> map) {
        super(context);
        this.A07 = new AtomicBoolean(false);
        this.A08 = new AtomicBoolean(false);
        this.A04 = new RI(this);
        this.A02 = c3b;
        this.A01 = c3a;
        this.A03 = km;
        this.A06 = qv;
        this.A00 = map;
        this.A05 = A02();
        addView(this.A05, A0B);
    }

    @SuppressLint({"AddJavascriptInterface", "ClickableViewAccessibility"})
    private SI A02() {
        RG rg = this;
        SI si = new SI(rg.getContext(), new WeakReference(rg.A04), 10);
        si.setCornerRadius(A0A);
        si.setLogMultipleImpressions(false);
        si.setWaitForAssetsToLoad(true);
        si.setCheckAssetsByJavascriptBridge(false);
        si.setWebViewTimeoutInMillis(rg.A01.A08());
        si.setRequestId(rg.A02.A0D());
        si.setOnTouchListener(new RH(rg, null));
        WebSettings settings = si.getSettings();
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        char c = Build.VERSION.SDK_INT >= 16 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    settings = settings;
                    settings.setAllowFileAccessFromFileURLs(true);
                    c = 3;
                    break;
                case 3:
                    if (Build.VERSION.SDK_INT <= 16) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    rg = rg;
                    si = si;
                    si.addJavascriptInterface(new C0842Qz(rg, rg.A03, rg.A00, rg.A02.A0B()), A04(0, 12, 59));
                    c = 5;
                    break;
                case 5:
                    return si;
            }
        }
    }

    public final void A08() {
        this.A06.A58();
    }

    public final void A09() {
        RG rg = this;
        SI si = null;
        String strA0B = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    rg = rg;
                    si = rg.A05;
                    if (TextUtils.isEmpty(rg.A01.A0B())) {
                        c = 11;
                        continue;
                    } else {
                        c = 7;
                    }
                case 7:
                    rg = rg;
                    strA0B = rg.A01.A0B();
                    c = '\n';
                    continue;
                case '\n':
                    si.loadUrl(strA0B);
                    return;
                case 11:
                    try {
                        rg = rg;
                        strA0B = rg.A01.A0E();
                        c = '\n';
                        continue;
                    } catch (Exception e) {
                        P7.A07(rg.getContext(), A04(12, 8, 50), P8.A1k, new PA(e));
                        return;
                    }
            }
            P7.A07(rg.getContext(), A04(12, 8, 50), P8.A1k, new PA(e));
            return;
        }
    }

    public final void A0A() {
        this.A05.removeJavascriptInterface(A04(0, 12, 59));
        this.A05.destroy();
    }

    public OP getTouchDataRecorder() {
        return this.A05.getTouchDataRecorder();
    }

    @Nullable
    public C6K getViewabilityChecker() {
        return this.A05.getViewabilityChecker();
    }
}
