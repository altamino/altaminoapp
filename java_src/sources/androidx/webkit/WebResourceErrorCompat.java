package androidx.webkit;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes6.dex */
public abstract class WebResourceErrorCompat {

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface NetErrorCode {
    }

    @NonNull
    public abstract CharSequence a();

    public abstract int b();

    @RestrictTo
    public WebResourceErrorCompat() {
    }
}
