package androidx.navigation;

import e8.l;
import kotlin.collections.k;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class NavController$popBackStackInternal$2 extends v implements l<NavBackStackEntry, l0> {
    final /* synthetic */ k0 $popped;
    final /* synthetic */ k0 $receivedPop;
    final /* synthetic */ boolean $saveState;
    final /* synthetic */ k<NavBackStackEntryState> $savedState;
    final /* synthetic */ NavController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NavController$popBackStackInternal$2(k0 k0Var, k0 k0Var2, NavController navController, boolean z6, k<NavBackStackEntryState> kVar) {
        super(1);
        this.$receivedPop = k0Var;
        this.$popped = k0Var2;
        this.this$0 = navController;
        this.$saveState = z6;
        this.$savedState = kVar;
    }

    public final void a(@NotNull NavBackStackEntry entry) {
        t.j(entry, "entry");
        this.$receivedPop.element = true;
        this.$popped.element = true;
        this.this$0.U(entry, this.$saveState, this.$savedState);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(NavBackStackEntry navBackStackEntry) {
        a(navBackStackEntry);
        return l0.INSTANCE;
    }
}
