package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.os.CancellationSignal;
import androidx.core.view.ViewCompat;
import androidx.fragment.R;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
abstract class SpecialEffectsController {
    private final ViewGroup mContainer;
    final ArrayList<Operation> mPendingOperations = new ArrayList<>();
    final ArrayList<Operation> mRunningOperations = new ArrayList<>();
    boolean mOperationDirectionIsPop = false;
    boolean mIsContainerPostponed = false;

    static class Operation {

        @NonNull
        private State mFinalState;

        @NonNull
        private final Fragment mFragment;

        @NonNull
        private LifecycleImpact mLifecycleImpact;

        @NonNull
        private final List<Runnable> mCompletionListeners = new ArrayList();

        @NonNull
        private final HashSet<CancellationSignal> mSpecialEffectsSignals = new HashSet<>();
        private boolean mIsCanceled = false;
        private boolean mIsComplete = false;

        enum LifecycleImpact {
            NONE,
            ADDING,
            REMOVING
        }

        enum State {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            @NonNull
            static State b(int i10) {
                if (i10 == 0) {
                    return VISIBLE;
                }
                if (i10 == 4) {
                    return INVISIBLE;
                }
                if (i10 == 8) {
                    return GONE;
                }
                throw new IllegalArgumentException("Unknown visibility " + i10);
            }

            void a(@NonNull View view) {
                int i10 = AnonymousClass3.$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[ordinal()];
                if (i10 == 1) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        if (FragmentManager.P0(2)) {
                            Log.v(FragmentManager.TAG, "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                        }
                        viewGroup.removeView(view);
                        return;
                    }
                    return;
                }
                if (i10 == 2) {
                    if (FragmentManager.P0(2)) {
                        Log.v(FragmentManager.TAG, "SpecialEffectsController: Setting view " + view + " to VISIBLE");
                    }
                    view.setVisibility(0);
                    return;
                }
                if (i10 == 3) {
                    if (FragmentManager.P0(2)) {
                        Log.v(FragmentManager.TAG, "SpecialEffectsController: Setting view " + view + " to GONE");
                    }
                    view.setVisibility(8);
                    return;
                }
                if (i10 != 4) {
                    return;
                }
                if (FragmentManager.P0(2)) {
                    Log.v(FragmentManager.TAG, "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
                }
                view.setVisibility(4);
            }

            @NonNull
            static State c(@NonNull View view) {
                if (view.getAlpha() == 0.0f && view.getVisibility() == 0) {
                    return INVISIBLE;
                }
                return b(view.getVisibility());
            }
        }

        @NonNull
        public State e() {
            return this.mFinalState;
        }

        @NonNull
        public final Fragment f() {
            return this.mFragment;
        }

        @NonNull
        LifecycleImpact g() {
            return this.mLifecycleImpact;
        }

        final boolean h() {
            return this.mIsCanceled;
        }

        final boolean i() {
            return this.mIsComplete;
        }

        void l() {
        }

        final void a(@NonNull Runnable runnable) {
            this.mCompletionListeners.add(runnable);
        }

        @CallSuper
        public void c() {
            if (this.mIsComplete) {
                return;
            }
            if (FragmentManager.P0(2)) {
                Log.v(FragmentManager.TAG, "SpecialEffectsController: " + this + " has called complete.");
            }
            this.mIsComplete = true;
            Iterator<Runnable> it = this.mCompletionListeners.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
        }

        public final void d(@NonNull CancellationSignal cancellationSignal) {
            if (this.mSpecialEffectsSignals.remove(cancellationSignal) && this.mSpecialEffectsSignals.isEmpty()) {
                c();
            }
        }

        final void k(@NonNull State state, @NonNull LifecycleImpact lifecycleImpact) {
            int i10 = AnonymousClass3.$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact[lifecycleImpact.ordinal()];
            if (i10 == 1) {
                if (this.mFinalState == State.REMOVED) {
                    if (FragmentManager.P0(2)) {
                        Log.v(FragmentManager.TAG, "SpecialEffectsController: For fragment " + this.mFragment + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + this.mLifecycleImpact + " to ADDING.");
                    }
                    this.mFinalState = State.VISIBLE;
                    this.mLifecycleImpact = LifecycleImpact.ADDING;
                    return;
                }
                return;
            }
            if (i10 == 2) {
                if (FragmentManager.P0(2)) {
                    Log.v(FragmentManager.TAG, "SpecialEffectsController: For fragment " + this.mFragment + " mFinalState = " + this.mFinalState + " -> REMOVED. mLifecycleImpact  = " + this.mLifecycleImpact + " to REMOVING.");
                }
                this.mFinalState = State.REMOVED;
                this.mLifecycleImpact = LifecycleImpact.REMOVING;
                return;
            }
            if (i10 == 3 && this.mFinalState != State.REMOVED) {
                if (FragmentManager.P0(2)) {
                    Log.v(FragmentManager.TAG, "SpecialEffectsController: For fragment " + this.mFragment + " mFinalState = " + this.mFinalState + " -> " + state + ". ");
                }
                this.mFinalState = state;
            }
        }

        @NonNull
        public String toString() {
            return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + this.mFinalState + "} {mLifecycleImpact = " + this.mLifecycleImpact + "} {mFragment = " + this.mFragment + "}";
        }

        Operation(@NonNull State state, @NonNull LifecycleImpact lifecycleImpact, @NonNull Fragment fragment, @NonNull CancellationSignal cancellationSignal) {
            this.mFinalState = state;
            this.mLifecycleImpact = lifecycleImpact;
            this.mFragment = fragment;
            cancellationSignal.c(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.SpecialEffectsController.Operation.1
                @Override // androidx.core.os.CancellationSignal.OnCancelListener
                public void onCancel() {
                    Operation.this.b();
                }
            });
        }

        final void b() {
            if (h()) {
                return;
            }
            this.mIsCanceled = true;
            if (this.mSpecialEffectsSignals.isEmpty()) {
                c();
                return;
            }
            Iterator it = new ArrayList(this.mSpecialEffectsSignals).iterator();
            while (it.hasNext()) {
                ((CancellationSignal) it.next()).a();
            }
        }

        public final void j(@NonNull CancellationSignal cancellationSignal) {
            l();
            this.mSpecialEffectsSignals.add(cancellationSignal);
        }
    }

    void b(@NonNull Operation.State state, @NonNull FragmentStateManager fragmentStateManager) {
        if (FragmentManager.P0(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Enqueuing add operation for fragment " + fragmentStateManager.k());
        }
        a(state, Operation.LifecycleImpact.ADDING, fragmentStateManager);
    }

    void c(@NonNull FragmentStateManager fragmentStateManager) {
        if (FragmentManager.P0(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Enqueuing hide operation for fragment " + fragmentStateManager.k());
        }
        a(Operation.State.GONE, Operation.LifecycleImpact.NONE, fragmentStateManager);
    }

    void d(@NonNull FragmentStateManager fragmentStateManager) {
        if (FragmentManager.P0(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Enqueuing remove operation for fragment " + fragmentStateManager.k());
        }
        a(Operation.State.REMOVED, Operation.LifecycleImpact.REMOVING, fragmentStateManager);
    }

    void e(@NonNull FragmentStateManager fragmentStateManager) {
        if (FragmentManager.P0(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Enqueuing show operation for fragment " + fragmentStateManager.k());
        }
        a(Operation.State.VISIBLE, Operation.LifecycleImpact.NONE, fragmentStateManager);
    }

    abstract void f(@NonNull List<Operation> list, boolean z6);

    void j() {
        if (FragmentManager.P0(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Forcing all operations to complete");
        }
        boolean zW = ViewCompat.W(this.mContainer);
        synchronized (this.mPendingOperations) {
            try {
                q();
                Iterator<Operation> it = this.mPendingOperations.iterator();
                while (it.hasNext()) {
                    it.next().l();
                }
                for (Operation operation : new ArrayList(this.mRunningOperations)) {
                    if (FragmentManager.P0(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: ");
                        sb.append(zW ? "" : "Container " + this.mContainer + " is not attached to window. ");
                        sb.append("Cancelling running operation ");
                        sb.append(operation);
                        Log.v(FragmentManager.TAG, sb.toString());
                    }
                    operation.b();
                }
                for (Operation operation2 : new ArrayList(this.mPendingOperations)) {
                    if (FragmentManager.P0(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: ");
                        sb2.append(zW ? "" : "Container " + this.mContainer + " is not attached to window. ");
                        sb2.append("Cancelling pending operation ");
                        sb2.append(operation2);
                        Log.v(FragmentManager.TAG, sb2.toString());
                    }
                    operation2.b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @NonNull
    public ViewGroup m() {
        return this.mContainer;
    }

    void r(boolean z6) {
        this.mOperationDirectionIsPop = z6;
    }

    /* JADX INFO: renamed from: androidx.fragment.app.SpecialEffectsController$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact;
        static final /* synthetic */ int[] $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State;

        static {
            int[] iArr = new int[Operation.LifecycleImpact.values().length];
            $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact = iArr;
            try {
                iArr[Operation.LifecycleImpact.ADDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact[Operation.LifecycleImpact.REMOVING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact[Operation.LifecycleImpact.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Operation.State.values().length];
            $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State = iArr2;
            try {
                iArr2[Operation.State.REMOVED.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[Operation.State.VISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[Operation.State.GONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[Operation.State.INVISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private static class FragmentStateManagerOperation extends Operation {

        @NonNull
        private final FragmentStateManager mFragmentStateManager;

        FragmentStateManagerOperation(@NonNull Operation.State state, @NonNull Operation.LifecycleImpact lifecycleImpact, @NonNull FragmentStateManager fragmentStateManager, @NonNull CancellationSignal cancellationSignal) {
            super(state, lifecycleImpact, fragmentStateManager.k(), cancellationSignal);
            this.mFragmentStateManager = fragmentStateManager;
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        public void c() {
            super.c();
            this.mFragmentStateManager.m();
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        void l() {
            if (g() == Operation.LifecycleImpact.ADDING) {
                Fragment fragmentK = this.mFragmentStateManager.k();
                View viewFindFocus = fragmentK.mView.findFocus();
                if (viewFindFocus != null) {
                    fragmentK.setFocusedView(viewFindFocus);
                    if (FragmentManager.P0(2)) {
                        Log.v(FragmentManager.TAG, "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + fragmentK);
                    }
                }
                View viewRequireView = f().requireView();
                if (viewRequireView.getParent() == null) {
                    this.mFragmentStateManager.b();
                    viewRequireView.setAlpha(0.0f);
                }
                if (viewRequireView.getAlpha() == 0.0f && viewRequireView.getVisibility() == 0) {
                    viewRequireView.setVisibility(4);
                }
                viewRequireView.setAlpha(fragmentK.getPostOnViewCreatedAlpha());
                return;
            }
            if (g() == Operation.LifecycleImpact.REMOVING) {
                Fragment fragmentK2 = this.mFragmentStateManager.k();
                View viewRequireView2 = fragmentK2.requireView();
                if (FragmentManager.P0(2)) {
                    Log.v(FragmentManager.TAG, "Clearing focus " + viewRequireView2.findFocus() + " on view " + viewRequireView2 + " for Fragment " + fragmentK2);
                }
                viewRequireView2.clearFocus();
            }
        }
    }

    private void a(@NonNull Operation.State state, @NonNull Operation.LifecycleImpact lifecycleImpact, @NonNull FragmentStateManager fragmentStateManager) {
        synchronized (this.mPendingOperations) {
            try {
                CancellationSignal cancellationSignal = new CancellationSignal();
                Operation operationH = h(fragmentStateManager.k());
                if (operationH != null) {
                    operationH.k(state, lifecycleImpact);
                    return;
                }
                final FragmentStateManagerOperation fragmentStateManagerOperation = new FragmentStateManagerOperation(state, lifecycleImpact, fragmentStateManager, cancellationSignal);
                this.mPendingOperations.add(fragmentStateManagerOperation);
                fragmentStateManagerOperation.a(new Runnable() { // from class: androidx.fragment.app.SpecialEffectsController.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (SpecialEffectsController.this.mPendingOperations.contains(fragmentStateManagerOperation)) {
                            fragmentStateManagerOperation.e().a(fragmentStateManagerOperation.f().mView);
                        }
                    }
                });
                fragmentStateManagerOperation.a(new Runnable() { // from class: androidx.fragment.app.SpecialEffectsController.2
                    @Override // java.lang.Runnable
                    public void run() {
                        SpecialEffectsController.this.mPendingOperations.remove(fragmentStateManagerOperation);
                        SpecialEffectsController.this.mRunningOperations.remove(fragmentStateManagerOperation);
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    private Operation h(@NonNull Fragment fragment) {
        for (Operation operation : this.mPendingOperations) {
            if (operation.f().equals(fragment) && !operation.h()) {
                return operation;
            }
        }
        return null;
    }

    @Nullable
    private Operation i(@NonNull Fragment fragment) {
        for (Operation operation : this.mRunningOperations) {
            if (operation.f().equals(fragment) && !operation.h()) {
                return operation;
            }
        }
        return null;
    }

    @NonNull
    static SpecialEffectsController o(@NonNull ViewGroup viewGroup, @NonNull SpecialEffectsControllerFactory specialEffectsControllerFactory) {
        int i10 = R.id.special_effects_controller_view_tag;
        Object tag = viewGroup.getTag(i10);
        if (tag instanceof SpecialEffectsController) {
            return (SpecialEffectsController) tag;
        }
        SpecialEffectsController specialEffectsControllerA = specialEffectsControllerFactory.a(viewGroup);
        viewGroup.setTag(i10, specialEffectsControllerA);
        return specialEffectsControllerA;
    }

    private void q() {
        for (Operation operation : this.mPendingOperations) {
            if (operation.g() == Operation.LifecycleImpact.ADDING) {
                operation.k(Operation.State.b(operation.f().requireView().getVisibility()), Operation.LifecycleImpact.NONE);
            }
        }
    }

    void g() {
        if (this.mIsContainerPostponed) {
            return;
        }
        if (!ViewCompat.W(this.mContainer)) {
            j();
            this.mOperationDirectionIsPop = false;
            return;
        }
        synchronized (this.mPendingOperations) {
            try {
                if (!this.mPendingOperations.isEmpty()) {
                    ArrayList<Operation> arrayList = new ArrayList(this.mRunningOperations);
                    this.mRunningOperations.clear();
                    for (Operation operation : arrayList) {
                        if (FragmentManager.P0(2)) {
                            Log.v(FragmentManager.TAG, "SpecialEffectsController: Cancelling operation " + operation);
                        }
                        operation.b();
                        if (!operation.i()) {
                            this.mRunningOperations.add(operation);
                        }
                    }
                    q();
                    ArrayList arrayList2 = new ArrayList(this.mPendingOperations);
                    this.mPendingOperations.clear();
                    this.mRunningOperations.addAll(arrayList2);
                    if (FragmentManager.P0(2)) {
                        Log.v(FragmentManager.TAG, "SpecialEffectsController: Executing pending operations");
                    }
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        ((Operation) it.next()).l();
                    }
                    f(arrayList2, this.mOperationDirectionIsPop);
                    this.mOperationDirectionIsPop = false;
                    if (FragmentManager.P0(2)) {
                        Log.v(FragmentManager.TAG, "SpecialEffectsController: Finished executing pending operations");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void k() {
        if (this.mIsContainerPostponed) {
            if (FragmentManager.P0(2)) {
                Log.v(FragmentManager.TAG, "SpecialEffectsController: Forcing postponed operations");
            }
            this.mIsContainerPostponed = false;
            g();
        }
    }

    void p() {
        synchronized (this.mPendingOperations) {
            try {
                q();
                this.mIsContainerPostponed = false;
                for (int size = this.mPendingOperations.size() - 1; size >= 0; size--) {
                    Operation operation = this.mPendingOperations.get(size);
                    Operation.State stateC = Operation.State.c(operation.f().mView);
                    Operation.State stateE = operation.e();
                    Operation.State state = Operation.State.VISIBLE;
                    if (stateE == state && stateC != state) {
                        this.mIsContainerPostponed = operation.f().isPostponed();
                        break;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    SpecialEffectsController(@NonNull ViewGroup viewGroup) {
        this.mContainer = viewGroup;
    }

    @NonNull
    static SpecialEffectsController n(@NonNull ViewGroup viewGroup, @NonNull FragmentManager fragmentManager) {
        return o(viewGroup, fragmentManager.H0());
    }

    @Nullable
    Operation.LifecycleImpact l(@NonNull FragmentStateManager fragmentStateManager) {
        Operation.LifecycleImpact lifecycleImpactG;
        Operation operationH = h(fragmentStateManager.k());
        if (operationH != null) {
            lifecycleImpactG = operationH.g();
        } else {
            lifecycleImpactG = null;
        }
        Operation operationI = i(fragmentStateManager.k());
        if (operationI != null && (lifecycleImpactG == null || lifecycleImpactG == Operation.LifecycleImpact.NONE)) {
            return operationI.g();
        }
        return lifecycleImpactG;
    }
}
