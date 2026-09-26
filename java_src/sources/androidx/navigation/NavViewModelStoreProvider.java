package androidx.navigation;

import androidx.annotation.RestrictTo;
import androidx.lifecycle.ViewModelStore;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@RestrictTo
public interface NavViewModelStoreProvider {
    @NotNull
    ViewModelStore a(@NotNull String str);
}
