package androidx.compose.material;

import android.graphics.Rect;
import android.view.View;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.Ref;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class ExposedDropdownMenuKt {
    /* JADX WARN: Code duplicated, block: B:36:0x0069  */
    /* JADX WARN: Code duplicated, block: B:37:0x006c  */
    /* JADX WARN: Code duplicated, block: B:39:0x0070  */
    /* JADX WARN: Code duplicated, block: B:41:0x0076  */
    /* JADX WARN: Code duplicated, block: B:42:0x0079  */
    /* JADX WARN: Code duplicated, block: B:50:0x008f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x0091  */
    /* JADX WARN: Code duplicated, block: B:52:0x0094  */
    /* JADX WARN: Code duplicated, block: B:55:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:58:0x00db  */
    /* JADX WARN: Code duplicated, block: B:61:0x0101  */
    /* JADX WARN: Code duplicated, block: B:64:0x0139  */
    /* JADX WARN: Code duplicated, block: B:66:0x013f  */
    /* JADX WARN: Code duplicated, block: B:69:0x015d  */
    /* JADX WARN: Code duplicated, block: B:72:0x0199  */
    /* JADX WARN: Code duplicated, block: B:74:0x019f  */
    /* JADX WARN: Code duplicated, block: B:77:0x0206  */
    /* JADX WARN: Code duplicated, block: B:80:0x0212  */
    /* JADX WARN: Code duplicated, block: B:81:0x0216  */
    /* JADX WARN: Code duplicated, block: B:86:0x02a2  */
    /* JADX WARN: Code duplicated, block: B:88:? A[RETURN, SYNTHETIC] */
    @Composable
    @ExperimentalMaterialApi
    @ComposableInferredTarget
    public static final void a(boolean z6, @NotNull l<? super Boolean, l0> onExpandedChange, @Nullable Modifier modifier, @NotNull q<? super ExposedDropdownMenuBoxScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        Modifier modifier3;
        final Density density;
        Object objH;
        Composer.Companion companion;
        final MutableState mutableState;
        Object objH2;
        final MutableState mutableState2;
        Object objH3;
        boolean zK;
        Object objH4;
        Object objH5;
        boolean zK2;
        Object objH6;
        a<ComposeUiNode> aVarA;
        Modifier modifier4;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(onExpandedChange, "onExpandedChange");
        t.j(content, "content");
        Composer composerS = composer.s(1456052980);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.m(z6) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            i12 |= composerS.k(onExpandedChange) ? 32 : 16;
        }
        int i14 = i11 & 4;
        if (i14 == 0) {
            if ((i10 & 896) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 256 : 128;
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
                if (i14 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                density = (Density) composerS.x(CompositionLocalsKt.e());
                View view = (View) composerS.x(AndroidCompositionLocals_androidKt.k());
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = SnapshotStateKt__SnapshotStateKt.e(0, null, 2, null);
                    composerS.z(objH);
                }
                composerS.Q();
                mutableState = (MutableState) objH;
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = SnapshotStateKt__SnapshotStateKt.e(0, null, 2, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                mutableState2 = (MutableState) objH2;
                int iJ0 = density.j0(MenuKt.j());
                composerS.G(-492369756);
                objH3 = composerS.H();
                if (objH3 == companion.a()) {
                    objH3 = new Ref();
                    composerS.z(objH3);
                }
                composerS.Q();
                Ref ref = (Ref) objH3;
                Integer numValueOf = Integer.valueOf(d(mutableState2));
                Integer numValueOf2 = Integer.valueOf(b(mutableState));
                composerS.G(1618982084);
                zK = composerS.k(density) | composerS.k(numValueOf) | composerS.k(numValueOf2);
                objH4 = composerS.H();
                if (zK || objH4 == companion.a()) {
                    objH4 = new ExposedDropdownMenuBoxScope() { // from class: androidx.compose.material.ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1
                        @Override // androidx.compose.material.ExposedDropdownMenuBoxScope
                        @NotNull
                        public Modifier b(@NotNull Modifier modifier5, boolean z10) {
                            t.j(modifier5, "<this>");
                            Density density2 = density;
                            MutableState<Integer> mutableState3 = mutableState2;
                            MutableState<Integer> mutableState4 = mutableState;
                            Modifier modifierQ = SizeKt.q(modifier5, 0.0f, density2.j(ExposedDropdownMenuKt.d(mutableState3)), 1, null);
                            return z10 ? SizeKt.D(modifierQ, density2.j(ExposedDropdownMenuKt.b(mutableState4))) : modifierQ;
                        }

                        @Override // androidx.compose.material.ExposedDropdownMenuBoxScope
                        @Composable
                        public void a(boolean z10, @NotNull a<l0> aVar, @NotNull Modifier modifier5, @NotNull q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar, @Nullable Composer composer2, int i15, int i16) {
                            ExposedDropdownMenuBoxScope.DefaultImpls.a(this, z10, aVar, modifier5, qVar, composer2, i15, i16);
                        }
                    };
                    composerS.z(objH4);
                }
                composerS.Q();
                ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1 exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1 = (ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1) objH4;
                composerS.G(-492369756);
                objH5 = composerS.H();
                if (objH5 == companion.a()) {
                    objH5 = new FocusRequester();
                    composerS.z(objH5);
                }
                composerS.Q();
                FocusRequester focusRequester = (FocusRequester) objH5;
                Modifier modifierA = OnGloballyPositionedModifierKt.a(modifier3, new ExposedDropdownMenuKt$ExposedDropdownMenuBox$1(ref, view, iJ0, mutableState, mutableState2));
                Boolean boolValueOf = Boolean.valueOf(z6);
                composerS.G(511388516);
                zK2 = composerS.k(boolValueOf) | composerS.k(onExpandedChange);
                objH6 = composerS.H();
                if (zK2 || objH6 == companion.a()) {
                    objH6 = new ExposedDropdownMenuKt$ExposedDropdownMenuBox$2$1(onExpandedChange, z6);
                    composerS.z(objH6);
                }
                composerS.Q();
                Modifier modifierA2 = FocusRequesterModifierKt.a(k(modifierA, (a) objH6, Strings_androidKt.a(Strings.Companion.d(), composerS, 6)), focusRequester);
                composerS.G(733328855);
                MeasurePolicy measurePolicyH = BoxKt.h(Alignment.Companion.o(), false, composerS, 0);
                composerS.G(-1323940314);
                Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                aVarA = companion2.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierA2);
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
                Updater.e(composerA, measurePolicyH, companion2.d());
                Updater.e(composerA, density2, companion2.b());
                Updater.e(composerA, layoutDirection, companion2.c());
                Updater.e(composerA, viewConfiguration, companion2.f());
                composerS.o();
                qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                composerS.G(-443225682);
                content.invoke(exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1, composerS, Integer.valueOf((i12 >> 6) & 112));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                EffectsKt.h(new ExposedDropdownMenuKt$ExposedDropdownMenuBox$4(z6, focusRequester), composerS, 0);
                EffectsKt.a(view, new ExposedDropdownMenuKt$ExposedDropdownMenuBox$5(view, ref, iJ0, mutableState2), composerS, 8);
                modifier4 = modifier3;
            } else {
                composerS.g();
                modifier4 = modifier2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ExposedDropdownMenuKt$ExposedDropdownMenuBox$6(z6, onExpandedChange, modifier4, content, i10, i11));
        }
        i12 |= 384;
        modifier2 = modifier;
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
            if (i14 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            density = (Density) composerS.x(CompositionLocalsKt.e());
            View view2 = (View) composerS.x(AndroidCompositionLocals_androidKt.k());
            composerS.G(-492369756);
            objH = composerS.H();
            companion = Composer.Companion;
            if (objH == companion.a()) {
                objH = SnapshotStateKt__SnapshotStateKt.e(0, null, 2, null);
                composerS.z(objH);
            }
            composerS.Q();
            mutableState = (MutableState) objH;
            composerS.G(-492369756);
            objH2 = composerS.H();
            if (objH2 == companion.a()) {
                objH2 = SnapshotStateKt__SnapshotStateKt.e(0, null, 2, null);
                composerS.z(objH2);
            }
            composerS.Q();
            mutableState2 = (MutableState) objH2;
            int iJ1 = density.j0(MenuKt.j());
            composerS.G(-492369756);
            objH3 = composerS.H();
            if (objH3 == companion.a()) {
                objH3 = new Ref();
                composerS.z(objH3);
            }
            composerS.Q();
            Ref ref2 = (Ref) objH3;
            Integer numValueOf3 = Integer.valueOf(d(mutableState2));
            Integer numValueOf4 = Integer.valueOf(b(mutableState));
            composerS.G(1618982084);
            zK = composerS.k(density) | composerS.k(numValueOf3) | composerS.k(numValueOf4);
            objH4 = composerS.H();
            if (zK) {
                objH4 = new ExposedDropdownMenuBoxScope() { // from class: androidx.compose.material.ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1
                    @Override // androidx.compose.material.ExposedDropdownMenuBoxScope
                    @NotNull
                    public Modifier b(@NotNull Modifier modifier5, boolean z10) {
                        t.j(modifier5, "<this>");
                        Density density3 = density;
                        MutableState<Integer> mutableState3 = mutableState2;
                        MutableState<Integer> mutableState4 = mutableState;
                        Modifier modifierQ = SizeKt.q(modifier5, 0.0f, density3.j(ExposedDropdownMenuKt.d(mutableState3)), 1, null);
                        return z10 ? SizeKt.D(modifierQ, density3.j(ExposedDropdownMenuKt.b(mutableState4))) : modifierQ;
                    }

                    @Override // androidx.compose.material.ExposedDropdownMenuBoxScope
                    @Composable
                    public void a(boolean z10, @NotNull a<l0> aVar, @NotNull Modifier modifier5, @NotNull q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar, @Nullable Composer composer2, int i15, int i16) {
                        ExposedDropdownMenuBoxScope.DefaultImpls.a(this, z10, aVar, modifier5, qVar, composer2, i15, i16);
                    }
                };
                composerS.z(objH4);
            } else {
                objH4 = new ExposedDropdownMenuBoxScope() { // from class: androidx.compose.material.ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1
                    @Override // androidx.compose.material.ExposedDropdownMenuBoxScope
                    @NotNull
                    public Modifier b(@NotNull Modifier modifier5, boolean z10) {
                        t.j(modifier5, "<this>");
                        Density density3 = density;
                        MutableState<Integer> mutableState3 = mutableState2;
                        MutableState<Integer> mutableState4 = mutableState;
                        Modifier modifierQ = SizeKt.q(modifier5, 0.0f, density3.j(ExposedDropdownMenuKt.d(mutableState3)), 1, null);
                        return z10 ? SizeKt.D(modifierQ, density3.j(ExposedDropdownMenuKt.b(mutableState4))) : modifierQ;
                    }

                    @Override // androidx.compose.material.ExposedDropdownMenuBoxScope
                    @Composable
                    public void a(boolean z10, @NotNull a<l0> aVar, @NotNull Modifier modifier5, @NotNull q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar, @Nullable Composer composer2, int i15, int i16) {
                        ExposedDropdownMenuBoxScope.DefaultImpls.a(this, z10, aVar, modifier5, qVar, composer2, i15, i16);
                    }
                };
                composerS.z(objH4);
            }
            composerS.Q();
            ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1 exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$2 = (ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1) objH4;
            composerS.G(-492369756);
            objH5 = composerS.H();
            if (objH5 == companion.a()) {
                objH5 = new FocusRequester();
                composerS.z(objH5);
            }
            composerS.Q();
            FocusRequester focusRequester2 = (FocusRequester) objH5;
            Modifier modifierA3 = OnGloballyPositionedModifierKt.a(modifier3, new ExposedDropdownMenuKt$ExposedDropdownMenuBox$1(ref2, view2, iJ1, mutableState, mutableState2));
            Boolean boolValueOf2 = Boolean.valueOf(z6);
            composerS.G(511388516);
            zK2 = composerS.k(boolValueOf2) | composerS.k(onExpandedChange);
            objH6 = composerS.H();
            if (zK2) {
                objH6 = new ExposedDropdownMenuKt$ExposedDropdownMenuBox$2$1(onExpandedChange, z6);
                composerS.z(objH6);
            } else {
                objH6 = new ExposedDropdownMenuKt$ExposedDropdownMenuBox$2$1(onExpandedChange, z6);
                composerS.z(objH6);
            }
            composerS.Q();
            Modifier modifierA4 = FocusRequesterModifierKt.a(k(modifierA3, (a) objH6, Strings_androidKt.a(Strings.Companion.d(), composerS, 6)), focusRequester2);
            composerS.G(733328855);
            MeasurePolicy measurePolicyH2 = BoxKt.h(Alignment.Companion.o(), false, composerS, 0);
            composerS.G(-1323940314);
            Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
            aVarA = companion3.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierA4);
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
            Updater.e(composerA2, measurePolicyH2, companion3.d());
            Updater.e(composerA2, density3, companion3.b());
            Updater.e(composerA2, layoutDirection2, companion3.c());
            Updater.e(composerA2, viewConfiguration2, companion3.f());
            composerS.o();
            qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-2137368960);
            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
            composerS.G(-443225682);
            content.invoke(exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$2, composerS, Integer.valueOf((i12 >> 6) & 112));
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            EffectsKt.h(new ExposedDropdownMenuKt$ExposedDropdownMenuBox$4(z6, focusRequester2), composerS, 0);
            EffectsKt.a(view2, new ExposedDropdownMenuKt$ExposedDropdownMenuBox$5(view2, ref2, iJ1, mutableState2), composerS, 8);
            modifier4 = modifier3;
        } else {
            if (i14 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            density = (Density) composerS.x(CompositionLocalsKt.e());
            View view3 = (View) composerS.x(AndroidCompositionLocals_androidKt.k());
            composerS.G(-492369756);
            objH = composerS.H();
            companion = Composer.Companion;
            if (objH == companion.a()) {
                objH = SnapshotStateKt__SnapshotStateKt.e(0, null, 2, null);
                composerS.z(objH);
            }
            composerS.Q();
            mutableState = (MutableState) objH;
            composerS.G(-492369756);
            objH2 = composerS.H();
            if (objH2 == companion.a()) {
                objH2 = SnapshotStateKt__SnapshotStateKt.e(0, null, 2, null);
                composerS.z(objH2);
            }
            composerS.Q();
            mutableState2 = (MutableState) objH2;
            int iJ2 = density.j0(MenuKt.j());
            composerS.G(-492369756);
            objH3 = composerS.H();
            if (objH3 == companion.a()) {
                objH3 = new Ref();
                composerS.z(objH3);
            }
            composerS.Q();
            Ref ref3 = (Ref) objH3;
            Integer numValueOf5 = Integer.valueOf(d(mutableState2));
            Integer numValueOf6 = Integer.valueOf(b(mutableState));
            composerS.G(1618982084);
            zK = composerS.k(density) | composerS.k(numValueOf5) | composerS.k(numValueOf6);
            objH4 = composerS.H();
            if (zK) {
                objH4 = new ExposedDropdownMenuBoxScope() { // from class: androidx.compose.material.ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1
                    @Override // androidx.compose.material.ExposedDropdownMenuBoxScope
                    @NotNull
                    public Modifier b(@NotNull Modifier modifier5, boolean z10) {
                        t.j(modifier5, "<this>");
                        Density density4 = density;
                        MutableState<Integer> mutableState3 = mutableState2;
                        MutableState<Integer> mutableState4 = mutableState;
                        Modifier modifierQ = SizeKt.q(modifier5, 0.0f, density4.j(ExposedDropdownMenuKt.d(mutableState3)), 1, null);
                        return z10 ? SizeKt.D(modifierQ, density4.j(ExposedDropdownMenuKt.b(mutableState4))) : modifierQ;
                    }

                    @Override // androidx.compose.material.ExposedDropdownMenuBoxScope
                    @Composable
                    public void a(boolean z10, @NotNull a<l0> aVar, @NotNull Modifier modifier5, @NotNull q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar, @Nullable Composer composer2, int i15, int i16) {
                        ExposedDropdownMenuBoxScope.DefaultImpls.a(this, z10, aVar, modifier5, qVar, composer2, i15, i16);
                    }
                };
                composerS.z(objH4);
            } else {
                objH4 = new ExposedDropdownMenuBoxScope() { // from class: androidx.compose.material.ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1
                    @Override // androidx.compose.material.ExposedDropdownMenuBoxScope
                    @NotNull
                    public Modifier b(@NotNull Modifier modifier5, boolean z10) {
                        t.j(modifier5, "<this>");
                        Density density4 = density;
                        MutableState<Integer> mutableState3 = mutableState2;
                        MutableState<Integer> mutableState4 = mutableState;
                        Modifier modifierQ = SizeKt.q(modifier5, 0.0f, density4.j(ExposedDropdownMenuKt.d(mutableState3)), 1, null);
                        return z10 ? SizeKt.D(modifierQ, density4.j(ExposedDropdownMenuKt.b(mutableState4))) : modifierQ;
                    }

                    @Override // androidx.compose.material.ExposedDropdownMenuBoxScope
                    @Composable
                    public void a(boolean z10, @NotNull a<l0> aVar, @NotNull Modifier modifier5, @NotNull q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar, @Nullable Composer composer2, int i15, int i16) {
                        ExposedDropdownMenuBoxScope.DefaultImpls.a(this, z10, aVar, modifier5, qVar, composer2, i15, i16);
                    }
                };
                composerS.z(objH4);
            }
            composerS.Q();
            ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1 exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$3 = (ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1) objH4;
            composerS.G(-492369756);
            objH5 = composerS.H();
            if (objH5 == companion.a()) {
                objH5 = new FocusRequester();
                composerS.z(objH5);
            }
            composerS.Q();
            FocusRequester focusRequester3 = (FocusRequester) objH5;
            Modifier modifierA5 = OnGloballyPositionedModifierKt.a(modifier3, new ExposedDropdownMenuKt$ExposedDropdownMenuBox$1(ref3, view3, iJ2, mutableState, mutableState2));
            Boolean boolValueOf3 = Boolean.valueOf(z6);
            composerS.G(511388516);
            zK2 = composerS.k(boolValueOf3) | composerS.k(onExpandedChange);
            objH6 = composerS.H();
            if (zK2) {
                objH6 = new ExposedDropdownMenuKt$ExposedDropdownMenuBox$2$1(onExpandedChange, z6);
                composerS.z(objH6);
            } else {
                objH6 = new ExposedDropdownMenuKt$ExposedDropdownMenuBox$2$1(onExpandedChange, z6);
                composerS.z(objH6);
            }
            composerS.Q();
            Modifier modifierA6 = FocusRequesterModifierKt.a(k(modifierA5, (a) objH6, Strings_androidKt.a(Strings.Companion.d(), composerS, 6)), focusRequester3);
            composerS.G(733328855);
            MeasurePolicy measurePolicyH3 = BoxKt.h(Alignment.Companion.o(), false, composerS, 0);
            composerS.G(-1323940314);
            Density density4 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
            aVarA = companion4.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierA6);
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
            Updater.e(composerA3, measurePolicyH3, companion4.d());
            Updater.e(composerA3, density4, companion4.b());
            Updater.e(composerA3, layoutDirection3, companion4.c());
            Updater.e(composerA3, viewConfiguration3, companion4.f());
            composerS.o();
            qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-2137368960);
            BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
            composerS.G(-443225682);
            content.invoke(exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$3, composerS, Integer.valueOf((i12 >> 6) & 112));
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            EffectsKt.h(new ExposedDropdownMenuKt$ExposedDropdownMenuBox$4(z6, focusRequester3), composerS, 0);
            EffectsKt.a(view3, new ExposedDropdownMenuKt$ExposedDropdownMenuBox$5(view3, ref3, iJ2, mutableState2), composerS, 8);
            modifier4 = modifier3;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new ExposedDropdownMenuKt$ExposedDropdownMenuBox$6(z6, onExpandedChange, modifier4, content, i10, i11));
    }

    private static final Modifier k(Modifier modifier, a<l0> aVar, String str) {
        return SemanticsModifierKt.c(SuspendingPointerInputFilterKt.b(modifier, l0.INSTANCE, new ExposedDropdownMenuKt$expandable$1(aVar, null)), false, new ExposedDropdownMenuKt$expandable$2(str, aVar), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(View view, LayoutCoordinates layoutCoordinates, int i10, l<? super Integer, l0> lVar) {
        if (layoutCoordinates == null) {
            return;
        }
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        float fM = LayoutCoordinatesKt.c(layoutCoordinates).m();
        int i11 = rect.top;
        lVar.invoke(Integer.valueOf(((int) Math.max(fM - i11, (rect.bottom - i11) - LayoutCoordinatesKt.c(layoutCoordinates).e())) - i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int b(MutableState<Integer> mutableState) {
        return mutableState.getValue().intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(MutableState<Integer> mutableState, int i10) {
        mutableState.setValue(Integer.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int d(MutableState<Integer> mutableState) {
        return mutableState.getValue().intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(MutableState<Integer> mutableState, int i10) {
        mutableState.setValue(Integer.valueOf(i10));
    }
}
