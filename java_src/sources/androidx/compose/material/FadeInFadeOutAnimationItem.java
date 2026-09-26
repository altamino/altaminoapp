package androidx.compose.material;

import androidx.compose.runtime.Composer;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class FadeInFadeOutAnimationItem<T> {
    private final T key;

    @NotNull
    private final q<p<? super Composer, ? super Integer, l0>, Composer, Integer, l0> transition;

    public final T a() {
        return this.key;
    }

    @NotNull
    public final q<p<? super Composer, ? super Integer, l0>, Composer, Integer, l0> b() {
        return this.transition;
    }

    public final T c() {
        return this.key;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FadeInFadeOutAnimationItem)) {
            return false;
        }
        FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem = (FadeInFadeOutAnimationItem) obj;
        return t.e(this.key, fadeInFadeOutAnimationItem.key) && t.e(this.transition, fadeInFadeOutAnimationItem.transition);
    }

    public int hashCode() {
        T t5 = this.key;
        return ((t5 == null ? 0 : t5.hashCode()) * 31) + this.transition.hashCode();
    }

    @NotNull
    public String toString() {
        return "FadeInFadeOutAnimationItem(key=" + this.key + ", transition=" + this.transition + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FadeInFadeOutAnimationItem(T t5, @NotNull q<? super p<? super Composer, ? super Integer, l0>, ? super Composer, ? super Integer, l0> transition) {
        t.j(transition, "transition");
        this.key = t5;
        this.transition = transition;
    }
}
