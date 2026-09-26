package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import e8.l;
import e8.q;
import e8.s;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.collections.s0;
import kotlin.collections.z;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import y7.c;

/* JADX INFO: loaded from: classes11.dex */
public final class SelectionRegistrarImpl implements SelectionRegistrar {

    @Nullable
    private l<? super Long, l0> afterSelectableUnsubscribe;

    @Nullable
    private l<? super Long, l0> onPositionChangeCallback;

    @Nullable
    private l<? super Long, l0> onSelectableChangeCallback;

    @Nullable
    private s<? super LayoutCoordinates, ? super Offset, ? super Offset, ? super Boolean, ? super SelectionAdjustment, Boolean> onSelectionUpdateCallback;

    @Nullable
    private e8.a<l0> onSelectionUpdateEndCallback;

    @Nullable
    private l<? super Long, l0> onSelectionUpdateSelectAll;

    @Nullable
    private q<? super LayoutCoordinates, ? super Offset, ? super SelectionAdjustment, l0> onSelectionUpdateStartCallback;
    private boolean sorted;

    @NotNull
    private final List<Selectable> _selectables = new ArrayList();

    @NotNull
    private final Map<Long, Selectable> _selectableMap = new LinkedHashMap();

    @NotNull
    private AtomicLong incrementId = new AtomicLong(1);

    @NotNull
    private final MutableState subselections$delegate = SnapshotStateKt__SnapshotStateKt.e(s0.h(), null, 2, null);

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public void b(long j6) {
        this.sorted = false;
        l<? super Long, l0> lVar = this.onPositionChangeCallback;
        if (lVar != null) {
            lVar.invoke(Long.valueOf(j6));
        }
    }

    @NotNull
    public final Map<Long, Selectable> l() {
        return this._selectableMap;
    }

    @NotNull
    public final List<Selectable> m() {
        return this._selectables;
    }

    public final void n(@Nullable l<? super Long, l0> lVar) {
        this.afterSelectableUnsubscribe = lVar;
    }

    public final void o(@Nullable l<? super Long, l0> lVar) {
        this.onPositionChangeCallback = lVar;
    }

    public final void p(@Nullable l<? super Long, l0> lVar) {
        this.onSelectableChangeCallback = lVar;
    }

    public final void q(@Nullable s<? super LayoutCoordinates, ? super Offset, ? super Offset, ? super Boolean, ? super SelectionAdjustment, Boolean> sVar) {
        this.onSelectionUpdateCallback = sVar;
    }

    public final void r(@Nullable e8.a<l0> aVar) {
        this.onSelectionUpdateEndCallback = aVar;
    }

    public final void s(@Nullable l<? super Long, l0> lVar) {
        this.onSelectionUpdateSelectAll = lVar;
    }

    public final void t(@Nullable q<? super LayoutCoordinates, ? super Offset, ? super SelectionAdjustment, l0> qVar) {
        this.onSelectionUpdateStartCallback = qVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int w(LayoutCoordinates containerLayoutCoordinates, Selectable a7, Selectable b7) {
        t.j(containerLayoutCoordinates, "$containerLayoutCoordinates");
        t.j(a7, "a");
        t.j(b7, "b");
        LayoutCoordinates layoutCoordinatesC = a7.c();
        LayoutCoordinates layoutCoordinatesC2 = b7.c();
        long jO = layoutCoordinatesC != null ? containerLayoutCoordinates.O(layoutCoordinatesC, Offset.Companion.c()) : Offset.Companion.c();
        long jO2 = layoutCoordinatesC2 != null ? containerLayoutCoordinates.O(layoutCoordinatesC2, Offset.Companion.c()) : Offset.Companion.c();
        return Offset.n(jO) == Offset.n(jO2) ? c.d(Float.valueOf(Offset.m(jO)), Float.valueOf(Offset.m(jO2))) : c.d(Float.valueOf(Offset.n(jO)), Float.valueOf(Offset.n(jO2)));
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public void a(@NotNull LayoutCoordinates layoutCoordinates, long j6, @NotNull SelectionAdjustment adjustment) {
        t.j(layoutCoordinates, "layoutCoordinates");
        t.j(adjustment, "adjustment");
        q<? super LayoutCoordinates, ? super Offset, ? super SelectionAdjustment, l0> qVar = this.onSelectionUpdateStartCallback;
        if (qVar != null) {
            qVar.invoke(layoutCoordinates, Offset.d(j6), adjustment);
        }
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public void c(@NotNull Selectable selectable) {
        t.j(selectable, "selectable");
        if (this._selectableMap.containsKey(Long.valueOf(selectable.f()))) {
            this._selectables.remove(selectable);
            this._selectableMap.remove(Long.valueOf(selectable.f()));
            l<? super Long, l0> lVar = this.afterSelectableUnsubscribe;
            if (lVar != null) {
                lVar.invoke(Long.valueOf(selectable.f()));
            }
        }
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public void d() {
        e8.a<l0> aVar = this.onSelectionUpdateEndCallback;
        if (aVar != null) {
            aVar.invoke();
        }
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public long e() {
        long andIncrement = this.incrementId.getAndIncrement();
        while (andIncrement == 0) {
            andIncrement = this.incrementId.getAndIncrement();
        }
        return andIncrement;
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    @NotNull
    public Map<Long, Selection> f() {
        return (Map) this.subselections$delegate.getValue();
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public boolean g(@NotNull LayoutCoordinates layoutCoordinates, long j6, long j10, boolean z6, @NotNull SelectionAdjustment adjustment) {
        t.j(layoutCoordinates, "layoutCoordinates");
        t.j(adjustment, "adjustment");
        s<? super LayoutCoordinates, ? super Offset, ? super Offset, ? super Boolean, ? super SelectionAdjustment, Boolean> sVar = this.onSelectionUpdateCallback;
        if (sVar != null) {
            return sVar.invoke(layoutCoordinates, Offset.d(j6), Offset.d(j10), Boolean.valueOf(z6), adjustment).booleanValue();
        }
        return true;
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public void h(long j6) {
        l<? super Long, l0> lVar = this.onSelectableChangeCallback;
        if (lVar != null) {
            lVar.invoke(Long.valueOf(j6));
        }
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    public void i(long j6) {
        l<? super Long, l0> lVar = this.onSelectionUpdateSelectAll;
        if (lVar != null) {
            lVar.invoke(Long.valueOf(j6));
        }
    }

    @Override // androidx.compose.foundation.text.selection.SelectionRegistrar
    @NotNull
    public Selectable j(@NotNull Selectable selectable) {
        t.j(selectable, "selectable");
        if (selectable.f() == 0) {
            throw new IllegalArgumentException(("The selectable contains an invalid id: " + selectable.f()).toString());
        }
        if (!this._selectableMap.containsKey(Long.valueOf(selectable.f()))) {
            this._selectableMap.put(Long.valueOf(selectable.f()), selectable);
            this._selectables.add(selectable);
            this.sorted = false;
            return selectable;
        }
        throw new IllegalArgumentException(("Another selectable with the id: " + selectable + ".selectableId has already subscribed.").toString());
    }

    public void u(@NotNull Map<Long, Selection> map) {
        t.j(map, "<set-?>");
        this.subselections$delegate.setValue(map);
    }

    @NotNull
    public final List<Selectable> v(@NotNull final LayoutCoordinates containerLayoutCoordinates) {
        t.j(containerLayoutCoordinates, "containerLayoutCoordinates");
        if (!this.sorted) {
            z.C(this._selectables, new Comparator() { // from class: androidx.compose.foundation.text.selection.a
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return SelectionRegistrarImpl.w(containerLayoutCoordinates, (Selectable) obj, (Selectable) obj2);
                }
            });
            this.sorted = true;
        }
        return m();
    }
}
