package androidx.core.animation;

import android.animation.Animator;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
final class Api19Impl {

    @NotNull
    public static final Api19Impl INSTANCE = new Api19Impl();

    @DoNotInline
    public static final void a(@NotNull Animator animator, @NotNull Animator.AnimatorPauseListener listener) {
        t.j(animator, "animator");
        t.j(listener, "listener");
        animator.addPauseListener(listener);
    }

    private Api19Impl() {
    }
}
