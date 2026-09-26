package androidx.navigation;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class NavController$popBackStackInternal$7 extends v implements l<NavDestination, Boolean> {
    final /* synthetic */ NavController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NavController$popBackStackInternal$7(NavController navController) {
        super(1);
        this.this$0 = navController;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(@NotNull NavDestination destination) {
        t.j(destination, "destination");
        return Boolean.valueOf(!this.this$0.backStackMap.containsKey(Integer.valueOf(destination.p())));
    }
}
