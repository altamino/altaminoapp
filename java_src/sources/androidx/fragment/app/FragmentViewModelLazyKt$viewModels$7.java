package androidx.fragment.app;

import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.m;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentViewModelLazyKt$viewModels$7 extends v implements e8.a<CreationExtras> {
    final /* synthetic */ e8.a<CreationExtras> $extrasProducer;
    final /* synthetic */ m<ViewModelStoreOwner> $owner$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FragmentViewModelLazyKt$viewModels$7(e8.a<? extends CreationExtras> aVar, m<? extends ViewModelStoreOwner> mVar) {
        super(0);
        this.$extrasProducer = aVar;
        this.$owner$delegate = mVar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final CreationExtras invoke() {
        CreationExtras creationExtrasInvoke;
        e8.a<CreationExtras> aVar = this.$extrasProducer;
        if (aVar != null && (creationExtrasInvoke = aVar.invoke()) != null) {
            return creationExtrasInvoke;
        }
        ViewModelStoreOwner viewModelStoreOwnerE = FragmentViewModelLazyKt.e(this.$owner$delegate);
        HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerE instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerE : null;
        CreationExtras defaultViewModelCreationExtras = hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : null;
        return defaultViewModelCreationExtras == null ? CreationExtras.Empty.INSTANCE : defaultViewModelCreationExtras;
    }
}
