package androidx.lifecycle;

import android.os.Bundle;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class LegacySavedStateHandleController {

    @NotNull
    public static final LegacySavedStateHandleController INSTANCE = new LegacySavedStateHandleController();

    @NotNull
    public static final String TAG_SAVED_STATE_HANDLE_CONTROLLER = "androidx.lifecycle.savedstate.vm.tag";

    public static final class OnRecreation implements SavedStateRegistry.AutoRecreated {
        @Override // androidx.savedstate.SavedStateRegistry.AutoRecreated
        public void a(@NotNull SavedStateRegistryOwner owner) {
            t.j(owner, "owner");
            if (!(owner instanceof ViewModelStoreOwner)) {
                throw new IllegalStateException("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner".toString());
            }
            ViewModelStore viewModelStore = ((ViewModelStoreOwner) owner).getViewModelStore();
            SavedStateRegistry savedStateRegistry = owner.getSavedStateRegistry();
            Iterator<String> it = viewModelStore.c().iterator();
            while (it.hasNext()) {
                ViewModel viewModelB = viewModelStore.b(it.next());
                t.g(viewModelB);
                LegacySavedStateHandleController.a(viewModelB, savedStateRegistry, owner.getLifecycle());
            }
            if (!viewModelStore.c().isEmpty()) {
                savedStateRegistry.i(OnRecreation.class);
            }
        }
    }

    public static final void a(@NotNull ViewModel viewModel, @NotNull SavedStateRegistry registry, @NotNull Lifecycle lifecycle) {
        t.j(viewModel, "viewModel");
        t.j(registry, "registry");
        t.j(lifecycle, "lifecycle");
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) viewModel.getTag("androidx.lifecycle.savedstate.vm.tag");
        if (savedStateHandleController == null || savedStateHandleController.c()) {
            return;
        }
        savedStateHandleController.a(registry, lifecycle);
        INSTANCE.c(registry, lifecycle);
    }

    @NotNull
    public static final SavedStateHandleController b(@NotNull SavedStateRegistry registry, @NotNull Lifecycle lifecycle, @Nullable String str, @Nullable Bundle bundle) {
        t.j(registry, "registry");
        t.j(lifecycle, "lifecycle");
        t.g(str);
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, SavedStateHandle.Companion.a(registry.b(str), bundle));
        savedStateHandleController.a(registry, lifecycle);
        INSTANCE.c(registry, lifecycle);
        return savedStateHandleController;
    }

    private LegacySavedStateHandleController() {
    }

    private final void c(final SavedStateRegistry savedStateRegistry, final Lifecycle lifecycle) {
        Lifecycle.State stateB = lifecycle.b();
        if (stateB != Lifecycle.State.INITIALIZED && !stateB.b(Lifecycle.State.STARTED)) {
            lifecycle.a(new LifecycleEventObserver() { // from class: androidx.lifecycle.LegacySavedStateHandleController$tryToAddRecreator$1
                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
                    t.j(source, "source");
                    t.j(event, "event");
                    if (event == Lifecycle.Event.ON_START) {
                        lifecycle.d(this);
                        savedStateRegistry.i(LegacySavedStateHandleController.OnRecreation.class);
                    }
                }
            });
        } else {
            savedStateRegistry.i(OnRecreation.class);
        }
    }
}
