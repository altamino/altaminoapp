package androidx.compose.foundation.text;

import androidx.compose.foundation.relocation.BringIntoViewRequester;
import androidx.compose.foundation.relocation.BringIntoViewRequesterKt;
import androidx.compose.foundation.text.selection.SimpleLayoutKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.c;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.l;
import e8.p;
import e8.q;
import java.util.List;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.l0;
import w7.z;

/* JADX INFO: loaded from: classes.dex */
final class CoreTextFieldKt$CoreTextField$5 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty1;
    final /* synthetic */ BringIntoViewRequester $bringIntoViewRequester;
    final /* synthetic */ Modifier $cursorModifier;
    final /* synthetic */ q<p<? super Composer, ? super Integer, l0>, Composer, Integer, l0> $decorationBox;
    final /* synthetic */ Modifier $drawModifier;
    final /* synthetic */ Modifier $magnifierModifier;
    final /* synthetic */ TextFieldSelectionManager $manager;
    final /* synthetic */ int $maxLines;
    final /* synthetic */ Modifier $onPositionedModifier;
    final /* synthetic */ l<TextLayoutResult, l0> $onTextLayout;
    final /* synthetic */ boolean $readOnly;
    final /* synthetic */ TextFieldScrollerPosition $scrollerPosition;
    final /* synthetic */ boolean $showHandleAndMagnifier;
    final /* synthetic */ TextFieldState $state;
    final /* synthetic */ TextStyle $textStyle;
    final /* synthetic */ TextFieldValue $value;
    final /* synthetic */ VisualTransformation $visualTransformation;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$5$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ BringIntoViewRequester $bringIntoViewRequester;
        final /* synthetic */ Modifier $cursorModifier;
        final /* synthetic */ Modifier $drawModifier;
        final /* synthetic */ Modifier $magnifierModifier;
        final /* synthetic */ TextFieldSelectionManager $manager;
        final /* synthetic */ int $maxLines;
        final /* synthetic */ Modifier $onPositionedModifier;
        final /* synthetic */ l<TextLayoutResult, l0> $onTextLayout;
        final /* synthetic */ boolean $readOnly;
        final /* synthetic */ TextFieldScrollerPosition $scrollerPosition;
        final /* synthetic */ boolean $showHandleAndMagnifier;
        final /* synthetic */ TextFieldState $state;
        final /* synthetic */ TextStyle $textStyle;
        final /* synthetic */ TextFieldValue $value;
        final /* synthetic */ VisualTransformation $visualTransformation;

        /* JADX INFO: renamed from: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$5$1$1, reason: invalid class name and collision with other inner class name */
        static final class C00411 extends v implements p<Composer, Integer, l0> {
            final /* synthetic */ TextFieldSelectionManager $manager;
            final /* synthetic */ l<TextLayoutResult, l0> $onTextLayout;
            final /* synthetic */ boolean $readOnly;
            final /* synthetic */ boolean $showHandleAndMagnifier;
            final /* synthetic */ TextFieldState $state;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C00411(TextFieldSelectionManager textFieldSelectionManager, TextFieldState textFieldState, boolean z6, boolean z10, l<? super TextLayoutResult, l0> lVar) {
                super(2);
                this.$manager = textFieldSelectionManager;
                this.$state = textFieldState;
                this.$showHandleAndMagnifier = z6;
                this.$readOnly = z10;
                this.$onTextLayout = lVar;
            }

            @ComposableTarget
            @Composable
            public final void a(@Nullable Composer composer, int i10) {
                if ((i10 & 11) == 2 && composer.b()) {
                    composer.g();
                    return;
                }
                final TextFieldState textFieldState = this.$state;
                final l<TextLayoutResult, l0> lVar = this.$onTextLayout;
                MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.foundation.text.CoreTextFieldKt.CoreTextField.5.1.1.2
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i11) {
                        return c.c(this, intrinsicMeasureScope, list, i11);
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i11) {
                        return c.d(this, intrinsicMeasureScope, list, i11);
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i11) {
                        return c.a(this, intrinsicMeasureScope, list, i11);
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    @NotNull
                    public MeasureResult a(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j6) {
                        t.j(measure, "$this$measure");
                        t.j(measurables, "measurables");
                        Snapshot.Companion companion = Snapshot.Companion;
                        TextFieldState textFieldState2 = textFieldState;
                        Snapshot snapshotA = companion.a();
                        try {
                            Snapshot snapshotK = snapshotA.k();
                            try {
                                TextLayoutResultProxy textLayoutResultProxyG = textFieldState2.g();
                                TextLayoutResult textLayoutResultI = textLayoutResultProxyG != null ? textLayoutResultProxyG.i() : null;
                                snapshotA.r(snapshotK);
                                snapshotA.d();
                                z<Integer, Integer, TextLayoutResult> zVarD = TextFieldDelegate.Companion.d(textFieldState.q(), j6, measure.getLayoutDirection(), textLayoutResultI);
                                int iIntValue = zVarD.a().intValue();
                                int iIntValue2 = zVarD.b().intValue();
                                TextLayoutResult textLayoutResultC = zVarD.c();
                                if (!t.e(textLayoutResultI, textLayoutResultC)) {
                                    textFieldState.v(new TextLayoutResultProxy(textLayoutResultC));
                                    lVar.invoke(textLayoutResultC);
                                }
                                return measure.G0(iIntValue, iIntValue2, s0.l(a0.a(AlignmentLineKt.a(), Integer.valueOf(g8.c.c(textLayoutResultC.g()))), a0.a(AlignmentLineKt.b(), Integer.valueOf(g8.c.c(textLayoutResultC.j())))), CoreTextFieldKt$CoreTextField$5$1$1$2$measure$1.INSTANCE);
                            } catch (Throwable th) {
                                snapshotA.r(snapshotK);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            snapshotA.d();
                            throw th2;
                        }
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public int e(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i11) {
                        t.j(intrinsicMeasureScope, "<this>");
                        t.j(measurables, "measurables");
                        textFieldState.q().n(intrinsicMeasureScope.getLayoutDirection());
                        return textFieldState.q().c();
                    }
                };
                composer.G(-1323940314);
                Modifier.Companion companion = Modifier.Companion;
                Density density = (Density) composer.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                a<ComposeUiNode> aVarA = companion2.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(companion);
                if (!(composer.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composer.e();
                if (composer.r()) {
                    composer.w(aVarA);
                } else {
                    composer.c();
                }
                composer.L();
                Composer composerA = Updater.a(composer);
                Updater.e(composerA, measurePolicy, companion2.d());
                Updater.e(composerA, density, companion2.b());
                Updater.e(composerA, layoutDirection, companion2.c());
                Updater.e(composerA, viewConfiguration, companion2.f());
                composer.o();
                boolean z6 = false;
                qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composer)), composer, 0);
                composer.G(2058660585);
                composer.G(1714611517);
                composer.Q();
                composer.Q();
                composer.d();
                composer.Q();
                TextFieldSelectionManager textFieldSelectionManager = this.$manager;
                if (this.$state.c() == HandleState.Selection && this.$state.f() != null) {
                    LayoutCoordinates layoutCoordinatesF = this.$state.f();
                    t.g(layoutCoordinatesF);
                    if (layoutCoordinatesF.Q() && this.$showHandleAndMagnifier) {
                        z6 = true;
                    }
                }
                CoreTextFieldKt.c(textFieldSelectionManager, z6, composer, 8);
                if (this.$state.c() == HandleState.Cursor && !this.$readOnly && this.$showHandleAndMagnifier) {
                    CoreTextFieldKt.d(this.$manager, composer, 8);
                }
            }

            @Override // e8.p
            public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
                a(composer, num.intValue());
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(int i10, TextStyle textStyle, TextFieldScrollerPosition textFieldScrollerPosition, TextFieldValue textFieldValue, VisualTransformation visualTransformation, Modifier modifier, Modifier modifier2, Modifier modifier3, Modifier modifier4, BringIntoViewRequester bringIntoViewRequester, TextFieldState textFieldState, TextFieldSelectionManager textFieldSelectionManager, boolean z6, boolean z10, l<? super TextLayoutResult, l0> lVar) {
            super(2);
            this.$maxLines = i10;
            this.$textStyle = textStyle;
            this.$scrollerPosition = textFieldScrollerPosition;
            this.$value = textFieldValue;
            this.$visualTransformation = visualTransformation;
            this.$cursorModifier = modifier;
            this.$drawModifier = modifier2;
            this.$onPositionedModifier = modifier3;
            this.$magnifierModifier = modifier4;
            this.$bringIntoViewRequester = bringIntoViewRequester;
            this.$state = textFieldState;
            this.$manager = textFieldSelectionManager;
            this.$showHandleAndMagnifier = z6;
            this.$readOnly = z10;
            this.$onTextLayout = lVar;
        }

        @ComposableTarget
        @Composable
        public final void a(@Nullable Composer composer, int i10) {
            if ((i10 & 11) == 2 && composer.b()) {
                composer.g();
            } else {
                SimpleLayoutKt.a(BringIntoViewRequesterKt.b(TextFieldSizeKt.a(TextFieldScrollKt.c(MaxLinesHeightModifierKt.a(Modifier.Companion, this.$maxLines, this.$textStyle), this.$scrollerPosition, this.$value, this.$visualTransformation, new CoreTextFieldKt$CoreTextField$5$1$coreTextFieldModifier$1(this.$state)).B(this.$cursorModifier).B(this.$drawModifier), this.$textStyle).B(this.$onPositionedModifier).B(this.$magnifierModifier), this.$bringIntoViewRequester), ComposableLambdaKt.b(composer, 19580180, true, new C00411(this.$manager, this.$state, this.$showHandleAndMagnifier, this.$readOnly, this.$onTextLayout)), composer, 48, 0);
            }
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    CoreTextFieldKt$CoreTextField$5(q<? super p<? super Composer, ? super Integer, l0>, ? super Composer, ? super Integer, l0> qVar, int i10, int i11, TextStyle textStyle, TextFieldScrollerPosition textFieldScrollerPosition, TextFieldValue textFieldValue, VisualTransformation visualTransformation, Modifier modifier, Modifier modifier2, Modifier modifier3, Modifier modifier4, BringIntoViewRequester bringIntoViewRequester, TextFieldState textFieldState, TextFieldSelectionManager textFieldSelectionManager, boolean z6, boolean z10, l<? super TextLayoutResult, l0> lVar) {
        super(2);
        this.$decorationBox = qVar;
        this.$$dirty1 = i10;
        this.$maxLines = i11;
        this.$textStyle = textStyle;
        this.$scrollerPosition = textFieldScrollerPosition;
        this.$value = textFieldValue;
        this.$visualTransformation = visualTransformation;
        this.$cursorModifier = modifier;
        this.$drawModifier = modifier2;
        this.$onPositionedModifier = modifier3;
        this.$magnifierModifier = modifier4;
        this.$bringIntoViewRequester = bringIntoViewRequester;
        this.$state = textFieldState;
        this.$manager = textFieldSelectionManager;
        this.$showHandleAndMagnifier = z6;
        this.$readOnly = z10;
        this.$onTextLayout = lVar;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            this.$decorationBox.invoke(ComposableLambdaKt.b(composer, 207445534, true, new AnonymousClass1(this.$maxLines, this.$textStyle, this.$scrollerPosition, this.$value, this.$visualTransformation, this.$cursorModifier, this.$drawModifier, this.$onPositionedModifier, this.$magnifierModifier, this.$bringIntoViewRequester, this.$state, this.$manager, this.$showHandleAndMagnifier, this.$readOnly, this.$onTextLayout)), composer, Integer.valueOf(((this.$$dirty1 >> 9) & 112) | 6));
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
