package androidx.lifecycle;

import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class ViewModelProviderGetKt {
    @NotNull
    public static final CreationExtras a(@NotNull ViewModelStoreOwner owner) {
        t.j(owner, "owner");
        return owner instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) owner).getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
    }
}
