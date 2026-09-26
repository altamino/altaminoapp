package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.Stable;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import e8.l;
import f8.d;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
@Stable
public final class SnapshotStateList<T> implements List<T>, StateObject, d {

    @NotNull
    private StateRecord firstStateRecord = new StateListStateRecord(ExtensionsKt.b());

    public static final class StateListStateRecord<T> extends StateRecord {

        @NotNull
        private PersistentList<? extends T> list;
        private int modification;

        @NotNull
        public final PersistentList<T> g() {
            return this.list;
        }

        public final int h() {
            return this.modification;
        }

        public final void i(@NotNull PersistentList<? extends T> persistentList) {
            t.j(persistentList, "<set-?>");
            this.list = persistentList;
        }

        public final void j(int i10) {
            this.modification = i10;
        }

        public StateListStateRecord(@NotNull PersistentList<? extends T> list) {
            t.j(list, "list");
            this.list = list;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public void a(@NotNull StateRecord value) {
            t.j(value, "value");
            synchronized (SnapshotStateListKt.sync) {
                this.list = ((StateListStateRecord) value).list;
                this.modification = ((StateListStateRecord) value).modification;
                l0 l0Var = l0.INSTANCE;
            }
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        @NotNull
        public StateRecord b() {
            return new StateListStateRecord(this.list);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.snapshots.SnapshotStateList$addAll$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<List<T>, Boolean> {
        final /* synthetic */ Collection<T> $elements;
        final /* synthetic */ int $index;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(int i10, Collection<? extends T> collection) {
            super(1);
            this.$index = i10;
            this.$elements = collection;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(@NotNull List<T> it) {
            t.j(it, "it");
            return Boolean.valueOf(it.addAll(this.$index, this.$elements));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.snapshots.SnapshotStateList$retainAll$1, reason: invalid class name and case insensitive filesystem */
    static final class C05101 extends v implements l<List<T>, Boolean> {
        final /* synthetic */ Collection<T> $elements;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C05101(Collection<? extends T> collection) {
            super(1);
            this.$elements = collection;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(@NotNull List<T> it) {
            t.j(it, "it");
            return Boolean.valueOf(it.retainAll(this.$elements));
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x006d */
    @Override // java.util.List, java.util.Collection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean add(T t5) {
        Snapshot.Companion companion;
        int iH;
        PersistentList<T> persistentListG;
        boolean z6;
        Snapshot snapshotB;
        do {
            synchronized (SnapshotStateListKt.sync) {
                StateListStateRecord stateListStateRecord = (StateListStateRecord) m();
                companion = Snapshot.Companion;
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.A(stateListStateRecord, companion.b());
                iH = stateListStateRecord2.h();
                persistentListG = stateListStateRecord2.g();
                l0 l0Var = l0.INSTANCE;
            }
            t.g(persistentListG);
            PersistentList<T> persistentListAdd = persistentListG.add(t5);
            z6 = false;
            if (t.e(persistentListAdd, persistentListG)) {
                return false;
            }
            synchronized (SnapshotStateListKt.sync) {
                StateListStateRecord stateListStateRecord3 = (StateListStateRecord) m();
                SnapshotKt.D();
                synchronized (SnapshotKt.C()) {
                    try {
                        snapshotB = companion.b();
                        StateListStateRecord stateListStateRecord4 = (StateListStateRecord) SnapshotKt.Z(stateListStateRecord3, this, snapshotB);
                        if (stateListStateRecord4.h() == iH) {
                            stateListStateRecord4.i(persistentListAdd);
                            stateListStateRecord4.j(stateListStateRecord4.h() + 1);
                            z6 = true;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                SnapshotKt.J(snapshotB, this);
            }
        } while (!z6);
        return true;
    }

    @Override // java.util.List
    public boolean addAll(int i10, @NotNull Collection<? extends T> elements) {
        t.j(elements, "elements");
        return j(new AnonymousClass1(i10, elements));
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public /* synthetic */ StateRecord e(StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
        return a.a(this, stateRecord, stateRecord2, stateRecord3);
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<T> listIterator() {
        return new StateListIterator(this, 0);
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    @NotNull
    public StateRecord m() {
        return this.firstStateRecord;
    }

    @Override // java.util.List
    public final /* bridge */ T remove(int i10) {
        return p(i10);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return j.a(this);
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void a(@NotNull StateRecord value) {
        t.j(value, "value");
        value.e(m());
        this.firstStateRecord = (StateListStateRecord) value;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0072 */
    @Override // java.util.List, java.util.Collection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean addAll(@NotNull Collection<? extends T> elements) {
        Snapshot.Companion companion;
        int iH;
        PersistentList<T> persistentListG;
        boolean z6;
        Snapshot snapshotB;
        t.j(elements, "elements");
        do {
            synchronized (SnapshotStateListKt.sync) {
                StateListStateRecord stateListStateRecord = (StateListStateRecord) m();
                companion = Snapshot.Companion;
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.A(stateListStateRecord, companion.b());
                iH = stateListStateRecord2.h();
                persistentListG = stateListStateRecord2.g();
                l0 l0Var = l0.INSTANCE;
            }
            t.g(persistentListG);
            PersistentList<T> persistentListAddAll = persistentListG.addAll(elements);
            z6 = false;
            if (t.e(persistentListAddAll, persistentListG)) {
                return false;
            }
            synchronized (SnapshotStateListKt.sync) {
                StateListStateRecord stateListStateRecord3 = (StateListStateRecord) m();
                SnapshotKt.D();
                synchronized (SnapshotKt.C()) {
                    try {
                        snapshotB = companion.b();
                        StateListStateRecord stateListStateRecord4 = (StateListStateRecord) SnapshotKt.Z(stateListStateRecord3, this, snapshotB);
                        if (stateListStateRecord4.h() == iH) {
                            stateListStateRecord4.i(persistentListAddAll);
                            stateListStateRecord4.j(stateListStateRecord4.h() + 1);
                            z6 = true;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                SnapshotKt.J(snapshotB, this);
            }
        } while (!z6);
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        return f().g().containsAll(elements);
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<T> listIterator(int i10) {
        return new StateListIterator(this, i10);
    }

    public final int r(@NotNull Collection<? extends T> elements, int i10, int i11) {
        Snapshot.Companion companion;
        int iH;
        PersistentList<T> persistentListG;
        Snapshot snapshotB;
        boolean z6;
        t.j(elements, "elements");
        int size = size();
        do {
            synchronized (SnapshotStateListKt.sync) {
                StateListStateRecord stateListStateRecord = (StateListStateRecord) m();
                companion = Snapshot.Companion;
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.A(stateListStateRecord, companion.b());
                iH = stateListStateRecord2.h();
                persistentListG = stateListStateRecord2.g();
                l0 l0Var = l0.INSTANCE;
            }
            t.g(persistentListG);
            PersistentList.Builder<T> builder = persistentListG.builder();
            builder.subList(i10, i11).retainAll(elements);
            PersistentList<T> persistentListBuild = builder.build();
            if (t.e(persistentListBuild, persistentListG)) {
                break;
            }
            synchronized (SnapshotStateListKt.sync) {
                StateListStateRecord stateListStateRecord3 = (StateListStateRecord) m();
                SnapshotKt.D();
                synchronized (SnapshotKt.C()) {
                    snapshotB = companion.b();
                    StateListStateRecord stateListStateRecord4 = (StateListStateRecord) SnapshotKt.Z(stateListStateRecord3, this, snapshotB);
                    if (stateListStateRecord4.h() == iH) {
                        stateListStateRecord4.i(persistentListBuild);
                        z6 = true;
                        stateListStateRecord4.j(stateListStateRecord4.h() + 1);
                    } else {
                        z6 = false;
                    }
                }
                SnapshotKt.J(snapshotB, this);
            }
        } while (!z6);
        return size - size();
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x006d */
    @Override // java.util.List, java.util.Collection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean remove(Object obj) {
        Snapshot.Companion companion;
        int iH;
        PersistentList<T> persistentListG;
        boolean z6;
        Snapshot snapshotB;
        do {
            synchronized (SnapshotStateListKt.sync) {
                StateListStateRecord stateListStateRecord = (StateListStateRecord) m();
                companion = Snapshot.Companion;
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.A(stateListStateRecord, companion.b());
                iH = stateListStateRecord2.h();
                persistentListG = stateListStateRecord2.g();
                l0 l0Var = l0.INSTANCE;
            }
            t.g(persistentListG);
            PersistentList<T> persistentListRemove = persistentListG.remove(obj);
            z6 = false;
            if (t.e(persistentListRemove, persistentListG)) {
                return false;
            }
            synchronized (SnapshotStateListKt.sync) {
                StateListStateRecord stateListStateRecord3 = (StateListStateRecord) m();
                SnapshotKt.D();
                synchronized (SnapshotKt.C()) {
                    try {
                        snapshotB = companion.b();
                        StateListStateRecord stateListStateRecord4 = (StateListStateRecord) SnapshotKt.Z(stateListStateRecord3, this, snapshotB);
                        if (stateListStateRecord4.h() == iH) {
                            stateListStateRecord4.i(persistentListRemove);
                            stateListStateRecord4.j(stateListStateRecord4.h() + 1);
                            z6 = true;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                SnapshotKt.J(snapshotB, this);
            }
        } while (!z6);
        return true;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0072 */
    @Override // java.util.List, java.util.Collection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        Snapshot.Companion companion;
        int iH;
        PersistentList<T> persistentListG;
        boolean z6;
        Snapshot snapshotB;
        t.j(elements, "elements");
        do {
            synchronized (SnapshotStateListKt.sync) {
                StateListStateRecord stateListStateRecord = (StateListStateRecord) m();
                companion = Snapshot.Companion;
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.A(stateListStateRecord, companion.b());
                iH = stateListStateRecord2.h();
                persistentListG = stateListStateRecord2.g();
                l0 l0Var = l0.INSTANCE;
            }
            t.g(persistentListG);
            PersistentList<T> persistentListRemoveAll = persistentListG.removeAll((Collection<? extends T>) elements);
            z6 = false;
            if (t.e(persistentListRemoveAll, persistentListG)) {
                return false;
            }
            synchronized (SnapshotStateListKt.sync) {
                StateListStateRecord stateListStateRecord3 = (StateListStateRecord) m();
                SnapshotKt.D();
                synchronized (SnapshotKt.C()) {
                    try {
                        snapshotB = companion.b();
                        StateListStateRecord stateListStateRecord4 = (StateListStateRecord) SnapshotKt.Z(stateListStateRecord3, this, snapshotB);
                        if (stateListStateRecord4.h() == iH) {
                            stateListStateRecord4.i(persistentListRemoveAll);
                            stateListStateRecord4.j(stateListStateRecord4.h() + 1);
                            z6 = true;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                SnapshotKt.J(snapshotB, this);
            }
        } while (!z6);
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        return j(new C05101(elements));
    }

    @Override // java.util.List
    @NotNull
    public List<T> subList(int i10, int i11) {
        if (i10 < 0 || i10 > i11 || i11 > size()) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        return new SubList(this, i10, i11);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] array) {
        t.j(array, "array");
        return (T[]) j.b(this, array);
    }

    private final boolean j(l<? super List<T>, Boolean> lVar) {
        Snapshot.Companion companion;
        int iH;
        PersistentList<T> persistentListG;
        Boolean boolInvoke;
        Snapshot snapshotB;
        boolean z6;
        do {
            synchronized (SnapshotStateListKt.sync) {
                StateListStateRecord stateListStateRecord = (StateListStateRecord) m();
                companion = Snapshot.Companion;
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.A(stateListStateRecord, companion.b());
                iH = stateListStateRecord2.h();
                persistentListG = stateListStateRecord2.g();
                l0 l0Var = l0.INSTANCE;
            }
            t.g(persistentListG);
            PersistentList.Builder<T> builder = persistentListG.builder();
            boolInvoke = lVar.invoke(builder);
            PersistentList<T> persistentListBuild = builder.build();
            if (t.e(persistentListBuild, persistentListG)) {
                break;
            }
            synchronized (SnapshotStateListKt.sync) {
                StateListStateRecord stateListStateRecord3 = (StateListStateRecord) m();
                SnapshotKt.D();
                synchronized (SnapshotKt.C()) {
                    snapshotB = companion.b();
                    StateListStateRecord stateListStateRecord4 = (StateListStateRecord) SnapshotKt.Z(stateListStateRecord3, this, snapshotB);
                    if (stateListStateRecord4.h() == iH) {
                        stateListStateRecord4.i(persistentListBuild);
                        z6 = true;
                        stateListStateRecord4.j(stateListStateRecord4.h() + 1);
                    } else {
                        z6 = false;
                    }
                }
                SnapshotKt.J(snapshotB, this);
            }
        } while (!z6);
        return boolInvoke.booleanValue();
    }

    public final int c() {
        return ((StateListStateRecord) SnapshotKt.A((StateListStateRecord) m(), Snapshot.Companion.b())).h();
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        Snapshot snapshotB;
        synchronized (SnapshotStateListKt.sync) {
            StateListStateRecord stateListStateRecord = (StateListStateRecord) m();
            SnapshotKt.D();
            synchronized (SnapshotKt.C()) {
                snapshotB = Snapshot.Companion.b();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.Z(stateListStateRecord, this, snapshotB);
                stateListStateRecord2.i(ExtensionsKt.b());
                stateListStateRecord2.j(stateListStateRecord2.h() + 1);
            }
            SnapshotKt.J(snapshotB, this);
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return f().g().contains(obj);
    }

    @NotNull
    public final StateListStateRecord<T> f() {
        return (StateListStateRecord) SnapshotKt.O((StateListStateRecord) m(), this);
    }

    public int g() {
        return f().g().size();
    }

    @Override // java.util.List
    public T get(int i10) {
        return f().g().get(i10);
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return f().g().indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return f().g().isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<T> iterator() {
        return listIterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return f().g().lastIndexOf(obj);
    }

    public T p(int i10) {
        Snapshot.Companion companion;
        int iH;
        PersistentList<T> persistentListG;
        Snapshot snapshotB;
        boolean z6;
        T t5 = get(i10);
        do {
            synchronized (SnapshotStateListKt.sync) {
                StateListStateRecord stateListStateRecord = (StateListStateRecord) m();
                companion = Snapshot.Companion;
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.A(stateListStateRecord, companion.b());
                iH = stateListStateRecord2.h();
                persistentListG = stateListStateRecord2.g();
                l0 l0Var = l0.INSTANCE;
            }
            t.g(persistentListG);
            PersistentList<T> persistentListN = persistentListG.n(i10);
            if (t.e(persistentListN, persistentListG)) {
                break;
            }
            synchronized (SnapshotStateListKt.sync) {
                StateListStateRecord stateListStateRecord3 = (StateListStateRecord) m();
                SnapshotKt.D();
                synchronized (SnapshotKt.C()) {
                    snapshotB = companion.b();
                    StateListStateRecord stateListStateRecord4 = (StateListStateRecord) SnapshotKt.Z(stateListStateRecord3, this, snapshotB);
                    if (stateListStateRecord4.h() == iH) {
                        stateListStateRecord4.i(persistentListN);
                        z6 = true;
                        stateListStateRecord4.j(stateListStateRecord4.h() + 1);
                    } else {
                        z6 = false;
                    }
                }
                SnapshotKt.J(snapshotB, this);
            }
        } while (!z6);
        return t5;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0075 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void q(int i10, int i11) {
        Snapshot.Companion companion;
        int iH;
        PersistentList<T> persistentListG;
        Snapshot snapshotB;
        boolean z6;
        do {
            synchronized (SnapshotStateListKt.sync) {
                StateListStateRecord stateListStateRecord = (StateListStateRecord) m();
                companion = Snapshot.Companion;
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.A(stateListStateRecord, companion.b());
                iH = stateListStateRecord2.h();
                persistentListG = stateListStateRecord2.g();
                l0 l0Var = l0.INSTANCE;
            }
            t.g(persistentListG);
            PersistentList.Builder<T> builder = persistentListG.builder();
            builder.subList(i10, i11).clear();
            PersistentList<T> persistentListBuild = builder.build();
            if (!t.e(persistentListBuild, persistentListG)) {
                synchronized (SnapshotStateListKt.sync) {
                    StateListStateRecord stateListStateRecord3 = (StateListStateRecord) m();
                    SnapshotKt.D();
                    synchronized (SnapshotKt.C()) {
                        try {
                            snapshotB = companion.b();
                            StateListStateRecord stateListStateRecord4 = (StateListStateRecord) SnapshotKt.Z(stateListStateRecord3, this, snapshotB);
                            if (stateListStateRecord4.h() == iH) {
                                stateListStateRecord4.i(persistentListBuild);
                                z6 = true;
                                stateListStateRecord4.j(stateListStateRecord4.h() + 1);
                            } else {
                                z6 = false;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    SnapshotKt.J(snapshotB, this);
                }
            } else {
                return;
            }
        } while (!z6);
    }

    @Override // java.util.List
    public T set(int i10, T t5) {
        Snapshot.Companion companion;
        int iH;
        PersistentList<T> persistentListG;
        Snapshot snapshotB;
        boolean z6;
        T t10 = get(i10);
        do {
            synchronized (SnapshotStateListKt.sync) {
                StateListStateRecord stateListStateRecord = (StateListStateRecord) m();
                companion = Snapshot.Companion;
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.A(stateListStateRecord, companion.b());
                iH = stateListStateRecord2.h();
                persistentListG = stateListStateRecord2.g();
                l0 l0Var = l0.INSTANCE;
            }
            t.g(persistentListG);
            PersistentList<T> persistentList = persistentListG.set(i10, t5);
            if (t.e(persistentList, persistentListG)) {
                break;
            }
            synchronized (SnapshotStateListKt.sync) {
                StateListStateRecord stateListStateRecord3 = (StateListStateRecord) m();
                SnapshotKt.D();
                synchronized (SnapshotKt.C()) {
                    snapshotB = companion.b();
                    StateListStateRecord stateListStateRecord4 = (StateListStateRecord) SnapshotKt.Z(stateListStateRecord3, this, snapshotB);
                    if (stateListStateRecord4.h() == iH) {
                        stateListStateRecord4.i(persistentList);
                        z6 = true;
                        stateListStateRecord4.j(stateListStateRecord4.h() + 1);
                    } else {
                        z6 = false;
                    }
                }
                SnapshotKt.J(snapshotB, this);
            }
        } while (!z6);
        return t10;
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return g();
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x006b */
    @Override // java.util.List
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void add(int i10, T t5) {
        Snapshot.Companion companion;
        int iH;
        PersistentList<T> persistentListG;
        Snapshot snapshotB;
        boolean z6;
        do {
            synchronized (SnapshotStateListKt.sync) {
                StateListStateRecord stateListStateRecord = (StateListStateRecord) m();
                companion = Snapshot.Companion;
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.A(stateListStateRecord, companion.b());
                iH = stateListStateRecord2.h();
                persistentListG = stateListStateRecord2.g();
                l0 l0Var = l0.INSTANCE;
            }
            t.g(persistentListG);
            PersistentList<T> persistentListAdd = persistentListG.add(i10, t5);
            if (t.e(persistentListAdd, persistentListG)) {
                return;
            }
            synchronized (SnapshotStateListKt.sync) {
                StateListStateRecord stateListStateRecord3 = (StateListStateRecord) m();
                SnapshotKt.D();
                synchronized (SnapshotKt.C()) {
                    try {
                        snapshotB = companion.b();
                        StateListStateRecord stateListStateRecord4 = (StateListStateRecord) SnapshotKt.Z(stateListStateRecord3, this, snapshotB);
                        if (stateListStateRecord4.h() == iH) {
                            stateListStateRecord4.i(persistentListAdd);
                            z6 = true;
                            stateListStateRecord4.j(stateListStateRecord4.h() + 1);
                        } else {
                            z6 = false;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                SnapshotKt.J(snapshotB, this);
            }
        } while (!z6);
    }
}
