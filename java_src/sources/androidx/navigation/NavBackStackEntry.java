package androidx.navigation;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.AbstractSavedStateViewModelFactory;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes5.dex */
public final class NavBackStackEntry implements LifecycleOwner, ViewModelStoreOwner, HasDefaultViewModelProviderFactory, SavedStateRegistryOwner {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @Nullable
    private final Bundle arguments;

    @Nullable
    private final Context context;

    @NotNull
    private final m defaultFactory$delegate;

    @NotNull
    private NavDestination destination;

    @NotNull
    private Lifecycle.State hostLifecycleState;

    @NotNull
    private final String id;

    @NotNull
    private LifecycleRegistry lifecycle;

    @NotNull
    private Lifecycle.State maxLifecycle;

    @Nullable
    private final Bundle savedState;

    @NotNull
    private final m savedStateHandle$delegate;
    private boolean savedStateRegistryAttached;

    @NotNull
    private final SavedStateRegistryController savedStateRegistryController;

    @Nullable
    private final NavViewModelStoreProvider viewModelStoreProvider;

    @RestrictTo
    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ NavBackStackEntry b(Companion companion, Context context, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavViewModelStoreProvider navViewModelStoreProvider, String str, Bundle bundle2, int i10, Object obj) {
            String str2;
            Bundle bundle3 = (i10 & 4) != 0 ? null : bundle;
            Lifecycle.State state2 = (i10 & 8) != 0 ? Lifecycle.State.CREATED : state;
            NavViewModelStoreProvider navViewModelStoreProvider2 = (i10 & 16) != 0 ? null : navViewModelStoreProvider;
            if ((i10 & 32) != 0) {
                String string = UUID.randomUUID().toString();
                t.i(string, "randomUUID().toString()");
                str2 = string;
            } else {
                str2 = str;
            }
            return companion.a(context, navDestination, bundle3, state2, navViewModelStoreProvider2, str2, (i10 & 64) != 0 ? null : bundle2);
        }

        @RestrictTo
        @NotNull
        public final NavBackStackEntry a(@Nullable Context context, @NotNull NavDestination destination, @Nullable Bundle bundle, @NotNull Lifecycle.State hostLifecycleState, @Nullable NavViewModelStoreProvider navViewModelStoreProvider, @NotNull String id, @Nullable Bundle bundle2) {
            t.j(destination, "destination");
            t.j(hostLifecycleState, "hostLifecycleState");
            t.j(id, "id");
            return new NavBackStackEntry(context, destination, bundle, hostLifecycleState, navViewModelStoreProvider, id, bundle2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class NavResultSavedStateFactory extends AbstractSavedStateViewModelFactory {
        @Override // androidx.lifecycle.AbstractSavedStateViewModelFactory
        @NotNull
        protected <T extends ViewModel> T c(@NotNull String key, @NotNull Class<T> modelClass, @NotNull SavedStateHandle handle) {
            t.j(key, "key");
            t.j(modelClass, "modelClass");
            t.j(handle, "handle");
            return new SavedStateViewModel(handle);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NavResultSavedStateFactory(@NotNull SavedStateRegistryOwner owner) {
            super(owner, null);
            t.j(owner, "owner");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class SavedStateViewModel extends ViewModel {

        @NotNull
        private final SavedStateHandle handle;

        @NotNull
        public final SavedStateHandle d() {
            return this.handle;
        }

        public SavedStateViewModel(@NotNull SavedStateHandle handle) {
            t.j(handle, "handle");
            this.handle = handle;
        }
    }

    public /* synthetic */ NavBackStackEntry(Context context, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavViewModelStoreProvider navViewModelStoreProvider, String str, Bundle bundle2, k kVar) {
        this(context, navDestination, bundle, state, navViewModelStoreProvider, str, bundle2);
    }

    @Nullable
    public final Bundle d() {
        return this.arguments;
    }

    public boolean equals(@Nullable Object obj) {
        Set<String> setKeySet;
        if (obj == null || !(obj instanceof NavBackStackEntry)) {
            return false;
        }
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
        if (!t.e(this.id, navBackStackEntry.id) || !t.e(this.destination, navBackStackEntry.destination) || !t.e(this.lifecycle, navBackStackEntry.lifecycle) || !t.e(getSavedStateRegistry(), navBackStackEntry.getSavedStateRegistry())) {
            return false;
        }
        if (!t.e(this.arguments, navBackStackEntry.arguments)) {
            Bundle bundle = this.arguments;
            if (bundle == null || (setKeySet = bundle.keySet()) == null) {
                return false;
            }
            if (!setKeySet.isEmpty()) {
                for (String str : setKeySet) {
                    Object obj2 = this.arguments.get(str);
                    Bundle bundle2 = navBackStackEntry.arguments;
                    if (!t.e(obj2, bundle2 != null ? bundle2.get(str) : null)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    @NotNull
    public final NavDestination f() {
        return this.destination;
    }

    @NotNull
    public final String g() {
        return this.id;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NotNull
    public Lifecycle getLifecycle() {
        return this.lifecycle;
    }

    @RestrictTo
    @NotNull
    public final Lifecycle.State h() {
        return this.maxLifecycle;
    }

    @RestrictTo
    public final void k(@NotNull NavDestination navDestination) {
        t.j(navDestination, "<set-?>");
        this.destination = navDestination;
    }

    private NavBackStackEntry(Context context, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavViewModelStoreProvider navViewModelStoreProvider, String str, Bundle bundle2) {
        this.context = context;
        this.destination = navDestination;
        this.arguments = bundle;
        this.hostLifecycleState = state;
        this.viewModelStoreProvider = navViewModelStoreProvider;
        this.id = str;
        this.savedState = bundle2;
        this.lifecycle = new LifecycleRegistry(this);
        this.savedStateRegistryController = SavedStateRegistryController.Companion.a(this);
        this.defaultFactory$delegate = o.a(new NavBackStackEntry$defaultFactory$2(this));
        this.savedStateHandle$delegate = o.a(new NavBackStackEntry$savedStateHandle$2(this));
        this.maxLifecycle = Lifecycle.State.INITIALIZED;
    }

    private final SavedStateViewModelFactory e() {
        return (SavedStateViewModelFactory) this.defaultFactory$delegate.getValue();
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    @NotNull
    public CreationExtras getDefaultViewModelCreationExtras() {
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(null, 1, null);
        Context context = this.context;
        Context applicationContext = context != null ? context.getApplicationContext() : null;
        Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
        if (application != null) {
            mutableCreationExtras.c(ViewModelProvider.AndroidViewModelFactory.APPLICATION_KEY, application);
        }
        mutableCreationExtras.c(SavedStateHandleSupport.SAVED_STATE_REGISTRY_OWNER_KEY, this);
        mutableCreationExtras.c(SavedStateHandleSupport.VIEW_MODEL_STORE_OWNER_KEY, this);
        Bundle bundle = this.arguments;
        if (bundle != null) {
            mutableCreationExtras.c(SavedStateHandleSupport.DEFAULT_ARGS_KEY, bundle);
        }
        return mutableCreationExtras;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    @NotNull
    public SavedStateRegistry getSavedStateRegistry() {
        return this.savedStateRegistryController.b();
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    @NotNull
    public ViewModelStore getViewModelStore() {
        if (!this.savedStateRegistryAttached) {
            throw new IllegalStateException("You cannot access the NavBackStackEntry's ViewModels until it is added to the NavController's back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state).".toString());
        }
        if (this.lifecycle.b() == Lifecycle.State.DESTROYED) {
            throw new IllegalStateException("You cannot access the NavBackStackEntry's ViewModels after the NavBackStackEntry is destroyed.".toString());
        }
        NavViewModelStoreProvider navViewModelStoreProvider = this.viewModelStoreProvider;
        if (navViewModelStoreProvider != null) {
            return navViewModelStoreProvider.a(this.id);
        }
        throw new IllegalStateException("You must call setViewModelStore() on your NavHostController before accessing the ViewModelStore of a navigation graph.".toString());
    }

    public int hashCode() {
        Set<String> setKeySet;
        int iHashCode = (this.id.hashCode() * 31) + this.destination.hashCode();
        Bundle bundle = this.arguments;
        if (bundle != null && (setKeySet = bundle.keySet()) != null) {
            Iterator<T> it = setKeySet.iterator();
            while (it.hasNext()) {
                int i10 = iHashCode * 31;
                Object obj = this.arguments.get((String) it.next());
                iHashCode = i10 + (obj != null ? obj.hashCode() : 0);
            }
        }
        return (((iHashCode * 31) + this.lifecycle.hashCode()) * 31) + getSavedStateRegistry().hashCode();
    }

    @RestrictTo
    public final void i(@NotNull Lifecycle.Event event) {
        t.j(event, "event");
        Lifecycle.State stateC = event.c();
        t.i(stateC, "event.targetState");
        this.hostLifecycleState = stateC;
        m();
    }

    @RestrictTo
    public final void l(@NotNull Lifecycle.State maxState) {
        t.j(maxState, "maxState");
        this.maxLifecycle = maxState;
        m();
    }

    @RestrictTo
    public final void m() {
        if (!this.savedStateRegistryAttached) {
            this.savedStateRegistryController.c();
            this.savedStateRegistryAttached = true;
            if (this.viewModelStoreProvider != null) {
                SavedStateHandleSupport.c(this);
            }
            this.savedStateRegistryController.d(this.savedState);
        }
        if (this.hostLifecycleState.ordinal() < this.maxLifecycle.ordinal()) {
            this.lifecycle.o(this.hostLifecycleState);
        } else {
            this.lifecycle.o(this.maxLifecycle);
        }
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    @NotNull
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return e();
    }

    @RestrictTo
    public final void j(@NotNull Bundle outBundle) {
        t.j(outBundle, "outBundle");
        this.savedStateRegistryController.e(outBundle);
    }

    public /* synthetic */ NavBackStackEntry(NavBackStackEntry navBackStackEntry, Bundle bundle, int i10, k kVar) {
        this(navBackStackEntry, (i10 & 2) != 0 ? navBackStackEntry.arguments : bundle);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @RestrictTo
    public NavBackStackEntry(@NotNull NavBackStackEntry entry, @Nullable Bundle bundle) {
        this(entry.context, entry.destination, bundle, entry.hostLifecycleState, entry.viewModelStoreProvider, entry.id, entry.savedState);
        t.j(entry, "entry");
        this.hostLifecycleState = entry.hostLifecycleState;
        l(entry.maxLifecycle);
    }
}
