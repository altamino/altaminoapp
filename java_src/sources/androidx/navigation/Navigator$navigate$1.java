package androidx.navigation;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class Navigator$navigate$1 extends v implements l<NavBackStackEntry, NavBackStackEntry> {
    final /* synthetic */ NavOptions $navOptions;
    final /* synthetic */ Navigator.Extras $navigatorExtras;
    final /* synthetic */ Navigator<D> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Navigator$navigate$1(Navigator<D> navigator, NavOptions navOptions, Navigator.Extras extras) {
        super(1);
        this.this$0 = navigator;
        this.$navOptions = navOptions;
        this.$navigatorExtras = extras;
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final NavBackStackEntry invoke(@NotNull NavBackStackEntry backStackEntry) {
        NavDestination navDestinationD;
        t.j(backStackEntry, "backStackEntry");
        NavDestination navDestinationF = backStackEntry.f();
        if (!(navDestinationF instanceof NavDestination)) {
            navDestinationF = null;
        }
        if (navDestinationF != null && (navDestinationD = this.this$0.d(navDestinationF, backStackEntry.d(), this.$navOptions, this.$navigatorExtras)) != null) {
            return t.e(navDestinationD, navDestinationF) ? backStackEntry : this.this$0.b().a(navDestinationD, navDestinationD.e(backStackEntry.d()));
        }
        return null;
    }
}
