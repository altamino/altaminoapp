package com.facebook.ads.redexgen.X;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class S8 extends WebViewClient {
    private static byte[] A02;
    private final WeakReference<Context> A00;
    private final WeakReference<PO> A01;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 86);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A02 = new byte[]{-6, 28, 45, 34, 47, 34, 45, 50, -39, 39, 40, 45, -39, 31, 40, 46, 39, 29, -39, 45, 40, -39, 33, 26, 39, 29, 37, 30, -39, 14, 11, 2, -25, -47, -22, -25, -22, -21, -13, -22, -100, -31, -12, -33, -31, -20, -16, -27, -21, -22, -100, -21, -33, -33, -15, -18, -18, -31, -32, -100, -13, -28, -31, -22, -100, -16, -18, -11, -27, -22, -29, -100, -16, -21, -100, -28, -35, -22, -32, -24, -31, -100, -47, -50, -59, -86, 51, 64, 54, 68, 65, 59, 54, 0, 59, 64, 70, 55, 64, 70, 0, 51, 53, 70, 59, 65, 64, 0, 40, 27, 23, 41};
    }

    public S8(WeakReference<PO> weakReference, WeakReference<Context> context) {
        this.A01 = weakReference;
        this.A00 = context;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        if (this.A01.get() != null) {
            this.A01.get().A5u(str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        if (this.A01.get() != null) {
            this.A01.get().A5w(str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Uri uri = Uri.parse(str);
        if (!S9.A08.contains(uri.getScheme()) && this.A00.get() != null) {
            try {
                this.A00.get().startActivity(new Intent(A00(86, 26, 124), uri));
                return true;
            } catch (ActivityNotFoundException e) {
                Log.w(S9.A07, A00(0, 33, 99), e);
            } catch (Exception e2) {
                Log.e(S9.A07, A00(33, 53, 38), e2);
            }
        }
        return false;
    }
}
