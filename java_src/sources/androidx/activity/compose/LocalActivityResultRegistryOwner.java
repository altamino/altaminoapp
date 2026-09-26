package androidx.activity.compose;

import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@StabilityInferred
public final class LocalActivityResultRegistryOwner {
    public static final int $stable = 0;

    @NotNull
    public static final LocalActivityResultRegistryOwner INSTANCE = new LocalActivityResultRegistryOwner();

    @NotNull
    private static final ProvidableCompositionLocal<ActivityResultRegistryOwner> LocalComposition = CompositionLocalKt.d(null, LocalActivityResultRegistryOwner$LocalComposition$1.INSTANCE, 1, null);

    private LocalActivityResultRegistryOwner() {
    }
}
