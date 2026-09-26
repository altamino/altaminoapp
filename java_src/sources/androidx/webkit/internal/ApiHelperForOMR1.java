package androidx.webkit.internal;

import android.content.Context;
import android.net.Uri;
import android.webkit.SafeBrowsingResponse;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi
public class ApiHelperForOMR1 {
    private ApiHelperForOMR1() {
    }

    @DoNotInline
    public static void a(@NonNull SafeBrowsingResponse safeBrowsingResponse, boolean z6) {
        safeBrowsingResponse.backToSafety(z6);
    }

    @NonNull
    @DoNotInline
    public static Uri b() {
        return WebView.getSafeBrowsingPrivacyPolicyUrl();
    }

    @DoNotInline
    public static void c(@NonNull SafeBrowsingResponse safeBrowsingResponse, boolean z6) {
        safeBrowsingResponse.proceed(z6);
    }

    @DoNotInline
    public static void d(@NonNull List<String> list, @Nullable ValueCallback<Boolean> valueCallback) {
        WebView.setSafeBrowsingWhitelist(list, valueCallback);
    }

    @DoNotInline
    public static void e(@NonNull SafeBrowsingResponse safeBrowsingResponse, boolean z6) {
        safeBrowsingResponse.showInterstitial(z6);
    }

    @DoNotInline
    public static void f(@NonNull Context context, @Nullable ValueCallback<Boolean> valueCallback) {
        WebView.startSafeBrowsing(context, valueCallback);
    }
}
