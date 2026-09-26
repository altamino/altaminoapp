package androidx.core.view;

import android.annotation.SuppressLint;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
public class MenuHostHelper {
    private final Runnable mOnInvalidateMenuCallback;
    private final CopyOnWriteArrayList<MenuProvider> mMenuProviders = new CopyOnWriteArrayList<>();
    private final Map<MenuProvider, LifecycleContainer> mProviderToLifecycleContainers = new HashMap();

    private static class LifecycleContainer {
        final Lifecycle mLifecycle;
        private LifecycleEventObserver mObserver;

        void a() {
            this.mLifecycle.d(this.mObserver);
            this.mObserver = null;
        }

        LifecycleContainer(@NonNull Lifecycle lifecycle, @NonNull LifecycleEventObserver lifecycleEventObserver) {
            this.mLifecycle = lifecycle;
            this.mObserver = lifecycleEventObserver;
            lifecycle.a(lifecycleEventObserver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(MenuProvider menuProvider, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            l(menuProvider);
        }
    }

    public void c(@NonNull MenuProvider menuProvider) {
        this.mMenuProviders.add(menuProvider);
        this.mOnInvalidateMenuCallback.run();
    }

    public void h(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
        Iterator<MenuProvider> it = this.mMenuProviders.iterator();
        while (it.hasNext()) {
            it.next().a(menu, menuInflater);
        }
    }

    public void i(@NonNull Menu menu) {
        Iterator<MenuProvider> it = this.mMenuProviders.iterator();
        while (it.hasNext()) {
            it.next().b(menu);
        }
    }

    public boolean j(@NonNull MenuItem menuItem) {
        Iterator<MenuProvider> it = this.mMenuProviders.iterator();
        while (it.hasNext()) {
            if (it.next().d(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void k(@NonNull Menu menu) {
        Iterator<MenuProvider> it = this.mMenuProviders.iterator();
        while (it.hasNext()) {
            it.next().c(menu);
        }
    }

    public void l(@NonNull MenuProvider menuProvider) {
        this.mMenuProviders.remove(menuProvider);
        LifecycleContainer lifecycleContainerRemove = this.mProviderToLifecycleContainers.remove(menuProvider);
        if (lifecycleContainerRemove != null) {
            lifecycleContainerRemove.a();
        }
        this.mOnInvalidateMenuCallback.run();
    }

    public MenuHostHelper(@NonNull Runnable runnable) {
        this.mOnInvalidateMenuCallback = runnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(Lifecycle.State state, MenuProvider menuProvider, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.d(state)) {
            c(menuProvider);
            return;
        }
        if (event == Lifecycle.Event.ON_DESTROY) {
            l(menuProvider);
        } else if (event == Lifecycle.Event.b(state)) {
            this.mMenuProviders.remove(menuProvider);
            this.mOnInvalidateMenuCallback.run();
        }
    }

    public void d(@NonNull final MenuProvider menuProvider, @NonNull LifecycleOwner lifecycleOwner) {
        c(menuProvider);
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        LifecycleContainer lifecycleContainerRemove = this.mProviderToLifecycleContainers.remove(menuProvider);
        if (lifecycleContainerRemove != null) {
            lifecycleContainerRemove.a();
        }
        this.mProviderToLifecycleContainers.put(menuProvider, new LifecycleContainer(lifecycle, new LifecycleEventObserver() { // from class: androidx.core.view.r
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                this.f188a.f(menuProvider, lifecycleOwner2, event);
            }
        }));
    }

    @SuppressLint({"LambdaLast"})
    public void e(@NonNull final MenuProvider menuProvider, @NonNull LifecycleOwner lifecycleOwner, @NonNull final Lifecycle.State state) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        LifecycleContainer lifecycleContainerRemove = this.mProviderToLifecycleContainers.remove(menuProvider);
        if (lifecycleContainerRemove != null) {
            lifecycleContainerRemove.a();
        }
        this.mProviderToLifecycleContainers.put(menuProvider, new LifecycleContainer(lifecycle, new LifecycleEventObserver() { // from class: androidx.core.view.s
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                this.f190a.g(state, menuProvider, lifecycleOwner2, event);
            }
        }));
    }
}
