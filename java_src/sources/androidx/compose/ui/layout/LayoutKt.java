package androidx.compose.ui.layout;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.UiComposable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.profileinstaller.ProfileVerifier;
import e8.p;
import e8.q;
import java.util.List;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutKt {
    /* JADX WARN: Code duplicated, block: B:66:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:71:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:73:0x00db  */
    /* JADX WARN: Code duplicated, block: B:74:0x00de  */
    /* JADX WARN: Code duplicated, block: B:77:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:81:0x00f7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:83:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:86:0x0152  */
    /* JADX WARN: Code duplicated, block: B:89:0x015e  */
    /* JADX WARN: Code duplicated, block: B:90:0x0162  */
    /* JADX WARN: Code duplicated, block: B:95:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:97:? A[RETURN, SYNTHETIC] */
    @Composable
    @UiComposable
    public static final void a(@NotNull p<? super Composer, ? super Integer, l0> content, @NotNull final q<? super IntrinsicMeasureScope, ? super List<? extends IntrinsicMeasurable>, ? super Integer, Integer> minIntrinsicWidthMeasureBlock, @NotNull final q<? super IntrinsicMeasureScope, ? super List<? extends IntrinsicMeasurable>, ? super Integer, Integer> minIntrinsicHeightMeasureBlock, @NotNull final q<? super IntrinsicMeasureScope, ? super List<? extends IntrinsicMeasurable>, ? super Integer, Integer> maxIntrinsicWidthMeasureBlock, @NotNull final q<? super IntrinsicMeasureScope, ? super List<? extends IntrinsicMeasurable>, ? super Integer, Integer> maxIntrinsicHeightMeasureBlock, @Nullable Modifier modifier, @NotNull final q<? super MeasureScope, ? super List<? extends Measurable>, ? super Constraints, ? extends MeasureResult> measureBlock, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        int i14;
        Modifier modifier3;
        e8.a<ComposeUiNode> aVarA;
        Modifier modifier4;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(content, "content");
        t.j(minIntrinsicWidthMeasureBlock, "minIntrinsicWidthMeasureBlock");
        t.j(minIntrinsicHeightMeasureBlock, "minIntrinsicHeightMeasureBlock");
        t.j(maxIntrinsicWidthMeasureBlock, "maxIntrinsicWidthMeasureBlock");
        t.j(maxIntrinsicHeightMeasureBlock, "maxIntrinsicHeightMeasureBlock");
        t.j(measureBlock, "measureBlock");
        Composer composerS = composer.s(1164819031);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(content) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            i12 |= composerS.k(minIntrinsicWidthMeasureBlock) ? 32 : 16;
        }
        if ((i11 & 4) != 0) {
            i12 |= 384;
        } else if ((i10 & 896) == 0) {
            i12 |= composerS.k(minIntrinsicHeightMeasureBlock) ? 256 : 128;
        }
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 7168) == 0) {
            i12 |= composerS.k(maxIntrinsicWidthMeasureBlock) ? 2048 : 1024;
        }
        if ((i11 & 16) != 0) {
            i12 |= CpioConstants.C_ISBLK;
        } else if ((57344 & i10) == 0) {
            i12 |= composerS.k(maxIntrinsicHeightMeasureBlock) ? 16384 : 8192;
        }
        int i15 = i11 & 32;
        if (i15 == 0) {
            if ((458752 & i10) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 131072 : 65536;
            }
            if ((i11 & 64) != 0) {
                if ((3670016 & i10) == 0) {
                    if (composerS.k(measureBlock)) {
                        i13 = 1048576;
                    } else {
                        i13 = 524288;
                    }
                }
                i14 = i12;
                if ((2995931 & i14) == 599186 || !composerS.b()) {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.ui.layout.LayoutKt$Layout$measurePolicy$1
                        @Override // androidx.compose.ui.layout.MeasurePolicy
                        @NotNull
                        public MeasureResult a(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j6) {
                            t.j(measure, "$this$measure");
                            t.j(measurables, "measurables");
                            return measureBlock.invoke(measure, measurables, Constraints.b(j6));
                        }

                        @Override // androidx.compose.ui.layout.MeasurePolicy
                        public int b(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i16) {
                            t.j(intrinsicMeasureScope, "<this>");
                            t.j(measurables, "measurables");
                            return minIntrinsicHeightMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i16)).intValue();
                        }

                        @Override // androidx.compose.ui.layout.MeasurePolicy
                        public int c(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i16) {
                            t.j(intrinsicMeasureScope, "<this>");
                            t.j(measurables, "measurables");
                            return minIntrinsicWidthMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i16)).intValue();
                        }

                        @Override // androidx.compose.ui.layout.MeasurePolicy
                        public int d(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i16) {
                            t.j(intrinsicMeasureScope, "<this>");
                            t.j(measurables, "measurables");
                            return maxIntrinsicHeightMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i16)).intValue();
                        }

                        @Override // androidx.compose.ui.layout.MeasurePolicy
                        public int e(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i16) {
                            t.j(intrinsicMeasureScope, "<this>");
                            t.j(measurables, "measurables");
                            return maxIntrinsicWidthMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i16)).intValue();
                        }
                    };
                    int i16 = (i14 & 14) | ((i14 >> 12) & 112);
                    composerS.G(-1323940314);
                    Density density = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                    aVarA = companion.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = c(modifier3);
                    int i17 = ((i16 << 9) & 7168) | 6;
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
                    Updater.e(composerA, density, companion.b());
                    Updater.e(composerA, layoutDirection, companion.c());
                    Updater.e(composerA, viewConfiguration, companion.f());
                    composerS.o();
                    qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i17 >> 3) & 112));
                    composerS.G(2058660585);
                    content.invoke(composerS, Integer.valueOf((i17 >> 9) & 14));
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    modifier4 = modifier3;
                } else {
                    composerS.g();
                    modifier4 = modifier2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LayoutKt$Layout$3(content, minIntrinsicWidthMeasureBlock, minIntrinsicHeightMeasureBlock, maxIntrinsicWidthMeasureBlock, maxIntrinsicHeightMeasureBlock, modifier4, measureBlock, i10, i11));
            }
            i13 = 1572864;
            i12 |= i13;
            i14 = i12;
            if ((2995931 & i14) == 599186) {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                MeasurePolicy measurePolicy2 = new MeasurePolicy() { // from class: androidx.compose.ui.layout.LayoutKt$Layout$measurePolicy$1
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    @NotNull
                    public MeasureResult a(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j6) {
                        t.j(measure, "$this$measure");
                        t.j(measurables, "measurables");
                        return measureBlock.invoke(measure, measurables, Constraints.b(j6));
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public int b(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i18) {
                        t.j(intrinsicMeasureScope, "<this>");
                        t.j(measurables, "measurables");
                        return minIntrinsicHeightMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i18)).intValue();
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public int c(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i18) {
                        t.j(intrinsicMeasureScope, "<this>");
                        t.j(measurables, "measurables");
                        return minIntrinsicWidthMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i18)).intValue();
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public int d(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i18) {
                        t.j(intrinsicMeasureScope, "<this>");
                        t.j(measurables, "measurables");
                        return maxIntrinsicHeightMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i18)).intValue();
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public int e(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i18) {
                        t.j(intrinsicMeasureScope, "<this>");
                        t.j(measurables, "measurables");
                        return maxIntrinsicWidthMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i18)).intValue();
                    }
                };
                int i18 = (i14 & 14) | ((i14 >> 12) & 112);
                composerS.G(-1323940314);
                Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                aVarA = companion2.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = c(modifier3);
                int i19 = ((i18 << 9) & 7168) | 6;
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
                Updater.e(composerA2, density2, companion2.b());
                Updater.e(composerA2, layoutDirection2, companion2.c());
                Updater.e(composerA2, viewConfiguration2, companion2.f());
                composerS.o();
                qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i19 >> 3) & 112));
                composerS.G(2058660585);
                content.invoke(composerS, Integer.valueOf((i19 >> 9) & 14));
                composerS.Q();
                composerS.d();
                composerS.Q();
                modifier4 = modifier3;
            } else {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                MeasurePolicy measurePolicy3 = new MeasurePolicy() { // from class: androidx.compose.ui.layout.LayoutKt$Layout$measurePolicy$1
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    @NotNull
                    public MeasureResult a(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j6) {
                        t.j(measure, "$this$measure");
                        t.j(measurables, "measurables");
                        return measureBlock.invoke(measure, measurables, Constraints.b(j6));
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public int b(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i110) {
                        t.j(intrinsicMeasureScope, "<this>");
                        t.j(measurables, "measurables");
                        return minIntrinsicHeightMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i110)).intValue();
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public int c(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i110) {
                        t.j(intrinsicMeasureScope, "<this>");
                        t.j(measurables, "measurables");
                        return minIntrinsicWidthMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i110)).intValue();
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public int d(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i110) {
                        t.j(intrinsicMeasureScope, "<this>");
                        t.j(measurables, "measurables");
                        return maxIntrinsicHeightMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i110)).intValue();
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public int e(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i110) {
                        t.j(intrinsicMeasureScope, "<this>");
                        t.j(measurables, "measurables");
                        return maxIntrinsicWidthMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i110)).intValue();
                    }
                };
                int i110 = (i14 & 14) | ((i14 >> 12) & 112);
                composerS.G(-1323940314);
                Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                aVarA = companion3.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = c(modifier3);
                int i111 = ((i110 << 9) & 7168) | 6;
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
                Updater.e(composerA3, density3, companion3.b());
                Updater.e(composerA3, layoutDirection3, companion3.c());
                Updater.e(composerA3, viewConfiguration3, companion3.f());
                composerS.o();
                qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i111 >> 3) & 112));
                composerS.G(2058660585);
                content.invoke(composerS, Integer.valueOf((i111 >> 9) & 14));
                composerS.Q();
                composerS.d();
                composerS.Q();
                modifier4 = modifier3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LayoutKt$Layout$3(content, minIntrinsicWidthMeasureBlock, minIntrinsicHeightMeasureBlock, maxIntrinsicWidthMeasureBlock, maxIntrinsicHeightMeasureBlock, modifier4, measureBlock, i10, i11));
        }
        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        modifier2 = modifier;
        if ((i11 & 64) != 0) {
            if ((3670016 & i10) == 0) {
                if (composerS.k(measureBlock)) {
                    i13 = 1048576;
                } else {
                    i13 = 524288;
                }
            }
            i14 = i12;
            if ((2995931 & i14) == 599186) {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                MeasurePolicy measurePolicy4 = new MeasurePolicy() { // from class: androidx.compose.ui.layout.LayoutKt$Layout$measurePolicy$1
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    @NotNull
                    public MeasureResult a(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j6) {
                        t.j(measure, "$this$measure");
                        t.j(measurables, "measurables");
                        return measureBlock.invoke(measure, measurables, Constraints.b(j6));
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public int b(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i112) {
                        t.j(intrinsicMeasureScope, "<this>");
                        t.j(measurables, "measurables");
                        return minIntrinsicHeightMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i112)).intValue();
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public int c(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i112) {
                        t.j(intrinsicMeasureScope, "<this>");
                        t.j(measurables, "measurables");
                        return minIntrinsicWidthMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i112)).intValue();
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public int d(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i112) {
                        t.j(intrinsicMeasureScope, "<this>");
                        t.j(measurables, "measurables");
                        return maxIntrinsicHeightMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i112)).intValue();
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public int e(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i112) {
                        t.j(intrinsicMeasureScope, "<this>");
                        t.j(measurables, "measurables");
                        return maxIntrinsicWidthMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i112)).intValue();
                    }
                };
                int i112 = (i14 & 14) | ((i14 >> 12) & 112);
                composerS.G(-1323940314);
                Density density4 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection4 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration4 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                aVarA = companion4.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC4 = c(modifier3);
                int i113 = ((i112 << 9) & 7168) | 6;
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
                Updater.e(composerA4, density4, companion4.b());
                Updater.e(composerA4, layoutDirection4, companion4.c());
                Updater.e(composerA4, viewConfiguration4, companion4.f());
                composerS.o();
                qVarC4.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i113 >> 3) & 112));
                composerS.G(2058660585);
                content.invoke(composerS, Integer.valueOf((i113 >> 9) & 14));
                composerS.Q();
                composerS.d();
                composerS.Q();
                modifier4 = modifier3;
            } else {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                MeasurePolicy measurePolicy5 = new MeasurePolicy() { // from class: androidx.compose.ui.layout.LayoutKt$Layout$measurePolicy$1
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    @NotNull
                    public MeasureResult a(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j6) {
                        t.j(measure, "$this$measure");
                        t.j(measurables, "measurables");
                        return measureBlock.invoke(measure, measurables, Constraints.b(j6));
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public int b(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i114) {
                        t.j(intrinsicMeasureScope, "<this>");
                        t.j(measurables, "measurables");
                        return minIntrinsicHeightMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i114)).intValue();
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public int c(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i114) {
                        t.j(intrinsicMeasureScope, "<this>");
                        t.j(measurables, "measurables");
                        return minIntrinsicWidthMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i114)).intValue();
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public int d(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i114) {
                        t.j(intrinsicMeasureScope, "<this>");
                        t.j(measurables, "measurables");
                        return maxIntrinsicHeightMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i114)).intValue();
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public int e(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i114) {
                        t.j(intrinsicMeasureScope, "<this>");
                        t.j(measurables, "measurables");
                        return maxIntrinsicWidthMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i114)).intValue();
                    }
                };
                int i114 = (i14 & 14) | ((i14 >> 12) & 112);
                composerS.G(-1323940314);
                Density density5 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection5 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration5 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
                aVarA = companion5.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC5 = c(modifier3);
                int i115 = ((i114 << 9) & 7168) | 6;
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
                Composer composerA5 = Updater.a(composerS);
                Updater.e(composerA5, measurePolicy5, companion5.d());
                Updater.e(composerA5, density5, companion5.b());
                Updater.e(composerA5, layoutDirection5, companion5.c());
                Updater.e(composerA5, viewConfiguration5, companion5.f());
                composerS.o();
                qVarC5.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i115 >> 3) & 112));
                composerS.G(2058660585);
                content.invoke(composerS, Integer.valueOf((i115 >> 9) & 14));
                composerS.Q();
                composerS.d();
                composerS.Q();
                modifier4 = modifier3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LayoutKt$Layout$3(content, minIntrinsicWidthMeasureBlock, minIntrinsicHeightMeasureBlock, maxIntrinsicWidthMeasureBlock, maxIntrinsicHeightMeasureBlock, modifier4, measureBlock, i10, i11));
        }
        i13 = 1572864;
        i12 |= i13;
        i14 = i12;
        if ((2995931 & i14) == 599186) {
            if (i15 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            MeasurePolicy measurePolicy6 = new MeasurePolicy() { // from class: androidx.compose.ui.layout.LayoutKt$Layout$measurePolicy$1
                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                public MeasureResult a(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j6) {
                    t.j(measure, "$this$measure");
                    t.j(measurables, "measurables");
                    return measureBlock.invoke(measure, measurables, Constraints.b(j6));
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public int b(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i116) {
                    t.j(intrinsicMeasureScope, "<this>");
                    t.j(measurables, "measurables");
                    return minIntrinsicHeightMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i116)).intValue();
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public int c(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i116) {
                    t.j(intrinsicMeasureScope, "<this>");
                    t.j(measurables, "measurables");
                    return minIntrinsicWidthMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i116)).intValue();
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public int d(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i116) {
                    t.j(intrinsicMeasureScope, "<this>");
                    t.j(measurables, "measurables");
                    return maxIntrinsicHeightMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i116)).intValue();
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public int e(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i116) {
                    t.j(intrinsicMeasureScope, "<this>");
                    t.j(measurables, "measurables");
                    return maxIntrinsicWidthMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i116)).intValue();
                }
            };
            int i116 = (i14 & 14) | ((i14 >> 12) & 112);
            composerS.G(-1323940314);
            Density density6 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection6 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration6 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion6 = ComposeUiNode.Companion;
            aVarA = companion6.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC6 = c(modifier3);
            int i117 = ((i116 << 9) & 7168) | 6;
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
            Composer composerA6 = Updater.a(composerS);
            Updater.e(composerA6, measurePolicy6, companion6.d());
            Updater.e(composerA6, density6, companion6.b());
            Updater.e(composerA6, layoutDirection6, companion6.c());
            Updater.e(composerA6, viewConfiguration6, companion6.f());
            composerS.o();
            qVarC6.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i117 >> 3) & 112));
            composerS.G(2058660585);
            content.invoke(composerS, Integer.valueOf((i117 >> 9) & 14));
            composerS.Q();
            composerS.d();
            composerS.Q();
            modifier4 = modifier3;
        } else {
            if (i15 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            MeasurePolicy measurePolicy7 = new MeasurePolicy() { // from class: androidx.compose.ui.layout.LayoutKt$Layout$measurePolicy$1
                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                public MeasureResult a(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j6) {
                    t.j(measure, "$this$measure");
                    t.j(measurables, "measurables");
                    return measureBlock.invoke(measure, measurables, Constraints.b(j6));
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public int b(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i118) {
                    t.j(intrinsicMeasureScope, "<this>");
                    t.j(measurables, "measurables");
                    return minIntrinsicHeightMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i118)).intValue();
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public int c(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i118) {
                    t.j(intrinsicMeasureScope, "<this>");
                    t.j(measurables, "measurables");
                    return minIntrinsicWidthMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i118)).intValue();
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public int d(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i118) {
                    t.j(intrinsicMeasureScope, "<this>");
                    t.j(measurables, "measurables");
                    return maxIntrinsicHeightMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i118)).intValue();
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public int e(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i118) {
                    t.j(intrinsicMeasureScope, "<this>");
                    t.j(measurables, "measurables");
                    return maxIntrinsicWidthMeasureBlock.invoke(intrinsicMeasureScope, measurables, Integer.valueOf(i118)).intValue();
                }
            };
            int i118 = (i14 & 14) | ((i14 >> 12) & 112);
            composerS.G(-1323940314);
            Density density7 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection7 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration7 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion7 = ComposeUiNode.Companion;
            aVarA = companion7.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC7 = c(modifier3);
            int i119 = ((i118 << 9) & 7168) | 6;
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
            Composer composerA7 = Updater.a(composerS);
            Updater.e(composerA7, measurePolicy7, companion7.d());
            Updater.e(composerA7, density7, companion7.b());
            Updater.e(composerA7, layoutDirection7, companion7.c());
            Updater.e(composerA7, viewConfiguration7, companion7.f());
            composerS.o();
            qVarC7.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i119 >> 3) & 112));
            composerS.G(2058660585);
            content.invoke(composerS, Integer.valueOf((i119 >> 9) & 14));
            composerS.Q();
            composerS.d();
            composerS.Q();
            modifier4 = modifier3;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new LayoutKt$Layout$3(content, minIntrinsicWidthMeasureBlock, minIntrinsicHeightMeasureBlock, maxIntrinsicWidthMeasureBlock, maxIntrinsicHeightMeasureBlock, modifier4, measureBlock, i10, i11));
    }

    @Composable
    @UiComposable
    public static final void b(@Nullable Modifier modifier, @NotNull p<? super Composer, ? super Integer, l0> content, @NotNull MeasurePolicy measurePolicy, @Nullable Composer composer, int i10, int i11) {
        int i12;
        t.j(content, "content");
        t.j(measurePolicy, "measurePolicy");
        Composer composerS = composer.s(1949933075);
        int i13 = i11 & 1;
        if (i13 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(modifier) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            i12 |= composerS.k(content) ? 32 : 16;
        }
        if ((i11 & 4) != 0) {
            i12 |= 384;
        } else if ((i10 & 896) == 0) {
            i12 |= composerS.k(measurePolicy) ? 256 : 128;
        }
        if ((i12 & 731) == 146 && composerS.b()) {
            composerS.g();
        } else {
            if (i13 != 0) {
                modifier = Modifier.Companion;
            }
            Modifier modifierE = ComposedModifierKt.e(composerS, modifier);
            Density density = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            e8.a<LayoutNode> aVarA = LayoutNode.Companion.a();
            int i14 = ((i12 << 3) & 896) | 6;
            composerS.G(-692256719);
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
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            Updater.e(composerA, modifierE, companion.e());
            Updater.e(composerA, measurePolicy, companion.d());
            Updater.e(composerA, density, companion.b());
            Updater.e(composerA, layoutDirection, companion.c());
            Updater.e(composerA, viewConfiguration, companion.f());
            Updater.d(composerA, LayoutKt$MultiMeasureLayout$1$1.INSTANCE);
            composerS.o();
            content.invoke(composerS, Integer.valueOf((i14 >> 6) & 14));
            composerS.d();
            composerS.Q();
        }
        Modifier modifier2 = modifier;
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new LayoutKt$MultiMeasureLayout$2(modifier2, content, measurePolicy, i10, i11));
    }

    @NotNull
    public static final q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> c(@NotNull Modifier modifier) {
        t.j(modifier, "modifier");
        return ComposableLambdaKt.c(-1586257396, true, new LayoutKt$materializerOf$1(modifier));
    }
}
