package androidx.webkit;

import android.webkit.WebMessagePort;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.reflect.InvocationHandler;

/* JADX INFO: loaded from: classes8.dex */
public abstract class WebMessagePortCompat {

    public static abstract class WebMessageCallbackCompat {
        public void a(@NonNull WebMessagePortCompat webMessagePortCompat, @Nullable WebMessageCompat webMessageCompat) {
        }
    }

    @NonNull
    @RequiresApi
    @RestrictTo
    public abstract WebMessagePort a();

    @NonNull
    @RestrictTo
    public abstract InvocationHandler b();

    @RestrictTo
    public WebMessagePortCompat() {
    }
}
