package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.collection.IdentityArraySet;
import androidx.compose.runtime.collection.IdentityScopeMap;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.StabilityInferred;
import e8.l;
import e8.p;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
@StabilityInferred
public final class SnapshotStateObserver {
    public static final int $stable = 8;

    @NotNull
    private final MutableVector<ApplyMap<?>> applyMaps;

    @NotNull
    private final p<Set<? extends Object>, Snapshot, l0> applyObserver;

    @Nullable
    private ObserverHandle applyUnsubscribe;

    @Nullable
    private ApplyMap<?> currentMap;
    private boolean isPaused;

    @NotNull
    private final l<e8.a<l0>, l0> onChangedExecutor;

    @NotNull
    private final l<Object, l0> readObserver;

    /* JADX INFO: Access modifiers changed from: private */
    static final class ApplyMap<T> {

        @Nullable
        private T currentScope;

        @NotNull
        private final HashSet<Object> invalidated;

        @NotNull
        private final IdentityScopeMap<T> map;

        @NotNull
        private final l<T, l0> onChanged;

        @Nullable
        public final T c() {
            return this.currentScope;
        }

        @NotNull
        public final HashSet<Object> d() {
            return this.invalidated;
        }

        @NotNull
        public final IdentityScopeMap<T> e() {
            return this.map;
        }

        @NotNull
        public final l<T, l0> f() {
            return this.onChanged;
        }

        public final void g(@Nullable T t5) {
            this.currentScope = t5;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public ApplyMap(@NotNull l<? super T, l0> onChanged) {
            t.j(onChanged, "onChanged");
            this.onChanged = onChanged;
            this.map = new IdentityScopeMap<>();
            this.invalidated = new HashSet<>();
        }

        public final void a(@NotNull Object value) {
            t.j(value, "value");
            IdentityScopeMap<T> identityScopeMap = this.map;
            T t5 = this.currentScope;
            t.g(t5);
            identityScopeMap.c(value, t5);
        }

        public final void b(@NotNull Collection<? extends Object> scopes) {
            t.j(scopes, "scopes");
            Iterator<T> it = scopes.iterator();
            while (it.hasNext()) {
                this.onChanged.invoke(it.next());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SnapshotStateObserver(@NotNull l<? super e8.a<l0>, l0> onChangedExecutor) {
        t.j(onChangedExecutor, "onChangedExecutor");
        this.onChangedExecutor = onChangedExecutor;
        this.applyObserver = new SnapshotStateObserver$applyObserver$1(this);
        this.readObserver = new SnapshotStateObserver$readObserver$1(this);
        this.applyMaps = new MutableVector<>(new ApplyMap[16], 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        MutableVector<ApplyMap<?>> mutableVector = this.applyMaps;
        int iN = mutableVector.n();
        if (iN > 0) {
            ApplyMap<?>[] applyMapArrM = mutableVector.m();
            int i10 = 0;
            do {
                ApplyMap<?> applyMap = applyMapArrM[i10];
                HashSet<Object> hashSetD = applyMap.d();
                if (!hashSetD.isEmpty()) {
                    applyMap.b(hashSetD);
                    hashSetD.clear();
                }
                i10++;
            } while (i10 < iN);
        }
    }

    private final <T> ApplyMap<T> j(l<? super T, l0> lVar) {
        int i10;
        MutableVector<ApplyMap<?>> mutableVector = this.applyMaps;
        int iN = mutableVector.n();
        if (iN <= 0) {
            i10 = -1;
            break;
        }
        ApplyMap[] applyMapArrM = mutableVector.m();
        i10 = 0;
        while (applyMapArrM[i10].f() != lVar) {
            i10++;
            if (i10 >= iN) {
                i10 = -1;
                break;
            }
        }
        if (i10 != -1) {
            return (ApplyMap) this.applyMaps.m()[i10];
        }
        ApplyMap<T> applyMap = new ApplyMap<>(lVar);
        this.applyMaps.b(applyMap);
        return applyMap;
    }

    public final void g() {
        synchronized (this.applyMaps) {
            try {
                MutableVector<ApplyMap<?>> mutableVector = this.applyMaps;
                int iN = mutableVector.n();
                if (iN > 0) {
                    ApplyMap<?>[] applyMapArrM = mutableVector.m();
                    int i10 = 0;
                    do {
                        applyMapArrM[i10].e().d();
                        i10++;
                    } while (i10 < iN);
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h(@NotNull Object scope) {
        t.j(scope, "scope");
        synchronized (this.applyMaps) {
            try {
                MutableVector<ApplyMap<?>> mutableVector = this.applyMaps;
                int iN = mutableVector.n();
                if (iN > 0) {
                    ApplyMap<?>[] applyMapArrM = mutableVector.m();
                    int i10 = 0;
                    do {
                        IdentityScopeMap<?> identityScopeMapE = applyMapArrM[i10].e();
                        int iJ = identityScopeMapE.j();
                        int i11 = 0;
                        for (int i12 = 0; i12 < iJ; i12++) {
                            int i13 = identityScopeMapE.k()[i12];
                            IdentityArraySet<?> identityArraySet = identityScopeMapE.i()[i13];
                            t.g(identityArraySet);
                            int size = identityArraySet.size();
                            int i14 = 0;
                            for (int i15 = 0; i15 < size; i15++) {
                                Object obj = identityArraySet.e()[i15];
                                if (obj == null) {
                                    throw new NullPointerException("null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet");
                                }
                                if (obj != scope) {
                                    if (i14 != i15) {
                                        identityArraySet.e()[i14] = obj;
                                    }
                                    i14++;
                                }
                            }
                            int size2 = identityArraySet.size();
                            for (int i16 = i14; i16 < size2; i16++) {
                                identityArraySet.e()[i16] = null;
                            }
                            identityArraySet.g(i14);
                            if (identityArraySet.size() > 0) {
                                if (i11 != i12) {
                                    int i17 = identityScopeMapE.k()[i11];
                                    identityScopeMapE.k()[i11] = i13;
                                    identityScopeMapE.k()[i12] = i17;
                                }
                                i11++;
                            }
                        }
                        int iJ2 = identityScopeMapE.j();
                        for (int i18 = i11; i18 < iJ2; i18++) {
                            identityScopeMapE.l()[identityScopeMapE.k()[i18]] = null;
                        }
                        identityScopeMapE.p(i11);
                        i10++;
                    } while (i10 < iN);
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void i(@NotNull l<Object, Boolean> predicate) {
        t.j(predicate, "predicate");
        synchronized (this.applyMaps) {
            try {
                MutableVector<ApplyMap<?>> mutableVector = this.applyMaps;
                int iN = mutableVector.n();
                if (iN > 0) {
                    ApplyMap<?>[] applyMapArrM = mutableVector.m();
                    int i10 = 0;
                    do {
                        IdentityScopeMap<?> identityScopeMapE = applyMapArrM[i10].e();
                        int iJ = identityScopeMapE.j();
                        int i11 = 0;
                        for (int i12 = 0; i12 < iJ; i12++) {
                            int i13 = identityScopeMapE.k()[i12];
                            IdentityArraySet<?> identityArraySet = identityScopeMapE.i()[i13];
                            t.g(identityArraySet);
                            int size = identityArraySet.size();
                            int i14 = 0;
                            for (int i15 = 0; i15 < size; i15++) {
                                Object obj = identityArraySet.e()[i15];
                                if (obj == null) {
                                    throw new NullPointerException("null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet");
                                }
                                if (!predicate.invoke(obj).booleanValue()) {
                                    if (i14 != i15) {
                                        identityArraySet.e()[i14] = obj;
                                    }
                                    i14++;
                                }
                            }
                            int size2 = identityArraySet.size();
                            for (int i16 = i14; i16 < size2; i16++) {
                                identityArraySet.e()[i16] = null;
                            }
                            identityArraySet.g(i14);
                            if (identityArraySet.size() > 0) {
                                if (i11 != i12) {
                                    int i17 = identityScopeMapE.k()[i11];
                                    identityScopeMapE.k()[i11] = i13;
                                    identityScopeMapE.k()[i12] = i17;
                                }
                                i11++;
                            }
                        }
                        int iJ2 = identityScopeMapE.j();
                        for (int i18 = i11; i18 < iJ2; i18++) {
                            identityScopeMapE.l()[identityScopeMapE.k()[i18]] = null;
                        }
                        identityScopeMapE.p(i11);
                        i10++;
                    } while (i10 < iN);
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final <T> void k(@NotNull T scope, @NotNull l<? super T, l0> onValueChangedForScope, @NotNull e8.a<l0> block) {
        ApplyMap<?> applyMapJ;
        t.j(scope, "scope");
        t.j(onValueChangedForScope, "onValueChangedForScope");
        t.j(block, "block");
        ApplyMap<?> applyMap = this.currentMap;
        boolean z6 = this.isPaused;
        synchronized (this.applyMaps) {
            applyMapJ = j(onValueChangedForScope);
            applyMapJ.e().n(scope);
        }
        Object objC = applyMapJ.c();
        applyMapJ.g(scope);
        this.currentMap = applyMapJ;
        this.isPaused = false;
        Snapshot.Companion.d(this.readObserver, null, block);
        this.currentMap = applyMap;
        applyMapJ.g(objC);
        this.isPaused = z6;
    }

    public final void l() {
        this.applyUnsubscribe = Snapshot.Companion.e(this.applyObserver);
    }

    public final void m() {
        ObserverHandle observerHandle = this.applyUnsubscribe;
        if (observerHandle != null) {
            observerHandle.t();
        }
    }
}
