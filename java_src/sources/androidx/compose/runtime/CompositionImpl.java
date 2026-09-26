package androidx.compose.runtime;

import androidx.compose.animation.core.d;
import androidx.compose.runtime.collection.IdentityArrayMap;
import androidx.compose.runtime.collection.IdentityArraySet;
import androidx.compose.runtime.collection.IdentityScopeMap;
import androidx.compose.runtime.snapshots.StateObject;
import e8.p;
import e8.q;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.collections.o;
import kotlin.coroutines.g;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes9.dex */
public final class CompositionImpl implements ControlledComposition {

    @Nullable
    private final g _recomposeContext;

    @NotNull
    private final HashSet<RememberObserver> abandonSet;

    @NotNull
    private final Applier<?> applier;

    @NotNull
    private final List<q<Applier<?>, SlotWriter, RememberManager, l0>> changes;

    @NotNull
    private p<? super Composer, ? super Integer, l0> composable;

    @NotNull
    private final ComposerImpl composer;

    @NotNull
    private final HashSet<RecomposeScopeImpl> conditionallyInvalidatedScopes;

    @NotNull
    private final IdentityScopeMap<DerivedState<?>> derivedStates;
    private boolean disposed;

    @Nullable
    private CompositionImpl invalidationDelegate;
    private int invalidationDelegateGroup;

    @NotNull
    private IdentityArrayMap<RecomposeScopeImpl, IdentityArraySet<Object>> invalidations;
    private final boolean isRoot;

    @NotNull
    private final List<q<Applier<?>, SlotWriter, RememberManager, l0>> lateChanges;

    @NotNull
    private final Object lock;

    @NotNull
    private final IdentityScopeMap<RecomposeScopeImpl> observations;

    @NotNull
    private final IdentityScopeMap<RecomposeScopeImpl> observationsProcessed;

    @NotNull
    private final CompositionContext parent;
    private boolean pendingInvalidScopes;

    @NotNull
    private final AtomicReference<Object> pendingModifications;

    @NotNull
    private final SlotTable slotTable;

    private static final class RememberEventDispatcher implements RememberManager {

        @NotNull
        private final Set<RememberObserver> abandoning;

        @NotNull
        private final List<RememberObserver> forgetting;

        @NotNull
        private final List<RememberObserver> remembering;

        @NotNull
        private final List<e8.a<l0>> sideEffects;

        public RememberEventDispatcher(@NotNull Set<RememberObserver> abandoning) {
            t.j(abandoning, "abandoning");
            this.abandoning = abandoning;
            this.remembering = new ArrayList();
            this.forgetting = new ArrayList();
            this.sideEffects = new ArrayList();
        }

        @Override // androidx.compose.runtime.RememberManager
        public void a(@NotNull RememberObserver instance) {
            t.j(instance, "instance");
            int iLastIndexOf = this.remembering.lastIndexOf(instance);
            if (iLastIndexOf < 0) {
                this.forgetting.add(instance);
            } else {
                this.remembering.remove(iLastIndexOf);
                this.abandoning.remove(instance);
            }
        }

        @Override // androidx.compose.runtime.RememberManager
        public void b(@NotNull RememberObserver instance) {
            t.j(instance, "instance");
            int iLastIndexOf = this.forgetting.lastIndexOf(instance);
            if (iLastIndexOf < 0) {
                this.remembering.add(instance);
            } else {
                this.forgetting.remove(iLastIndexOf);
                this.abandoning.remove(instance);
            }
        }

        @Override // androidx.compose.runtime.RememberManager
        public void c(@NotNull e8.a<l0> effect) {
            t.j(effect, "effect");
            this.sideEffects.add(effect);
        }

        public final void d() {
            if (!this.abandoning.isEmpty()) {
                Object objA = Trace.INSTANCE.a("Compose:abandons");
                try {
                    Iterator<RememberObserver> it = this.abandoning.iterator();
                    while (it.hasNext()) {
                        RememberObserver next = it.next();
                        it.remove();
                        next.c();
                    }
                    l0 l0Var = l0.INSTANCE;
                } finally {
                    Trace.INSTANCE.b(objA);
                }
            }
        }

        public final void e() {
            if (!this.forgetting.isEmpty()) {
                Object objA = Trace.INSTANCE.a("Compose:onForgotten");
                try {
                    for (int size = this.forgetting.size() - 1; -1 < size; size--) {
                        RememberObserver rememberObserver = this.forgetting.get(size);
                        if (!this.abandoning.contains(rememberObserver)) {
                            rememberObserver.d();
                        }
                    }
                    l0 l0Var = l0.INSTANCE;
                    Trace.INSTANCE.b(objA);
                } catch (Throwable th) {
                    Trace.INSTANCE.b(objA);
                    throw th;
                }
            }
            if (!this.remembering.isEmpty()) {
                Object objA2 = Trace.INSTANCE.a("Compose:onRemembered");
                try {
                    List<RememberObserver> list = this.remembering;
                    int size2 = list.size();
                    for (int i10 = 0; i10 < size2; i10++) {
                        RememberObserver rememberObserver2 = list.get(i10);
                        this.abandoning.remove(rememberObserver2);
                        rememberObserver2.b();
                    }
                    l0 l0Var2 = l0.INSTANCE;
                } finally {
                    Trace.INSTANCE.b(objA2);
                }
            }
        }

        public final void f() {
            if (!this.sideEffects.isEmpty()) {
                Object objA = Trace.INSTANCE.a("Compose:sideeffects");
                try {
                    List<e8.a<l0>> list = this.sideEffects;
                    int size = list.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        list.get(i10).invoke();
                    }
                    this.sideEffects.clear();
                    l0 l0Var = l0.INSTANCE;
                } finally {
                    Trace.INSTANCE.b(objA);
                }
            }
        }
    }

    public CompositionImpl(@NotNull CompositionContext parent, @NotNull Applier<?> applier, @Nullable g gVar) {
        t.j(parent, "parent");
        t.j(applier, "applier");
        this.parent = parent;
        this.applier = applier;
        this.pendingModifications = new AtomicReference<>(null);
        this.lock = new Object();
        HashSet<RememberObserver> hashSet = new HashSet<>();
        this.abandonSet = hashSet;
        SlotTable slotTable = new SlotTable();
        this.slotTable = slotTable;
        this.observations = new IdentityScopeMap<>();
        this.conditionallyInvalidatedScopes = new HashSet<>();
        this.derivedStates = new IdentityScopeMap<>();
        ArrayList arrayList = new ArrayList();
        this.changes = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.lateChanges = arrayList2;
        this.observationsProcessed = new IdentityScopeMap<>();
        this.invalidations = new IdentityArrayMap<>(0, 1, null);
        ComposerImpl composerImpl = new ComposerImpl(applier, parent, slotTable, hashSet, arrayList, arrayList2, this);
        parent.n(composerImpl);
        this.composer = composerImpl;
        this._recomposeContext = gVar;
        this.isRoot = parent instanceof Recomposer;
        this.composable = ComposableSingletons$CompositionKt.INSTANCE.a();
    }

    @NotNull
    public final p<Composer, Integer, l0> A() {
        return this.composable;
    }

    public final void H(boolean z6) {
        this.pendingInvalidScopes = z6;
    }

    @Override // androidx.compose.runtime.Composition
    public boolean u() {
        return this.disposed;
    }

    private final InvalidationResult D(RecomposeScopeImpl recomposeScopeImpl, Anchor anchor, Object obj) {
        synchronized (this.lock) {
            try {
                CompositionImpl compositionImpl = this.invalidationDelegate;
                if (compositionImpl == null || !this.slotTable.r(this.invalidationDelegateGroup, anchor)) {
                    compositionImpl = null;
                }
                if (compositionImpl == null) {
                    if (m() && this.composer.F1(recomposeScopeImpl, obj)) {
                        return InvalidationResult.IMMINENT;
                    }
                    if (obj == null) {
                        this.invalidations.j(recomposeScopeImpl, null);
                    } else {
                        CompositionKt.d(this.invalidations, recomposeScopeImpl, obj);
                    }
                }
                if (compositionImpl != null) {
                    return compositionImpl.D(recomposeScopeImpl, anchor, obj);
                }
                this.parent.j(this);
                return m() ? InvalidationResult.DEFERRED : InvalidationResult.SCHEDULED;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void E(Object obj) {
        IdentityScopeMap<RecomposeScopeImpl> identityScopeMap = this.observations;
        int iF = identityScopeMap.f(obj);
        if (iF >= 0) {
            for (RecomposeScopeImpl recomposeScopeImpl : identityScopeMap.o(iF)) {
                if (recomposeScopeImpl.t(obj) == InvalidationResult.IMMINENT) {
                    this.observationsProcessed.c(obj, recomposeScopeImpl);
                }
            }
        }
    }

    private final IdentityArrayMap<RecomposeScopeImpl, IdentityArraySet<Object>> I() {
        IdentityArrayMap<RecomposeScopeImpl, IdentityArraySet<Object>> identityArrayMap = this.invalidations;
        this.invalidations = new IdentityArrayMap<>(0, 1, null);
        return identityArrayMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void p(Set<? extends Object> set, boolean z6) {
        HashSet hashSet;
        p0 p0Var = new p0();
        for (Object obj : set) {
            if (obj instanceof RecomposeScopeImpl) {
                ((RecomposeScopeImpl) obj).t(null);
            } else {
                q(this, z6, p0Var, obj);
                IdentityScopeMap<DerivedState<?>> identityScopeMap = this.derivedStates;
                int iF = identityScopeMap.f(obj);
                if (iF >= 0) {
                    Iterator<T> it = identityScopeMap.o(iF).iterator();
                    while (it.hasNext()) {
                        q(this, z6, p0Var, (DerivedState) it.next());
                    }
                }
            }
        }
        if (!z6 || !(!this.conditionallyInvalidatedScopes.isEmpty())) {
            HashSet hashSet2 = (HashSet) p0Var.element;
            if (hashSet2 != null) {
                IdentityScopeMap<RecomposeScopeImpl> identityScopeMap2 = this.observations;
                int iJ = identityScopeMap2.j();
                int i10 = 0;
                for (int i11 = 0; i11 < iJ; i11++) {
                    int i12 = identityScopeMap2.k()[i11];
                    IdentityArraySet<RecomposeScopeImpl> identityArraySet = identityScopeMap2.i()[i12];
                    t.g(identityArraySet);
                    int size = identityArraySet.size();
                    int i13 = 0;
                    for (int i14 = 0; i14 < size; i14++) {
                        Object obj2 = identityArraySet.e()[i14];
                        if (obj2 == null) {
                            throw new NullPointerException("null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet");
                        }
                        if (!hashSet2.contains((RecomposeScopeImpl) obj2)) {
                            if (i13 != i14) {
                                identityArraySet.e()[i13] = obj2;
                            }
                            i13++;
                        }
                    }
                    int size2 = identityArraySet.size();
                    for (int i15 = i13; i15 < size2; i15++) {
                        identityArraySet.e()[i15] = null;
                    }
                    identityArraySet.g(i13);
                    if (identityArraySet.size() > 0) {
                        if (i10 != i11) {
                            int i16 = identityScopeMap2.k()[i10];
                            identityScopeMap2.k()[i10] = i12;
                            identityScopeMap2.k()[i11] = i16;
                        }
                        i10++;
                    }
                }
                int iJ2 = identityScopeMap2.j();
                for (int i17 = i10; i17 < iJ2; i17++) {
                    identityScopeMap2.l()[identityScopeMap2.k()[i17]] = null;
                }
                identityScopeMap2.p(i10);
                s();
                return;
            }
            return;
        }
        IdentityScopeMap<RecomposeScopeImpl> identityScopeMap3 = this.observations;
        int iJ3 = identityScopeMap3.j();
        int i18 = 0;
        for (int i19 = 0; i19 < iJ3; i19++) {
            int i20 = identityScopeMap3.k()[i19];
            IdentityArraySet<RecomposeScopeImpl> identityArraySet2 = identityScopeMap3.i()[i20];
            t.g(identityArraySet2);
            int size3 = identityArraySet2.size();
            int i21 = 0;
            for (int i22 = 0; i22 < size3; i22++) {
                Object obj3 = identityArraySet2.e()[i22];
                if (obj3 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet");
                }
                RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj3;
                if (!this.conditionallyInvalidatedScopes.contains(recomposeScopeImpl) && ((hashSet = (HashSet) p0Var.element) == null || !hashSet.contains(recomposeScopeImpl))) {
                    if (i21 != i22) {
                        identityArraySet2.e()[i21] = obj3;
                    }
                    i21++;
                }
            }
            int size4 = identityArraySet2.size();
            for (int i23 = i21; i23 < size4; i23++) {
                identityArraySet2.e()[i23] = null;
            }
            identityArraySet2.g(i21);
            if (identityArraySet2.size() > 0) {
                if (i18 != i19) {
                    int i24 = identityScopeMap3.k()[i18];
                    identityScopeMap3.k()[i18] = i20;
                    identityScopeMap3.k()[i19] = i24;
                }
                i18++;
            }
        }
        int iJ4 = identityScopeMap3.j();
        for (int i25 = i18; i25 < iJ4; i25++) {
            identityScopeMap3.l()[identityScopeMap3.k()[i25]] = null;
        }
        identityScopeMap3.p(i18);
        s();
        this.conditionallyInvalidatedScopes.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.util.HashSet] */
    /* JADX WARN: Type inference failed for: r2v7, types: [T, java.util.HashSet] */
    /* JADX WARN: Type inference failed for: r2v9 */
    private static final void q(CompositionImpl compositionImpl, boolean z6, p0<HashSet<RecomposeScopeImpl>> p0Var, Object obj) {
        IdentityScopeMap<RecomposeScopeImpl> identityScopeMap = compositionImpl.observations;
        int iF = identityScopeMap.f(obj);
        if (iF >= 0) {
            for (RecomposeScopeImpl recomposeScopeImpl : identityScopeMap.o(iF)) {
                if (!compositionImpl.observationsProcessed.m(obj, recomposeScopeImpl) && recomposeScopeImpl.t(obj) != InvalidationResult.IGNORED) {
                    if (!recomposeScopeImpl.u() || z6) {
                        HashSet<RecomposeScopeImpl> hashSet = p0Var.element;
                        ?? r5 = hashSet;
                        if (hashSet == null) {
                            ?? hashSet2 = new HashSet();
                            p0Var.element = hashSet2;
                            r5 = hashSet2;
                        }
                        r5.add(recomposeScopeImpl);
                    } else {
                        compositionImpl.conditionallyInvalidatedScopes.add(recomposeScopeImpl);
                    }
                }
            }
        }
    }

    private final void r(List<q<Applier<?>, SlotWriter, RememberManager, l0>> list) {
        RememberEventDispatcher rememberEventDispatcher = new RememberEventDispatcher(this.abandonSet);
        try {
            if (list.isEmpty()) {
                if (this.lateChanges.isEmpty()) {
                    rememberEventDispatcher.d();
                    return;
                }
                return;
            }
            Object objA = Trace.INSTANCE.a("Compose:applyChanges");
            try {
                this.applier.d();
                SlotWriter slotWriterT = this.slotTable.t();
                try {
                    Applier<?> applier = this.applier;
                    int size = list.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        list.get(i10).invoke(applier, slotWriterT, rememberEventDispatcher);
                    }
                    list.clear();
                    l0 l0Var = l0.INSTANCE;
                    slotWriterT.F();
                    this.applier.c();
                    Trace trace = Trace.INSTANCE;
                    trace.b(objA);
                    rememberEventDispatcher.e();
                    rememberEventDispatcher.f();
                    if (this.pendingInvalidScopes) {
                        Object objA2 = trace.a("Compose:unobserve");
                        try {
                            this.pendingInvalidScopes = false;
                            IdentityScopeMap<RecomposeScopeImpl> identityScopeMap = this.observations;
                            int iJ = identityScopeMap.j();
                            int i11 = 0;
                            for (int i12 = 0; i12 < iJ; i12++) {
                                int i13 = identityScopeMap.k()[i12];
                                IdentityArraySet<RecomposeScopeImpl> identityArraySet = identityScopeMap.i()[i13];
                                t.g(identityArraySet);
                                int size2 = identityArraySet.size();
                                int i14 = 0;
                                for (int i15 = 0; i15 < size2; i15++) {
                                    Object obj = identityArraySet.e()[i15];
                                    if (obj == null) {
                                        throw new NullPointerException("null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet");
                                    }
                                    if (!(!((RecomposeScopeImpl) obj).s())) {
                                        if (i14 != i15) {
                                            identityArraySet.e()[i14] = obj;
                                        }
                                        i14++;
                                    }
                                }
                                int size3 = identityArraySet.size();
                                for (int i16 = i14; i16 < size3; i16++) {
                                    identityArraySet.e()[i16] = null;
                                }
                                identityArraySet.g(i14);
                                if (identityArraySet.size() > 0) {
                                    if (i11 != i12) {
                                        int i17 = identityScopeMap.k()[i11];
                                        identityScopeMap.k()[i11] = i13;
                                        identityScopeMap.k()[i12] = i17;
                                    }
                                    i11++;
                                }
                            }
                            int iJ2 = identityScopeMap.j();
                            for (int i18 = i11; i18 < iJ2; i18++) {
                                identityScopeMap.l()[identityScopeMap.k()[i18]] = null;
                            }
                            identityScopeMap.p(i11);
                            s();
                            l0 l0Var2 = l0.INSTANCE;
                            Trace.INSTANCE.b(objA2);
                        } catch (Throwable th) {
                            Trace.INSTANCE.b(objA2);
                            throw th;
                        }
                    }
                    if (this.lateChanges.isEmpty()) {
                        rememberEventDispatcher.d();
                    }
                } catch (Throwable th2) {
                    slotWriterT.F();
                    throw th2;
                }
            } catch (Throwable th3) {
                Trace.INSTANCE.b(objA);
                throw th3;
            }
        } catch (Throwable th4) {
            if (this.lateChanges.isEmpty()) {
                rememberEventDispatcher.d();
            }
            throw th4;
        }
    }

    private final void s() {
        IdentityScopeMap<DerivedState<?>> identityScopeMap = this.derivedStates;
        int iJ = identityScopeMap.j();
        int i10 = 0;
        for (int i11 = 0; i11 < iJ; i11++) {
            int i12 = identityScopeMap.k()[i11];
            IdentityArraySet<DerivedState<?>> identityArraySet = identityScopeMap.i()[i12];
            t.g(identityArraySet);
            int size = identityArraySet.size();
            int i13 = 0;
            for (int i14 = 0; i14 < size; i14++) {
                Object obj = identityArraySet.e()[i14];
                if (obj == null) {
                    throw new NullPointerException("null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet");
                }
                if (!(!this.observations.e((DerivedState) obj))) {
                    if (i13 != i14) {
                        identityArraySet.e()[i13] = obj;
                    }
                    i13++;
                }
            }
            int size2 = identityArraySet.size();
            for (int i15 = i13; i15 < size2; i15++) {
                identityArraySet.e()[i15] = null;
            }
            identityArraySet.g(i13);
            if (identityArraySet.size() > 0) {
                if (i10 != i11) {
                    int i16 = identityScopeMap.k()[i10];
                    identityScopeMap.k()[i10] = i12;
                    identityScopeMap.k()[i11] = i16;
                }
                i10++;
            }
        }
        int iJ2 = identityScopeMap.j();
        for (int i17 = i10; i17 < iJ2; i17++) {
            identityScopeMap.l()[identityScopeMap.k()[i17]] = null;
        }
        identityScopeMap.p(i10);
        Iterator<RecomposeScopeImpl> it = this.conditionallyInvalidatedScopes.iterator();
        t.i(it, "iterator()");
        while (it.hasNext()) {
            if (!it.next().u()) {
                it.remove();
            }
        }
    }

    private final void x() {
        Object andSet = this.pendingModifications.getAndSet(CompositionKt.PendingApplyNoModifications);
        if (andSet != null) {
            if (t.e(andSet, CompositionKt.PendingApplyNoModifications)) {
                throw new IllegalStateException("pending composition has not been applied".toString());
            }
            if (andSet instanceof Set) {
                p((Set) andSet, true);
                return;
            }
            if (!(andSet instanceof Object[])) {
                throw new IllegalStateException(("corrupt pendingModifications drain: " + this.pendingModifications).toString());
            }
            for (Set<? extends Object> set : (Set[]) andSet) {
                p(set, true);
            }
        }
    }

    private final void y() {
        Object andSet = this.pendingModifications.getAndSet(null);
        if (t.e(andSet, CompositionKt.PendingApplyNoModifications)) {
            return;
        }
        if (andSet instanceof Set) {
            p((Set) andSet, false);
            return;
        }
        if (!(andSet instanceof Object[])) {
            if (andSet == null) {
                throw new IllegalStateException("calling recordModificationsOf and applyChanges concurrently is not supported".toString());
            }
            throw new IllegalStateException(("corrupt pendingModifications drain: " + this.pendingModifications).toString());
        }
        for (Set<? extends Object> set : (Set[]) andSet) {
            p(set, false);
        }
    }

    private final boolean z() {
        return this.composer.B0();
    }

    @NotNull
    public final g B() {
        g gVar = this._recomposeContext;
        return gVar == null ? this.parent.h() : gVar;
    }

    @NotNull
    public final InvalidationResult C(@NotNull RecomposeScopeImpl scope, @Nullable Object obj) {
        t.j(scope, "scope");
        if (scope.m()) {
            scope.C(true);
        }
        Anchor anchorJ = scope.j();
        if (anchorJ == null || !this.slotTable.u(anchorJ) || !anchorJ.b()) {
            return InvalidationResult.IGNORED;
        }
        if (anchorJ.b()) {
            return !scope.k() ? InvalidationResult.IGNORED : D(scope, anchorJ, obj);
        }
        return InvalidationResult.IGNORED;
    }

    public final void F(@NotNull DerivedState<?> state) {
        t.j(state, "state");
        if (this.observations.e(state)) {
            return;
        }
        this.derivedStates.n(state);
    }

    public final void G(@NotNull Object instance, @NotNull RecomposeScopeImpl scope) {
        t.j(instance, "instance");
        t.j(scope, "scope");
        this.observations.m(instance, scope);
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void a(@NotNull p<? super Composer, ? super Integer, l0> content) {
        t.j(content, "content");
        try {
            synchronized (this.lock) {
                x();
                this.composer.m0(I(), content);
                l0 l0Var = l0.INSTANCE;
            }
        } catch (Throwable th) {
            if (!this.abandonSet.isEmpty()) {
                new RememberEventDispatcher(this.abandonSet).d();
            }
            throw th;
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void b(@NotNull MovableContentState state) {
        t.j(state, "state");
        RememberEventDispatcher rememberEventDispatcher = new RememberEventDispatcher(this.abandonSet);
        SlotWriter slotWriterT = state.a().t();
        try {
            ComposerKt.U(slotWriterT, rememberEventDispatcher);
            l0 l0Var = l0.INSTANCE;
            slotWriterT.F();
            rememberEventDispatcher.e();
        } catch (Throwable th) {
            slotWriterT.F();
            throw th;
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public <R> R c(@Nullable ControlledComposition controlledComposition, int i10, @NotNull e8.a<? extends R> block) {
        t.j(block, "block");
        if (controlledComposition == null || t.e(controlledComposition, this) || i10 < 0) {
            return block.invoke();
        }
        this.invalidationDelegate = (CompositionImpl) controlledComposition;
        this.invalidationDelegateGroup = i10;
        try {
            return block.invoke();
        } finally {
            this.invalidationDelegate = null;
            this.invalidationDelegateGroup = 0;
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public boolean d(@NotNull Set<? extends Object> values) {
        t.j(values, "values");
        for (Object obj : values) {
            if (this.observations.e(obj) || this.derivedStates.e(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void e() {
        synchronized (this.lock) {
            try {
                this.composer.j0();
                if (!this.abandonSet.isEmpty()) {
                    new RememberEventDispatcher(this.abandonSet).d();
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void f() {
        synchronized (this.lock) {
            try {
                if (!this.lateChanges.isEmpty()) {
                    r(this.lateChanges);
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void g(@NotNull List<u<MovableContentStateReference, MovableContentStateReference>> references) {
        t.j(references, "references");
        int size = references.size();
        boolean z6 = false;
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                z6 = true;
                break;
            } else if (!t.e(references.get(i10).c().b(), this)) {
                break;
            } else {
                i10++;
            }
        }
        ComposerKt.X(z6);
        try {
            this.composer.G0(references);
            l0 l0Var = l0.INSTANCE;
        } catch (Throwable th) {
            if (!this.abandonSet.isEmpty()) {
                new RememberEventDispatcher(this.abandonSet).d();
            }
            throw th;
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public boolean h() {
        boolean zX0;
        synchronized (this.lock) {
            try {
                x();
                try {
                    zX0 = this.composer.X0(I());
                    if (!zX0) {
                        y();
                    }
                } catch (Throwable th) {
                    if (!this.abandonSet.isEmpty()) {
                        new RememberEventDispatcher(this.abandonSet).d();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zX0;
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void i(@NotNull e8.a<l0> block) {
        t.j(block, "block");
        this.composer.Q0(block);
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void j(@NotNull Object value) {
        RecomposeScopeImpl recomposeScopeImplD0;
        t.j(value, "value");
        if (z() || (recomposeScopeImplD0 = this.composer.D0()) == null) {
            return;
        }
        recomposeScopeImplD0.G(true);
        this.observations.c(value, recomposeScopeImplD0);
        if (value instanceof DerivedState) {
            this.derivedStates.n(value);
            Iterator<T> it = ((DerivedState) value).i().iterator();
            while (it.hasNext()) {
                this.derivedStates.c((StateObject) it.next(), value);
            }
        }
        recomposeScopeImplD0.w(value);
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void k(@NotNull Set<? extends Object> values) {
        Object obj;
        Object objW;
        t.j(values, "values");
        do {
            obj = this.pendingModifications.get();
            if (obj == null || t.e(obj, CompositionKt.PendingApplyNoModifications)) {
                objW = values;
            } else if (obj instanceof Set) {
                objW = new Set[]{(Set) obj, values};
            } else {
                if (!(obj instanceof Object[])) {
                    throw new IllegalStateException(("corrupt pendingModifications: " + this.pendingModifications).toString());
                }
                if (obj == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.collections.Set<kotlin.Any>>");
                }
                objW = o.w((Set[]) obj, values);
            }
        } while (!d.a(this.pendingModifications, obj, objW));
        if (obj == null) {
            synchronized (this.lock) {
                y();
                l0 l0Var = l0.INSTANCE;
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void l() {
        synchronized (this.lock) {
            r(this.changes);
            y();
            l0 l0Var = l0.INSTANCE;
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public boolean m() {
        return this.composer.M0();
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void n(@NotNull Object value) {
        t.j(value, "value");
        synchronized (this.lock) {
            try {
                E(value);
                IdentityScopeMap<DerivedState<?>> identityScopeMap = this.derivedStates;
                int iF = identityScopeMap.f(value);
                if (iF >= 0) {
                    Iterator<T> it = identityScopeMap.o(iF).iterator();
                    while (it.hasNext()) {
                        E((DerivedState) it.next());
                    }
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void o() {
        synchronized (this.lock) {
            try {
                for (Object obj : this.slotTable.j()) {
                    RecomposeScopeImpl recomposeScopeImpl = obj instanceof RecomposeScopeImpl ? (RecomposeScopeImpl) obj : null;
                    if (recomposeScopeImpl != null) {
                        recomposeScopeImpl.invalidate();
                    }
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.compose.runtime.Composition
    public void t() {
        synchronized (this.lock) {
            try {
                if (!this.disposed) {
                    this.disposed = true;
                    this.composable = ComposableSingletons$CompositionKt.INSTANCE.b();
                    boolean z6 = this.slotTable.g() > 0;
                    if (z6 || (true ^ this.abandonSet.isEmpty())) {
                        RememberEventDispatcher rememberEventDispatcher = new RememberEventDispatcher(this.abandonSet);
                        if (z6) {
                            SlotWriter slotWriterT = this.slotTable.t();
                            try {
                                ComposerKt.U(slotWriterT, rememberEventDispatcher);
                                l0 l0Var = l0.INSTANCE;
                                slotWriterT.F();
                                this.applier.clear();
                                rememberEventDispatcher.e();
                            } catch (Throwable th) {
                                slotWriterT.F();
                                throw th;
                            }
                        }
                        rememberEventDispatcher.d();
                    }
                    this.composer.r0();
                }
                l0 l0Var2 = l0.INSTANCE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.parent.q(this);
    }

    @Override // androidx.compose.runtime.Composition
    public void v(@NotNull p<? super Composer, ? super Integer, l0> content) {
        t.j(content, "content");
        if (!(!this.disposed)) {
            throw new IllegalStateException("The composition is disposed".toString());
        }
        this.composable = content;
        this.parent.a(this, content);
    }

    @Override // androidx.compose.runtime.Composition
    public boolean w() {
        boolean z6;
        synchronized (this.lock) {
            z6 = this.invalidations.f() > 0;
        }
        return z6;
    }

    public /* synthetic */ CompositionImpl(CompositionContext compositionContext, Applier applier, g gVar, int i10, k kVar) {
        this(compositionContext, applier, (i10 & 4) != 0 ? null : gVar);
    }
}
