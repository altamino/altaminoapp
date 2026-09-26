package androidx.navigation;

import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.m;

/* JADX INFO: loaded from: classes5.dex */
public final class NavGraphViewModelLazyKt$navGraphViewModels$3 extends v implements e8.a<CreationExtras> {
    final /* synthetic */ m<NavBackStackEntry> $backStackEntry$delegate;
    final /* synthetic */ e8.a<CreationExtras> $extrasProducer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NavGraphViewModelLazyKt$navGraphViewModels$3(e8.a<? extends CreationExtras> aVar, m<NavBackStackEntry> mVar) {
        super(0);
        this.$extrasProducer = aVar;
        this.$backStackEntry$delegate = mVar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final CreationExtras invoke() {
        CreationExtras creationExtrasInvoke;
        e8.a<CreationExtras> aVar = this.$extrasProducer;
        return (aVar == null || (creationExtrasInvoke = aVar.invoke()) == null) ? NavGraphViewModelLazyKt.f(this.$backStackEntry$delegate).getDefaultViewModelCreationExtras() : creationExtrasInvoke;
    }
}
