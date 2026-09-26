package androidx.navigation;

import android.os.Bundle;
import e8.l;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class NavController$navigate$4 extends v implements l<NavBackStackEntry, l0> {
    final /* synthetic */ Bundle $finalArgs;
    final /* synthetic */ k0 $navigated;
    final /* synthetic */ NavDestination $node;
    final /* synthetic */ NavController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NavController$navigate$4(k0 k0Var, NavController navController, NavDestination navDestination, Bundle bundle) {
        super(1);
        this.$navigated = k0Var;
        this.this$0 = navController;
        this.$node = navDestination;
        this.$finalArgs = bundle;
    }

    public final void a(@NotNull NavBackStackEntry it) {
        t.j(it, "it");
        this.$navigated.element = true;
        NavController.o(this.this$0, this.$node, this.$finalArgs, it, null, 8, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(NavBackStackEntry navBackStackEntry) {
        a(navBackStackEntry);
        return l0.INSTANCE;
    }
}
