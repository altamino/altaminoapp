package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.util.Map;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@SuppressLint({"RestrictedApi"})
public final class SavedStateRegistry {

    @NotNull
    private static final Companion Companion = new Companion(null);

    @Deprecated
    @NotNull
    private static final String SAVED_COMPONENTS_KEY = "androidx.lifecycle.BundlableSavedStateRegistry.key";
    private boolean attached;

    @NotNull
    private final SafeIterableMap<String, SavedStateProvider> components = new SafeIterableMap<>();
    private boolean isAllowingSavingState = true;
    private boolean isRestored;

    @Nullable
    private Recreator.SavedStateProvider recreatorProvider;

    @Nullable
    private Bundle restoredState;

    public interface AutoRecreated {
        void a(@NotNull SavedStateRegistryOwner savedStateRegistryOwner);
    }

    private static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public interface SavedStateProvider {
        @NotNull
        Bundle a();
    }

    @MainThread
    @Nullable
    public final Bundle b(@NotNull String key) {
        t.j(key, "key");
        if (!this.isRestored) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component".toString());
        }
        Bundle bundle = this.restoredState;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle != null ? bundle.getBundle(key) : null;
        Bundle bundle3 = this.restoredState;
        if (bundle3 != null) {
            bundle3.remove(key);
        }
        Bundle bundle4 = this.restoredState;
        if (bundle4 == null || bundle4.isEmpty()) {
            this.restoredState = null;
        }
        return bundle2;
    }

    @Nullable
    public final SavedStateProvider c(@NotNull String key) {
        t.j(key, "key");
        for (Map.Entry<String, SavedStateProvider> components : this.components) {
            t.i(components, "components");
            String key2 = components.getKey();
            SavedStateProvider value = components.getValue();
            if (t.e(key2, key)) {
                return value;
            }
        }
        return null;
    }

    @MainThread
    public final void e(@NotNull Lifecycle lifecycle) {
        t.j(lifecycle, "lifecycle");
        if (!(!this.attached)) {
            throw new IllegalStateException("SavedStateRegistry was already attached.".toString());
        }
        lifecycle.a(new LifecycleEventObserver() { // from class: androidx.savedstate.a
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                SavedStateRegistry.d(this.f854a, lifecycleOwner, event);
            }
        });
        this.attached = true;
    }

    @MainThread
    public final void f(@Nullable Bundle bundle) {
        if (!this.attached) {
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).".toString());
        }
        if (!(!this.isRestored)) {
            throw new IllegalStateException("SavedStateRegistry was already restored.".toString());
        }
        this.restoredState = bundle != null ? bundle.getBundle(SAVED_COMPONENTS_KEY) : null;
        this.isRestored = true;
    }

    @MainThread
    public final void h(@NotNull String key, @NotNull SavedStateProvider provider) {
        t.j(key, "key");
        t.j(provider, "provider");
        if (this.components.j(key, provider) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered".toString());
        }
    }

    @MainThread
    public final void i(@NotNull Class<? extends AutoRecreated> clazz) {
        t.j(clazz, "clazz");
        if (!this.isAllowingSavingState) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState".toString());
        }
        Recreator.SavedStateProvider savedStateProvider = this.recreatorProvider;
        if (savedStateProvider == null) {
            savedStateProvider = new Recreator.SavedStateProvider(this);
        }
        this.recreatorProvider = savedStateProvider;
        try {
            clazz.getDeclaredConstructor(new Class[0]);
            Recreator.SavedStateProvider savedStateProvider2 = this.recreatorProvider;
            if (savedStateProvider2 != null) {
                String name = clazz.getName();
                t.i(name, "clazz.name");
                savedStateProvider2.b(name);
            }
        } catch (NoSuchMethodException e) {
            throw new IllegalArgumentException("Class " + clazz.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
        }
    }

    @MainThread
    public final void j(@NotNull String key) {
        t.j(key, "key");
        this.components.m(key);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(SavedStateRegistry this$0, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        t.j(this$0, "this$0");
        t.j(lifecycleOwner, "<anonymous parameter 0>");
        t.j(event, "event");
        if (event == Lifecycle.Event.ON_START) {
            this$0.isAllowingSavingState = true;
        } else if (event == Lifecycle.Event.ON_STOP) {
            this$0.isAllowingSavingState = false;
        }
    }

    @MainThread
    public final void g(@NotNull Bundle outBundle) {
        t.j(outBundle, "outBundle");
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.restoredState;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        SafeIterableMap<String, SavedStateProvider>.IteratorWithAdditions iteratorWithAdditionsE = this.components.e();
        t.i(iteratorWithAdditionsE, "this.components.iteratorWithAdditions()");
        while (iteratorWithAdditionsE.hasNext()) {
            Map.Entry next = iteratorWithAdditionsE.next();
            bundle.putBundle((String) next.getKey(), ((SavedStateProvider) next.getValue()).a());
        }
        if (!bundle.isEmpty()) {
            outBundle.putBundle(SAVED_COMPONENTS_KEY, bundle);
        }
    }
}
