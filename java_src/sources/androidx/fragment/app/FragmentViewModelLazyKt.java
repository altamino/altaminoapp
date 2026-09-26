package androidx.fragment.app;

import androidx.annotation.MainThread;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.internal.t;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;

/* JADX INFO: loaded from: classes7.dex */
public final class FragmentViewModelLazyKt {
    @MainThread
    @NotNull
    public static final <VM extends ViewModel> m<VM> c(@NotNull Fragment fragment, @NotNull KClass<VM> viewModelClass, @NotNull e8.a<? extends ViewModelStore> storeProducer, @NotNull e8.a<? extends CreationExtras> extrasProducer, @Nullable e8.a<? extends ViewModelProvider.Factory> aVar) {
        t.j(fragment, "<this>");
        t.j(viewModelClass, "viewModelClass");
        t.j(storeProducer, "storeProducer");
        t.j(extrasProducer, "extrasProducer");
        if (aVar == null) {
            aVar = new FragmentViewModelLazyKt$createViewModelLazy$factoryPromise$1(fragment);
        }
        return new ViewModelLazy(viewModelClass, storeProducer, aVar, extrasProducer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelStoreOwner d(m<? extends ViewModelStoreOwner> mVar) {
        return mVar.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelStoreOwner e(m<? extends ViewModelStoreOwner> mVar) {
        return mVar.getValue();
    }
}
