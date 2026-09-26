package androidx.lifecycle;

import android.os.Bundle;
import androidx.savedstate.SavedStateRegistry;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes.dex */
public final class SavedStateHandlesProvider implements SavedStateRegistry.SavedStateProvider {
    private boolean restored;

    @Nullable
    private Bundle restoredState;

    @NotNull
    private final SavedStateRegistry savedStateRegistry;

    @NotNull
    private final m viewModel$delegate;

    public SavedStateHandlesProvider(@NotNull SavedStateRegistry savedStateRegistry, @NotNull ViewModelStoreOwner viewModelStoreOwner) {
        t.j(savedStateRegistry, "savedStateRegistry");
        t.j(viewModelStoreOwner, "viewModelStoreOwner");
        this.savedStateRegistry = savedStateRegistry;
        this.viewModel$delegate = o.a(new SavedStateHandlesProvider$viewModel$2(viewModelStoreOwner));
    }

    private final SavedStateHandlesVM c() {
        return (SavedStateHandlesVM) this.viewModel$delegate.getValue();
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    @NotNull
    public Bundle a() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.restoredState;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        for (Map.Entry<String, SavedStateHandle> entry : c().d().entrySet()) {
            String key = entry.getKey();
            Bundle bundleA = entry.getValue().e().a();
            if (!t.e(bundleA, Bundle.EMPTY)) {
                bundle.putBundle(key, bundleA);
            }
        }
        this.restored = false;
        return bundle;
    }

    @Nullable
    public final Bundle b(@NotNull String key) {
        t.j(key, "key");
        d();
        Bundle bundle = this.restoredState;
        Bundle bundle2 = bundle != null ? bundle.getBundle(key) : null;
        Bundle bundle3 = this.restoredState;
        if (bundle3 != null) {
            bundle3.remove(key);
        }
        Bundle bundle4 = this.restoredState;
        if (bundle4 != null && bundle4.isEmpty()) {
            this.restoredState = null;
        }
        return bundle2;
    }

    public final void d() {
        if (this.restored) {
            return;
        }
        Bundle bundleB = this.savedStateRegistry.b("androidx.lifecycle.internal.SavedStateHandlesProvider");
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.restoredState;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        if (bundleB != null) {
            bundle.putAll(bundleB);
        }
        this.restoredState = bundle;
        this.restored = true;
        c();
    }
}
