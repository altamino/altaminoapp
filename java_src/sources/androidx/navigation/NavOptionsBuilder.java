package androidx.navigation;

import androidx.annotation.IdRes;
import e8.l;
import kotlin.text.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
@NavOptionsDsl
public final class NavOptionsBuilder {
    private boolean inclusive;
    private boolean launchSingleTop;

    @Nullable
    private String popUpToRoute;
    private boolean restoreState;
    private boolean saveState;

    @NotNull
    private final NavOptions.Builder builder = new NavOptions.Builder();

    @IdRes
    private int popUpToId = -1;

    public final void d(boolean z6) {
        this.launchSingleTop = z6;
    }

    public final void e(int i10) {
        this.popUpToId = i10;
        this.inclusive = false;
    }

    private final void f(String str) {
        if (str != null) {
            if (!(!t.z(str))) {
                throw new IllegalArgumentException("Cannot pop up to an empty route".toString());
            }
            this.popUpToRoute = str;
            this.inclusive = false;
        }
    }

    public final void a(@NotNull l<? super AnimBuilder, l0> animBuilder) {
        kotlin.jvm.internal.t.j(animBuilder, "animBuilder");
        AnimBuilder animBuilder2 = new AnimBuilder();
        animBuilder.invoke(animBuilder2);
        this.builder.b(animBuilder2.a()).c(animBuilder2.b()).e(animBuilder2.c()).f(animBuilder2.d());
    }

    @NotNull
    public final NavOptions b() {
        NavOptions.Builder builder = this.builder;
        builder.d(this.launchSingleTop);
        builder.j(this.restoreState);
        String str = this.popUpToRoute;
        if (str != null) {
            builder.h(str, this.inclusive, this.saveState);
        } else {
            builder.g(this.popUpToId, this.inclusive, this.saveState);
        }
        return builder.a();
    }

    public final void c(@IdRes int i10, @NotNull l<? super PopUpToBuilder, l0> popUpToBuilder) {
        kotlin.jvm.internal.t.j(popUpToBuilder, "popUpToBuilder");
        e(i10);
        f(null);
        PopUpToBuilder popUpToBuilder2 = new PopUpToBuilder();
        popUpToBuilder.invoke(popUpToBuilder2);
        this.inclusive = popUpToBuilder2.a();
        this.saveState = popUpToBuilder2.b();
    }
}
