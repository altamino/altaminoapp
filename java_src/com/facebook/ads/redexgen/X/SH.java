package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Build;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Date;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class SH extends WebViewClient {
    private static byte[] A0A;
    private Date A00;
    private boolean A01 = false;
    private final Context A02;
    private final WeakReference<SI> A03;
    private final WeakReference<InterfaceC01921o> A04;
    private final WeakReference<AtomicBoolean> A05;
    private final WeakReference<OP> A06;
    private final WeakReference<C6K> A07;
    private final AtomicInteger A08;
    private final AtomicReference<String> A09;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 95);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A0A = new byte[]{-26, -13, -13, -16, -13, -32, -27, -26, -12, -28, -13, -22, -15, -11, -22, -16, -17, 43, 53, 33, 57, 39, 36, 33, 52, 39, 53, 49, 55, 52, 37, 39, 33, 39, 52, 52, 49, 52, 9, 12, -2, 1, 6, 11, 4, -4, 17, 6, 10, 2, -4, 6, 11, -4, 10, 6, 9, 9, 6, 16, -21, 30, 26, 24, 7, -58, 10, 7, 26, 7, -32, -58, 34, 47, 47, 44, 47, 28, 32, 44, 33, 34, -6, -24, -27, -30, -7, -20, -24, -6, 5, -8, 4, 8, -8, 6, 7, -14, -4, -9, 45, 36, 51, -7, -7, 4, 17, 17, 30, 4, 12, 15, 19, 24, 30, 17, 4, 18, 15, 14, 13, 18, 4};
    }

    public SH(Context context, WeakReference<InterfaceC01921o> weakReference, WeakReference<C6K> weakReference2, WeakReference<OP> weakReference3, WeakReference<AtomicBoolean> weakReference4, WeakReference<SI> weakReference5, AtomicInteger atomicInteger, AtomicReference<String> atomicReference) {
        this.A02 = context.getApplicationContext();
        this.A04 = weakReference;
        this.A07 = weakReference2;
        this.A06 = weakReference3;
        this.A05 = weakReference4;
        this.A03 = weakReference5;
        this.A08 = atomicInteger;
        this.A09 = atomicReference;
    }

    private void A02(int i, CharSequence charSequence, long j) throws JSONException {
        boolean z = false;
        JSONObject jSONObject = new JSONObject();
        char c = charSequence != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 4;
                    break;
                case 3:
                    z = false;
                    c = 4;
                    break;
                case 4:
                    try {
                        jSONObject.put(A00(72, 10, 94), i);
                        jSONObject.put(A00(0, 17, 34), charSequence);
                        jSONObject.put(A00(17, 21, 99), z);
                        jSONObject.put(A00(38, 22, 62), j);
                        jSONObject.put(A00(90, 10, 52), this.A09.get());
                    } catch (JSONException unused) {
                    }
                    P7.A07(this.A02, A00(82, 8, 36), P8.A1k, new PA(AdErrorType.WEB_VIEW_FAILED_TO_LOAD.getDefaultErrorMessage(), A00(60, 12, 71) + jSONObject.toString()));
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03(int i, @Nullable String str) throws JSONException {
        SH sh = this;
        char c = A00(100, 23, 96).equals(str) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    sh = sh;
                    str = str;
                    sh.A02(i, str, new Date().getTime() - sh.A00.getTime());
                    if (sh.A04.get() == null) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    sh = sh;
                    str = str;
                    sh.A04.get().A5L(i, str);
                    c = 2;
                    break;
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        SH sh = this;
        char c = sh.A03.get() != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    sh = sh;
                    if (sh.A05.get() == null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    sh = sh;
                    if (!sh.A05.get().get()) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    sh = sh;
                    sh.A03.get().A04();
                    c = 5;
                    break;
                case 5:
                    sh.A01 = true;
                    return;
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        this.A00 = new Date();
        new Handler().postDelayed(new SG(this), this.A08.get());
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) throws JSONException {
        this.A01 = true;
        A03(i, str);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) throws JSONException {
        this.A01 = true;
        if (Build.VERSION.SDK_INT >= 23) {
            A03(webResourceError.getErrorCode(), webResourceError.getDescription().toString());
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        sslErrorHandler.cancel();
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (this.A04.get() != null) {
            this.A04.get().A52(str, new SN().A04(this.A07.get()).A03(this.A06.get()).A07());
            return true;
        }
        return true;
    }
}
