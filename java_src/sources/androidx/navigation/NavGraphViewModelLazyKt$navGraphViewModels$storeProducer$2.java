package androidx.navigation;

import androidx.lifecycle.ViewModelStore;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.m;

/* JADX INFO: loaded from: classes8.dex */
public final class NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$2 extends v implements e8.a<ViewModelStore> {
    final /* synthetic */ m<NavBackStackEntry> $backStackEntry$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$2(m<NavBackStackEntry> mVar) {
        super(0);
        this.$backStackEntry$delegate = mVar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ViewModelStore invoke() {
        return NavGraphViewModelLazyKt.f(this.$backStackEntry$delegate).getViewModelStore();
    }
}
