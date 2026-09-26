package androidx.compose.runtime;

import androidx.compose.runtime.collection.IdentityArrayMap;
import androidx.compose.runtime.collection.IdentityArraySet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.ListUtilsKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import e8.l;
import e8.p;
import e8.q;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.collections.o;
import kotlin.collections.v;
import kotlin.collections.z;
import kotlin.coroutines.g;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.i;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes.dex */
public final class ComposerImpl implements Composer {

    @NotNull
    private final Set<RememberObserver> abandonSet;

    @NotNull
    private final Applier<?> applier;

    @NotNull
    private List<q<Applier<?>, SlotWriter, RememberManager, l0>> changes;
    private int childrenComposing;

    @NotNull
    private final ControlledComposition composition;
    private int compositionToken;
    private int compoundKeyHash;

    @NotNull
    private Stack<Object> downNodes;

    @NotNull
    private final IntStack entersStack;
    private boolean forceRecomposeScopes;
    private boolean forciblyRecompose;
    private int groupNodeCount;

    @NotNull
    private IntStack groupNodeCountStack;
    private boolean implicitRootStart;

    @NotNull
    private Anchor insertAnchor;

    @NotNull
    private final List<q<Applier<?>, SlotWriter, RememberManager, l0>> insertFixups;

    @NotNull
    private SlotTable insertTable;

    @NotNull
    private final Stack<q<Applier<?>, SlotWriter, RememberManager, l0>> insertUpFixups;
    private boolean inserting;

    @NotNull
    private final Stack<RecomposeScopeImpl> invalidateStack;

    @NotNull
    private final List<Invalidation> invalidations;
    private boolean isComposing;
    private boolean isDisposed;

    @NotNull
    private List<q<Applier<?>, SlotWriter, RememberManager, l0>> lateChanges;

    @Nullable
    private int[] nodeCountOverrides;

    @Nullable
    private HashMap<Integer, Integer> nodeCountVirtualOverrides;
    private boolean nodeExpected;
    private int nodeIndex;

    @NotNull
    private IntStack nodeIndexStack;

    @NotNull
    private final CompositionContext parentContext;

    @NotNull
    private PersistentMap<CompositionLocal<Object>, ? extends State<? extends Object>> parentProvider;

    @Nullable
    private Pending pending;

    @NotNull
    private final Stack<Pending> pendingStack;
    private int pendingUps;
    private int previousCount;
    private int previousMoveFrom;
    private int previousMoveTo;
    private int previousRemove;

    @Nullable
    private PersistentMap<CompositionLocal<Object>, ? extends State<? extends Object>> providerCache;

    @NotNull
    private final HashMap<Integer, PersistentMap<CompositionLocal<Object>, State<Object>>> providerUpdates;
    private boolean providersInvalid;

    @NotNull
    private final IntStack providersInvalidStack;

    @NotNull
    private SlotReader reader;
    private boolean reusing;
    private int reusingGroup;

    @NotNull
    private final SlotTable slotTable;

    @NotNull
    private Snapshot snapshot;
    private boolean startedGroup;

    @NotNull
    private final IntStack startedGroups;

    @NotNull
    private SlotWriter writer;
    private boolean writerHasAProvider;
    private int writersReaderDelta;

    private static final class CompositionContextHolder implements RememberObserver {

        @NotNull
        private final CompositionContextImpl ref;

        @NotNull
        public final CompositionContextImpl a() {
            return this.ref;
        }

        @Override // androidx.compose.runtime.RememberObserver
        public void b() {
        }

        public CompositionContextHolder(@NotNull CompositionContextImpl ref) {
            t.j(ref, "ref");
            this.ref = ref;
        }

        @Override // androidx.compose.runtime.RememberObserver
        public void c() {
            this.ref.r();
        }

        @Override // androidx.compose.runtime.RememberObserver
        public void d() {
            this.ref.r();
        }
    }

    private final class CompositionContextImpl extends CompositionContext {
        private final boolean collectingParameterInformation;

        @NotNull
        private final Set<ComposerImpl> composers = new LinkedHashSet();

        @NotNull
        private final MutableState compositionLocalScope$delegate = SnapshotStateKt__SnapshotStateKt.e(ExtensionsKt.a(), null, 2, null);
        private final int compoundHashKey;

        @Nullable
        private Set<Set<CompositionData>> inspectionTables;

        @Override // androidx.compose.runtime.CompositionContext
        public boolean d() {
            return this.collectingParameterInformation;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public int f() {
            return this.compoundHashKey;
        }

        public CompositionContextImpl(int i10, boolean z6) {
            this.compoundHashKey = i10;
            this.collectingParameterInformation = z6;
        }

        private final PersistentMap<CompositionLocal<Object>, State<Object>> s() {
            return (PersistentMap) this.compositionLocalScope$delegate.getValue();
        }

        private final void t(PersistentMap<CompositionLocal<Object>, ? extends State<? extends Object>> persistentMap) {
            this.compositionLocalScope$delegate.setValue(persistentMap);
        }

        @Override // androidx.compose.runtime.CompositionContext
        @ComposableInferredTarget
        public void a(@NotNull ControlledComposition composition, @NotNull p<? super Composer, ? super Integer, l0> content) {
            t.j(composition, "composition");
            t.j(content, "content");
            ComposerImpl.this.parentContext.a(composition, content);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void b(@NotNull MovableContentStateReference reference) {
            t.j(reference, "reference");
            ComposerImpl.this.parentContext.b(reference);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void c() {
            ComposerImpl.this.childrenComposing--;
        }

        @Override // androidx.compose.runtime.CompositionContext
        @NotNull
        public g g() {
            return ComposerImpl.this.parentContext.g();
        }

        @Override // androidx.compose.runtime.CompositionContext
        @NotNull
        public g h() {
            return CompositionKt.e(ComposerImpl.this.C0());
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void i(@NotNull MovableContentStateReference reference) {
            t.j(reference, "reference");
            ComposerImpl.this.parentContext.i(reference);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void j(@NotNull ControlledComposition composition) {
            t.j(composition, "composition");
            ComposerImpl.this.parentContext.j(ComposerImpl.this.C0());
            ComposerImpl.this.parentContext.j(composition);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void k(@NotNull MovableContentStateReference reference, @NotNull MovableContentState data) {
            t.j(reference, "reference");
            t.j(data, "data");
            ComposerImpl.this.parentContext.k(reference, data);
        }

        @Override // androidx.compose.runtime.CompositionContext
        @Nullable
        public MovableContentState l(@NotNull MovableContentStateReference reference) {
            t.j(reference, "reference");
            return ComposerImpl.this.parentContext.l(reference);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void m(@NotNull Set<CompositionData> table) {
            t.j(table, "table");
            Set hashSet = this.inspectionTables;
            if (hashSet == null) {
                hashSet = new HashSet();
                this.inspectionTables = hashSet;
            }
            hashSet.add(table);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void n(@NotNull Composer composer) {
            t.j(composer, "composer");
            super.n((ComposerImpl) composer);
            this.composers.add(composer);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void o() {
            ComposerImpl.this.childrenComposing++;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void p(@NotNull Composer composer) {
            t.j(composer, "composer");
            Set<Set<CompositionData>> set = this.inspectionTables;
            if (set != null) {
                Iterator<T> it = set.iterator();
                while (it.hasNext()) {
                    ((Set) it.next()).remove(((ComposerImpl) composer).slotTable);
                }
            }
            v0.a(this.composers).remove(composer);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void q(@NotNull ControlledComposition composition) {
            t.j(composition, "composition");
            ComposerImpl.this.parentContext.q(composition);
        }

        public final void r() {
            if (!this.composers.isEmpty()) {
                Set<Set<CompositionData>> set = this.inspectionTables;
                if (set != null) {
                    for (ComposerImpl composerImpl : this.composers) {
                        Iterator<Set<CompositionData>> it = set.iterator();
                        while (it.hasNext()) {
                            it.next().remove(composerImpl.slotTable);
                        }
                    }
                }
                this.composers.clear();
            }
        }

        public final void u(@NotNull PersistentMap<CompositionLocal<Object>, ? extends State<? extends Object>> scope) {
            t.j(scope, "scope");
            t(scope);
        }

        @Override // androidx.compose.runtime.CompositionContext
        @NotNull
        public PersistentMap<CompositionLocal<Object>, State<Object>> e() {
            return s();
        }
    }

    private final void B1(int i10) {
        A1(i10, null, false, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C1(int i10, Object obj) {
        A1(i10, obj, false, null);
    }

    private final int K0(int i10) {
        return (-2) - i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L0(MovableContent<Object> movableContent, PersistentMap<CompositionLocal<Object>, ? extends State<? extends Object>> persistentMap, Object obj, boolean z6) {
        K(MovableContentKt.movableContentKey, movableContent);
        k(obj);
        int iO = O();
        this.compoundKeyHash = MovableContentKt.movableContentKey;
        if (r()) {
            SlotWriter.m0(this.writer, 0, 1, null);
        }
        boolean z10 = (r() || t.e(this.reader.l(), persistentMap)) ? false : true;
        if (z10) {
            this.providerUpdates.put(Integer.valueOf(this.reader.k()), persistentMap);
        }
        A1(202, ComposerKt.F(), false, persistentMap);
        if (!r() || z6) {
            boolean z11 = this.providersInvalid;
            this.providersInvalid = z10;
            ActualJvm_jvmKt.b(this, ComposableLambdaKt.c(1378964644, true, new ComposerImpl$invokeMovableContentLambda$1(movableContent, obj)));
            this.providersInvalid = z11;
        } else {
            this.writerHasAProvider = true;
            this.providerCache = null;
            SlotWriter slotWriter = this.writer;
            this.parentContext.i(new MovableContentStateReference(movableContent, obj, C0(), this.insertTable, slotWriter.A(slotWriter.y0(slotWriter.V())), v.m(), q0(this, null, 1, null)));
        }
        v0();
        this.compoundKeyHash = iO;
        P();
    }

    private final void k0() {
        this.pending = null;
        this.nodeIndex = 0;
        this.groupNodeCount = 0;
        this.writersReaderDelta = 0;
        this.compoundKeyHash = 0;
        this.nodeExpected = false;
        this.startedGroup = false;
        this.startedGroups.a();
        this.invalidateStack.a();
        l0();
    }

    private final void l0() {
        this.nodeCountOverrides = null;
        this.nodeCountVirtualOverrides = null;
    }

    private final void o1(q<? super Applier<?>, ? super SlotWriter, ? super RememberManager, l0> qVar) {
        V0(this, false, 1, null);
        n1();
        b1(qVar);
    }

    private final void u1(int i10) {
        v1(this, i10, false, 0);
        T0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v0() {
        u0(false);
    }

    public final boolean B0() {
        return this.childrenComposing > 0;
    }

    @NotNull
    public ControlledComposition C0() {
        return this.composition;
    }

    @Override // androidx.compose.runtime.Composer
    public void D() {
        this.forceRecomposeScopes = true;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void G(int i10) {
        A1(i10, null, false, null);
    }

    @Override // androidx.compose.runtime.Composer
    @NotNull
    public CompositionData I() {
        return this.slotTable;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void J() {
        A1(-127, null, false, null);
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void K(int i10, @Nullable Object obj) {
        A1(i10, obj, false, null);
    }

    @Override // androidx.compose.runtime.Composer
    public void L() {
        this.reusing = false;
    }

    public final boolean M0() {
        return this.isComposing;
    }

    @Override // androidx.compose.runtime.Composer
    public int O() {
        return this.compoundKeyHash;
    }

    @Override // androidx.compose.runtime.Composer
    public void d() {
        u0(true);
    }

    @Override // androidx.compose.runtime.Composer
    public void o() {
        this.reusing = this.reusingGroup >= 0;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean r() {
        return this.inserting;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    @NotNull
    public Composer s(int i10) {
        A1(i10, null, false, null);
        i0();
        return this;
    }

    @Override // androidx.compose.runtime.Composer
    @NotNull
    public Applier<?> t() {
        return this.applier;
    }

    public ComposerImpl(@NotNull Applier<?> applier, @NotNull CompositionContext parentContext, @NotNull SlotTable slotTable, @NotNull Set<RememberObserver> abandonSet, @NotNull List<q<Applier<?>, SlotWriter, RememberManager, l0>> changes, @NotNull List<q<Applier<?>, SlotWriter, RememberManager, l0>> lateChanges, @NotNull ControlledComposition composition) {
        t.j(applier, "applier");
        t.j(parentContext, "parentContext");
        t.j(slotTable, "slotTable");
        t.j(abandonSet, "abandonSet");
        t.j(changes, "changes");
        t.j(lateChanges, "lateChanges");
        t.j(composition, "composition");
        this.applier = applier;
        this.parentContext = parentContext;
        this.slotTable = slotTable;
        this.abandonSet = abandonSet;
        this.changes = changes;
        this.lateChanges = lateChanges;
        this.composition = composition;
        this.pendingStack = new Stack<>();
        this.nodeIndexStack = new IntStack();
        this.groupNodeCountStack = new IntStack();
        this.invalidations = new ArrayList();
        this.entersStack = new IntStack();
        this.parentProvider = ExtensionsKt.a();
        this.providerUpdates = new HashMap<>();
        this.providersInvalidStack = new IntStack();
        this.reusingGroup = -1;
        this.snapshot = SnapshotKt.B();
        this.invalidateStack = new Stack<>();
        SlotReader slotReaderS = slotTable.s();
        slotReaderS.d();
        this.reader = slotReaderS;
        SlotTable slotTable2 = new SlotTable();
        this.insertTable = slotTable2;
        SlotWriter slotWriterT = slotTable2.t();
        slotWriterT.F();
        this.writer = slotWriterT;
        SlotReader slotReaderS2 = this.insertTable.s();
        try {
            Anchor anchorA = slotReaderS2.a(0);
            slotReaderS2.d();
            this.insertAnchor = anchorA;
            this.insertFixups = new ArrayList();
            this.downNodes = new Stack<>();
            this.implicitRootStart = true;
            this.startedGroups = new IntStack();
            this.insertUpFixups = new Stack<>();
            this.previousRemove = -1;
            this.previousMoveFrom = -1;
            this.previousMoveTo = -1;
        } catch (Throwable th) {
            slotReaderS2.d();
            throw th;
        }
    }

    private final void D1(boolean z6, Object obj) {
        if (z6) {
            this.reader.S();
            return;
        }
        if (obj != null && this.reader.l() != obj) {
            q1(this, false, new ComposerImpl$startReaderGroup$1(obj), 1, null);
        }
        this.reader.R();
    }

    private final void E1() {
        this.reader = this.slotTable.s();
        B1(100);
        this.parentContext.o();
        this.parentProvider = this.parentContext.e();
        this.providersInvalidStack.i(ComposerKt.u(this.providersInvalid));
        this.providersInvalid = k(this.parentProvider);
        this.providerCache = null;
        if (!this.forceRecomposeScopes) {
            this.forceRecomposeScopes = this.parentContext.d();
        }
        Set<CompositionData> set = (Set) w1(InspectionTablesKt.a(), this.parentProvider);
        if (set != null) {
            set.add(this.slotTable);
            this.parentContext.m(set);
        }
        B1(this.parentContext.f());
    }

    private final void G1(int i10, Object obj, Object obj2) {
        if (obj != null) {
            if (obj instanceof Enum) {
                H1(((Enum) obj).ordinal());
                return;
            } else {
                H1(obj.hashCode());
                return;
            }
        }
        if (obj2 == null || i10 != 207 || t.e(obj2, Composer.Companion.a())) {
            H1(i10);
        } else {
            H1(obj2.hashCode());
        }
    }

    private final void I1(int i10, Object obj, Object obj2) {
        if (obj != null) {
            if (obj instanceof Enum) {
                J1(((Enum) obj).ordinal());
                return;
            } else {
                J1(obj.hashCode());
                return;
            }
        }
        if (obj2 == null || i10 != 207 || t.e(obj2, Composer.Companion.a())) {
            J1(i10);
        } else {
            J1(obj2.hashCode());
        }
    }

    private final int O1(int i10) {
        int i11;
        Integer num;
        if (i10 >= 0) {
            int[] iArr = this.nodeCountOverrides;
            return (iArr == null || (i11 = iArr[i10]) < 0) ? this.reader.K(i10) : i11;
        }
        HashMap<Integer, Integer> map = this.nodeCountVirtualOverrides;
        if (map == null || (num = map.get(Integer.valueOf(i10))) == null) {
            return 0;
        }
        return num.intValue();
    }

    private final int P0(int i10, int i11, int i12, int i13) {
        int iM = this.reader.M(i11);
        while (iM != i12 && !this.reader.G(iM)) {
            iM = this.reader.M(iM);
        }
        if (this.reader.G(iM)) {
            i13 = 0;
        }
        if (iM == i11) {
            return i13;
        }
        int iO1 = (O1(iM) - this.reader.K(i11)) + i13;
        loop1: while (i13 < iO1 && iM != i10) {
            iM++;
            while (iM < i10) {
                int iB = this.reader.B(iM) + iM;
                if (i10 >= iB) {
                    i13 += O1(iM);
                    iM = iB;
                }
            }
            break loop1;
        }
        return i13;
    }

    private final void P1() {
        if (this.nodeExpected) {
            this.nodeExpected = false;
        } else {
            ComposerKt.x("A call to createNode(), emitNode() or useNode() expected was not expected".toString());
            throw new i();
        }
    }

    private final void Q1() {
        if (!this.nodeExpected) {
            return;
        }
        ComposerKt.x("A call to createNode(), emitNode() or useNode() expected".toString());
        throw new i();
    }

    private final void R0() {
        if (this.downNodes.d()) {
            S0(this.downNodes.i());
            this.downNodes.a();
        }
    }

    private final void S0(Object[] objArr) {
        b1(new ComposerImpl$realizeDowns$1(objArr));
    }

    private final void T0() {
        int i10 = this.previousCount;
        this.previousCount = 0;
        if (i10 > 0) {
            int i11 = this.previousRemove;
            if (i11 >= 0) {
                this.previousRemove = -1;
                c1(new ComposerImpl$realizeMovement$1(i11, i10));
                return;
            }
            int i12 = this.previousMoveFrom;
            this.previousMoveFrom = -1;
            int i13 = this.previousMoveTo;
            this.previousMoveTo = -1;
            c1(new ComposerImpl$realizeMovement$2(i12, i13, i10));
        }
    }

    private final void U0(boolean z6) {
        int iS = z6 ? this.reader.s() : this.reader.k();
        int i10 = iS - this.writersReaderDelta;
        if (!(i10 >= 0)) {
            ComposerKt.x("Tried to seek backward".toString());
            throw new i();
        }
        if (i10 > 0) {
            b1(new ComposerImpl$realizeOperationLocation$2(i10));
            this.writersReaderDelta = iS;
        }
    }

    static /* synthetic */ void V0(ComposerImpl composerImpl, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        composerImpl.U0(z6);
    }

    private final void W0() {
        int i10 = this.pendingUps;
        if (i10 > 0) {
            this.pendingUps = 0;
            b1(new ComposerImpl$realizeUps$1(i10));
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0053 A[Catch: all -> 0x003a, TRY_LEAVE, TryCatch #0 {all -> 0x003a, blocks: (B:3:0x0007, B:5:0x0014, B:7:0x0028, B:8:0x002c, B:10:0x0032, B:14:0x0040, B:13:0x003c, B:17:0x0047, B:19:0x004d, B:21:0x0053), top: B:26:0x0007 }] */
    private final <R> R Y0(ControlledComposition controlledComposition, ControlledComposition controlledComposition2, Integer num, List<u<RecomposeScopeImpl, IdentityArraySet<Object>>> list, e8.a<? extends R> aVar) {
        R rInvoke;
        boolean z6 = this.implicitRootStart;
        boolean z10 = this.isComposing;
        int i10 = this.nodeIndex;
        try {
            this.implicitRootStart = false;
            this.isComposing = true;
            this.nodeIndex = 0;
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                u<RecomposeScopeImpl, IdentityArraySet<Object>> uVar = list.get(i11);
                RecomposeScopeImpl recomposeScopeImplA = uVar.a();
                IdentityArraySet<Object> identityArraySetB = uVar.b();
                if (identityArraySetB != null) {
                    Iterator<Object> it = identityArraySetB.iterator();
                    while (it.hasNext()) {
                        F1(recomposeScopeImplA, it.next());
                    }
                } else {
                    F1(recomposeScopeImplA, null);
                }
            }
            if (controlledComposition == null) {
                rInvoke = aVar.invoke();
            } else {
                rInvoke = (R) controlledComposition.c(controlledComposition2, num != null ? num.intValue() : -1, aVar);
                if (rInvoke == null) {
                    rInvoke = aVar.invoke();
                }
            }
            return rInvoke;
        } finally {
            this.implicitRootStart = z6;
            this.isComposing = z10;
            this.nodeIndex = i10;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Object Z0(ComposerImpl composerImpl, ControlledComposition controlledComposition, ControlledComposition controlledComposition2, Integer num, List list, e8.a aVar, int i10, Object obj) {
        ControlledComposition controlledComposition3 = (i10 & 1) != 0 ? null : controlledComposition;
        ControlledComposition controlledComposition4 = (i10 & 2) != 0 ? null : controlledComposition2;
        Integer num2 = (i10 & 4) != 0 ? null : num;
        if ((i10 & 8) != 0) {
            list = v.m();
        }
        return composerImpl.Y0(controlledComposition3, controlledComposition4, num2, list, aVar);
    }

    private final void a1() {
        boolean z6 = this.isComposing;
        this.isComposing = true;
        int iS = this.reader.s();
        int iB = this.reader.B(iS) + iS;
        int i10 = this.nodeIndex;
        int iO = O();
        int i11 = this.groupNodeCount;
        Invalidation invalidationE = ComposerKt.E(this.invalidations, this.reader.k(), iB);
        boolean z10 = false;
        int i12 = iS;
        while (invalidationE != null) {
            int iB2 = invalidationE.b();
            ComposerKt.V(this.invalidations, iB2);
            if (invalidationE.d()) {
                this.reader.N(iB2);
                int iK = this.reader.k();
                s1(i12, iK, iS);
                this.nodeIndex = P0(iB2, iK, iS, i10);
                this.compoundKeyHash = n0(this.reader.M(iK), iS, iO);
                this.providerCache = null;
                invalidationE.c().h(this);
                this.providerCache = null;
                this.reader.O(iS);
                i12 = iK;
                z10 = true;
            } else {
                this.invalidateStack.h(invalidationE.c());
                invalidationE.c().y();
                this.invalidateStack.g();
            }
            invalidationE = ComposerKt.E(this.invalidations, this.reader.k(), iB);
        }
        if (z10) {
            s1(i12, iS, iS);
            this.reader.Q();
            int iO1 = O1(iS);
            this.nodeIndex = i10 + iO1;
            this.groupNodeCount = i11 + iO1;
        } else {
            z1();
        }
        this.compoundKeyHash = iO;
        this.isComposing = z6;
    }

    private final void b1(q<? super Applier<?>, ? super SlotWriter, ? super RememberManager, l0> qVar) {
        this.changes.add(qVar);
    }

    private final void d1() {
        u1(this.reader.k());
        o1(ComposerKt.removeCurrentGroupInstance);
        this.writersReaderDelta += this.reader.p();
    }

    private final void e1(Object obj) {
        this.downNodes.h(obj);
    }

    private final void f1() {
        int iS = this.reader.s();
        if (!(this.startedGroups.g(-1) <= iS)) {
            ComposerKt.x("Missed recording an endGroup".toString());
            throw new i();
        }
        if (this.startedGroups.g(-1) == iS) {
            this.startedGroups.h();
            q1(this, false, ComposerKt.endGroupInstance, 1, null);
        }
    }

    private final void g1() {
        if (this.startedGroup) {
            q1(this, false, ComposerKt.endGroupInstance, 1, null);
            this.startedGroup = false;
        }
    }

    private final void h1(q<? super Applier<?>, ? super SlotWriter, ? super RememberManager, l0> qVar) {
        this.insertFixups.add(qVar);
    }

    private final void i1(Anchor anchor) {
        if (this.insertFixups.isEmpty()) {
            o1(new ComposerImpl$recordInsert$1(this.insertTable, anchor));
            return;
        }
        List listW0 = d0.W0(this.insertFixups);
        this.insertFixups.clear();
        W0();
        R0();
        o1(new ComposerImpl$recordInsert$2(this.insertTable, anchor, listW0));
    }

    private final void j1(q<? super Applier<?>, ? super SlotWriter, ? super RememberManager, l0> qVar) {
        this.insertUpFixups.h(qVar);
    }

    private final void k1(int i10, int i11, int i12) {
        if (i12 > 0) {
            int i13 = this.previousCount;
            if (i13 > 0 && this.previousMoveFrom == i10 - i13 && this.previousMoveTo == i11 - i13) {
                this.previousCount = i13 + i12;
                return;
            }
            T0();
            this.previousMoveFrom = i10;
            this.previousMoveTo = i11;
            this.previousCount = i12;
        }
    }

    private final void l1(int i10) {
        this.writersReaderDelta = i10 - (this.reader.k() - this.writersReaderDelta);
    }

    private final void m1(int i10, int i11) {
        if (i11 > 0) {
            if (!(i10 >= 0)) {
                ComposerKt.x(("Invalid remove index " + i10).toString());
                throw new i();
            }
            if (this.previousRemove == i10) {
                this.previousCount += i11;
                return;
            }
            T0();
            this.previousRemove = i10;
            this.previousCount = i11;
        }
    }

    private final int n0(int i10, int i11, int i12) {
        if (i10 == i11) {
            return i12;
        }
        int iF0 = F0(this.reader, i10);
        return iF0 == 126665345 ? iF0 : Integer.rotateLeft(n0(this.reader.M(i10), i11, i12), 3) ^ iF0;
    }

    private final void n1() {
        SlotReader slotReader;
        int iS;
        if (this.reader.u() <= 0 || this.startedGroups.g(-1) == (iS = (slotReader = this.reader).s())) {
            return;
        }
        if (!this.startedGroup && this.implicitRootStart) {
            q1(this, false, ComposerKt.startRootGroup, 1, null);
            this.startedGroup = true;
        }
        Anchor anchorA = slotReader.a(iS);
        this.startedGroups.i(iS);
        q1(this, false, new ComposerImpl$recordSlotEditing$1(anchorA), 1, null);
    }

    private final void o0() {
        ComposerKt.X(this.writer.T());
        SlotTable slotTable = new SlotTable();
        this.insertTable = slotTable;
        SlotWriter slotWriterT = slotTable.t();
        slotWriterT.F();
        this.writer = slotWriterT;
    }

    private final PersistentMap<CompositionLocal<Object>, State<Object>> p0(Integer num) {
        PersistentMap persistentMap;
        if (num == null && (persistentMap = this.providerCache) != null) {
            return persistentMap;
        }
        if (r() && this.writerHasAProvider) {
            int iV = this.writer.V();
            while (iV > 0) {
                if (this.writer.a0(iV) == 202 && t.e(this.writer.b0(iV), ComposerKt.F())) {
                    Object objY = this.writer.Y(iV);
                    if (objY == null) {
                        throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<androidx.compose.runtime.CompositionLocal<kotlin.Any?>, androidx.compose.runtime.State<kotlin.Any?>>{ androidx.compose.runtime.ComposerKt.CompositionLocalMap }");
                    }
                    PersistentMap<CompositionLocal<Object>, State<Object>> persistentMap2 = (PersistentMap) objY;
                    this.providerCache = persistentMap2;
                    return persistentMap2;
                }
                iV = this.writer.y0(iV);
            }
        }
        if (this.reader.u() > 0) {
            int iIntValue = num != null ? num.intValue() : this.reader.s();
            while (iIntValue > 0) {
                if (this.reader.z(iIntValue) == 202 && t.e(this.reader.A(iIntValue), ComposerKt.F())) {
                    PersistentMap<CompositionLocal<Object>, State<Object>> persistentMap3 = this.providerUpdates.get(Integer.valueOf(iIntValue));
                    if (persistentMap3 == null) {
                        Object objW = this.reader.w(iIntValue);
                        if (objW == null) {
                            throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<androidx.compose.runtime.CompositionLocal<kotlin.Any?>, androidx.compose.runtime.State<kotlin.Any?>>{ androidx.compose.runtime.ComposerKt.CompositionLocalMap }");
                        }
                        persistentMap3 = (PersistentMap) objW;
                    }
                    this.providerCache = persistentMap3;
                    return persistentMap3;
                }
                iIntValue = this.reader.M(iIntValue);
            }
        }
        PersistentMap persistentMap4 = this.parentProvider;
        this.providerCache = persistentMap4;
        return persistentMap4;
    }

    static /* synthetic */ PersistentMap q0(ComposerImpl composerImpl, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = null;
        }
        return composerImpl.p0(num);
    }

    static /* synthetic */ void q1(ComposerImpl composerImpl, boolean z6, q qVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        composerImpl.p1(z6, qVar);
    }

    private final void r1() {
        if (this.downNodes.d()) {
            this.downNodes.g();
        } else {
            this.pendingUps++;
        }
    }

    private final void s0(IdentityArrayMap<RecomposeScopeImpl, IdentityArraySet<Object>> identityArrayMap, p<? super Composer, ? super Integer, l0> pVar) {
        if (!(!this.isComposing)) {
            ComposerKt.x("Reentrant composition is not supported".toString());
            throw new i();
        }
        Object objA = Trace.INSTANCE.a("Compose:recompose");
        try {
            Snapshot snapshotB = SnapshotKt.B();
            this.snapshot = snapshotB;
            this.compositionToken = snapshotB.f();
            this.providerUpdates.clear();
            int iF = identityArrayMap.f();
            for (int i10 = 0; i10 < iF; i10++) {
                Object obj = identityArrayMap.e()[i10];
                if (obj == null) {
                    throw new NullPointerException("null cannot be cast to non-null type Key of androidx.compose.runtime.collection.IdentityArrayMap");
                }
                IdentityArraySet identityArraySet = (IdentityArraySet) identityArrayMap.g()[i10];
                RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj;
                Anchor anchorJ = recomposeScopeImpl.j();
                if (anchorJ == null) {
                    Trace.INSTANCE.b(objA);
                    return;
                }
                this.invalidations.add(new Invalidation(recomposeScopeImpl, anchorJ.a(), identityArraySet));
            }
            List<Invalidation> list = this.invalidations;
            if (list.size() > 1) {
                z.C(list, new Comparator() { // from class: androidx.compose.runtime.ComposerImpl$doCompose$lambda-37$$inlined$sortBy$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.Comparator
                    public final int compare(T t5, T t10) {
                        return y7.c.d(Integer.valueOf(((Invalidation) t5).b()), Integer.valueOf(((Invalidation) t10).b()));
                    }
                });
            }
            this.nodeIndex = 0;
            this.isComposing = true;
            try {
                E1();
                Object objN0 = N0();
                if (objN0 != pVar && pVar != null) {
                    N1(pVar);
                }
                SnapshotStateKt.j(new ComposerImpl$doCompose$2$3(this), new ComposerImpl$doCompose$2$4(this), new ComposerImpl$doCompose$2$5(pVar, this, objN0));
                w0();
                this.isComposing = false;
                this.invalidations.clear();
                l0 l0Var = l0.INSTANCE;
                Trace.INSTANCE.b(objA);
            } catch (Throwable th) {
                this.isComposing = false;
                this.invalidations.clear();
                R();
                throw th;
            }
        } catch (Throwable th2) {
            Trace.INSTANCE.b(objA);
            throw th2;
        }
    }

    private final void s1(int i10, int i11, int i12) {
        SlotReader slotReader = this.reader;
        int iQ = ComposerKt.Q(slotReader, i10, i11, i12);
        while (i10 > 0 && i10 != iQ) {
            if (slotReader.G(i10)) {
                r1();
            }
            i10 = slotReader.M(i10);
        }
        t0(i11, iQ);
    }

    private final void t0(int i10, int i11) {
        if (i10 <= 0 || i10 == i11) {
            return;
        }
        t0(this.reader.M(i10), i11);
        if (this.reader.G(i10)) {
            e1(O0(this.reader, i10));
        }
    }

    private final void t1() {
        this.insertFixups.add(this.insertUpFixups.g());
    }

    private final void u0(boolean z6) {
        if (r()) {
            int iV = this.writer.V();
            I1(this.writer.a0(iV), this.writer.b0(iV), this.writer.Y(iV));
        } else {
            int iS = this.reader.s();
            I1(this.reader.z(iS), this.reader.A(iS), this.reader.w(iS));
        }
        int i10 = this.groupNodeCount;
        Pending pending = this.pending;
        int i11 = 0;
        if (pending != null && pending.b().size() > 0) {
            List<KeyInfo> listB = pending.b();
            List<KeyInfo> listF = pending.f();
            Set setE = ListUtilsKt.e(listF);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int size = listF.size();
            int size2 = listB.size();
            int i12 = 0;
            int i13 = 0;
            int iO = 0;
            while (i12 < size2) {
                KeyInfo keyInfo = listB.get(i12);
                if (setE.contains(keyInfo)) {
                    if (!linkedHashSet.contains(keyInfo)) {
                        if (i13 < size) {
                            KeyInfo keyInfo2 = listF.get(i13);
                            if (keyInfo2 != keyInfo) {
                                int iG = pending.g(keyInfo2);
                                linkedHashSet.add(keyInfo2);
                                if (iG != iO) {
                                    int iO2 = pending.o(keyInfo2);
                                    k1(pending.e() + iG, iO + pending.e(), iO2);
                                    pending.j(iG, iO, iO2);
                                }
                            } else {
                                i12++;
                            }
                            i13++;
                            iO += pending.o(keyInfo2);
                            listF = listF;
                        }
                    }
                    i11 = 0;
                } else {
                    m1(pending.g(keyInfo) + pending.e(), keyInfo.c());
                    pending.n(keyInfo.b(), i11);
                    l1(keyInfo.b());
                    this.reader.N(keyInfo.b());
                    d1();
                    this.reader.P();
                    ComposerKt.W(this.invalidations, keyInfo.b(), keyInfo.b() + this.reader.B(keyInfo.b()));
                }
                i12++;
                i11 = 0;
            }
            T0();
            if (listB.size() > 0) {
                l1(this.reader.m());
                this.reader.Q();
            }
        }
        int i14 = this.nodeIndex;
        while (!this.reader.E()) {
            int iK = this.reader.k();
            d1();
            m1(i14, this.reader.P());
            ComposerKt.W(this.invalidations, iK, this.reader.k());
        }
        boolean zR = r();
        if (zR) {
            if (z6) {
                t1();
                i10 = 1;
            }
            this.reader.f();
            int iV2 = this.writer.V();
            this.writer.N();
            if (!this.reader.r()) {
                int iK0 = K0(iV2);
                this.writer.O();
                this.writer.F();
                i1(this.insertAnchor);
                this.inserting = false;
                if (!this.slotTable.isEmpty()) {
                    K1(iK0, 0);
                    L1(iK0, i10);
                }
            }
        } else {
            if (z6) {
                r1();
            }
            f1();
            int iS2 = this.reader.s();
            if (i10 != O1(iS2)) {
                L1(iS2, i10);
            }
            if (z6) {
                i10 = 1;
            }
            this.reader.g();
            T0();
        }
        z0(i10, zR);
    }

    private static final int v1(ComposerImpl composerImpl, int i10, boolean z6, int i11) {
        if (!composerImpl.reader.C(i10)) {
            if (!composerImpl.reader.e(i10)) {
                return composerImpl.reader.K(i10);
            }
            int iB = composerImpl.reader.B(i10) + i10;
            int iB2 = i10 + 1;
            int iV1 = 0;
            while (iB2 < iB) {
                boolean zG = composerImpl.reader.G(iB2);
                if (zG) {
                    composerImpl.T0();
                    composerImpl.e1(composerImpl.reader.I(iB2));
                }
                iV1 += v1(composerImpl, iB2, zG || z6, zG ? 0 : i11 + iV1);
                if (zG) {
                    composerImpl.T0();
                    composerImpl.r1();
                }
                iB2 += composerImpl.reader.B(iB2);
            }
            return iV1;
        }
        Object objA = composerImpl.reader.A(i10);
        if (objA == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.MovableContent<kotlin.Any?>");
        }
        MovableContent movableContent = (MovableContent) objA;
        Object objY = composerImpl.reader.y(i10, 0);
        Anchor anchorA = composerImpl.reader.a(i10);
        List listB = ComposerKt.B(composerImpl.invalidations, i10, composerImpl.reader.B(i10) + i10);
        ArrayList arrayList = new ArrayList(listB.size());
        int size = listB.size();
        for (int i12 = 0; i12 < size; i12++) {
            Invalidation invalidation = (Invalidation) listB.get(i12);
            arrayList.add(a0.a(invalidation.c(), invalidation.a()));
        }
        MovableContentStateReference movableContentStateReference = new MovableContentStateReference(movableContent, objY, composerImpl.C0(), composerImpl.slotTable, anchorA, arrayList, composerImpl.p0(Integer.valueOf(i10)));
        composerImpl.parentContext.b(movableContentStateReference);
        composerImpl.n1();
        composerImpl.b1(new ComposerImpl$reportFreeMovableContent$reportGroup$1(composerImpl, movableContentStateReference, anchorA));
        if (!z6) {
            return composerImpl.reader.K(i10);
        }
        composerImpl.T0();
        composerImpl.W0();
        composerImpl.R0();
        int iK = composerImpl.reader.G(i10) ? 1 : composerImpl.reader.K(i10);
        if (iK <= 0) {
            return 0;
        }
        composerImpl.m1(i11, iK);
        return 0;
    }

    private final void x0() {
        if (this.writer.T()) {
            SlotWriter slotWriterT = this.insertTable.t();
            this.writer = slotWriterT;
            slotWriterT.O0();
            this.writerHasAProvider = false;
            this.providerCache = null;
        }
    }

    private final void y0(boolean z6, Pending pending) {
        this.pendingStack.h(this.pending);
        this.pending = pending;
        this.nodeIndexStack.i(this.nodeIndex);
        if (z6) {
            this.nodeIndex = 0;
        }
        this.groupNodeCountStack.i(this.groupNodeCount);
        this.groupNodeCount = 0;
    }

    private final void y1() {
        this.groupNodeCount += this.reader.P();
    }

    private final void z0(int i10, boolean z6) {
        Pending pendingG = this.pendingStack.g();
        if (pendingG != null && !z6) {
            pendingG.l(pendingG.a() + 1);
        }
        this.pending = pendingG;
        this.nodeIndex = this.nodeIndexStack.h() + i10;
        this.groupNodeCount = this.groupNodeCountStack.h() + i10;
    }

    private final void z1() {
        this.groupNodeCount = this.reader.t();
        this.reader.Q();
    }

    @Override // androidx.compose.runtime.Composer
    @InternalComposeApi
    public void B(@NotNull MovableContent<?> value, @Nullable Object obj) {
        t.j(value, "value");
        L0(value, q0(this, null, 1, null), obj, false);
    }

    @Override // androidx.compose.runtime.Composer
    public void C(@NotNull e8.a<l0> effect) {
        t.j(effect, "effect");
        b1(new ComposerImpl$recordSideEffect$1(effect));
    }

    @Nullable
    public final RecomposeScopeImpl D0() {
        Stack<RecomposeScopeImpl> stack = this.invalidateStack;
        if (this.childrenComposing == 0 && stack.d()) {
            return stack.e();
        }
        return null;
    }

    @Override // androidx.compose.runtime.Composer
    public void F() {
        if (this.reusing && this.reader.s() == this.reusingGroup) {
            this.reusingGroup = -1;
            this.reusing = false;
        }
        u0(false);
    }

    public final boolean F1(@NotNull RecomposeScopeImpl scope, @Nullable Object obj) {
        t.j(scope, "scope");
        Anchor anchorJ = scope.j();
        if (anchorJ == null) {
            return false;
        }
        int iD = anchorJ.d(this.slotTable);
        if (!this.isComposing || iD < this.reader.k()) {
            return false;
        }
        ComposerKt.N(this.invalidations, iD, scope, obj);
        return true;
    }

    @InternalComposeApi
    public void G0(@NotNull List<u<MovableContentStateReference, MovableContentStateReference>> references) {
        List list;
        t.j(references, "references");
        List<q<Applier<?>, SlotWriter, RememberManager, l0>> list2 = this.lateChanges;
        List list3 = this.changes;
        try {
            this.changes = list2;
            b1(ComposerKt.resetSlotsInstance);
            int size = references.size();
            for (int i10 = 0; i10 < size; i10++) {
                u<MovableContentStateReference, MovableContentStateReference> uVar = references.get(i10);
                MovableContentStateReference movableContentStateReferenceA = uVar.a();
                MovableContentStateReference movableContentStateReferenceB = uVar.b();
                Anchor anchorA = movableContentStateReferenceA.a();
                int iA = movableContentStateReferenceA.g().a(anchorA);
                n0 n0Var = new n0();
                W0();
                b1(new ComposerImpl$insertMovableContentReferences$1$1$1(n0Var, anchorA));
                if (movableContentStateReferenceB == null) {
                    if (t.e(movableContentStateReferenceA.g(), this.insertTable)) {
                        o0();
                    }
                    SlotReader slotReaderS = movableContentStateReferenceA.g().s();
                    try {
                        slotReaderS.N(iA);
                        this.writersReaderDelta = iA;
                        ArrayList arrayList = new ArrayList();
                        Z0(this, null, null, null, null, new ComposerImpl$insertMovableContentReferences$1$1$2$1(this, arrayList, slotReaderS, movableContentStateReferenceA), 15, null);
                        if (!arrayList.isEmpty()) {
                            b1(new ComposerImpl$insertMovableContentReferences$1$1$2$2(n0Var, arrayList));
                        }
                        l0 l0Var = l0.INSTANCE;
                        slotReaderS.d();
                    } catch (Throwable th) {
                        slotReaderS.d();
                        throw th;
                    }
                } else {
                    List listV = ComposerKt.v(movableContentStateReferenceB.g(), movableContentStateReferenceB.a());
                    if (!listV.isEmpty()) {
                        b1(new ComposerImpl$insertMovableContentReferences$1$1$3(n0Var, listV));
                        int iA2 = this.slotTable.a(anchorA);
                        K1(iA2, O1(iA2) + listV.size());
                    }
                    b1(new ComposerImpl$insertMovableContentReferences$1$1$4(this, movableContentStateReferenceB, movableContentStateReferenceA));
                    SlotTable slotTableG = movableContentStateReferenceB.g();
                    SlotReader slotReaderS2 = slotTableG.s();
                    try {
                        SlotReader slotReader = this.reader;
                        int[] iArr = this.nodeCountOverrides;
                        this.nodeCountOverrides = null;
                        try {
                            this.reader = slotReaderS2;
                            int iA3 = slotTableG.a(movableContentStateReferenceB.a());
                            slotReaderS2.N(iA3);
                            this.writersReaderDelta = iA3;
                            ArrayList arrayList2 = new ArrayList();
                            List list4 = this.changes;
                            try {
                                this.changes = arrayList2;
                                list = list4;
                                try {
                                    Y0(movableContentStateReferenceB.b(), movableContentStateReferenceA.b(), Integer.valueOf(slotReaderS2.k()), movableContentStateReferenceB.d(), new ComposerImpl$insertMovableContentReferences$1$1$5$1$1$1(this, movableContentStateReferenceA));
                                    l0 l0Var2 = l0.INSTANCE;
                                    this.changes = list;
                                    if (!arrayList2.isEmpty()) {
                                        b1(new ComposerImpl$insertMovableContentReferences$1$1$5$1$2(n0Var, arrayList2));
                                    }
                                    this.reader = slotReader;
                                    this.nodeCountOverrides = iArr;
                                    slotReaderS2.d();
                                } catch (Throwable th2) {
                                    th = th2;
                                    this.changes = list;
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                list = list4;
                            }
                        } catch (Throwable th4) {
                            this.reader = slotReader;
                            this.nodeCountOverrides = iArr;
                            throw th4;
                        }
                    } catch (Throwable th5) {
                        slotReaderS2.d();
                        throw th5;
                    }
                }
                b1(ComposerKt.skipToGroupEndInstance);
            }
            b1(ComposerImpl$insertMovableContentReferences$1$2.INSTANCE);
            this.writersReaderDelta = 0;
            l0 l0Var3 = l0.INSTANCE;
            this.changes = list3;
            k0();
        } catch (Throwable th6) {
            this.changes = list3;
            throw th6;
        }
    }

    @Override // androidx.compose.runtime.Composer
    public <V, T> void M(V v5, @NotNull p<? super T, ? super V, l0> block) {
        t.j(block, "block");
        ComposerImpl$apply$operation$1 composerImpl$apply$operation$1 = new ComposerImpl$apply$operation$1(block, v5);
        if (r()) {
            h1(composerImpl$apply$operation$1);
        } else {
            c1(composerImpl$apply$operation$1);
        }
    }

    public final void Q0(@NotNull e8.a<l0> block) {
        t.j(block, "block");
        if (!(!this.isComposing)) {
            ComposerKt.x("Preparing a composition while composing is not supported".toString());
            throw new i();
        }
        this.isComposing = true;
        try {
            block.invoke();
        } finally {
            this.isComposing = false;
        }
    }

    public final boolean X0(@NotNull IdentityArrayMap<RecomposeScopeImpl, IdentityArraySet<Object>> invalidationsRequested) {
        t.j(invalidationsRequested, "invalidationsRequested");
        if (!this.changes.isEmpty()) {
            ComposerKt.x("Expected applyChanges() to have been called".toString());
            throw new i();
        }
        if (!invalidationsRequested.h() && !(!this.invalidations.isEmpty()) && !this.forciblyRecompose) {
            return false;
        }
        s0(invalidationsRequested, null);
        return !this.changes.isEmpty();
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void a(boolean z6) {
        if (!(this.groupNodeCount == 0)) {
            ComposerKt.x("No nodes can be emitted before calling dactivateToEndGroup".toString());
            throw new i();
        }
        if (r()) {
            return;
        }
        if (!z6) {
            z1();
            return;
        }
        int iK = this.reader.k();
        int iJ = this.reader.j();
        for (int i10 = iK; i10 < iJ; i10++) {
            this.reader.i(i10, new ComposerImpl$deactivateToEndGroup$2(this, i10));
        }
        ComposerKt.W(this.invalidations, iK, iJ);
        this.reader.N(iK);
        this.reader.Q();
    }

    @Override // androidx.compose.runtime.Composer
    public void e() {
        A1(125, null, true, null);
        this.nodeExpected = true;
    }

    @Override // androidx.compose.runtime.Composer
    public void f(int i10, @Nullable Object obj) {
        if (this.reader.n() == i10 && !t.e(this.reader.l(), obj) && this.reusingGroup < 0) {
            this.reusingGroup = this.reader.k();
            this.reusing = true;
        }
        A1(i10, null, false, obj);
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void g() {
        if (!(this.groupNodeCount == 0)) {
            ComposerKt.x("No nodes can be emitted before calling skipAndEndGroup".toString());
            throw new i();
        }
        RecomposeScopeImpl recomposeScopeImplD0 = D0();
        if (recomposeScopeImplD0 != null) {
            recomposeScopeImplD0.z();
        }
        if (this.invalidations.isEmpty()) {
            z1();
        } else {
            a1();
        }
    }

    @Override // androidx.compose.runtime.Composer
    public boolean h() {
        if (this.providersInvalid) {
            return true;
        }
        RecomposeScopeImpl recomposeScopeImplD0 = D0();
        return recomposeScopeImplD0 != null && recomposeScopeImplD0.n();
    }

    @Override // androidx.compose.runtime.Composer
    public void i(@NotNull RecomposeScope scope) {
        t.j(scope, "scope");
        RecomposeScopeImpl recomposeScopeImpl = scope instanceof RecomposeScopeImpl ? (RecomposeScopeImpl) scope : null;
        if (recomposeScopeImpl == null) {
            return;
        }
        recomposeScopeImpl.G(true);
    }

    @Override // androidx.compose.runtime.Composer
    @NotNull
    public CompositionContext j() {
        C1(ComposerKt.referenceKey, ComposerKt.L());
        Object objN0 = N0();
        CompositionContextHolder compositionContextHolder = objN0 instanceof CompositionContextHolder ? (CompositionContextHolder) objN0 : null;
        if (compositionContextHolder == null) {
            compositionContextHolder = new CompositionContextHolder(new CompositionContextImpl(O(), this.forceRecomposeScopes));
            N1(compositionContextHolder);
        }
        compositionContextHolder.a().u(q0(this, null, 1, null));
        v0();
        return compositionContextHolder.a();
    }

    public final void j0() {
        this.providerUpdates.clear();
    }

    @Override // androidx.compose.runtime.Composer
    @InternalComposeApi
    public void l(@NotNull ProvidedValue<?>[] values) {
        PersistentMap<CompositionLocal<Object>, State<Object>> persistentMapM1;
        boolean z6;
        t.j(values, "values");
        PersistentMap<CompositionLocal<Object>, ? extends State<? extends Object>> persistentMapQ0 = q0(this, null, 1, null);
        C1(201, ComposerKt.I());
        C1(203, ComposerKt.K());
        PersistentMap<CompositionLocal<Object>, ? extends State<? extends Object>> persistentMap = (PersistentMap) ActualJvm_jvmKt.c(this, new ComposerImpl$startProviders$currentProviders$1(values, persistentMapQ0));
        v0();
        if (!r()) {
            Object objX = this.reader.x(0);
            if (objX == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<androidx.compose.runtime.CompositionLocal<kotlin.Any?>, androidx.compose.runtime.State<kotlin.Any?>>{ androidx.compose.runtime.ComposerKt.CompositionLocalMap }");
            }
            PersistentMap<CompositionLocal<Object>, State<Object>> persistentMap2 = (PersistentMap) objX;
            Object objX2 = this.reader.x(1);
            if (objX2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<androidx.compose.runtime.CompositionLocal<kotlin.Any?>, androidx.compose.runtime.State<kotlin.Any?>>{ androidx.compose.runtime.ComposerKt.CompositionLocalMap }");
            }
            PersistentMap persistentMap3 = (PersistentMap) objX2;
            if (b() && t.e(persistentMap3, persistentMap)) {
                y1();
                persistentMapM1 = persistentMap2;
            } else {
                persistentMapM1 = M1(persistentMapQ0, persistentMap);
                z6 = !t.e(persistentMapM1, persistentMap2);
            }
            if (z6 && !r()) {
                this.providerUpdates.put(Integer.valueOf(this.reader.k()), persistentMapM1);
            }
            this.providersInvalidStack.i(ComposerKt.u(this.providersInvalid));
            this.providersInvalid = z6;
            this.providerCache = persistentMapM1;
            A1(202, ComposerKt.F(), false, persistentMapM1);
        }
        persistentMapM1 = M1(persistentMapQ0, persistentMap);
        this.writerHasAProvider = true;
        z6 = false;
        if (z6) {
            this.providerUpdates.put(Integer.valueOf(this.reader.k()), persistentMapM1);
        }
        this.providersInvalidStack.i(ComposerKt.u(this.providersInvalid));
        this.providersInvalid = z6;
        this.providerCache = persistentMapM1;
        A1(202, ComposerKt.F(), false, persistentMapM1);
    }

    public final void m0(@NotNull IdentityArrayMap<RecomposeScopeImpl, IdentityArraySet<Object>> invalidationsRequested, @NotNull p<? super Composer, ? super Integer, l0> content) {
        t.j(invalidationsRequested, "invalidationsRequested");
        t.j(content, "content");
        if (this.changes.isEmpty()) {
            s0(invalidationsRequested, content);
        } else {
            ComposerKt.x("Expected applyChanges() to have been called".toString());
            throw new i();
        }
    }

    public final void r0() {
        Object objA = Trace.INSTANCE.a("Compose:Composer.dispose");
        try {
            this.parentContext.p(this);
            this.invalidateStack.a();
            this.invalidations.clear();
            this.changes.clear();
            this.providerUpdates.clear();
            t().clear();
            this.isDisposed = true;
            l0 l0Var = l0.INSTANCE;
        } finally {
            Trace.INSTANCE.b(objA);
        }
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    @Nullable
    public ScopeUpdateScope u() {
        Anchor anchorA;
        l<Composition, l0> lVarI;
        RecomposeScopeImpl recomposeScopeImpl = null;
        RecomposeScopeImpl recomposeScopeImplG = this.invalidateStack.d() ? this.invalidateStack.g() : null;
        if (recomposeScopeImplG != null) {
            recomposeScopeImplG.D(false);
        }
        if (recomposeScopeImplG != null && (lVarI = recomposeScopeImplG.i(this.compositionToken)) != null) {
            b1(new ComposerImpl$endRestartGroup$1$1(lVarI, this));
        }
        if (recomposeScopeImplG != null && !recomposeScopeImplG.q() && (recomposeScopeImplG.r() || this.forceRecomposeScopes)) {
            if (recomposeScopeImplG.j() == null) {
                if (r()) {
                    SlotWriter slotWriter = this.writer;
                    anchorA = slotWriter.A(slotWriter.V());
                } else {
                    SlotReader slotReader = this.reader;
                    anchorA = slotReader.a(slotReader.s());
                }
                recomposeScopeImplG.A(anchorA);
            }
            recomposeScopeImplG.C(false);
            recomposeScopeImpl = recomposeScopeImplG;
        }
        u0(false);
        return recomposeScopeImpl;
    }

    @Override // androidx.compose.runtime.Composer
    public <T> void w(@NotNull e8.a<? extends T> factory) {
        t.j(factory, "factory");
        P1();
        if (!r()) {
            ComposerKt.x("createNode() can only be called when inserting".toString());
            throw new i();
        }
        int iE = this.nodeIndexStack.e();
        SlotWriter slotWriter = this.writer;
        Anchor anchorA = slotWriter.A(slotWriter.V());
        this.groupNodeCount++;
        h1(new ComposerImpl$createNode$2(factory, anchorA, iE));
        j1(new ComposerImpl$createNode$3(anchorA, iE));
    }

    @Override // androidx.compose.runtime.Composer
    @InternalComposeApi
    public <T> T x(@NotNull CompositionLocal<T> key) {
        t.j(key, "key");
        return (T) w1(key, q0(this, null, 1, null));
    }

    @ComposeCompilerApi
    public void x1() {
        if (this.invalidations.isEmpty()) {
            y1();
            return;
        }
        SlotReader slotReader = this.reader;
        int iN = slotReader.n();
        Object objO = slotReader.o();
        Object objL = slotReader.l();
        G1(iN, objO, objL);
        D1(slotReader.F(), null);
        a1();
        slotReader.g();
        I1(iN, objO, objL);
    }

    @Override // androidx.compose.runtime.Composer
    @NotNull
    public g y() {
        return this.parentContext.g();
    }

    private final void A0() {
        W0();
        if (this.pendingStack.c()) {
            if (this.startedGroups.d()) {
                k0();
                return;
            } else {
                ComposerKt.x("Missed recording an endGroup()".toString());
                throw new i();
            }
        }
        ComposerKt.x("Start/end imbalance".toString());
        throw new i();
    }

    private final void A1(int i10, Object obj, boolean z6, Object obj2) {
        int i11;
        Q1();
        G1(i10, obj, obj2);
        Pending pending = null;
        if (r()) {
            this.reader.c();
            int iU = this.writer.U();
            if (z6) {
                this.writer.W0(Composer.Companion.a());
            } else if (obj2 != null) {
                SlotWriter slotWriter = this.writer;
                if (obj == null) {
                    obj = Composer.Companion.a();
                }
                slotWriter.S0(i10, obj, obj2);
            } else {
                SlotWriter slotWriter2 = this.writer;
                if (obj == null) {
                    obj = Composer.Companion.a();
                }
                slotWriter2.U0(i10, obj);
            }
            Pending pending2 = this.pending;
            if (pending2 != null) {
                KeyInfo keyInfo = new KeyInfo(i10, -1, K0(iU), -1, 0);
                pending2.i(keyInfo, this.nodeIndex - pending2.e());
                pending2.h(keyInfo);
            }
            y0(z6, null);
            return;
        }
        if (this.pending == null) {
            if (this.reader.n() == i10 && t.e(obj, this.reader.o())) {
                D1(z6, obj2);
            } else {
                this.pending = new Pending(this.reader.h(), this.nodeIndex);
            }
        }
        Pending pending3 = this.pending;
        if (pending3 != null) {
            KeyInfo keyInfoD = pending3.d(i10, obj);
            if (keyInfoD != null) {
                pending3.h(keyInfoD);
                int iB = keyInfoD.b();
                this.nodeIndex = pending3.g(keyInfoD) + pending3.e();
                int iM = pending3.m(keyInfoD);
                int iA = iM - pending3.a();
                pending3.k(iM, pending3.a());
                l1(iB);
                this.reader.N(iB);
                if (iA > 0) {
                    o1(new ComposerImpl$start$2(iA));
                }
                D1(z6, obj2);
            } else {
                this.reader.c();
                this.inserting = true;
                this.providerCache = null;
                x0();
                this.writer.D();
                int iU2 = this.writer.U();
                if (z6) {
                    this.writer.W0(Composer.Companion.a());
                } else if (obj2 != null) {
                    SlotWriter slotWriter3 = this.writer;
                    if (obj == null) {
                        obj = Composer.Companion.a();
                    }
                    slotWriter3.S0(i10, obj, obj2);
                } else {
                    SlotWriter slotWriter4 = this.writer;
                    if (obj == null) {
                        obj = Composer.Companion.a();
                    }
                    slotWriter4.U0(i10, obj);
                }
                this.insertAnchor = this.writer.A(iU2);
                KeyInfo keyInfo2 = new KeyInfo(i10, -1, K0(iU2), -1, 0);
                pending3.i(keyInfo2, this.nodeIndex - pending3.e());
                pending3.h(keyInfo2);
                ArrayList arrayList = new ArrayList();
                if (z6) {
                    i11 = 0;
                } else {
                    i11 = this.nodeIndex;
                }
                pending = new Pending(arrayList, i11);
            }
        }
        y0(z6, pending);
    }

    private final Object E0(SlotReader slotReader) {
        return slotReader.I(slotReader.s());
    }

    private final int F0(SlotReader slotReader, int i10) {
        Object objW;
        if (slotReader.D(i10)) {
            Object objA = slotReader.A(i10);
            if (objA != null) {
                if (objA instanceof Enum) {
                    return ((Enum) objA).ordinal();
                }
                if (objA instanceof MovableContent) {
                    return MovableContentKt.movableContentKey;
                }
                return objA.hashCode();
            }
            return 0;
        }
        int iZ = slotReader.z(i10);
        if (iZ == 207 && (objW = slotReader.w(i10)) != null && !t.e(objW, Composer.Companion.a())) {
            iZ = objW.hashCode();
        }
        return iZ;
    }

    private static final int H0(SlotWriter slotWriter) {
        int iW0;
        int iU = slotWriter.U();
        int iV = slotWriter.V();
        while (iV >= 0 && !slotWriter.k0(iV)) {
            iV = slotWriter.y0(iV);
        }
        int iC0 = iV + 1;
        int i10 = 0;
        while (iC0 < iU) {
            if (slotWriter.f0(iU, iC0)) {
                if (slotWriter.k0(iC0)) {
                    i10 = 0;
                }
                iC0++;
            } else {
                if (slotWriter.k0(iC0)) {
                    iW0 = 1;
                } else {
                    iW0 = slotWriter.w0(iC0);
                }
                i10 += iW0;
                iC0 += slotWriter.c0(iC0);
            }
        }
        return i10;
    }

    private final void H1(int i10) {
        this.compoundKeyHash = i10 ^ Integer.rotateLeft(O(), 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int I0(SlotWriter slotWriter, Anchor anchor, Applier<Object> applier) {
        boolean z6;
        int iB = slotWriter.B(anchor);
        boolean z10 = true;
        if (slotWriter.U() < iB) {
            z6 = true;
        } else {
            z6 = false;
        }
        ComposerKt.X(z6);
        J0(slotWriter, applier, iB);
        int iH0 = H0(slotWriter);
        while (slotWriter.U() < iB) {
            if (slotWriter.e0(iB)) {
                if (slotWriter.j0()) {
                    applier.h(slotWriter.u0(slotWriter.U()));
                    iH0 = 0;
                }
                slotWriter.T0();
            } else {
                iH0 += slotWriter.N0();
            }
        }
        if (slotWriter.U() != iB) {
            z10 = false;
        }
        ComposerKt.X(z10);
        return iH0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(SlotWriter slotWriter, Applier<Object> applier, int i10) {
        while (!slotWriter.g0(i10)) {
            slotWriter.O0();
            if (slotWriter.k0(slotWriter.V())) {
                applier.i();
            }
            slotWriter.N();
        }
    }

    private final void J1(int i10) {
        this.compoundKeyHash = Integer.rotateRight(i10 ^ O(), 3);
    }

    private final void K1(int i10, int i11) {
        if (O1(i10) != i11) {
            if (i10 < 0) {
                HashMap<Integer, Integer> map = this.nodeCountVirtualOverrides;
                if (map == null) {
                    map = new HashMap<>();
                    this.nodeCountVirtualOverrides = map;
                }
                map.put(Integer.valueOf(i10), Integer.valueOf(i11));
                return;
            }
            int[] iArr = this.nodeCountOverrides;
            if (iArr == null) {
                iArr = new int[this.reader.u()];
                o.s(iArr, -1, 0, 0, 6, null);
                this.nodeCountOverrides = iArr;
            }
            iArr[i10] = i11;
        }
    }

    private final void L1(int i10, int i11) {
        int iO1 = O1(i10);
        if (iO1 != i11) {
            int i12 = i11 - iO1;
            int iB = this.pendingStack.b() - 1;
            while (i10 != -1) {
                int iO2 = O1(i10) + i12;
                K1(i10, iO2);
                for (int i13 = iB; -1 < i13; i13--) {
                    Pending pendingF = this.pendingStack.f(i13);
                    if (pendingF != null && pendingF.n(i10, iO2)) {
                        iB = i13 - 1;
                        break;
                    }
                }
                if (i10 < 0) {
                    i10 = this.reader.s();
                } else if (!this.reader.G(i10)) {
                    i10 = this.reader.M(i10);
                } else {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final PersistentMap<CompositionLocal<Object>, State<Object>> M1(PersistentMap<CompositionLocal<Object>, ? extends State<? extends Object>> persistentMap, PersistentMap<CompositionLocal<Object>, ? extends State<? extends Object>> persistentMap2) {
        PersistentMap.Builder<CompositionLocal<Object>, ? extends State<? extends Object>> builder = persistentMap.builder();
        builder.putAll(persistentMap2);
        PersistentMap persistentMapBuild = builder.build();
        C1(ComposerKt.providerMapsKey, ComposerKt.J());
        k(persistentMapBuild);
        k(persistentMap2);
        v0();
        return persistentMapBuild;
    }

    private final Object O0(SlotReader slotReader, int i10) {
        return slotReader.I(i10);
    }

    private final void R() {
        k0();
        this.pendingStack.a();
        this.nodeIndexStack.a();
        this.groupNodeCountStack.a();
        this.entersStack.a();
        this.providersInvalidStack.a();
        this.providerUpdates.clear();
        this.reader.d();
        this.compoundKeyHash = 0;
        this.childrenComposing = 0;
        this.nodeExpected = false;
        this.isComposing = false;
        this.forciblyRecompose = false;
    }

    private final void c1(q<? super Applier<?>, ? super SlotWriter, ? super RememberManager, l0> qVar) {
        W0();
        R0();
        b1(qVar);
    }

    private final void i0() {
        RecomposeScopeImpl recomposeScopeImpl;
        boolean z6;
        if (!r()) {
            Invalidation invalidationV = ComposerKt.V(this.invalidations, this.reader.s());
            Object objH = this.reader.H();
            if (t.e(objH, Composer.Companion.a())) {
                recomposeScopeImpl = new RecomposeScopeImpl((CompositionImpl) C0());
                N1(recomposeScopeImpl);
            } else if (objH != null) {
                recomposeScopeImpl = (RecomposeScopeImpl) objH;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl");
            }
            if (invalidationV != null) {
                z6 = true;
            } else {
                z6 = false;
            }
            recomposeScopeImpl.D(z6);
            this.invalidateStack.h(recomposeScopeImpl);
            recomposeScopeImpl.H(this.compositionToken);
            return;
        }
        RecomposeScopeImpl recomposeScopeImpl2 = new RecomposeScopeImpl((CompositionImpl) C0());
        this.invalidateStack.h(recomposeScopeImpl2);
        N1(recomposeScopeImpl2);
        recomposeScopeImpl2.H(this.compositionToken);
    }

    private final void p1(boolean z6, q<? super Applier<?>, ? super SlotWriter, ? super RememberManager, l0> qVar) {
        U0(z6);
        b1(qVar);
    }

    private final void w0() {
        v0();
        this.parentContext.c();
        v0();
        g1();
        A0();
        this.reader.d();
        this.forciblyRecompose = false;
    }

    private final <T> T w1(CompositionLocal<T> compositionLocal, PersistentMap<CompositionLocal<Object>, ? extends State<? extends Object>> persistentMap) {
        if (ComposerKt.z(persistentMap, compositionLocal)) {
            return (T) ComposerKt.M(persistentMap, compositionLocal);
        }
        return compositionLocal.a().getValue();
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void A() {
        v0();
        RecomposeScopeImpl recomposeScopeImplD0 = D0();
        if (recomposeScopeImplD0 != null && recomposeScopeImplD0.r()) {
            recomposeScopeImplD0.B(true);
        }
    }

    @Override // androidx.compose.runtime.Composer
    @Nullable
    public RecomposeScope E() {
        return D0();
    }

    @Override // androidx.compose.runtime.Composer
    @Nullable
    public Object H() {
        return N0();
    }

    @Override // androidx.compose.runtime.Composer
    @InternalComposeApi
    public void N() {
        v0();
        v0();
        this.providersInvalid = ComposerKt.t(this.providersInvalidStack.h());
        this.providerCache = null;
    }

    @Nullable
    public final Object N0() {
        if (r()) {
            Q1();
            return Composer.Companion.a();
        }
        Object objH = this.reader.H();
        if (this.reusing) {
            return Composer.Companion.a();
        }
        return objH;
    }

    public final void N1(@Nullable Object obj) {
        if (r()) {
            this.writer.X0(obj);
            if (obj instanceof RememberObserver) {
                b1(new ComposerImpl$updateValue$1(obj));
                this.abandonSet.add(obj);
                return;
            }
            return;
        }
        int iQ = this.reader.q() - 1;
        if (obj instanceof RememberObserver) {
            this.abandonSet.add(obj);
        }
        p1(true, new ComposerImpl$updateValue$2(obj, iQ));
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void P() {
        v0();
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void Q() {
        v0();
    }

    @Override // androidx.compose.runtime.Composer
    public boolean b() {
        RecomposeScopeImpl recomposeScopeImplD0;
        if (!r() && !this.reusing && !this.providersInvalid && (recomposeScopeImplD0 = D0()) != null && !recomposeScopeImplD0.o() && !this.forciblyRecompose) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.runtime.Composer
    public void c() {
        P1();
        if (!r()) {
            e1(E0(this.reader));
        } else {
            ComposerKt.x("useNode() called while inserting".toString());
            throw new i();
        }
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean k(@Nullable Object obj) {
        if (!t.e(N0(), obj)) {
            N1(obj);
            return true;
        }
        return false;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean m(boolean z6) {
        Object objN0 = N0();
        if ((objN0 instanceof Boolean) && z6 == ((Boolean) objN0).booleanValue()) {
            return false;
        }
        N1(Boolean.valueOf(z6));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean n(float f) {
        Object objN0 = N0();
        if ((objN0 instanceof Float) && f == ((Number) objN0).floatValue()) {
            return false;
        }
        N1(Float.valueOf(f));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean p(int i10) {
        Object objN0 = N0();
        if ((objN0 instanceof Integer) && i10 == ((Number) objN0).intValue()) {
            return false;
        }
        N1(Integer.valueOf(i10));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean q(long j6) {
        Object objN0 = N0();
        if ((objN0 instanceof Long) && j6 == ((Number) objN0).longValue()) {
            return false;
        }
        N1(Long.valueOf(j6));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    public void v() {
        int i10 = 125;
        if (!r() && (!this.reusing ? this.reader.n() == 126 : this.reader.n() == 125)) {
            i10 = 126;
        }
        A1(i10, null, true, null);
        this.nodeExpected = true;
    }

    @Override // androidx.compose.runtime.Composer
    public void z(@Nullable Object obj) {
        N1(obj);
    }
}
