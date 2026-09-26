package androidx.compose.ui.window;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.layout.c;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.p;
import e8.q;
import java.util.List;
import java.util.UUID;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidPopup_androidKt {

    @NotNull
    private static final ProvidableCompositionLocal<String> LocalPopupTestTag = CompositionLocalKt.d(null, AndroidPopup_androidKt$LocalPopupTestTag$1.INSTANCE, 1, null);

    /* JADX WARN: Code duplicated, block: B:26:0x004f  */
    /* JADX WARN: Code duplicated, block: B:28:0x0053  */
    /* JADX WARN: Code duplicated, block: B:30:0x005b  */
    /* JADX WARN: Code duplicated, block: B:31:0x005e  */
    /* JADX WARN: Code duplicated, block: B:34:0x0064  */
    /* JADX WARN: Code duplicated, block: B:37:0x006a  */
    /* JADX WARN: Code duplicated, block: B:38:0x006d  */
    /* JADX WARN: Code duplicated, block: B:40:0x0071  */
    /* JADX WARN: Code duplicated, block: B:42:0x0077  */
    /* JADX WARN: Code duplicated, block: B:43:0x007a  */
    /* JADX WARN: Code duplicated, block: B:51:0x008f  */
    /* JADX WARN: Code duplicated, block: B:53:0x0096  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a6 A[PHI: r0 r2
      0x00a6: PHI (r0v39 int) = (r0v16 int), (r0v16 int), (r0v40 int) binds: [B:63:0x00b2, B:57:0x00a2, B:58:0x00a4] A[DONT_GENERATE, DONT_INLINE]
      0x00a6: PHI (r2v17 e8.a<w7.l0>) = (r2v3 e8.a<w7.l0>), (r2v2 e8.a<w7.l0>), (r2v2 e8.a<w7.l0>) binds: [B:63:0x00b2, B:57:0x00a2, B:58:0x00a4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:60:0x00ad A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x00af  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:67:0x0139  */
    /* JADX WARN: Code duplicated, block: B:68:0x0179  */
    /* JADX WARN: Code duplicated, block: B:71:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:74:0x0205  */
    /* JADX WARN: Code duplicated, block: B:75:0x0209  */
    /* JADX WARN: Code duplicated, block: B:80:0x0264  */
    /* JADX WARN: Code duplicated, block: B:82:? A[RETURN, SYNTHETIC] */
    @Composable
    @ComposableInferredTarget
    public static final void a(@NotNull PopupPositionProvider popupPositionProvider, @Nullable a<l0> aVar, @Nullable PopupProperties popupProperties, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        a<l0> aVar2;
        PopupProperties popupProperties2;
        int i13;
        int i14;
        PopupProperties popupProperties3;
        a<l0> aVar3;
        View view;
        Density density;
        String str;
        CompositionContext compositionContextD;
        State stateN;
        UUID popupId;
        Object objH;
        Object obj;
        a<ComposeUiNode> aVarA;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(popupPositionProvider, "popupPositionProvider");
        t.j(content, "content");
        Composer composerS = composer.s(-830247068);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(popupPositionProvider) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i15 = i11 & 2;
        if (i15 == 0) {
            if ((i10 & 112) == 0) {
                aVar2 = aVar;
                i12 |= composerS.k(aVar2) ? 32 : 16;
            }
            if ((i10 & 896) == 0) {
                if ((i11 & 4) == 0) {
                    popupProperties2 = popupProperties;
                    int i16 = composerS.k(popupProperties2) ? 256 : 128;
                    i12 |= i16;
                } else {
                    popupProperties2 = popupProperties;
                }
                i12 |= i16;
            } else {
                popupProperties2 = popupProperties;
            }
            if ((i11 & 8) != 0) {
                i12 |= 3072;
            } else if ((i10 & 7168) == 0) {
                if (composerS.k(content)) {
                    i13 = 2048;
                } else {
                    i13 = 1024;
                }
                i12 |= i13;
            }
            if ((i12 & 5851) == 1170 || !composerS.b()) {
                composerS.J();
                if ((i10 & 1) != 0 || composerS.h()) {
                    if (i15 != 0) {
                        aVar2 = null;
                    }
                    if ((i11 & 4) != 0) {
                        i14 = i12 & (-897);
                        popupProperties3 = new PopupProperties(false, false, false, null, false, false, 63, null);
                        aVar3 = aVar2;
                    }
                    composerS.A();
                    view = (View) composerS.x(AndroidCompositionLocals_androidKt.k());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    str = (String) composerS.x(LocalPopupTestTag);
                    final LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    compositionContextD = ComposablesKt.d(composerS, 0);
                    stateN = SnapshotStateKt.n(content, composerS, (i14 >> 9) & 14);
                    popupId = (UUID) RememberSaveableKt.b(new Object[0], null, null, AndroidPopup_androidKt$Popup$popupId$1.INSTANCE, composerS, 3080, 6);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        t.i(popupId, "popupId");
                        PopupLayout popupLayout = new PopupLayout(aVar3, popupProperties3, str, view, density, popupPositionProvider, popupId, null, 128, null);
                        popupLayout.p(compositionContextD, ComposableLambdaKt.c(1302892335, true, new AndroidPopup_androidKt$Popup$popupLayout$1$1$1(popupLayout, stateN)));
                        composerS.z(popupLayout);
                        obj = popupLayout;
                    } else {
                        obj = objH;
                    }
                    composerS.Q();
                    final PopupLayout popupLayout2 = (PopupLayout) obj;
                    a<l0> aVar4 = aVar3;
                    PopupProperties popupProperties4 = popupProperties3;
                    EffectsKt.a(popupLayout2, new AndroidPopup_androidKt$Popup$2(popupLayout2, aVar4, popupProperties4, str, layoutDirection), composerS, 8);
                    EffectsKt.h(new AndroidPopup_androidKt$Popup$3(popupLayout2, aVar4, popupProperties4, str, layoutDirection), composerS, 0);
                    EffectsKt.a(popupPositionProvider, new AndroidPopup_androidKt$Popup$4(popupLayout2, popupPositionProvider), composerS, i14 & 14);
                    EffectsKt.d(popupLayout2, new AndroidPopup_androidKt$Popup$5(popupLayout2, null), composerS, 8);
                    Modifier modifierA = OnGloballyPositionedModifierKt.a(Modifier.Companion, new AndroidPopup_androidKt$Popup$7(popupLayout2));
                    MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8
                        @Override // androidx.compose.ui.layout.MeasurePolicy
                        public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i17) {
                            return c.c(this, intrinsicMeasureScope, list, i17);
                        }

                        @Override // androidx.compose.ui.layout.MeasurePolicy
                        public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i17) {
                            return c.d(this, intrinsicMeasureScope, list, i17);
                        }

                        @Override // androidx.compose.ui.layout.MeasurePolicy
                        public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i17) {
                            return c.a(this, intrinsicMeasureScope, list, i17);
                        }

                        @Override // androidx.compose.ui.layout.MeasurePolicy
                        public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i17) {
                            return c.b(this, intrinsicMeasureScope, list, i17);
                        }

                        @Override // androidx.compose.ui.layout.MeasurePolicy
                        @NotNull
                        public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> list, long j6) {
                            t.j(Layout, "$this$Layout");
                            t.j(list, "<anonymous parameter 0>");
                            popupLayout2.setParentLayoutDirection(layoutDirection);
                            return MeasureScope.CC.b(Layout, 0, 0, null, AndroidPopup_androidKt$Popup$8$measure$1.INSTANCE, 4, null);
                        }
                    };
                    composerS.G(-1323940314);
                    Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                    aVarA = companion.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierA);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA = Updater.a(composerS);
                    Updater.e(composerA, measurePolicy, companion.d());
                    Updater.e(composerA, density2, companion.b());
                    Updater.e(composerA, layoutDirection2, companion.c());
                    Updater.e(composerA, viewConfiguration, companion.f());
                    composerS.o();
                    qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(2085825549);
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    aVar2 = aVar3;
                    popupProperties2 = popupProperties3;
                } else {
                    composerS.g();
                    if ((i11 & 4) != 0) {
                        i12 &= -897;
                    }
                }
                i14 = i12;
                aVar3 = aVar2;
                popupProperties3 = popupProperties2;
                composerS.A();
                view = (View) composerS.x(AndroidCompositionLocals_androidKt.k());
                density = (Density) composerS.x(CompositionLocalsKt.e());
                str = (String) composerS.x(LocalPopupTestTag);
                final LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                compositionContextD = ComposablesKt.d(composerS, 0);
                stateN = SnapshotStateKt.n(content, composerS, (i14 >> 9) & 14);
                popupId = (UUID) RememberSaveableKt.b(new Object[0], null, null, AndroidPopup_androidKt$Popup$popupId$1.INSTANCE, composerS, 3080, 6);
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    t.i(popupId, "popupId");
                    PopupLayout popupLayout3 = new PopupLayout(aVar3, popupProperties3, str, view, density, popupPositionProvider, popupId, null, 128, null);
                    popupLayout3.p(compositionContextD, ComposableLambdaKt.c(1302892335, true, new AndroidPopup_androidKt$Popup$popupLayout$1$1$1(popupLayout3, stateN)));
                    composerS.z(popupLayout3);
                    obj = popupLayout3;
                } else {
                    obj = objH;
                }
                composerS.Q();
                final PopupLayout popupLayout4 = (PopupLayout) obj;
                a<l0> aVar5 = aVar3;
                PopupProperties popupProperties5 = popupProperties3;
                EffectsKt.a(popupLayout4, new AndroidPopup_androidKt$Popup$2(popupLayout4, aVar5, popupProperties5, str, layoutDirection3), composerS, 8);
                EffectsKt.h(new AndroidPopup_androidKt$Popup$3(popupLayout4, aVar5, popupProperties5, str, layoutDirection3), composerS, 0);
                EffectsKt.a(popupPositionProvider, new AndroidPopup_androidKt$Popup$4(popupLayout4, popupPositionProvider), composerS, i14 & 14);
                EffectsKt.d(popupLayout4, new AndroidPopup_androidKt$Popup$5(popupLayout4, null), composerS, 8);
                Modifier modifierA2 = OnGloballyPositionedModifierKt.a(Modifier.Companion, new AndroidPopup_androidKt$Popup$7(popupLayout4));
                MeasurePolicy measurePolicy2 = new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i17) {
                        return c.c(this, intrinsicMeasureScope, list, i17);
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i17) {
                        return c.d(this, intrinsicMeasureScope, list, i17);
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i17) {
                        return c.a(this, intrinsicMeasureScope, list, i17);
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i17) {
                        return c.b(this, intrinsicMeasureScope, list, i17);
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    @NotNull
                    public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> list, long j6) {
                        t.j(Layout, "$this$Layout");
                        t.j(list, "<anonymous parameter 0>");
                        popupLayout4.setParentLayoutDirection(layoutDirection3);
                        return MeasureScope.CC.b(Layout, 0, 0, null, AndroidPopup_androidKt$Popup$8$measure$1.INSTANCE, 4, null);
                    }
                };
                composerS.G(-1323940314);
                Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection4 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                aVarA = companion2.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierA2);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA2 = Updater.a(composerS);
                Updater.e(composerA2, measurePolicy2, companion2.d());
                Updater.e(composerA2, density3, companion2.b());
                Updater.e(composerA2, layoutDirection4, companion2.c());
                Updater.e(composerA2, viewConfiguration2, companion2.f());
                composerS.o();
                qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(2085825549);
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                aVar2 = aVar3;
                popupProperties2 = popupProperties3;
            } else {
                composerS.g();
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AndroidPopup_androidKt$Popup$9(popupPositionProvider, aVar2, popupProperties2, content, i10, i11));
        }
        i12 |= 48;
        aVar2 = aVar;
        if ((i10 & 896) == 0) {
            if ((i11 & 4) == 0) {
                popupProperties2 = popupProperties;
                if (composerS.k(popupProperties2)) {
                }
                i12 |= i16;
            } else {
                popupProperties2 = popupProperties;
            }
            i12 |= i16;
        } else {
            popupProperties2 = popupProperties;
        }
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 7168) == 0) {
            if (composerS.k(content)) {
                i13 = 2048;
            } else {
                i13 = 1024;
            }
            i12 |= i13;
        }
        if ((i12 & 5851) == 1170) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i15 != 0) {
                    aVar2 = null;
                }
                if ((i11 & 4) != 0) {
                    i14 = i12 & (-897);
                    popupProperties3 = new PopupProperties(false, false, false, null, false, false, 63, null);
                    aVar3 = aVar2;
                } else {
                    i14 = i12;
                    aVar3 = aVar2;
                    popupProperties3 = popupProperties2;
                }
            } else {
                if (i15 != 0) {
                    aVar2 = null;
                }
                if ((i11 & 4) != 0) {
                    i14 = i12 & (-897);
                    popupProperties3 = new PopupProperties(false, false, false, null, false, false, 63, null);
                    aVar3 = aVar2;
                } else {
                    i14 = i12;
                    aVar3 = aVar2;
                    popupProperties3 = popupProperties2;
                }
            }
            composerS.A();
            view = (View) composerS.x(AndroidCompositionLocals_androidKt.k());
            density = (Density) composerS.x(CompositionLocalsKt.e());
            str = (String) composerS.x(LocalPopupTestTag);
            final LayoutDirection layoutDirection5 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            compositionContextD = ComposablesKt.d(composerS, 0);
            stateN = SnapshotStateKt.n(content, composerS, (i14 >> 9) & 14);
            popupId = (UUID) RememberSaveableKt.b(new Object[0], null, null, AndroidPopup_androidKt$Popup$popupId$1.INSTANCE, composerS, 3080, 6);
            composerS.G(-492369756);
            objH = composerS.H();
            if (objH == Composer.Companion.a()) {
                t.i(popupId, "popupId");
                PopupLayout popupLayout5 = new PopupLayout(aVar3, popupProperties3, str, view, density, popupPositionProvider, popupId, null, 128, null);
                popupLayout5.p(compositionContextD, ComposableLambdaKt.c(1302892335, true, new AndroidPopup_androidKt$Popup$popupLayout$1$1$1(popupLayout5, stateN)));
                composerS.z(popupLayout5);
                obj = popupLayout5;
            } else {
                obj = objH;
            }
            composerS.Q();
            final PopupLayout popupLayout6 = (PopupLayout) obj;
            a<l0> aVar6 = aVar3;
            PopupProperties popupProperties6 = popupProperties3;
            EffectsKt.a(popupLayout6, new AndroidPopup_androidKt$Popup$2(popupLayout6, aVar6, popupProperties6, str, layoutDirection5), composerS, 8);
            EffectsKt.h(new AndroidPopup_androidKt$Popup$3(popupLayout6, aVar6, popupProperties6, str, layoutDirection5), composerS, 0);
            EffectsKt.a(popupPositionProvider, new AndroidPopup_androidKt$Popup$4(popupLayout6, popupPositionProvider), composerS, i14 & 14);
            EffectsKt.d(popupLayout6, new AndroidPopup_androidKt$Popup$5(popupLayout6, null), composerS, 8);
            Modifier modifierA3 = OnGloballyPositionedModifierKt.a(Modifier.Companion, new AndroidPopup_androidKt$Popup$7(popupLayout6));
            MeasurePolicy measurePolicy3 = new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8
                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i17) {
                    return c.c(this, intrinsicMeasureScope, list, i17);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i17) {
                    return c.d(this, intrinsicMeasureScope, list, i17);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i17) {
                    return c.a(this, intrinsicMeasureScope, list, i17);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i17) {
                    return c.b(this, intrinsicMeasureScope, list, i17);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> list, long j6) {
                    t.j(Layout, "$this$Layout");
                    t.j(list, "<anonymous parameter 0>");
                    popupLayout6.setParentLayoutDirection(layoutDirection5);
                    return MeasureScope.CC.b(Layout, 0, 0, null, AndroidPopup_androidKt$Popup$8$measure$1.INSTANCE, 4, null);
                }
            };
            composerS.G(-1323940314);
            Density density4 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection6 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
            aVarA = companion3.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierA3);
            if (!(composerS.t() instanceof Applier)) {
                ComposablesKt.c();
            }
            composerS.e();
            if (composerS.r()) {
                composerS.w(aVarA);
            } else {
                composerS.c();
            }
            composerS.L();
            Composer composerA3 = Updater.a(composerS);
            Updater.e(composerA3, measurePolicy3, companion3.d());
            Updater.e(composerA3, density4, companion3.b());
            Updater.e(composerA3, layoutDirection6, companion3.c());
            Updater.e(composerA3, viewConfiguration3, companion3.f());
            composerS.o();
            qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(2085825549);
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            aVar2 = aVar3;
            popupProperties2 = popupProperties3;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i15 != 0) {
                    aVar2 = null;
                }
                if ((i11 & 4) != 0) {
                    i14 = i12 & (-897);
                    popupProperties3 = new PopupProperties(false, false, false, null, false, false, 63, null);
                    aVar3 = aVar2;
                } else {
                    i14 = i12;
                    aVar3 = aVar2;
                    popupProperties3 = popupProperties2;
                }
            } else {
                if (i15 != 0) {
                    aVar2 = null;
                }
                if ((i11 & 4) != 0) {
                    i14 = i12 & (-897);
                    popupProperties3 = new PopupProperties(false, false, false, null, false, false, 63, null);
                    aVar3 = aVar2;
                } else {
                    i14 = i12;
                    aVar3 = aVar2;
                    popupProperties3 = popupProperties2;
                }
            }
            composerS.A();
            view = (View) composerS.x(AndroidCompositionLocals_androidKt.k());
            density = (Density) composerS.x(CompositionLocalsKt.e());
            str = (String) composerS.x(LocalPopupTestTag);
            final LayoutDirection layoutDirection7 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            compositionContextD = ComposablesKt.d(composerS, 0);
            stateN = SnapshotStateKt.n(content, composerS, (i14 >> 9) & 14);
            popupId = (UUID) RememberSaveableKt.b(new Object[0], null, null, AndroidPopup_androidKt$Popup$popupId$1.INSTANCE, composerS, 3080, 6);
            composerS.G(-492369756);
            objH = composerS.H();
            if (objH == Composer.Companion.a()) {
                t.i(popupId, "popupId");
                PopupLayout popupLayout7 = new PopupLayout(aVar3, popupProperties3, str, view, density, popupPositionProvider, popupId, null, 128, null);
                popupLayout7.p(compositionContextD, ComposableLambdaKt.c(1302892335, true, new AndroidPopup_androidKt$Popup$popupLayout$1$1$1(popupLayout7, stateN)));
                composerS.z(popupLayout7);
                obj = popupLayout7;
            } else {
                obj = objH;
            }
            composerS.Q();
            final PopupLayout popupLayout8 = (PopupLayout) obj;
            a<l0> aVar7 = aVar3;
            PopupProperties popupProperties7 = popupProperties3;
            EffectsKt.a(popupLayout8, new AndroidPopup_androidKt$Popup$2(popupLayout8, aVar7, popupProperties7, str, layoutDirection7), composerS, 8);
            EffectsKt.h(new AndroidPopup_androidKt$Popup$3(popupLayout8, aVar7, popupProperties7, str, layoutDirection7), composerS, 0);
            EffectsKt.a(popupPositionProvider, new AndroidPopup_androidKt$Popup$4(popupLayout8, popupPositionProvider), composerS, i14 & 14);
            EffectsKt.d(popupLayout8, new AndroidPopup_androidKt$Popup$5(popupLayout8, null), composerS, 8);
            Modifier modifierA4 = OnGloballyPositionedModifierKt.a(Modifier.Companion, new AndroidPopup_androidKt$Popup$7(popupLayout8));
            MeasurePolicy measurePolicy4 = new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8
                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i17) {
                    return c.c(this, intrinsicMeasureScope, list, i17);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i17) {
                    return c.d(this, intrinsicMeasureScope, list, i17);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i17) {
                    return c.a(this, intrinsicMeasureScope, list, i17);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i17) {
                    return c.b(this, intrinsicMeasureScope, list, i17);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> list, long j6) {
                    t.j(Layout, "$this$Layout");
                    t.j(list, "<anonymous parameter 0>");
                    popupLayout8.setParentLayoutDirection(layoutDirection7);
                    return MeasureScope.CC.b(Layout, 0, 0, null, AndroidPopup_androidKt$Popup$8$measure$1.INSTANCE, 4, null);
                }
            };
            composerS.G(-1323940314);
            Density density5 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection8 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration4 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
            aVarA = companion4.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC4 = LayoutKt.c(modifierA4);
            if (!(composerS.t() instanceof Applier)) {
                ComposablesKt.c();
            }
            composerS.e();
            if (composerS.r()) {
                composerS.w(aVarA);
            } else {
                composerS.c();
            }
            composerS.L();
            Composer composerA4 = Updater.a(composerS);
            Updater.e(composerA4, measurePolicy4, companion4.d());
            Updater.e(composerA4, density5, companion4.b());
            Updater.e(composerA4, layoutDirection8, companion4.c());
            Updater.e(composerA4, viewConfiguration4, companion4.f());
            composerS.o();
            qVarC4.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(2085825549);
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            aVar2 = aVar3;
            popupProperties2 = popupProperties3;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AndroidPopup_androidKt$Popup$9(popupPositionProvider, aVar2, popupProperties2, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004f  */
    /* JADX WARN: Code duplicated, block: B:28:0x0054  */
    /* JADX WARN: Code duplicated, block: B:30:0x0058  */
    /* JADX WARN: Code duplicated, block: B:32:0x0060  */
    /* JADX WARN: Code duplicated, block: B:33:0x0063  */
    /* JADX WARN: Code duplicated, block: B:37:0x006a  */
    /* JADX WARN: Code duplicated, block: B:39:0x006e  */
    /* JADX WARN: Code duplicated, block: B:41:0x0076  */
    /* JADX WARN: Code duplicated, block: B:42:0x0079  */
    /* JADX WARN: Code duplicated, block: B:45:0x007f  */
    /* JADX WARN: Code duplicated, block: B:48:0x0085  */
    /* JADX WARN: Code duplicated, block: B:49:0x0088  */
    /* JADX WARN: Code duplicated, block: B:51:0x008e  */
    /* JADX WARN: Code duplicated, block: B:53:0x0094  */
    /* JADX WARN: Code duplicated, block: B:54:0x0097  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:71:0x00ce A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:75:0x00da  */
    /* JADX WARN: Code duplicated, block: B:76:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:78:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:82:0x0104  */
    /* JADX WARN: Code duplicated, block: B:85:0x0124  */
    /* JADX WARN: Code duplicated, block: B:87:0x012c  */
    /* JADX WARN: Code duplicated, block: B:92:0x0159  */
    /* JADX WARN: Code duplicated, block: B:94:? A[RETURN, SYNTHETIC] */
    @Composable
    @ComposableInferredTarget
    public static final void c(@Nullable Alignment alignment, long j6, @Nullable a<l0> aVar, @Nullable PopupProperties popupProperties, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        Alignment alignment2;
        int i12;
        long j10;
        int i13;
        a<l0> aVar2;
        int i14;
        PopupProperties popupProperties2;
        int i15;
        k kVar;
        Alignment alignmentO;
        long jA;
        a<l0> aVar3;
        PopupProperties popupProperties3;
        Alignment alignment3;
        long j11;
        boolean zK;
        Object objH;
        long j12;
        a<l0> aVar4;
        PopupProperties popupProperties4;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(content, "content");
        Composer composerS = composer.s(295309329);
        int i16 = i11 & 1;
        if (i16 != 0) {
            i12 = i10 | 6;
            alignment2 = alignment;
        } else if ((i10 & 14) == 0) {
            alignment2 = alignment;
            i12 = (composerS.k(alignment2) ? 4 : 2) | i10;
        } else {
            alignment2 = alignment;
            i12 = i10;
        }
        int i17 = i11 & 2;
        if (i17 == 0) {
            if ((i10 & 112) == 0) {
                j10 = j6;
                i12 |= composerS.q(j10) ? 32 : 16;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 896) == 0) {
                    aVar2 = aVar;
                    if (composerS.k(aVar2)) {
                        i14 = 256;
                    } else {
                        i14 = 128;
                    }
                    i12 |= i14;
                }
                if ((i10 & 7168) == 0) {
                    if ((i11 & 8) == 0) {
                        popupProperties2 = popupProperties;
                        int i18 = composerS.k(popupProperties2) ? 2048 : 1024;
                        i12 |= i18;
                    } else {
                        popupProperties2 = popupProperties;
                    }
                    i12 |= i18;
                } else {
                    popupProperties2 = popupProperties;
                }
                if ((i11 & 16) != 0) {
                    i12 |= CpioConstants.C_ISBLK;
                } else if ((57344 & i10) == 0) {
                    if (composerS.k(content)) {
                        i15 = 16384;
                    } else {
                        i15 = 8192;
                    }
                    i12 |= i15;
                }
                if ((46811 & i12) == 9362 || !composerS.b()) {
                    composerS.J();
                    kVar = null;
                    if ((i10 & 1) != 0 || composerS.h()) {
                        if (i16 != 0) {
                            alignmentO = Alignment.Companion.o();
                        } else {
                            alignmentO = alignment2;
                        }
                        if (i17 != 0) {
                            jA = IntOffsetKt.a(0, 0);
                        } else {
                            jA = j10;
                        }
                        if (i13 != 0) {
                            aVar2 = null;
                        }
                        if ((i11 & 8) != 0) {
                            i12 &= -7169;
                            popupProperties3 = new PopupProperties(false, false, false, null, false, false, 63, null);
                            j11 = jA;
                            aVar3 = aVar2;
                            alignment3 = alignmentO;
                        } else {
                            aVar3 = aVar2;
                            popupProperties3 = popupProperties2;
                            alignment3 = alignmentO;
                            j11 = jA;
                        }
                    } else {
                        composerS.g();
                        if ((i11 & 8) != 0) {
                            i12 &= -7169;
                        }
                        aVar3 = aVar2;
                        popupProperties3 = popupProperties2;
                        alignment3 = alignment2;
                        j11 = j10;
                    }
                    composerS.A();
                    IntOffset intOffsetB = IntOffset.b(j11);
                    composerS.G(511388516);
                    zK = composerS.k(intOffsetB) | composerS.k(alignment3);
                    objH = composerS.H();
                    if (zK || objH == Composer.Companion.a()) {
                        objH = new AlignmentOffsetPositionProvider(alignment3, j11, kVar);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    AlignmentOffsetPositionProvider alignmentOffsetPositionProvider = (AlignmentOffsetPositionProvider) objH;
                    int i19 = i12 >> 3;
                    a(alignmentOffsetPositionProvider, aVar3, popupProperties3, content, composerS, (i19 & 112) | (i19 & 896) | (i19 & 7168), 0);
                    alignment2 = alignment3;
                    j12 = j11;
                    aVar4 = aVar3;
                    popupProperties4 = popupProperties3;
                } else {
                    composerS.g();
                    j12 = j10;
                    aVar4 = aVar2;
                    popupProperties4 = popupProperties2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidPopup_androidKt$Popup$1(alignment2, j12, aVar4, popupProperties4, content, i10, i11));
            }
            i12 |= 384;
            aVar2 = aVar;
            if ((i10 & 7168) == 0) {
                if ((i11 & 8) == 0) {
                    popupProperties2 = popupProperties;
                    if (composerS.k(popupProperties2)) {
                    }
                    i12 |= i18;
                } else {
                    popupProperties2 = popupProperties;
                }
                i12 |= i18;
            } else {
                popupProperties2 = popupProperties;
            }
            if ((i11 & 16) != 0) {
                i12 |= CpioConstants.C_ISBLK;
            } else if ((57344 & i10) == 0) {
                if (composerS.k(content)) {
                    i15 = 16384;
                } else {
                    i15 = 8192;
                }
                i12 |= i15;
            }
            if ((46811 & i12) == 9362) {
                composerS.J();
                kVar = null;
                if ((i10 & 1) != 0) {
                    if (i16 != 0) {
                        alignmentO = Alignment.Companion.o();
                    } else {
                        alignmentO = alignment2;
                    }
                    if (i17 != 0) {
                        jA = IntOffsetKt.a(0, 0);
                    } else {
                        jA = j10;
                    }
                    if (i13 != 0) {
                        aVar2 = null;
                    }
                    if ((i11 & 8) != 0) {
                        i12 &= -7169;
                        popupProperties3 = new PopupProperties(false, false, false, null, false, false, 63, null);
                        j11 = jA;
                        aVar3 = aVar2;
                        alignment3 = alignmentO;
                    } else {
                        aVar3 = aVar2;
                        popupProperties3 = popupProperties2;
                        alignment3 = alignmentO;
                        j11 = jA;
                    }
                } else {
                    if (i16 != 0) {
                        alignmentO = Alignment.Companion.o();
                    } else {
                        alignmentO = alignment2;
                    }
                    if (i17 != 0) {
                        jA = IntOffsetKt.a(0, 0);
                    } else {
                        jA = j10;
                    }
                    if (i13 != 0) {
                        aVar2 = null;
                    }
                    if ((i11 & 8) != 0) {
                        i12 &= -7169;
                        popupProperties3 = new PopupProperties(false, false, false, null, false, false, 63, null);
                        j11 = jA;
                        aVar3 = aVar2;
                        alignment3 = alignmentO;
                    } else {
                        aVar3 = aVar2;
                        popupProperties3 = popupProperties2;
                        alignment3 = alignmentO;
                        j11 = jA;
                    }
                }
                composerS.A();
                IntOffset intOffsetB2 = IntOffset.b(j11);
                composerS.G(511388516);
                zK = composerS.k(intOffsetB2) | composerS.k(alignment3);
                objH = composerS.H();
                if (zK) {
                    objH = new AlignmentOffsetPositionProvider(alignment3, j11, kVar);
                    composerS.z(objH);
                } else {
                    objH = new AlignmentOffsetPositionProvider(alignment3, j11, kVar);
                    composerS.z(objH);
                }
                composerS.Q();
                AlignmentOffsetPositionProvider alignmentOffsetPositionProvider2 = (AlignmentOffsetPositionProvider) objH;
                int i110 = i12 >> 3;
                a(alignmentOffsetPositionProvider2, aVar3, popupProperties3, content, composerS, (i110 & 112) | (i110 & 896) | (i110 & 7168), 0);
                alignment2 = alignment3;
                j12 = j11;
                aVar4 = aVar3;
                popupProperties4 = popupProperties3;
            } else {
                composerS.J();
                kVar = null;
                if ((i10 & 1) != 0) {
                    if (i16 != 0) {
                        alignmentO = Alignment.Companion.o();
                    } else {
                        alignmentO = alignment2;
                    }
                    if (i17 != 0) {
                        jA = IntOffsetKt.a(0, 0);
                    } else {
                        jA = j10;
                    }
                    if (i13 != 0) {
                        aVar2 = null;
                    }
                    if ((i11 & 8) != 0) {
                        i12 &= -7169;
                        popupProperties3 = new PopupProperties(false, false, false, null, false, false, 63, null);
                        j11 = jA;
                        aVar3 = aVar2;
                        alignment3 = alignmentO;
                    } else {
                        aVar3 = aVar2;
                        popupProperties3 = popupProperties2;
                        alignment3 = alignmentO;
                        j11 = jA;
                    }
                } else {
                    if (i16 != 0) {
                        alignmentO = Alignment.Companion.o();
                    } else {
                        alignmentO = alignment2;
                    }
                    if (i17 != 0) {
                        jA = IntOffsetKt.a(0, 0);
                    } else {
                        jA = j10;
                    }
                    if (i13 != 0) {
                        aVar2 = null;
                    }
                    if ((i11 & 8) != 0) {
                        i12 &= -7169;
                        popupProperties3 = new PopupProperties(false, false, false, null, false, false, 63, null);
                        j11 = jA;
                        aVar3 = aVar2;
                        alignment3 = alignmentO;
                    } else {
                        aVar3 = aVar2;
                        popupProperties3 = popupProperties2;
                        alignment3 = alignmentO;
                        j11 = jA;
                    }
                }
                composerS.A();
                IntOffset intOffsetB3 = IntOffset.b(j11);
                composerS.G(511388516);
                zK = composerS.k(intOffsetB3) | composerS.k(alignment3);
                objH = composerS.H();
                if (zK) {
                    objH = new AlignmentOffsetPositionProvider(alignment3, j11, kVar);
                    composerS.z(objH);
                } else {
                    objH = new AlignmentOffsetPositionProvider(alignment3, j11, kVar);
                    composerS.z(objH);
                }
                composerS.Q();
                AlignmentOffsetPositionProvider alignmentOffsetPositionProvider3 = (AlignmentOffsetPositionProvider) objH;
                int i111 = i12 >> 3;
                a(alignmentOffsetPositionProvider3, aVar3, popupProperties3, content, composerS, (i111 & 112) | (i111 & 896) | (i111 & 7168), 0);
                alignment2 = alignment3;
                j12 = j11;
                aVar4 = aVar3;
                popupProperties4 = popupProperties3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AndroidPopup_androidKt$Popup$1(alignment2, j12, aVar4, popupProperties4, content, i10, i11));
        }
        i12 |= 48;
        j10 = j6;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 896) == 0) {
                aVar2 = aVar;
                if (composerS.k(aVar2)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i12 |= i14;
            }
            if ((i10 & 7168) == 0) {
                if ((i11 & 8) == 0) {
                    popupProperties2 = popupProperties;
                    if (composerS.k(popupProperties2)) {
                    }
                    i12 |= i18;
                } else {
                    popupProperties2 = popupProperties;
                }
                i12 |= i18;
            } else {
                popupProperties2 = popupProperties;
            }
            if ((i11 & 16) != 0) {
                i12 |= CpioConstants.C_ISBLK;
            } else if ((57344 & i10) == 0) {
                if (composerS.k(content)) {
                    i15 = 16384;
                } else {
                    i15 = 8192;
                }
                i12 |= i15;
            }
            if ((46811 & i12) == 9362) {
                composerS.J();
                kVar = null;
                if ((i10 & 1) != 0) {
                    if (i16 != 0) {
                        alignmentO = Alignment.Companion.o();
                    } else {
                        alignmentO = alignment2;
                    }
                    if (i17 != 0) {
                        jA = IntOffsetKt.a(0, 0);
                    } else {
                        jA = j10;
                    }
                    if (i13 != 0) {
                        aVar2 = null;
                    }
                    if ((i11 & 8) != 0) {
                        i12 &= -7169;
                        popupProperties3 = new PopupProperties(false, false, false, null, false, false, 63, null);
                        j11 = jA;
                        aVar3 = aVar2;
                        alignment3 = alignmentO;
                    } else {
                        aVar3 = aVar2;
                        popupProperties3 = popupProperties2;
                        alignment3 = alignmentO;
                        j11 = jA;
                    }
                } else {
                    if (i16 != 0) {
                        alignmentO = Alignment.Companion.o();
                    } else {
                        alignmentO = alignment2;
                    }
                    if (i17 != 0) {
                        jA = IntOffsetKt.a(0, 0);
                    } else {
                        jA = j10;
                    }
                    if (i13 != 0) {
                        aVar2 = null;
                    }
                    if ((i11 & 8) != 0) {
                        i12 &= -7169;
                        popupProperties3 = new PopupProperties(false, false, false, null, false, false, 63, null);
                        j11 = jA;
                        aVar3 = aVar2;
                        alignment3 = alignmentO;
                    } else {
                        aVar3 = aVar2;
                        popupProperties3 = popupProperties2;
                        alignment3 = alignmentO;
                        j11 = jA;
                    }
                }
                composerS.A();
                IntOffset intOffsetB4 = IntOffset.b(j11);
                composerS.G(511388516);
                zK = composerS.k(intOffsetB4) | composerS.k(alignment3);
                objH = composerS.H();
                if (zK) {
                    objH = new AlignmentOffsetPositionProvider(alignment3, j11, kVar);
                    composerS.z(objH);
                } else {
                    objH = new AlignmentOffsetPositionProvider(alignment3, j11, kVar);
                    composerS.z(objH);
                }
                composerS.Q();
                AlignmentOffsetPositionProvider alignmentOffsetPositionProvider4 = (AlignmentOffsetPositionProvider) objH;
                int i112 = i12 >> 3;
                a(alignmentOffsetPositionProvider4, aVar3, popupProperties3, content, composerS, (i112 & 112) | (i112 & 896) | (i112 & 7168), 0);
                alignment2 = alignment3;
                j12 = j11;
                aVar4 = aVar3;
                popupProperties4 = popupProperties3;
            } else {
                composerS.J();
                kVar = null;
                if ((i10 & 1) != 0) {
                    if (i16 != 0) {
                        alignmentO = Alignment.Companion.o();
                    } else {
                        alignmentO = alignment2;
                    }
                    if (i17 != 0) {
                        jA = IntOffsetKt.a(0, 0);
                    } else {
                        jA = j10;
                    }
                    if (i13 != 0) {
                        aVar2 = null;
                    }
                    if ((i11 & 8) != 0) {
                        i12 &= -7169;
                        popupProperties3 = new PopupProperties(false, false, false, null, false, false, 63, null);
                        j11 = jA;
                        aVar3 = aVar2;
                        alignment3 = alignmentO;
                    } else {
                        aVar3 = aVar2;
                        popupProperties3 = popupProperties2;
                        alignment3 = alignmentO;
                        j11 = jA;
                    }
                } else {
                    if (i16 != 0) {
                        alignmentO = Alignment.Companion.o();
                    } else {
                        alignmentO = alignment2;
                    }
                    if (i17 != 0) {
                        jA = IntOffsetKt.a(0, 0);
                    } else {
                        jA = j10;
                    }
                    if (i13 != 0) {
                        aVar2 = null;
                    }
                    if ((i11 & 8) != 0) {
                        i12 &= -7169;
                        popupProperties3 = new PopupProperties(false, false, false, null, false, false, 63, null);
                        j11 = jA;
                        aVar3 = aVar2;
                        alignment3 = alignmentO;
                    } else {
                        aVar3 = aVar2;
                        popupProperties3 = popupProperties2;
                        alignment3 = alignmentO;
                        j11 = jA;
                    }
                }
                composerS.A();
                IntOffset intOffsetB5 = IntOffset.b(j11);
                composerS.G(511388516);
                zK = composerS.k(intOffsetB5) | composerS.k(alignment3);
                objH = composerS.H();
                if (zK) {
                    objH = new AlignmentOffsetPositionProvider(alignment3, j11, kVar);
                    composerS.z(objH);
                } else {
                    objH = new AlignmentOffsetPositionProvider(alignment3, j11, kVar);
                    composerS.z(objH);
                }
                composerS.Q();
                AlignmentOffsetPositionProvider alignmentOffsetPositionProvider5 = (AlignmentOffsetPositionProvider) objH;
                int i113 = i12 >> 3;
                a(alignmentOffsetPositionProvider5, aVar3, popupProperties3, content, composerS, (i113 & 112) | (i113 & 896) | (i113 & 7168), 0);
                alignment2 = alignment3;
                j12 = j11;
                aVar4 = aVar3;
                popupProperties4 = popupProperties3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AndroidPopup_androidKt$Popup$1(alignment2, j12, aVar4, popupProperties4, content, i10, i11));
        }
        i12 |= 384;
        aVar2 = aVar;
        if ((i10 & 7168) == 0) {
            if ((i11 & 8) == 0) {
                popupProperties2 = popupProperties;
                if (composerS.k(popupProperties2)) {
                }
                i12 |= i18;
            } else {
                popupProperties2 = popupProperties;
            }
            i12 |= i18;
        } else {
            popupProperties2 = popupProperties;
        }
        if ((i11 & 16) != 0) {
            i12 |= CpioConstants.C_ISBLK;
        } else if ((57344 & i10) == 0) {
            if (composerS.k(content)) {
                i15 = 16384;
            } else {
                i15 = 8192;
            }
            i12 |= i15;
        }
        if ((46811 & i12) == 9362) {
            composerS.J();
            kVar = null;
            if ((i10 & 1) != 0) {
                if (i16 != 0) {
                    alignmentO = Alignment.Companion.o();
                } else {
                    alignmentO = alignment2;
                }
                if (i17 != 0) {
                    jA = IntOffsetKt.a(0, 0);
                } else {
                    jA = j10;
                }
                if (i13 != 0) {
                    aVar2 = null;
                }
                if ((i11 & 8) != 0) {
                    i12 &= -7169;
                    popupProperties3 = new PopupProperties(false, false, false, null, false, false, 63, null);
                    j11 = jA;
                    aVar3 = aVar2;
                    alignment3 = alignmentO;
                } else {
                    aVar3 = aVar2;
                    popupProperties3 = popupProperties2;
                    alignment3 = alignmentO;
                    j11 = jA;
                }
            } else {
                if (i16 != 0) {
                    alignmentO = Alignment.Companion.o();
                } else {
                    alignmentO = alignment2;
                }
                if (i17 != 0) {
                    jA = IntOffsetKt.a(0, 0);
                } else {
                    jA = j10;
                }
                if (i13 != 0) {
                    aVar2 = null;
                }
                if ((i11 & 8) != 0) {
                    i12 &= -7169;
                    popupProperties3 = new PopupProperties(false, false, false, null, false, false, 63, null);
                    j11 = jA;
                    aVar3 = aVar2;
                    alignment3 = alignmentO;
                } else {
                    aVar3 = aVar2;
                    popupProperties3 = popupProperties2;
                    alignment3 = alignmentO;
                    j11 = jA;
                }
            }
            composerS.A();
            IntOffset intOffsetB6 = IntOffset.b(j11);
            composerS.G(511388516);
            zK = composerS.k(intOffsetB6) | composerS.k(alignment3);
            objH = composerS.H();
            if (zK) {
                objH = new AlignmentOffsetPositionProvider(alignment3, j11, kVar);
                composerS.z(objH);
            } else {
                objH = new AlignmentOffsetPositionProvider(alignment3, j11, kVar);
                composerS.z(objH);
            }
            composerS.Q();
            AlignmentOffsetPositionProvider alignmentOffsetPositionProvider6 = (AlignmentOffsetPositionProvider) objH;
            int i114 = i12 >> 3;
            a(alignmentOffsetPositionProvider6, aVar3, popupProperties3, content, composerS, (i114 & 112) | (i114 & 896) | (i114 & 7168), 0);
            alignment2 = alignment3;
            j12 = j11;
            aVar4 = aVar3;
            popupProperties4 = popupProperties3;
        } else {
            composerS.J();
            kVar = null;
            if ((i10 & 1) != 0) {
                if (i16 != 0) {
                    alignmentO = Alignment.Companion.o();
                } else {
                    alignmentO = alignment2;
                }
                if (i17 != 0) {
                    jA = IntOffsetKt.a(0, 0);
                } else {
                    jA = j10;
                }
                if (i13 != 0) {
                    aVar2 = null;
                }
                if ((i11 & 8) != 0) {
                    i12 &= -7169;
                    popupProperties3 = new PopupProperties(false, false, false, null, false, false, 63, null);
                    j11 = jA;
                    aVar3 = aVar2;
                    alignment3 = alignmentO;
                } else {
                    aVar3 = aVar2;
                    popupProperties3 = popupProperties2;
                    alignment3 = alignmentO;
                    j11 = jA;
                }
            } else {
                if (i16 != 0) {
                    alignmentO = Alignment.Companion.o();
                } else {
                    alignmentO = alignment2;
                }
                if (i17 != 0) {
                    jA = IntOffsetKt.a(0, 0);
                } else {
                    jA = j10;
                }
                if (i13 != 0) {
                    aVar2 = null;
                }
                if ((i11 & 8) != 0) {
                    i12 &= -7169;
                    popupProperties3 = new PopupProperties(false, false, false, null, false, false, 63, null);
                    j11 = jA;
                    aVar3 = aVar2;
                    alignment3 = alignmentO;
                } else {
                    aVar3 = aVar2;
                    popupProperties3 = popupProperties2;
                    alignment3 = alignmentO;
                    j11 = jA;
                }
            }
            composerS.A();
            IntOffset intOffsetB7 = IntOffset.b(j11);
            composerS.G(511388516);
            zK = composerS.k(intOffsetB7) | composerS.k(alignment3);
            objH = composerS.H();
            if (zK) {
                objH = new AlignmentOffsetPositionProvider(alignment3, j11, kVar);
                composerS.z(objH);
            } else {
                objH = new AlignmentOffsetPositionProvider(alignment3, j11, kVar);
                composerS.z(objH);
            }
            composerS.Q();
            AlignmentOffsetPositionProvider alignmentOffsetPositionProvider7 = (AlignmentOffsetPositionProvider) objH;
            int i115 = i12 >> 3;
            a(alignmentOffsetPositionProvider7, aVar3, popupProperties3, content, composerS, (i115 & 112) | (i115 & 896) | (i115 & 7168), 0);
            alignment2 = alignment3;
            j12 = j11;
            aVar4 = aVar3;
            popupProperties4 = popupProperties3;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AndroidPopup_androidKt$Popup$1(alignment2, j12, aVar4, popupProperties4, content, i10, i11));
    }

    @Composable
    @ComposableInferredTarget
    public static final void d(@NotNull String tag, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10) {
        int i11;
        t.j(tag, "tag");
        t.j(content, "content");
        Composer composerS = composer.s(-498879600);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(tag) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.k(content) ? 32 : 16;
        }
        if ((i11 & 91) == 18 && composerS.b()) {
            composerS.g();
        } else {
            CompositionLocalKt.b(new ProvidedValue[]{LocalPopupTestTag.c(tag)}, content, composerS, (i11 & 112) | 8);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AndroidPopup_androidKt$PopupTestTag$1(tag, content, i10));
    }

    public static final boolean g(@NotNull View view) {
        t.j(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getRootView().getLayoutParams();
        WindowManager.LayoutParams layoutParams2 = layoutParams instanceof WindowManager.LayoutParams ? (WindowManager.LayoutParams) layoutParams : null;
        return (layoutParams2 == null || (layoutParams2.flags & 8192) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IntRect h(Rect rect) {
        return new IntRect(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final p<Composer, Integer, l0> b(State<? extends p<? super Composer, ? super Integer, l0>> state) {
        return (p) state.getValue();
    }
}
