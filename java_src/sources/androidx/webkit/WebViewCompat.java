package androidx.webkit;

import android.annotation.SuppressLint;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.webkit.internal.ApiFeature;
import androidx.webkit.internal.ApiHelperForO;
import androidx.webkit.internal.WebViewFeatureInternal;
import androidx.webkit.internal.WebViewGlueCommunicator;
import androidx.webkit.internal.WebViewProviderAdapter;
import androidx.webkit.internal.WebViewProviderFactory;
import java.lang.reflect.InvocationTargetException;
import java.util.Set;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;

/* JADX INFO: loaded from: classes7.dex */
public class WebViewCompat {
    private static final Uri WILDCARD_URI = Uri.parse("*");
    private static final Uri EMPTY_URI = Uri.parse("");

    public interface VisualStateCallback {
        @UiThread
        void onComplete(long j6);
    }

    public interface WebMessageListener {
        @UiThread
        void onPostMessage(@NonNull WebView webView, @NonNull WebMessageCompat webMessageCompat, @NonNull Uri uri, boolean z6, @NonNull JavaScriptReplyProxy javaScriptReplyProxy);
    }

    public static void a(@NonNull WebView webView, @NonNull String str, @NonNull Set<String> set, @NonNull WebMessageListener webMessageListener) {
        if (!WebViewFeatureInternal.WEB_MESSAGE_LISTENER.c()) {
            throw WebViewFeatureInternal.a();
        }
        f(webView).a(str, (String[]) set.toArray(new String[0]), webMessageListener);
    }

    @Nullable
    @RestrictTo
    public static PackageInfo c() {
        if (Build.VERSION.SDK_INT >= 26) {
            return ApiHelperForO.a();
        }
        try {
            return e();
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    @SuppressLint({"PrivateApi"})
    private static PackageInfo e() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        return (PackageInfo) Class.forName("android.webkit.WebViewFactory").getMethod("getLoadedPackageInfo", new Class[0]).invoke(null, new Object[0]);
    }

    private static WebViewProviderAdapter f(WebView webView) {
        return new WebViewProviderAdapter(b(webView));
    }

    @NonNull
    public static WebViewClient g(@NonNull WebView webView) {
        ApiFeature.O o = WebViewFeatureInternal.GET_WEB_VIEW_CLIENT;
        if (o.b()) {
            return ApiHelperForO.d(webView);
        }
        if (o.c()) {
            return f(webView).b();
        }
        throw WebViewFeatureInternal.a();
    }

    public static boolean h() {
        if (WebViewFeatureInternal.MULTI_PROCESS.c()) {
            return d().getStatics().isMultiProcessEnabled();
        }
        throw WebViewFeatureInternal.a();
    }

    public static void i(@NonNull WebView webView, @NonNull String str) {
        if (!WebViewFeatureInternal.WEB_MESSAGE_LISTENER.c()) {
            throw WebViewFeatureInternal.a();
        }
        f(webView).c(str);
    }

    public static void j(@NonNull WebView webView, boolean z6) {
        if (!WebViewFeatureInternal.MUTE_AUDIO.c()) {
            throw WebViewFeatureInternal.a();
        }
        f(webView).d(z6);
    }

    private WebViewCompat() {
    }

    private static WebViewProviderBoundaryInterface b(WebView webView) {
        return d().createWebView(webView);
    }

    private static WebViewProviderFactory d() {
        return WebViewGlueCommunicator.d();
    }
}
