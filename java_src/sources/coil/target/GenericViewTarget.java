package coil.target;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.c;
import coil.transition.d;
import f0.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public abstract class GenericViewTarget<T extends View> implements b<T>, d, DefaultLifecycleObserver {
    private boolean isStarted;

    @Override // coil.transition.d
    @Nullable
    public abstract Drawable d();

    public abstract void e(@Nullable Drawable drawable);

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public /* synthetic */ void onCreate(LifecycleOwner lifecycleOwner) {
        c.a(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public /* synthetic */ void onDestroy(LifecycleOwner lifecycleOwner) {
        c.b(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public /* synthetic */ void onPause(LifecycleOwner lifecycleOwner) {
        c.c(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public /* synthetic */ void onResume(LifecycleOwner lifecycleOwner) {
        c.d(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStart(@NotNull LifecycleOwner lifecycleOwner) {
        this.isStarted = true;
        f();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStop(@NotNull LifecycleOwner lifecycleOwner) {
        this.isStarted = false;
        f();
    }

    @Override // f0.a
    public void a(@NotNull Drawable drawable) {
        g(drawable);
    }

    @Override // f0.a
    public void b(@Nullable Drawable drawable) {
        g(drawable);
    }

    @Override // f0.a
    public void c(@Nullable Drawable drawable) {
        g(drawable);
    }

    protected final void f() {
        Animatable animatable;
        Object objD = d();
        if (objD instanceof Animatable) {
            animatable = (Animatable) objD;
        } else {
            animatable = null;
        }
        if (animatable == null) {
            return;
        }
        if (this.isStarted) {
            animatable.start();
        } else {
            animatable.stop();
        }
    }

    protected final void g(@Nullable Drawable drawable) {
        Animatable animatable;
        Object objD = d();
        if (objD instanceof Animatable) {
            animatable = (Animatable) objD;
        } else {
            animatable = null;
        }
        if (animatable != null) {
            animatable.stop();
        }
        e(drawable);
        f();
    }
}
