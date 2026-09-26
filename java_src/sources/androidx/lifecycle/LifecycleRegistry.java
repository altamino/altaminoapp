package androidx.lifecycle;

import android.annotation.SuppressLint;
import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.FastSafeIterableMap;
import androidx.arch.core.internal.SafeIterableMap;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public class LifecycleRegistry extends Lifecycle {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private int addingObserverCounter;
    private final boolean enforceMainThread;
    private boolean handlingEvent;

    @NotNull
    private final WeakReference<LifecycleOwner> lifecycleOwner;
    private boolean newEventOccurred;

    @NotNull
    private FastSafeIterableMap<LifecycleObserver, ObserverWithState> observerMap;

    @NotNull
    private ArrayList<Lifecycle.State> parentStates;

    @NotNull
    private Lifecycle.State state;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @VisibleForTesting
        @NotNull
        public final LifecycleRegistry a(@NotNull LifecycleOwner owner) {
            t.j(owner, "owner");
            return new LifecycleRegistry(owner, false, null);
        }

        @NotNull
        public final Lifecycle.State b(@NotNull Lifecycle.State state1, @Nullable Lifecycle.State state) {
            t.j(state1, "state1");
            return (state == null || state.compareTo(state1) >= 0) ? state1 : state;
        }
    }

    public static final class ObserverWithState {

        @NotNull
        private LifecycleEventObserver lifecycleObserver;

        @NotNull
        private Lifecycle.State state;

        @NotNull
        public final Lifecycle.State b() {
            return this.state;
        }

        public ObserverWithState(@Nullable LifecycleObserver lifecycleObserver, @NotNull Lifecycle.State initialState) {
            t.j(initialState, "initialState");
            t.g(lifecycleObserver);
            this.lifecycleObserver = Lifecycling.f(lifecycleObserver);
            this.state = initialState;
        }

        public final void a(@Nullable LifecycleOwner lifecycleOwner, @NotNull Lifecycle.Event event) {
            t.j(event, "event");
            Lifecycle.State stateC = event.c();
            this.state = LifecycleRegistry.Companion.b(this.state, stateC);
            LifecycleEventObserver lifecycleEventObserver = this.lifecycleObserver;
            t.g(lifecycleOwner);
            lifecycleEventObserver.onStateChanged(lifecycleOwner, event);
            this.state = stateC;
        }
    }

    public /* synthetic */ LifecycleRegistry(LifecycleOwner lifecycleOwner, boolean z6, k kVar) {
        this(lifecycleOwner, z6);
    }

    @Override // androidx.lifecycle.Lifecycle
    @NotNull
    public Lifecycle.State b() {
        return this.state;
    }

    private LifecycleRegistry(LifecycleOwner lifecycleOwner, boolean z6) {
        this.enforceMainThread = z6;
        this.observerMap = new FastSafeIterableMap<>();
        this.state = Lifecycle.State.INITIALIZED;
        this.parentStates = new ArrayList<>();
        this.lifecycleOwner = new WeakReference<>(lifecycleOwner);
    }

    private final void e(LifecycleOwner lifecycleOwner) {
        Iterator<Map.Entry<LifecycleObserver, ObserverWithState>> itDescendingIterator = this.observerMap.descendingIterator();
        t.i(itDescendingIterator, "observerMap.descendingIterator()");
        while (itDescendingIterator.hasNext() && !this.newEventOccurred) {
            Map.Entry<LifecycleObserver, ObserverWithState> next = itDescendingIterator.next();
            t.i(next, "next()");
            LifecycleObserver key = next.getKey();
            ObserverWithState value = next.getValue();
            while (value.b().compareTo(this.state) > 0 && !this.newEventOccurred && this.observerMap.contains(key)) {
                Lifecycle.Event eventA = Lifecycle.Event.Companion.a(value.b());
                if (eventA == null) {
                    throw new IllegalStateException("no event down from " + value.b());
                }
                n(eventA.c());
                value.a(lifecycleOwner, eventA);
                m();
            }
        }
    }

    private final Lifecycle.State f(LifecycleObserver lifecycleObserver) {
        ObserverWithState value;
        Map.Entry<LifecycleObserver, ObserverWithState> entryP = this.observerMap.p(lifecycleObserver);
        Lifecycle.State state = null;
        Lifecycle.State stateB = (entryP == null || (value = entryP.getValue()) == null) ? null : value.b();
        if (!this.parentStates.isEmpty()) {
            ArrayList<Lifecycle.State> arrayList = this.parentStates;
            state = arrayList.get(arrayList.size() - 1);
        }
        Companion companion = Companion;
        return companion.b(companion.b(this.state, stateB), state);
    }

    @SuppressLint({"RestrictedApi"})
    private final void g(String str) {
        if (!this.enforceMainThread || ArchTaskExecutor.h().c()) {
            return;
        }
        throw new IllegalStateException(("Method " + str + " must be called on the main thread").toString());
    }

    private final void h(LifecycleOwner lifecycleOwner) {
        SafeIterableMap<LifecycleObserver, ObserverWithState>.IteratorWithAdditions iteratorWithAdditionsE = this.observerMap.e();
        t.i(iteratorWithAdditionsE, "observerMap.iteratorWithAdditions()");
        while (iteratorWithAdditionsE.hasNext() && !this.newEventOccurred) {
            Map.Entry next = iteratorWithAdditionsE.next();
            LifecycleObserver lifecycleObserver = (LifecycleObserver) next.getKey();
            ObserverWithState observerWithState = (ObserverWithState) next.getValue();
            while (observerWithState.b().compareTo(this.state) < 0 && !this.newEventOccurred && this.observerMap.contains(lifecycleObserver)) {
                n(observerWithState.b());
                Lifecycle.Event eventB = Lifecycle.Event.Companion.b(observerWithState.b());
                if (eventB == null) {
                    throw new IllegalStateException("no event up from " + observerWithState.b());
                }
                observerWithState.a(lifecycleOwner, eventB);
                m();
            }
        }
    }

    private final boolean j() {
        if (this.observerMap.size() == 0) {
            return true;
        }
        Map.Entry<LifecycleObserver, ObserverWithState> entryC = this.observerMap.c();
        t.g(entryC);
        Lifecycle.State stateB = entryC.getValue().b();
        Map.Entry<LifecycleObserver, ObserverWithState> entryF = this.observerMap.f();
        t.g(entryF);
        Lifecycle.State stateB2 = entryF.getValue().b();
        return stateB == stateB2 && this.state == stateB2;
    }

    private final void l(Lifecycle.State state) {
        Lifecycle.State state2 = this.state;
        if (state2 == state) {
            return;
        }
        if (state2 == Lifecycle.State.INITIALIZED && state == Lifecycle.State.DESTROYED) {
            throw new IllegalStateException(("no event down from " + this.state + " in component " + this.lifecycleOwner.get()).toString());
        }
        this.state = state;
        if (this.handlingEvent || this.addingObserverCounter != 0) {
            this.newEventOccurred = true;
            return;
        }
        this.handlingEvent = true;
        p();
        this.handlingEvent = false;
        if (this.state == Lifecycle.State.DESTROYED) {
            this.observerMap = new FastSafeIterableMap<>();
        }
    }

    private final void m() {
        ArrayList<Lifecycle.State> arrayList = this.parentStates;
        arrayList.remove(arrayList.size() - 1);
    }

    private final void n(Lifecycle.State state) {
        this.parentStates.add(state);
    }

    private final void p() {
        LifecycleOwner lifecycleOwner = this.lifecycleOwner.get();
        if (lifecycleOwner == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state.");
        }
        while (!j()) {
            this.newEventOccurred = false;
            Lifecycle.State state = this.state;
            Map.Entry<LifecycleObserver, ObserverWithState> entryC = this.observerMap.c();
            t.g(entryC);
            if (state.compareTo(entryC.getValue().b()) < 0) {
                e(lifecycleOwner);
            }
            Map.Entry<LifecycleObserver, ObserverWithState> entryF = this.observerMap.f();
            if (!this.newEventOccurred && entryF != null && this.state.compareTo(entryF.getValue().b()) > 0) {
                h(lifecycleOwner);
            }
        }
        this.newEventOccurred = false;
    }

    @Override // androidx.lifecycle.Lifecycle
    public void a(@NotNull LifecycleObserver observer) {
        LifecycleOwner lifecycleOwner;
        t.j(observer, "observer");
        g("addObserver");
        Lifecycle.State state = this.state;
        Lifecycle.State state2 = Lifecycle.State.DESTROYED;
        if (state != state2) {
            state2 = Lifecycle.State.INITIALIZED;
        }
        ObserverWithState observerWithState = new ObserverWithState(observer, state2);
        if (this.observerMap.j(observer, observerWithState) == null && (lifecycleOwner = this.lifecycleOwner.get()) != null) {
            boolean z6 = this.addingObserverCounter != 0 || this.handlingEvent;
            Lifecycle.State stateF = f(observer);
            this.addingObserverCounter++;
            while (observerWithState.b().compareTo(stateF) < 0 && this.observerMap.contains(observer)) {
                n(observerWithState.b());
                Lifecycle.Event eventB = Lifecycle.Event.Companion.b(observerWithState.b());
                if (eventB == null) {
                    throw new IllegalStateException("no event up from " + observerWithState.b());
                }
                observerWithState.a(lifecycleOwner, eventB);
                m();
                stateF = f(observer);
            }
            if (!z6) {
                p();
            }
            this.addingObserverCounter--;
        }
    }

    @Override // androidx.lifecycle.Lifecycle
    public void d(@NotNull LifecycleObserver observer) {
        t.j(observer, "observer");
        g("removeObserver");
        this.observerMap.m(observer);
    }

    public void i(@NotNull Lifecycle.Event event) {
        t.j(event, "event");
        g("handleLifecycleEvent");
        l(event.c());
    }

    @MainThread
    public void k(@NotNull Lifecycle.State state) {
        t.j(state, "state");
        g("markState");
        o(state);
    }

    public void o(@NotNull Lifecycle.State state) {
        t.j(state, "state");
        g("setCurrentState");
        l(state);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LifecycleRegistry(@NotNull LifecycleOwner provider) {
        this(provider, true);
        t.j(provider, "provider");
    }
}
