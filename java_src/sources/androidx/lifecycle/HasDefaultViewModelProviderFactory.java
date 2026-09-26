package androidx.lifecycle;

import androidx.lifecycle.viewmodel.CreationExtras;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public interface HasDefaultViewModelProviderFactory {
    @NotNull
    CreationExtras getDefaultViewModelCreationExtras();

    @NotNull
    ViewModelProvider.Factory getDefaultViewModelProviderFactory();
}
