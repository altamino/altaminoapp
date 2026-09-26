package androidx.webkit.internal;

import android.net.Uri;
import android.webkit.WebResourceRequest;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
public class ApiHelperForLollipop {
    private ApiHelperForLollipop() {
    }

    @NonNull
    @DoNotInline
    public static Uri a(@NonNull WebResourceRequest webResourceRequest) {
        return webResourceRequest.getUrl();
    }

    @DoNotInline
    public static boolean b(@NonNull WebResourceRequest webResourceRequest) {
        return webResourceRequest.isForMainFrame();
    }
}
