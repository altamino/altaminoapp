package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class Recreator implements LifecycleEventObserver {

    @NotNull
    public static final String CLASSES_KEY = "classes_to_restore";

    @NotNull
    public static final String COMPONENT_KEY = "androidx.savedstate.Restarter";

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final SavedStateRegistryOwner owner;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public static final class SavedStateProvider implements SavedStateRegistry.SavedStateProvider {

        @NotNull
        private final Set<String> classes;

        @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
        @NotNull
        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList(Recreator.CLASSES_KEY, new ArrayList<>(this.classes));
            return bundle;
        }

        public final void b(@NotNull String className) {
            t.j(className, "className");
            this.classes.add(className);
        }

        public SavedStateProvider(@NotNull SavedStateRegistry registry) {
            t.j(registry, "registry");
            this.classes = new LinkedHashSet();
            registry.h(Recreator.COMPONENT_KEY, this);
        }
    }

    private final void a(String str) {
        try {
            Class<? extends U> clsAsSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(SavedStateRegistry.AutoRecreated.class);
            t.i(clsAsSubclass, "{\n                Class.…class.java)\n            }");
            try {
                Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                try {
                    Object objNewInstance = declaredConstructor.newInstance(new Object[0]);
                    t.i(objNewInstance, "{\n                constr…wInstance()\n            }");
                    ((SavedStateRegistry.AutoRecreated) objNewInstance).a(this.owner);
                } catch (Exception e) {
                    throw new RuntimeException("Failed to instantiate " + str, e);
                }
            } catch (NoSuchMethodException e2) {
                throw new IllegalStateException("Class " + clsAsSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
            }
        } catch (ClassNotFoundException e6) {
            throw new RuntimeException("Class " + str + " wasn't found", e6);
        }
    }

    public Recreator(@NotNull SavedStateRegistryOwner owner) {
        t.j(owner, "owner");
        this.owner = owner;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
        t.j(source, "source");
        t.j(event, "event");
        if (event == Lifecycle.Event.ON_CREATE) {
            source.getLifecycle().d(this);
            Bundle bundleB = this.owner.getSavedStateRegistry().b(COMPONENT_KEY);
            if (bundleB == null) {
                return;
            }
            ArrayList<String> stringArrayList = bundleB.getStringArrayList(CLASSES_KEY);
            if (stringArrayList != null) {
                Iterator<String> it = stringArrayList.iterator();
                while (it.hasNext()) {
                    a(it.next());
                }
                return;
            }
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        throw new AssertionError("Next event must be ON_CREATE");
    }
}
