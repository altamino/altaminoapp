package androidx.activity;

import android.view.View;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
public final class Api19Impl {

    @NotNull
    public static final Api19Impl INSTANCE = new Api19Impl();

    public final boolean a(@NotNull View view) {
        t.j(view, "view");
        return view.isAttachedToWindow();
    }

    private Api19Impl() {
    }
}
