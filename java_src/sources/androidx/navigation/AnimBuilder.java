package androidx.navigation;

import androidx.annotation.AnimRes;
import androidx.annotation.AnimatorRes;

/* JADX INFO: loaded from: classes10.dex */
@NavOptionsDsl
public final class AnimBuilder {

    @AnimRes
    @AnimatorRes
    private int enter = -1;

    @AnimRes
    @AnimatorRes
    private int exit = -1;

    @AnimRes
    @AnimatorRes
    private int popEnter = -1;

    @AnimRes
    @AnimatorRes
    private int popExit = -1;

    public final int a() {
        return this.enter;
    }

    public final int b() {
        return this.exit;
    }

    public final int c() {
        return this.popEnter;
    }

    public final int d() {
        return this.popExit;
    }

    public final void e(int i10) {
        this.enter = i10;
    }

    public final void f(int i10) {
        this.exit = i10;
    }
}
