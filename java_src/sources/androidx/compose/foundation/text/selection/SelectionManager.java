package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusChangedModifierKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.platform.ClipboardManager;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.platform.TextToolbarStatus;
import androidx.compose.ui.platform.e1;
import androidx.compose.ui.text.AnnotatedString;
import e8.l;
import e8.q;
import e8.s;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes4.dex */
public final class SelectionManager {

    @NotNull
    private final MutableState<Selection> _selection;

    @Nullable
    private ClipboardManager clipboardManager;

    @Nullable
    private LayoutCoordinates containerLayoutCoordinates;

    @NotNull
    private final MutableState currentDragPosition$delegate;

    @NotNull
    private final MutableState dragBeginPosition$delegate;

    @NotNull
    private final MutableState dragTotalDistance$delegate;

    @NotNull
    private final MutableState draggingHandle$delegate;

    @NotNull
    private final MutableState endHandlePosition$delegate;

    @NotNull
    private FocusRequester focusRequester;

    @Nullable
    private HapticFeedback hapticFeedBack;

    @NotNull
    private final MutableState hasFocus$delegate;

    @NotNull
    private l<? super Selection, l0> onSelectionChange;

    @Nullable
    private Offset previousPosition;

    @NotNull
    private final SelectionRegistrarImpl selectionRegistrar;

    @NotNull
    private final MutableState startHandlePosition$delegate;

    @Nullable
    private TextToolbar textToolbar;
    private boolean touchMode;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionManager$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<Long, l0> {
        AnonymousClass1() {
            super(1);
        }

        public final void a(long j6) {
            Selection selectionC;
            Selection.AnchorInfo anchorInfoC;
            Selection.AnchorInfo anchorInfoE;
            Selection selectionC2 = SelectionManager.this.C();
            if ((selectionC2 == null || (anchorInfoE = selectionC2.e()) == null || j6 != anchorInfoE.c()) && ((selectionC = SelectionManager.this.C()) == null || (anchorInfoC = selectionC.c()) == null || j6 != anchorInfoC.c())) {
                return;
            }
            SelectionManager.this.b0();
            SelectionManager.this.e0();
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Long l) {
            a(l.longValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionManager$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements q<LayoutCoordinates, Offset, SelectionAdjustment, l0> {
        AnonymousClass2() {
            super(3);
        }

        public final void a(@NotNull LayoutCoordinates layoutCoordinates, long j6, @NotNull SelectionAdjustment selectionMode) {
            t.j(layoutCoordinates, "layoutCoordinates");
            t.j(selectionMode, "selectionMode");
            Offset offsetM = SelectionManager.this.m(layoutCoordinates, j6);
            if (offsetM != null) {
                SelectionManager.this.a0(offsetM.u(), false, selectionMode);
                SelectionManager.this.x().c();
                SelectionManager.this.G();
            }
        }

        @Override // e8.q
        public /* bridge */ /* synthetic */ l0 invoke(LayoutCoordinates layoutCoordinates, Offset offset, SelectionAdjustment selectionAdjustment) {
            a(layoutCoordinates, offset.u(), selectionAdjustment);
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionManager$3, reason: invalid class name */
    static final class AnonymousClass3 extends v implements l<Long, l0> {
        AnonymousClass3() {
            super(1);
        }

        public final void a(long j6) {
            SelectionManager selectionManager = SelectionManager.this;
            u<Selection, Map<Long, Selection>> uVarK = selectionManager.K(j6, selectionManager.C());
            Selection selectionA = uVarK.a();
            Map<Long, Selection> mapB = uVarK.b();
            if (!t.e(selectionA, SelectionManager.this.C())) {
                SelectionManager.this.selectionRegistrar.u(mapB);
                SelectionManager.this.A().invoke(selectionA);
            }
            SelectionManager.this.x().c();
            SelectionManager.this.G();
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Long l) {
            a(l.longValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionManager$4, reason: invalid class name */
    static final class AnonymousClass4 extends v implements s<LayoutCoordinates, Offset, Offset, Boolean, SelectionAdjustment, Boolean> {
        AnonymousClass4() {
            super(5);
        }

        @Override // e8.s
        public /* bridge */ /* synthetic */ Boolean invoke(LayoutCoordinates layoutCoordinates, Offset offset, Offset offset2, Boolean bool, SelectionAdjustment selectionAdjustment) {
            return a(layoutCoordinates, offset.u(), offset2.u(), bool.booleanValue(), selectionAdjustment);
        }

        @NotNull
        public final Boolean a(@NotNull LayoutCoordinates layoutCoordinates, long j6, long j10, boolean z6, @NotNull SelectionAdjustment selectionMode) {
            t.j(layoutCoordinates, "layoutCoordinates");
            t.j(selectionMode, "selectionMode");
            return Boolean.valueOf(SelectionManager.this.d0(SelectionManager.this.m(layoutCoordinates, j6), SelectionManager.this.m(layoutCoordinates, j10), z6, selectionMode));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionManager$5, reason: invalid class name */
    static final class AnonymousClass5 extends v implements e8.a<l0> {
        AnonymousClass5() {
            super(0);
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() {
            invoke2();
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            SelectionManager.this.Z();
            SelectionManager.this.Q(null);
            SelectionManager.this.N(null);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionManager$6, reason: invalid class name */
    static final class AnonymousClass6 extends v implements l<Long, l0> {
        AnonymousClass6() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Long l) {
            a(l.longValue());
            return l0.INSTANCE;
        }

        public final void a(long j6) {
            if (SelectionManager.this.selectionRegistrar.f().containsKey(Long.valueOf(j6))) {
                SelectionManager.this.I();
                SelectionManager.this.V(null);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionManager$7, reason: invalid class name */
    static final class AnonymousClass7 extends v implements l<Long, l0> {
        AnonymousClass7() {
            super(1);
        }

        public final void a(long j6) {
            Selection selectionC;
            Selection.AnchorInfo anchorInfoC;
            Selection.AnchorInfo anchorInfoE;
            Selection selectionC2 = SelectionManager.this.C();
            if ((selectionC2 == null || (anchorInfoE = selectionC2.e()) == null || j6 != anchorInfoE.c()) && ((selectionC = SelectionManager.this.C()) == null || (anchorInfoC = selectionC.c()) == null || j6 != anchorInfoC.c())) {
                return;
            }
            SelectionManager.this.W(null);
            SelectionManager.this.R(null);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Long l) {
            a(l.longValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a0(long j6, boolean z6, SelectionAdjustment selectionAdjustment) {
        c0(j6, j6, null, z6, selectionAdjustment);
    }

    @NotNull
    public final l<Selection, l0> A() {
        return this.onSelectionChange;
    }

    public final void L(@Nullable ClipboardManager clipboardManager) {
        this.clipboardManager = clipboardManager;
    }

    public final void S(@Nullable HapticFeedback hapticFeedback) {
        this.hapticFeedBack = hapticFeedback;
    }

    public final void U(@NotNull l<? super Selection, l0> lVar) {
        t.j(lVar, "<set-?>");
        this.onSelectionChange = lVar;
    }

    public final void X(@Nullable TextToolbar textToolbar) {
        this.textToolbar = textToolbar;
    }

    public final void Y(boolean z6) {
        this.touchMode = z6;
    }

    @Nullable
    public final LayoutCoordinates q() {
        return this.containerLayoutCoordinates;
    }

    @NotNull
    public final FocusRequester x() {
        return this.focusRequester;
    }

    public SelectionManager(@NotNull SelectionRegistrarImpl selectionRegistrar) {
        t.j(selectionRegistrar, "selectionRegistrar");
        this.selectionRegistrar = selectionRegistrar;
        this._selection = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
        this.touchMode = true;
        this.onSelectionChange = SelectionManager$onSelectionChange$1.INSTANCE;
        this.focusRequester = new FocusRequester();
        this.hasFocus$delegate = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);
        Offset.Companion companion = Offset.Companion;
        this.dragBeginPosition$delegate = SnapshotStateKt__SnapshotStateKt.e(Offset.d(companion.c()), null, 2, null);
        this.dragTotalDistance$delegate = SnapshotStateKt__SnapshotStateKt.e(Offset.d(companion.c()), null, 2, null);
        this.startHandlePosition$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
        this.endHandlePosition$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
        this.draggingHandle$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
        this.currentDragPosition$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
        selectionRegistrar.o(new AnonymousClass1());
        selectionRegistrar.t(new AnonymousClass2());
        selectionRegistrar.s(new AnonymousClass3());
        selectionRegistrar.q(new AnonymousClass4());
        selectionRegistrar.r(new AnonymousClass5());
        selectionRegistrar.p(new AnonymousClass6());
        selectionRegistrar.n(new AnonymousClass7());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N(Offset offset) {
        this.currentDragPosition$delegate.setValue(offset);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O(long j6) {
        this.dragBeginPosition$delegate.setValue(Offset.d(j6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P(long j6) {
        this.dragTotalDistance$delegate.setValue(Offset.d(j6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q(Handle handle) {
        this.draggingHandle$delegate.setValue(handle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R(Offset offset) {
        this.endHandlePosition$delegate.setValue(offset);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W(Offset offset) {
        this.startHandlePosition$delegate.setValue(offset);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Offset m(LayoutCoordinates layoutCoordinates, long j6) {
        LayoutCoordinates layoutCoordinates2 = this.containerLayoutCoordinates;
        if (layoutCoordinates2 == null || !layoutCoordinates2.Q()) {
            return null;
        }
        return Offset.d(J().O(layoutCoordinates, j6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object o(PointerInputScope pointerInputScope, l<? super Offset, l0> lVar, d<? super l0> dVar) {
        Object objD = ForEachGestureKt.d(pointerInputScope, new SelectionManager$detectNonConsumingTap$2(lVar, null), dVar);
        return objD == kotlin.coroutines.intrinsics.d.e() ? objD : l0.INSTANCE;
    }

    @Nullable
    public final AnnotatedString B() {
        AnnotatedString annotatedStringI;
        List<Selectable> listV = this.selectionRegistrar.v(J());
        Selection selectionC = C();
        AnnotatedString annotatedString = null;
        if (selectionC == null) {
            return null;
        }
        int size = listV.size();
        for (int i10 = 0; i10 < size; i10++) {
            Selectable selectable = listV.get(i10);
            if (selectable.f() == selectionC.e().c() || selectable.f() == selectionC.c().c() || annotatedString != null) {
                AnnotatedString annotatedStringD = SelectionManagerKt.d(selectable, selectionC);
                if (annotatedString != null && (annotatedStringI = annotatedString.i(annotatedStringD)) != null) {
                    annotatedStringD = annotatedStringI;
                }
                if ((selectable.f() == selectionC.c().c() && !selectionC.d()) || (selectable.f() == selectionC.e().c() && selectionC.d())) {
                    return annotatedStringD;
                }
                annotatedString = annotatedStringD;
            }
        }
        return annotatedString;
    }

    @Nullable
    public final Selection C() {
        return this._selection.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final Offset E() {
        return (Offset) this.startHandlePosition$delegate.getValue();
    }

    @NotNull
    public final TextDragObserver F(final boolean z6) {
        return new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.SelectionManager$handleDragObserver$1
            @Override // androidx.compose.foundation.text.TextDragObserver
            public void a(long j6) {
                LayoutCoordinates layoutCoordinatesC;
                Selection selectionC = this.this$0.C();
                if (selectionC == null) {
                    return;
                }
                Selectable selectableP = this.this$0.p(z6 ? selectionC.e() : selectionC.c());
                if (selectableP == null || (layoutCoordinatesC = selectableP.c()) == null) {
                    return;
                }
                long jA = SelectionHandlesKt.a(selectableP.e(selectionC, z6));
                SelectionManager selectionManager = this.this$0;
                selectionManager.N(Offset.d(selectionManager.J().O(layoutCoordinatesC, jA)));
                this.this$0.Q(z6 ? Handle.SelectionStart : Handle.SelectionEnd);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void b(long j6) {
                SelectionManager selectionManager = this.this$0;
                selectionManager.P(Offset.r(selectionManager.u(), j6));
                long jR = Offset.r(this.this$0.t(), this.this$0.u());
                if (this.this$0.d0(Offset.d(jR), Offset.d(this.this$0.t()), z6, SelectionAdjustment.Companion.d())) {
                    this.this$0.O(jR);
                    this.this$0.P(Offset.Companion.c());
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void c(long j6) {
                LayoutCoordinates layoutCoordinatesC;
                long jE;
                this.this$0.G();
                Selection selectionC = this.this$0.C();
                t.g(selectionC);
                Selectable selectable = this.this$0.selectionRegistrar.l().get(Long.valueOf(selectionC.e().c()));
                Selectable selectable2 = this.this$0.selectionRegistrar.l().get(Long.valueOf(selectionC.c().c()));
                if (z6) {
                    layoutCoordinatesC = selectable != null ? selectable.c() : null;
                    t.g(layoutCoordinatesC);
                } else {
                    layoutCoordinatesC = selectable2 != null ? selectable2.c() : null;
                    t.g(layoutCoordinatesC);
                }
                if (z6) {
                    t.g(selectable);
                    jE = selectable.e(selectionC, true);
                } else {
                    t.g(selectable2);
                    jE = selectable2.e(selectionC, false);
                }
                long jA = SelectionHandlesKt.a(jE);
                SelectionManager selectionManager = this.this$0;
                selectionManager.O(selectionManager.J().O(layoutCoordinatesC, jA));
                this.this$0.P(Offset.Companion.c());
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void d() {
                this.this$0.Q(null);
                this.this$0.N(null);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onCancel() {
                this.this$0.Z();
                this.this$0.Q(null);
                this.this$0.N(null);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onStop() {
                this.this$0.Z();
                this.this$0.Q(null);
                this.this$0.N(null);
            }
        };
    }

    public final void I() {
        this.selectionRegistrar.u(s0.h());
        G();
        if (C() != null) {
            this.onSelectionChange.invoke(null);
            HapticFeedback hapticFeedback = this.hapticFeedBack;
            if (hapticFeedback != null) {
                hapticFeedback.a(HapticFeedbackType.Companion.b());
            }
        }
    }

    @NotNull
    public final LayoutCoordinates J() {
        LayoutCoordinates layoutCoordinates = this.containerLayoutCoordinates;
        if (layoutCoordinates == null) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (layoutCoordinates.Q()) {
            return layoutCoordinates;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    @NotNull
    public final u<Selection, Map<Long, Selection>> K(long j6, @Nullable Selection selection) {
        HapticFeedback hapticFeedback;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List<Selectable> listV = this.selectionRegistrar.v(J());
        int size = listV.size();
        Selection selectionE = null;
        for (int i10 = 0; i10 < size; i10++) {
            Selectable selectable = listV.get(i10);
            Selection selectionG = selectable.f() == j6 ? selectable.g() : null;
            if (selectionG != null) {
                linkedHashMap.put(Long.valueOf(selectable.f()), selectionG);
            }
            selectionE = SelectionManagerKt.e(selectionE, selectionG);
        }
        if (!t.e(selectionE, selection) && (hapticFeedback = this.hapticFeedBack) != null) {
            hapticFeedback.a(HapticFeedbackType.Companion.b());
        }
        return new u<>(selectionE, linkedHashMap);
    }

    public final void M(@Nullable LayoutCoordinates layoutCoordinates) {
        this.containerLayoutCoordinates = layoutCoordinates;
        if (!y() || C() == null) {
            return;
        }
        Offset offsetD = layoutCoordinates != null ? Offset.d(LayoutCoordinatesKt.f(layoutCoordinates)) : null;
        if (t.e(this.previousPosition, offsetD)) {
            return;
        }
        this.previousPosition = offsetD;
        b0();
        e0();
    }

    public final void T(boolean z6) {
        this.hasFocus$delegate.setValue(Boolean.valueOf(z6));
    }

    public final void V(@Nullable Selection selection) {
        this._selection.setValue(selection);
        if (selection != null) {
            b0();
        }
    }

    public final boolean c0(long j6, long j10, @Nullable Offset offset, boolean z6, @NotNull SelectionAdjustment adjustment) {
        t.j(adjustment, "adjustment");
        Q(z6 ? Handle.SelectionStart : Handle.SelectionEnd);
        N(z6 ? Offset.d(j6) : Offset.d(j10));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List<Selectable> listV = this.selectionRegistrar.v(J());
        int size = listV.size();
        Selection selectionE = null;
        int i10 = 0;
        boolean z10 = false;
        while (i10 < size) {
            Selectable selectable = listV.get(i10);
            int i11 = i10;
            Selection selection = selectionE;
            u<Selection, Boolean> uVarD = selectable.d(j6, j10, offset, z6, J(), adjustment, this.selectionRegistrar.f().get(Long.valueOf(selectable.f())));
            Selection selectionA = uVarD.a();
            z10 = z10 || uVarD.b().booleanValue();
            if (selectionA != null) {
                linkedHashMap.put(Long.valueOf(selectable.f()), selectionA);
            }
            selectionE = SelectionManagerKt.e(selection, selectionA);
            i10 = i11 + 1;
        }
        Selection selection2 = selectionE;
        if (!t.e(selection2, C())) {
            HapticFeedback hapticFeedback = this.hapticFeedBack;
            if (hapticFeedback != null) {
                hapticFeedback.a(HapticFeedbackType.Companion.b());
            }
            this.selectionRegistrar.u(linkedHashMap);
            this.onSelectionChange.invoke(selection2);
        }
        return z10;
    }

    public final boolean d0(@Nullable Offset offset, @Nullable Offset offset2, boolean z6, @NotNull SelectionAdjustment adjustment) {
        Selection selectionC;
        Offset offsetM;
        t.j(adjustment, "adjustment");
        if (offset == null || (selectionC = C()) == null) {
            return false;
        }
        Selectable selectable = this.selectionRegistrar.l().get(Long.valueOf(z6 ? selectionC.c().c() : selectionC.e().c()));
        if (selectable == null) {
            offsetM = null;
        } else {
            LayoutCoordinates layoutCoordinatesC = selectable.c();
            t.g(layoutCoordinatesC);
            offsetM = m(layoutCoordinatesC, SelectionHandlesKt.a(selectable.e(selectionC, !z6)));
        }
        if (offsetM == null) {
            return false;
        }
        long jU = offsetM.u();
        long jU2 = z6 ? offset.u() : jU;
        if (!z6) {
            jU = offset.u();
        }
        return c0(jU2, jU, offset2, z6, adjustment);
    }

    @Nullable
    public final Selectable p(@NotNull Selection.AnchorInfo anchor) {
        t.j(anchor, "anchor");
        return this.selectionRegistrar.l().get(Long.valueOf(anchor.c()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final Offset s() {
        return (Offset) this.currentDragPosition$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long t() {
        return ((Offset) this.dragBeginPosition$delegate.getValue()).u();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long u() {
        return ((Offset) this.dragTotalDistance$delegate.getValue()).u();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final Handle v() {
        return (Handle) this.draggingHandle$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final Offset w() {
        return (Offset) this.endHandlePosition$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean y() {
        return ((Boolean) this.hasFocus$delegate.getValue()).booleanValue();
    }

    @NotNull
    public final Modifier z() {
        Modifier modifierB = Modifier.Companion;
        Modifier modifierB2 = KeyInputModifierKt.b(FocusableKt.d(FocusChangedModifierKt.a(FocusRequesterModifierKt.a(OnGloballyPositionedModifierKt.a(H(modifierB, new SelectionManager$modifier$1(this)), new SelectionManager$modifier$2(this)), this.focusRequester), new SelectionManager$modifier$3(this)), false, null, 3, null), new SelectionManager$modifier$4(this));
        if (D()) {
            modifierB = SelectionManager_androidKt.b(modifierB, this);
        }
        return modifierB2.B(modifierB);
    }

    private final boolean D() {
        if (v() != null) {
            return true;
        }
        return false;
    }

    private final Modifier H(Modifier modifier, e8.a<l0> aVar) {
        if (y()) {
            return SuspendingPointerInputFilterKt.b(modifier, l0.INSTANCE, new SelectionManager$onClearSelectionRequested$1(this, aVar, null));
        }
        return modifier;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b0() {
        Selectable selectableP;
        Selectable selectableP2;
        LayoutCoordinates layoutCoordinatesC;
        LayoutCoordinates layoutCoordinatesC2;
        Offset offsetD;
        Selection.AnchorInfo anchorInfoC;
        Selection.AnchorInfo anchorInfoE;
        Selection selectionC = C();
        LayoutCoordinates layoutCoordinates = this.containerLayoutCoordinates;
        Offset offsetD2 = null;
        if (selectionC != null && (anchorInfoE = selectionC.e()) != null) {
            selectableP = p(anchorInfoE);
        } else {
            selectableP = null;
        }
        if (selectionC != null && (anchorInfoC = selectionC.c()) != null) {
            selectableP2 = p(anchorInfoC);
        } else {
            selectableP2 = null;
        }
        if (selectableP != null) {
            layoutCoordinatesC = selectableP.c();
        } else {
            layoutCoordinatesC = null;
        }
        if (selectableP2 != null) {
            layoutCoordinatesC2 = selectableP2.c();
        } else {
            layoutCoordinatesC2 = null;
        }
        if (selectionC != null && layoutCoordinates != null && layoutCoordinates.Q() && layoutCoordinatesC != null && layoutCoordinatesC2 != null) {
            long jO = layoutCoordinates.O(layoutCoordinatesC, selectableP.e(selectionC, true));
            long jO2 = layoutCoordinates.O(layoutCoordinatesC2, selectableP2.e(selectionC, false));
            Rect rectF = SelectionManagerKt.f(layoutCoordinates);
            if (SelectionManagerKt.c(rectF, jO)) {
                offsetD = Offset.d(jO);
            } else {
                offsetD = null;
            }
            W(offsetD);
            if (SelectionManagerKt.c(rectF, jO2)) {
                offsetD2 = Offset.d(jO2);
            }
            R(offsetD2);
            return;
        }
        W(null);
        R(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e0() {
        TextToolbarStatus status;
        if (y()) {
            TextToolbar textToolbar = this.textToolbar;
            if (textToolbar != null) {
                status = textToolbar.getStatus();
            } else {
                status = null;
            }
            if (status == TextToolbarStatus.Shown) {
                Z();
            }
        }
    }

    private final Rect r() {
        LayoutCoordinates layoutCoordinatesC;
        LayoutCoordinates layoutCoordinatesC2;
        Selection selectionC = C();
        if (selectionC == null) {
            return Rect.Companion.a();
        }
        Selectable selectableP = p(selectionC.e());
        Selectable selectableP2 = p(selectionC.c());
        if (selectableP != null && (layoutCoordinatesC = selectableP.c()) != null) {
            if (selectableP2 != null && (layoutCoordinatesC2 = selectableP2.c()) != null) {
                LayoutCoordinates layoutCoordinates = this.containerLayoutCoordinates;
                if (layoutCoordinates != null && layoutCoordinates.Q()) {
                    long jO = layoutCoordinates.O(layoutCoordinatesC, selectableP.e(selectionC, true));
                    long jO2 = layoutCoordinates.O(layoutCoordinatesC2, selectableP2.e(selectionC, false));
                    long jK = layoutCoordinates.K(jO);
                    long jK2 = layoutCoordinates.K(jO2);
                    return new Rect(Math.min(Offset.m(jK), Offset.m(jK2)), Math.min(Offset.n(layoutCoordinates.K(layoutCoordinates.O(layoutCoordinatesC, OffsetKt.a(0.0f, selectableP.b(selectionC.e().b()).m())))), Offset.n(layoutCoordinates.K(layoutCoordinates.O(layoutCoordinatesC2, OffsetKt.a(0.0f, selectableP2.b(selectionC.c().b()).m()))))), Math.max(Offset.m(jK), Offset.m(jK2)), Math.max(Offset.n(jK), Offset.n(jK2)) + ((float) (((double) SelectionHandlesKt.b()) * 4.0d)));
                }
                return Rect.Companion.a();
            }
            return Rect.Companion.a();
        }
        return Rect.Companion.a();
    }

    public final void G() {
        TextToolbarStatus status;
        TextToolbar textToolbar;
        if (y()) {
            TextToolbar textToolbar2 = this.textToolbar;
            if (textToolbar2 != null) {
                status = textToolbar2.getStatus();
            } else {
                status = null;
            }
            if (status == TextToolbarStatus.Shown && (textToolbar = this.textToolbar) != null) {
                textToolbar.hide();
            }
        }
    }

    public final void Z() {
        TextToolbar textToolbar;
        if (y() && C() != null && (textToolbar = this.textToolbar) != null) {
            e1.a(textToolbar, r(), new SelectionManager$showSelectionToolbar$1$1(this), null, null, null, 28, null);
        }
    }

    public final void n() {
        ClipboardManager clipboardManager;
        AnnotatedString annotatedStringB = B();
        if (annotatedStringB != null && (clipboardManager = this.clipboardManager) != null) {
            clipboardManager.b(annotatedStringB);
        }
    }
}
