package androidx.lifecycle.viewmodel;

import androidx.lifecycle.ViewModel;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class ViewModelInitializer<T extends ViewModel> {

    @NotNull
    private final Class<T> clazz;

    @NotNull
    private final l<CreationExtras, T> initializer;

    @NotNull
    public final Class<T> a() {
        return this.clazz;
    }

    @NotNull
    public final l<CreationExtras, T> b() {
        return this.initializer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ViewModelInitializer(@NotNull Class<T> clazz, @NotNull l<? super CreationExtras, ? extends T> initializer) {
        t.j(clazz, "clazz");
        t.j(initializer, "initializer");
        this.clazz = clazz;
        this.initializer = initializer;
    }
}
