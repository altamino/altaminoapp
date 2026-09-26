package androidx.lifecycle.viewmodel;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import d8.a;
import e8.l;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
@ViewModelFactoryDsl
public final class InitializerViewModelFactoryBuilder {

    @NotNull
    private final List<ViewModelInitializer<?>> initializers = new ArrayList();

    public final <T extends ViewModel> void a(@NotNull KClass<T> clazz, @NotNull l<? super CreationExtras, ? extends T> initializer) {
        t.j(clazz, "clazz");
        t.j(initializer, "initializer");
        this.initializers.add(new ViewModelInitializer<>(a.a(clazz), initializer));
    }

    @NotNull
    public final ViewModelProvider.Factory b() {
        ViewModelInitializer[] viewModelInitializerArr = (ViewModelInitializer[]) this.initializers.toArray(new ViewModelInitializer[0]);
        return new InitializerViewModelFactory((ViewModelInitializer[]) Arrays.copyOf(viewModelInitializerArr, viewModelInitializerArr.length));
    }
}
