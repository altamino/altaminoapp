package androidx.navigation;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class Navigator$onLaunchSingleTop$1 extends v implements l<NavOptionsBuilder, l0> {
    public static final Navigator$onLaunchSingleTop$1 INSTANCE = new Navigator$onLaunchSingleTop$1();

    Navigator$onLaunchSingleTop$1() {
        super(1);
    }

    public final void a(@NotNull NavOptionsBuilder navOptions) {
        t.j(navOptions, "$this$navOptions");
        navOptions.d(true);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(NavOptionsBuilder navOptionsBuilder) {
        a(navOptionsBuilder);
        return l0.INSTANCE;
    }
}
