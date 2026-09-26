package androidx.webkit.internal;

import android.os.Looper;
import android.webkit.TracingController;
import android.webkit.WebView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.webkit.TracingConfig;
import java.io.OutputStream;
import java.util.Collection;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
public class ApiHelperForP {
    private ApiHelperForP() {
    }

    @NonNull
    @DoNotInline
    public static TracingController a() {
        return TracingController.getInstance();
    }

    @NonNull
    @DoNotInline
    public static ClassLoader b() {
        return WebView.getWebViewClassLoader();
    }

    @NonNull
    @DoNotInline
    public static Looper c(@NonNull WebView webView) {
        return webView.getWebViewLooper();
    }

    @DoNotInline
    public static boolean d(@NonNull TracingController tracingController) {
        return tracingController.isTracing();
    }

    @DoNotInline
    public static void e(@NonNull String str) {
        WebView.setDataDirectorySuffix(str);
    }

    @DoNotInline
    public static void f(@NonNull TracingController tracingController, @NonNull TracingConfig tracingConfig) {
        tracingController.start(c0.a().addCategories(tracingConfig.b()).addCategories((Collection<String>) tracingConfig.a()).setTracingMode(tracingConfig.c()).build());
    }

    @DoNotInline
    public static boolean g(@NonNull TracingController tracingController, @Nullable OutputStream outputStream, @NonNull Executor executor) {
        return tracingController.stop(outputStream, executor);
    }
}
