package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.foundation.text.selection.MultiWidgetSelectionDelegate;
import androidx.compose.foundation.text.selection.Selectable;
import androidx.compose.foundation.text.selection.SelectionAdjustment;
import androidx.compose.foundation.text.selection.SelectionRegistrar;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.input.pointer.PointerIconKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import g8.c;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.u;

/* JADX INFO: loaded from: classes.dex */
public final class TextController implements RememberObserver {

    @NotNull
    private final Modifier coreModifiers;
    public TextDragObserver longPressDragObserver;

    @NotNull
    private final MeasurePolicy measurePolicy;

    @NotNull
    private Modifier selectionModifiers;

    @Nullable
    private SelectionRegistrar selectionRegistrar;

    @NotNull
    private Modifier semanticsModifier;

    @NotNull
    private final TextState state;

    @NotNull
    public final MeasurePolicy i() {
        return this.measurePolicy;
    }

    @NotNull
    public final TextState k() {
        return this.state;
    }

    public final void m(@NotNull TextDragObserver textDragObserver) {
        t.j(textDragObserver, "<set-?>");
        this.longPressDragObserver = textDragObserver;
    }

    public TextController(@NotNull TextState state) {
        t.j(state, "state");
        this.state = state;
        this.measurePolicy = new MeasurePolicy() { // from class: androidx.compose.foundation.text.TextController$measurePolicy$1
            @Override // androidx.compose.ui.layout.MeasurePolicy
            @NotNull
            public MeasureResult a(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j6) {
                SelectionRegistrar selectionRegistrar;
                t.j(measure, "$this$measure");
                t.j(measurables, "measurables");
                TextLayoutResult textLayoutResultC = this.this$0.k().c();
                TextLayoutResult textLayoutResultL = this.this$0.k().i().l(j6, measure.getLayoutDirection(), textLayoutResultC);
                if (!t.e(textLayoutResultC, textLayoutResultL)) {
                    this.this$0.k().d().invoke(textLayoutResultL);
                    if (textLayoutResultC != null) {
                        TextController textController = this.this$0;
                        if (!t.e(textLayoutResultC.k().j(), textLayoutResultL.k().j()) && (selectionRegistrar = textController.selectionRegistrar) != null) {
                            selectionRegistrar.h(textController.k().g());
                        }
                    }
                }
                this.this$0.k().l(textLayoutResultL);
                if (measurables.size() < textLayoutResultL.z().size()) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                List<Rect> listZ = textLayoutResultL.z();
                ArrayList arrayList = new ArrayList(listZ.size());
                int size = listZ.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Rect rect = listZ.get(i10);
                    u uVar = rect != null ? new u(measurables.get(i10).b0(ConstraintsKt.b(0, (int) Math.floor(rect.p()), 0, (int) Math.floor(rect.i()), 5, null)), IntOffset.b(IntOffsetKt.a(c.c(rect.j()), c.c(rect.m())))) : null;
                    if (uVar != null) {
                        arrayList.add(uVar);
                    }
                }
                return measure.G0(IntSize.g(textLayoutResultL.A()), IntSize.f(textLayoutResultL.A()), s0.l(a0.a(AlignmentLineKt.a(), Integer.valueOf(c.c(textLayoutResultL.g()))), a0.a(AlignmentLineKt.b(), Integer.valueOf(c.c(textLayoutResultL.j())))), new TextController$measurePolicy$1$measure$2(arrayList));
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int b(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                t.j(intrinsicMeasureScope, "<this>");
                t.j(measurables, "measurables");
                return IntSize.f(TextDelegate.m(this.this$0.k().i(), ConstraintsKt.a(0, i10, 0, Integer.MAX_VALUE), intrinsicMeasureScope.getLayoutDirection(), null, 4, null).A());
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int c(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                t.j(intrinsicMeasureScope, "<this>");
                t.j(measurables, "measurables");
                this.this$0.k().i().n(intrinsicMeasureScope.getLayoutDirection());
                return this.this$0.k().i().e();
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int d(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                t.j(intrinsicMeasureScope, "<this>");
                t.j(measurables, "measurables");
                return IntSize.f(TextDelegate.m(this.this$0.k().i(), ConstraintsKt.a(0, i10, 0, Integer.MAX_VALUE), intrinsicMeasureScope.getLayoutDirection(), null, 4, null).A());
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int e(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                t.j(intrinsicMeasureScope, "<this>");
                t.j(measurables, "measurables");
                this.this$0.k().i().n(intrinsicMeasureScope.getLayoutDirection());
                return this.this$0.k().i().c();
            }
        };
        Modifier.Companion companion = Modifier.Companion;
        this.coreModifiers = OnGloballyPositionedModifierKt.a(g(companion), new TextController$coreModifiers$1(this));
        this.semanticsModifier = f(state.i().k());
        this.selectionModifiers = companion;
    }

    private final Modifier f(AnnotatedString annotatedString) {
        return SemanticsModifierKt.c(Modifier.Companion, false, new TextController$createSemanticsModifierFor$1(annotatedString, this), 1, null);
    }

    @Stable
    private final Modifier g(Modifier modifier) {
        return DrawModifierKt.a(GraphicsLayerModifierKt.c(modifier, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 65535, null), new TextController$drawTextAndSelectionBehind$1(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean l(long j6, long j10) {
        TextLayoutResult textLayoutResultC = this.state.c();
        if (textLayoutResultC == null) {
            return false;
        }
        int length = textLayoutResultC.k().j().g().length();
        int iW = textLayoutResultC.w(j6);
        int iW2 = textLayoutResultC.w(j10);
        int i10 = length - 1;
        return (iW >= i10 && iW2 >= i10) || (iW < 0 && iW2 < 0);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void b() {
        SelectionRegistrar selectionRegistrar = this.selectionRegistrar;
        if (selectionRegistrar != null) {
            TextState textState = this.state;
            textState.o(selectionRegistrar.j(new MultiWidgetSelectionDelegate(textState.g(), new TextController$onRemembered$1$1(this), new TextController$onRemembered$1$2(this))));
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void c() {
        SelectionRegistrar selectionRegistrar;
        Selectable selectableF = this.state.f();
        if (selectableF == null || (selectionRegistrar = this.selectionRegistrar) == null) {
            return;
        }
        selectionRegistrar.c(selectableF);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void d() {
        SelectionRegistrar selectionRegistrar;
        Selectable selectableF = this.state.f();
        if (selectableF == null || (selectionRegistrar = this.selectionRegistrar) == null) {
            return;
        }
        selectionRegistrar.c(selectableF);
    }

    @NotNull
    public final TextDragObserver h() {
        TextDragObserver textDragObserver = this.longPressDragObserver;
        if (textDragObserver != null) {
            return textDragObserver;
        }
        t.B("longPressDragObserver");
        return null;
    }

    @NotNull
    public final Modifier j() {
        return this.coreModifiers.B(this.semanticsModifier).B(this.selectionModifiers);
    }

    public final void n(@NotNull TextDelegate textDelegate) {
        t.j(textDelegate, "textDelegate");
        if (this.state.i() == textDelegate) {
            return;
        }
        this.state.q(textDelegate);
        this.semanticsModifier = f(this.state.i().k());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.foundation.text.TextController$update$mouseSelectionObserver$1, java.lang.Object] */
    public final void o(@Nullable final SelectionRegistrar selectionRegistrar) {
        Modifier modifierB;
        this.selectionRegistrar = selectionRegistrar;
        if (selectionRegistrar == null) {
            modifierB = Modifier.Companion;
        } else if (TouchMode_androidKt.a()) {
            m(new TextDragObserver() { // from class: androidx.compose.foundation.text.TextController$update$1
                private long dragTotalDistance;
                private long lastPosition;

                @Override // androidx.compose.foundation.text.TextDragObserver
                public void a(long j6) {
                }

                @Override // androidx.compose.foundation.text.TextDragObserver
                public void d() {
                }

                {
                    Offset.Companion companion = Offset.Companion;
                    this.lastPosition = companion.c();
                    this.dragTotalDistance = companion.c();
                }

                @Override // androidx.compose.foundation.text.TextDragObserver
                public void b(long j6) {
                    LayoutCoordinates layoutCoordinatesB = this.this$0.k().b();
                    if (layoutCoordinatesB != null) {
                        SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                        TextController textController = this.this$0;
                        if (layoutCoordinatesB.Q() && SelectionRegistrarKt.b(selectionRegistrar2, textController.k().g())) {
                            long jR = Offset.r(this.dragTotalDistance, j6);
                            this.dragTotalDistance = jR;
                            long jR2 = Offset.r(this.lastPosition, jR);
                            if (textController.l(this.lastPosition, jR2) || !selectionRegistrar2.g(layoutCoordinatesB, jR2, this.lastPosition, false, SelectionAdjustment.Companion.d())) {
                                return;
                            }
                            this.lastPosition = jR2;
                            this.dragTotalDistance = Offset.Companion.c();
                        }
                    }
                }

                @Override // androidx.compose.foundation.text.TextDragObserver
                public void c(long j6) {
                    LayoutCoordinates layoutCoordinatesB = this.this$0.k().b();
                    if (layoutCoordinatesB != null) {
                        TextController textController = this.this$0;
                        SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                        if (!layoutCoordinatesB.Q()) {
                            return;
                        }
                        if (textController.l(j6, j6)) {
                            selectionRegistrar2.i(textController.k().g());
                        } else {
                            selectionRegistrar2.a(layoutCoordinatesB, j6, SelectionAdjustment.Companion.g());
                        }
                        this.lastPosition = j6;
                    }
                    if (SelectionRegistrarKt.b(selectionRegistrar, this.this$0.k().g())) {
                        this.dragTotalDistance = Offset.Companion.c();
                    }
                }

                @Override // androidx.compose.foundation.text.TextDragObserver
                public void onCancel() {
                    if (SelectionRegistrarKt.b(selectionRegistrar, this.this$0.k().g())) {
                        selectionRegistrar.d();
                    }
                }

                @Override // androidx.compose.foundation.text.TextDragObserver
                public void onStop() {
                    if (SelectionRegistrarKt.b(selectionRegistrar, this.this$0.k().g())) {
                        selectionRegistrar.d();
                    }
                }
            });
            modifierB = SuspendingPointerInputFilterKt.b(Modifier.Companion, h(), new TextController$update$2(this, null));
        } else {
            ?? r1 = new MouseSelectionObserver() { // from class: androidx.compose.foundation.text.TextController$update$mouseSelectionObserver$1
                private long lastPosition = Offset.Companion.c();

                @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
                public boolean a(long j6, @NotNull SelectionAdjustment adjustment) {
                    t.j(adjustment, "adjustment");
                    LayoutCoordinates layoutCoordinatesB = this.this$0.k().b();
                    if (layoutCoordinatesB != null) {
                        SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                        TextController textController = this.this$0;
                        if (!layoutCoordinatesB.Q() || !SelectionRegistrarKt.b(selectionRegistrar2, textController.k().g())) {
                            return false;
                        }
                        if (selectionRegistrar2.g(layoutCoordinatesB, j6, this.lastPosition, false, adjustment)) {
                            this.lastPosition = j6;
                        }
                    }
                    return true;
                }

                @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
                public boolean b(long j6) {
                    LayoutCoordinates layoutCoordinatesB = this.this$0.k().b();
                    if (layoutCoordinatesB == null) {
                        return true;
                    }
                    SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                    TextController textController = this.this$0;
                    if (!layoutCoordinatesB.Q() || !SelectionRegistrarKt.b(selectionRegistrar2, textController.k().g())) {
                        return false;
                    }
                    if (!selectionRegistrar2.g(layoutCoordinatesB, j6, this.lastPosition, false, SelectionAdjustment.Companion.e())) {
                        return true;
                    }
                    this.lastPosition = j6;
                    return true;
                }

                @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
                public boolean c(long j6, @NotNull SelectionAdjustment adjustment) {
                    t.j(adjustment, "adjustment");
                    LayoutCoordinates layoutCoordinatesB = this.this$0.k().b();
                    if (layoutCoordinatesB == null) {
                        return false;
                    }
                    SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                    TextController textController = this.this$0;
                    if (!layoutCoordinatesB.Q()) {
                        return false;
                    }
                    selectionRegistrar2.a(layoutCoordinatesB, j6, adjustment);
                    this.lastPosition = j6;
                    return SelectionRegistrarKt.b(selectionRegistrar2, textController.k().g());
                }

                @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
                public boolean d(long j6) {
                    LayoutCoordinates layoutCoordinatesB = this.this$0.k().b();
                    if (layoutCoordinatesB == null) {
                        return false;
                    }
                    SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                    TextController textController = this.this$0;
                    if (!layoutCoordinatesB.Q()) {
                        return false;
                    }
                    if (selectionRegistrar2.g(layoutCoordinatesB, j6, this.lastPosition, false, SelectionAdjustment.Companion.e())) {
                        this.lastPosition = j6;
                    }
                    return SelectionRegistrarKt.b(selectionRegistrar2, textController.k().g());
                }
            };
            modifierB = PointerIconKt.b(SuspendingPointerInputFilterKt.b(Modifier.Companion, r1, new TextController$update$3(r1, null)), TextPointerIcon_androidKt.a(), false, 2, null);
        }
        this.selectionModifiers = modifierB;
    }
}
