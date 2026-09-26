package androidx.core.view;

import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
final class Api16Impl {

    @NotNull
    public static final Api16Impl INSTANCE = new Api16Impl();

    @DoNotInline
    public static final void a(@NotNull View view, @NotNull Runnable action, long j6) {
        kotlin.jvm.internal.t.j(view, "view");
        kotlin.jvm.internal.t.j(action, "action");
        view.postOnAnimationDelayed(action, j6);
    }

    private Api16Impl() {
    }
}
