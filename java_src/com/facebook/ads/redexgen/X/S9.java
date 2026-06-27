package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.webkit.WebBackForwardList;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebViewClient;
import com.tonyodev.fetch.FetchConst;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@TargetApi(19)
/* loaded from: assets/assets/audience_network.dex */
public final class S9 extends AbstractC0777Om {
    private static byte[] A06;
    private static final String A07;
    private static final Set<String> A08;
    private long A00;
    private long A01;
    private long A02;
    private long A03;
    private S4 A04;
    private PO A05;

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_WRITE_PERMISSION_DENIED);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A06 = new byte[]{66, 78, 78, 74, 77, 82, 94, 94, 90, 83, 74, 95, 74, 92, 76, 91, 82, 89, 93, 35};
    }

    static {
        A05();
        A07 = S9.class.getSimpleName();
        A08 = new HashSet(2);
        A08.add(A01(5, 4, 127));
        A08.add(A01(0, 5, 111));
    }

    public S9(Context context) {
        super(context);
        this.A02 = -1L;
        this.A00 = -1L;
        this.A03 = -1L;
        this.A01 = -1L;
        A04();
    }

    public S9(Context context, PO po) {
        super(context);
        this.A02 = -1L;
        this.A00 = -1L;
        this.A03 = -1L;
        this.A01 = -1L;
        this.A05 = po;
        setWebChromeClient(A09());
        setWebViewClient(A0A());
        A04();
    }

    private void A03() {
        S9 s9 = this;
        char c = s9.A00 > -1 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    s9 = s9;
                    if (s9.A03 <= -1) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    s9 = s9;
                    if (s9.A01 <= -1) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    s9 = s9;
                    s9.A04.A05(false);
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    private void A04() {
        WebSettings settings = getSettings();
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setAllowContentAccess(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setAllowFileAccess(false);
        this.A04 = new S4(this);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0777Om
    public final WebChromeClient A09() {
        return new S7(new WeakReference(this.A05), new WeakReference(this.A04));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0777Om
    public final WebViewClient A0A() {
        return new S8(new WeakReference(this.A05), new WeakReference(getContext()));
    }

    public final void A0B(long j) {
        if (this.A00 < 0) {
            this.A00 = j;
        }
        A03();
    }

    public final void A0C(long j) {
        if (this.A01 < 0) {
            this.A01 = j;
        }
        A03();
    }

    public final void A0D(long j) {
        if (this.A02 < 0) {
            this.A02 = j;
        }
    }

    public final void A0E(String str) {
        try {
            evaluateJavascript(str, null);
        } catch (IllegalStateException unused) {
            loadUrl(A01(9, 11, 126) + str);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0777Om, android.webkit.WebView
    public final void destroy() {
        this.A05 = null;
        C0778On.A03(this);
        super.destroy();
    }

    public long getDomContentLoadedMs() {
        return this.A00;
    }

    public String getFirstUrl() {
        S9 s9 = this;
        String url = null;
        WebBackForwardList webBackForwardListCopyBackForwardList = s9.copyBackForwardList();
        char c = webBackForwardListCopyBackForwardList.getSize() > 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    webBackForwardListCopyBackForwardList = webBackForwardListCopyBackForwardList;
                    url = webBackForwardListCopyBackForwardList.getItemAtIndex(0).getUrl();
                    c = 3;
                    break;
                case 3:
                    return url;
                case 4:
                    s9 = s9;
                    url = s9.getUrl();
                    c = 3;
                    break;
            }
        }
    }

    public long getLoadFinishMs() {
        return this.A01;
    }

    public long getResponseEndMs() {
        return this.A02;
    }

    public long getScrollReadyMs() {
        return this.A03;
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onDraw(Canvas canvas) {
        S9 s9 = this;
        super.onDraw(canvas);
        char c = s9.A03 < 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    s9 = s9;
                    if (s9.computeVerticalScrollRange() <= s9.getHeight()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    s9 = s9;
                    s9.A03 = System.currentTimeMillis();
                    s9.A03();
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    public void setListener(PO po) {
        this.A05 = po;
    }
}
