package androidx.lifecycle.viewmodel;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.j;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class InitializerViewModelFactory implements ViewModelProvider.Factory {

    @NotNull
    private final ViewModelInitializer<?>[] initializers;

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public /* synthetic */ ViewModel create(Class cls) {
        return j.a(this, cls);
    }

    public InitializerViewModelFactory(@NotNull ViewModelInitializer<?>... initializers) {
        t.j(initializers, "initializers");
        this.initializers = initializers;
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    @NotNull
    public <T extends ViewModel> T create(@NotNull Class<T> modelClass, @NotNull CreationExtras extras) {
        t.j(modelClass, "modelClass");
        t.j(extras, "extras");
        T t5 = null;
        for (ViewModelInitializer<?> viewModelInitializer : this.initializers) {
            if (t.e(viewModelInitializer.a(), modelClass)) {
                T tInvoke = viewModelInitializer.b().invoke(extras);
                t5 = tInvoke instanceof ViewModel ? tInvoke : null;
            }
        }
        if (t5 != null) {
            return t5;
        }
        throw new IllegalArgumentException("No initializer set for given class " + modelClass.getName());
    }
}
