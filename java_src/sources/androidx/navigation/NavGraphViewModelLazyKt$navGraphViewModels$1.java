package androidx.navigation;

import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.m;

/* JADX INFO: loaded from: classes5.dex */
public final class NavGraphViewModelLazyKt$navGraphViewModels$1 extends v implements e8.a<CreationExtras> {
    final /* synthetic */ m<NavBackStackEntry> $backStackEntry$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphViewModelLazyKt$navGraphViewModels$1(m<NavBackStackEntry> mVar) {
        super(0);
        this.$backStackEntry$delegate = mVar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final CreationExtras invoke() {
        return NavGraphViewModelLazyKt.e(this.$backStackEntry$delegate).getDefaultViewModelCreationExtras();
    }
}
