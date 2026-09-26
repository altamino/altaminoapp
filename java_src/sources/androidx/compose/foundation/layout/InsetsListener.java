package androidx.compose.foundation.layout;

import android.os.Build;
import android.view.View;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class InsetsListener extends WindowInsetsAnimationCompat.Callback implements Runnable, OnApplyWindowInsetsListener, View.OnAttachStateChangeListener {

    @NotNull
    private final WindowInsetsHolder composeInsets;
    private boolean prepared;

    @Nullable
    private WindowInsetsCompat savedInsets;

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(@NotNull View v5) {
        t.j(v5, "v");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InsetsListener(@NotNull WindowInsetsHolder composeInsets) {
        super(!composeInsets.d() ? 1 : 0);
        t.j(composeInsets, "composeInsets");
        this.composeInsets = composeInsets;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    @NotNull
    public WindowInsetsCompat a(@NotNull View view, @NotNull WindowInsetsCompat insets) {
        t.j(view, "view");
        t.j(insets, "insets");
        if (this.prepared) {
            this.savedInsets = insets;
            if (Build.VERSION.SDK_INT == 30) {
                view.post(this);
            }
            return insets;
        }
        WindowInsetsHolder.r(this.composeInsets, insets, 0, 2, null);
        if (!this.composeInsets.d()) {
            return insets;
        }
        WindowInsetsCompat CONSUMED = WindowInsetsCompat.CONSUMED;
        t.i(CONSUMED, "CONSUMED");
        return CONSUMED;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public void c(@NotNull WindowInsetsAnimationCompat animation) {
        t.j(animation, "animation");
        this.prepared = false;
        WindowInsetsCompat windowInsetsCompat = this.savedInsets;
        if (animation.a() != 0 && windowInsetsCompat != null) {
            this.composeInsets.q(windowInsetsCompat, animation.c());
        }
        this.savedInsets = null;
        super.c(animation);
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public void d(@NotNull WindowInsetsAnimationCompat animation) {
        t.j(animation, "animation");
        this.prepared = true;
        super.d(animation);
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    @NotNull
    public WindowInsetsCompat e(@NotNull WindowInsetsCompat insets, @NotNull List<WindowInsetsAnimationCompat> runningAnimations) {
        t.j(insets, "insets");
        t.j(runningAnimations, "runningAnimations");
        WindowInsetsHolder.r(this.composeInsets, insets, 0, 2, null);
        if (!this.composeInsets.d()) {
            return insets;
        }
        WindowInsetsCompat CONSUMED = WindowInsetsCompat.CONSUMED;
        t.i(CONSUMED, "CONSUMED");
        return CONSUMED;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    @NotNull
    public WindowInsetsAnimationCompat.BoundsCompat f(@NotNull WindowInsetsAnimationCompat animation, @NotNull WindowInsetsAnimationCompat.BoundsCompat bounds) {
        t.j(animation, "animation");
        t.j(bounds, "bounds");
        this.prepared = false;
        WindowInsetsAnimationCompat.BoundsCompat boundsCompatF = super.f(animation, bounds);
        t.i(boundsCompatF, "super.onStart(animation, bounds)");
        return boundsCompatF;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(@NotNull View view) {
        t.j(view, "view");
        view.requestApplyInsets();
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.prepared) {
            this.prepared = false;
            WindowInsetsCompat windowInsetsCompat = this.savedInsets;
            if (windowInsetsCompat != null) {
                WindowInsetsHolder.r(this.composeInsets, windowInsetsCompat, 0, 2, null);
                this.savedInsets = null;
            }
        }
    }
}
