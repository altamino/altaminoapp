package androidx.compose.material.internal;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.c;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.l;
import e8.p;
import e8.q;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ State<p<Composer, Integer, l0>> $currentContent$delegate;
    final /* synthetic */ PopupLayout $this_apply;

    /* JADX INFO: renamed from: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<SemanticsPropertyReceiver, l0> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        public final void a(@NotNull SemanticsPropertyReceiver semantics) {
            t.j(semantics, "$this$semantics");
            SemanticsPropertiesKt.x(semantics);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
            a(semanticsPropertyReceiver);
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements l<IntSize, l0> {
        final /* synthetic */ PopupLayout $this_apply;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(PopupLayout popupLayout) {
            super(1);
            this.$this_apply = popupLayout;
        }

        public final void a(long j6) {
            this.$this_apply.m1setPopupContentSizefhxjrPA(IntSize.b(j6));
            this.$this_apply.t();
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(IntSize intSize) {
            a(intSize.j());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1$3, reason: invalid class name */
    static final class AnonymousClass3 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ State<p<Composer, Integer, l0>> $currentContent$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass3(State<? extends p<? super Composer, ? super Integer, l0>> state) {
            super(2);
            this.$currentContent$delegate = state;
        }

        @ComposableTarget
        @Composable
        public final void a(@Nullable Composer composer, int i10) {
            if ((i10 & 11) == 2 && composer.b()) {
                composer.g();
            } else {
                ExposedDropdownMenuPopupKt.b(this.$currentContent$delegate).invoke(composer, 0);
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
    ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1(PopupLayout popupLayout, State<? extends p<? super Composer, ? super Integer, l0>> state) {
        super(2);
        this.$this_apply = popupLayout;
        this.$currentContent$delegate = state;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        Modifier modifierA = AlphaKt.a(OnRemeasuredModifierKt.a(SemanticsModifierKt.c(Modifier.Companion, false, AnonymousClass1.INSTANCE, 1, null), new AnonymousClass2(this.$this_apply)), this.$this_apply.getCanCalculatePosition() ? 1.0f : 0.0f);
        ComposableLambda composableLambdaB = ComposableLambdaKt.b(composer, 2080999218, true, new AnonymousClass3(this.$currentContent$delegate));
        composer.G(1769324208);
        ExposedDropdownMenuPopupKt$SimpleStack$1 exposedDropdownMenuPopupKt$SimpleStack$1 = new MeasurePolicy() { // from class: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$SimpleStack$1
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
            public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i11) {
                return c.b(this, intrinsicMeasureScope, list, i11);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            @NotNull
            public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j6) {
                int i11;
                int i12;
                t.j(Layout, "$this$Layout");
                t.j(measurables, "measurables");
                int size = measurables.size();
                if (size == 0) {
                    return MeasureScope.CC.b(Layout, 0, 0, null, ExposedDropdownMenuPopupKt$SimpleStack$1$measure$1.INSTANCE, 4, null);
                }
                int i13 = 0;
                if (size == 1) {
                    Placeable placeableB0 = measurables.get(0).b0(j6);
                    return MeasureScope.CC.b(Layout, placeableB0.Q0(), placeableB0.B0(), null, new ExposedDropdownMenuPopupKt$SimpleStack$1$measure$2(placeableB0), 4, null);
                }
                ArrayList arrayList = new ArrayList(measurables.size());
                int size2 = measurables.size();
                for (int i14 = 0; i14 < size2; i14++) {
                    arrayList.add(measurables.get(i14).b0(j6));
                }
                int iO = kotlin.collections.v.o(arrayList);
                if (iO >= 0) {
                    int iMax = 0;
                    int iMax2 = 0;
                    while (true) {
                        Placeable placeable = (Placeable) arrayList.get(i13);
                        iMax = Math.max(iMax, placeable.Q0());
                        iMax2 = Math.max(iMax2, placeable.B0());
                        if (i13 == iO) {
                            break;
                        }
                        i13++;
                    }
                    i11 = iMax;
                    i12 = iMax2;
                } else {
                    i11 = 0;
                    i12 = 0;
                }
                return MeasureScope.CC.b(Layout, i11, i12, null, new ExposedDropdownMenuPopupKt$SimpleStack$1$measure$3(arrayList), 4, null);
            }
        };
        composer.G(-1323940314);
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        a<ComposeUiNode> aVarA = companion.a();
        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierA);
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
        Updater.e(composerA, exposedDropdownMenuPopupKt$SimpleStack$1, companion.d());
        Updater.e(composerA, density, companion.b());
        Updater.e(composerA, layoutDirection, companion.c());
        Updater.e(composerA, viewConfiguration, companion.f());
        composer.o();
        qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composer)), composer, 0);
        composer.G(2058660585);
        composableLambdaB.invoke(composer, 6);
        composer.Q();
        composer.d();
        composer.Q();
        composer.Q();
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
