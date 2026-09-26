package androidx.compose.ui.viewinterop;

import android.content.Context;
import android.view.View;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.UiComposable;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.node.Ref;
import androidx.compose.ui.node.UiApplier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.lifecycle.LifecycleOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import e8.l;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class AndroidView_androidKt {

    @NotNull
    private static final l<View, l0> NoOpUpdate = AndroidView_androidKt$NoOpUpdate$1.INSTANCE;

    @NotNull
    public static final l<View, l0> b() {
        return NoOpUpdate;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0048  */
    /* JADX WARN: Code duplicated, block: B:28:0x004d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0051  */
    /* JADX WARN: Code duplicated, block: B:32:0x0059  */
    /* JADX WARN: Code duplicated, block: B:33:0x005c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0065  */
    /* JADX WARN: Code duplicated, block: B:41:0x0072 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x0074  */
    /* JADX WARN: Code duplicated, block: B:43:0x0078  */
    /* JADX WARN: Code duplicated, block: B:45:0x007b  */
    /* JADX WARN: Code duplicated, block: B:46:0x007f  */
    /* JADX WARN: Code duplicated, block: B:49:0x009d  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:55:0x0114  */
    /* JADX WARN: Code duplicated, block: B:58:0x015d  */
    /* JADX WARN: Code duplicated, block: B:61:0x0169  */
    /* JADX WARN: Code duplicated, block: B:62:0x0172  */
    /* JADX WARN: Code duplicated, block: B:65:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:70:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:72:? A[RETURN, SYNTHETIC] */
    @Composable
    @UiComposable
    public static final <T extends View> void a(@NotNull l<? super Context, ? extends T> factory, @Nullable Modifier modifier, @Nullable l<? super T, l0> lVar, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        l<? super T, l0> lVar2;
        int i14;
        Modifier modifier3;
        l<? super T, l0> lVar3;
        Object objH;
        Composer.Companion companion;
        Object objH2;
        SaveableStateRegistry saveableStateRegistry;
        String strValueOf;
        Object objH3;
        Ref ref;
        AndroidView_androidKt$AndroidView$1 androidView_androidKt$AndroidView$1;
        l<? super T, l0> lVar4;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(factory, "factory");
        Composer composerS = composer.s(-1783766393);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(factory) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i15 = i11 & 2;
        if (i15 == 0) {
            if ((i10 & 112) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 32 : 16;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 896) == 0) {
                    lVar2 = lVar;
                    if (composerS.k(lVar2)) {
                        i14 = 256;
                    } else {
                        i14 = 128;
                    }
                    i12 |= i14;
                }
                if ((i12 & 731) == 146 || !composerS.b()) {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        lVar3 = NoOpUpdate;
                    } else {
                        lVar3 = lVar2;
                    }
                    Context context = (Context) composerS.x(AndroidCompositionLocals_androidKt.g());
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = new NestedScrollConnection() { // from class: androidx.compose.ui.viewinterop.AndroidView_androidKt$AndroidView$noOpConnection$1$1
                            @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                            public /* synthetic */ Object a(long j6, long j10, d dVar) {
                                return androidx.compose.ui.input.nestedscroll.a.a(this, j6, j10, dVar);
                            }

                            @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                            public /* synthetic */ long b(long j6, long j10, int i16) {
                                return androidx.compose.ui.input.nestedscroll.a.b(this, j6, j10, i16);
                            }

                            @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                            public /* synthetic */ Object c(long j6, d dVar) {
                                return androidx.compose.ui.input.nestedscroll.a.c(this, j6, dVar);
                            }

                            @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                            public /* synthetic */ long d(long j6, int i16) {
                                return androidx.compose.ui.input.nestedscroll.a.d(this, j6, i16);
                            }
                        };
                        composerS.z(objH);
                    }
                    composerS.Q();
                    AndroidView_androidKt$AndroidView$noOpConnection$1$1 androidView_androidKt$AndroidView$noOpConnection$1$1 = (AndroidView_androidKt$AndroidView$noOpConnection$1$1) objH;
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = new NestedScrollDispatcher();
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    NestedScrollDispatcher nestedScrollDispatcher = (NestedScrollDispatcher) objH2;
                    Modifier modifierE = ComposedModifierKt.e(composerS, SemanticsModifierKt.b(modifier3.B(NestedScrollModifierKt.a(Modifier.Companion, androidView_androidKt$AndroidView$noOpConnection$1$1, nestedScrollDispatcher)), true, AndroidView_androidKt$AndroidView$modifierWithSemantics$1.INSTANCE));
                    Density density = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    CompositionContext compositionContextD = ComposablesKt.d(composerS, 0);
                    saveableStateRegistry = (SaveableStateRegistry) composerS.x(SaveableStateRegistryKt.b());
                    strValueOf = String.valueOf(ComposablesKt.a(composerS, 0));
                    composerS.G(-492369756);
                    objH3 = composerS.H();
                    if (objH3 == companion.a()) {
                        objH3 = new Ref();
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    ref = (Ref) objH3;
                    LifecycleOwner lifecycleOwner = (LifecycleOwner) composerS.x(AndroidCompositionLocals_androidKt.i());
                    SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) composerS.x(AndroidCompositionLocals_androidKt.j());
                    Modifier modifier4 = modifier3;
                    androidView_androidKt$AndroidView$1 = new AndroidView_androidKt$AndroidView$1(context, compositionContextD, nestedScrollDispatcher, factory, saveableStateRegistry, strValueOf, ref);
                    composerS.G(1886828752);
                    if (!(composerS.t() instanceof UiApplier)) {
                        ComposablesKt.c();
                    }
                    composerS.v();
                    if (composerS.r()) {
                        composerS.w(new AndroidView_androidKt$AndroidView$$inlined$ComposeNode$1(androidView_androidKt$AndroidView$1));
                    } else {
                        composerS.c();
                    }
                    Composer composerA = Updater.a(composerS);
                    Updater.e(composerA, modifierE, new AndroidView_androidKt$AndroidView$2$1(ref));
                    Updater.e(composerA, density, new AndroidView_androidKt$AndroidView$2$2(ref));
                    Updater.e(composerA, lifecycleOwner, new AndroidView_androidKt$AndroidView$2$3(ref));
                    Updater.e(composerA, savedStateRegistryOwner, new AndroidView_androidKt$AndroidView$2$4(ref));
                    Updater.e(composerA, lVar3, new AndroidView_androidKt$AndroidView$2$5(ref));
                    Updater.e(composerA, layoutDirection, new AndroidView_androidKt$AndroidView$2$6(ref));
                    composerS.d();
                    composerS.Q();
                    if (saveableStateRegistry != null) {
                        EffectsKt.b(saveableStateRegistry, strValueOf, new AndroidView_androidKt$AndroidView$3(saveableStateRegistry, strValueOf, ref), composerS, 8);
                    }
                    modifier2 = modifier4;
                    lVar4 = lVar3;
                } else {
                    composerS.g();
                    lVar4 = lVar2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidView_androidKt$AndroidView$4(factory, modifier2, lVar4, i10, i11));
            }
            i12 |= 384;
            lVar2 = lVar;
            if ((i12 & 731) == 146) {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    lVar3 = NoOpUpdate;
                } else {
                    lVar3 = lVar2;
                }
                Context context2 = (Context) composerS.x(AndroidCompositionLocals_androidKt.g());
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = new NestedScrollConnection() { // from class: androidx.compose.ui.viewinterop.AndroidView_androidKt$AndroidView$noOpConnection$1$1
                        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                        public /* synthetic */ Object a(long j6, long j10, d dVar) {
                            return androidx.compose.ui.input.nestedscroll.a.a(this, j6, j10, dVar);
                        }

                        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                        public /* synthetic */ long b(long j6, long j10, int i16) {
                            return androidx.compose.ui.input.nestedscroll.a.b(this, j6, j10, i16);
                        }

                        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                        public /* synthetic */ Object c(long j6, d dVar) {
                            return androidx.compose.ui.input.nestedscroll.a.c(this, j6, dVar);
                        }

                        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                        public /* synthetic */ long d(long j6, int i16) {
                            return androidx.compose.ui.input.nestedscroll.a.d(this, j6, i16);
                        }
                    };
                    composerS.z(objH);
                }
                composerS.Q();
                AndroidView_androidKt$AndroidView$noOpConnection$1$1 androidView_androidKt$AndroidView$noOpConnection$1$2 = (AndroidView_androidKt$AndroidView$noOpConnection$1$1) objH;
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = new NestedScrollDispatcher();
                    composerS.z(objH2);
                }
                composerS.Q();
                NestedScrollDispatcher nestedScrollDispatcher2 = (NestedScrollDispatcher) objH2;
                Modifier modifierE2 = ComposedModifierKt.e(composerS, SemanticsModifierKt.b(modifier3.B(NestedScrollModifierKt.a(Modifier.Companion, androidView_androidKt$AndroidView$noOpConnection$1$2, nestedScrollDispatcher2)), true, AndroidView_androidKt$AndroidView$modifierWithSemantics$1.INSTANCE));
                Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                CompositionContext compositionContextD2 = ComposablesKt.d(composerS, 0);
                saveableStateRegistry = (SaveableStateRegistry) composerS.x(SaveableStateRegistryKt.b());
                strValueOf = String.valueOf(ComposablesKt.a(composerS, 0));
                composerS.G(-492369756);
                objH3 = composerS.H();
                if (objH3 == companion.a()) {
                    objH3 = new Ref();
                    composerS.z(objH3);
                }
                composerS.Q();
                ref = (Ref) objH3;
                LifecycleOwner lifecycleOwner2 = (LifecycleOwner) composerS.x(AndroidCompositionLocals_androidKt.i());
                SavedStateRegistryOwner savedStateRegistryOwner2 = (SavedStateRegistryOwner) composerS.x(AndroidCompositionLocals_androidKt.j());
                Modifier modifier5 = modifier3;
                androidView_androidKt$AndroidView$1 = new AndroidView_androidKt$AndroidView$1(context2, compositionContextD2, nestedScrollDispatcher2, factory, saveableStateRegistry, strValueOf, ref);
                composerS.G(1886828752);
                if (!(composerS.t() instanceof UiApplier)) {
                    ComposablesKt.c();
                }
                composerS.v();
                if (composerS.r()) {
                    composerS.w(new AndroidView_androidKt$AndroidView$$inlined$ComposeNode$1(androidView_androidKt$AndroidView$1));
                } else {
                    composerS.c();
                }
                Composer composerA2 = Updater.a(composerS);
                Updater.e(composerA2, modifierE2, new AndroidView_androidKt$AndroidView$2$1(ref));
                Updater.e(composerA2, density2, new AndroidView_androidKt$AndroidView$2$2(ref));
                Updater.e(composerA2, lifecycleOwner2, new AndroidView_androidKt$AndroidView$2$3(ref));
                Updater.e(composerA2, savedStateRegistryOwner2, new AndroidView_androidKt$AndroidView$2$4(ref));
                Updater.e(composerA2, lVar3, new AndroidView_androidKt$AndroidView$2$5(ref));
                Updater.e(composerA2, layoutDirection2, new AndroidView_androidKt$AndroidView$2$6(ref));
                composerS.d();
                composerS.Q();
                if (saveableStateRegistry != null) {
                    EffectsKt.b(saveableStateRegistry, strValueOf, new AndroidView_androidKt$AndroidView$3(saveableStateRegistry, strValueOf, ref), composerS, 8);
                }
                modifier2 = modifier5;
                lVar4 = lVar3;
            } else {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    lVar3 = NoOpUpdate;
                } else {
                    lVar3 = lVar2;
                }
                Context context3 = (Context) composerS.x(AndroidCompositionLocals_androidKt.g());
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = new NestedScrollConnection() { // from class: androidx.compose.ui.viewinterop.AndroidView_androidKt$AndroidView$noOpConnection$1$1
                        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                        public /* synthetic */ Object a(long j6, long j10, d dVar) {
                            return androidx.compose.ui.input.nestedscroll.a.a(this, j6, j10, dVar);
                        }

                        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                        public /* synthetic */ long b(long j6, long j10, int i16) {
                            return androidx.compose.ui.input.nestedscroll.a.b(this, j6, j10, i16);
                        }

                        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                        public /* synthetic */ Object c(long j6, d dVar) {
                            return androidx.compose.ui.input.nestedscroll.a.c(this, j6, dVar);
                        }

                        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                        public /* synthetic */ long d(long j6, int i16) {
                            return androidx.compose.ui.input.nestedscroll.a.d(this, j6, i16);
                        }
                    };
                    composerS.z(objH);
                }
                composerS.Q();
                AndroidView_androidKt$AndroidView$noOpConnection$1$1 androidView_androidKt$AndroidView$noOpConnection$1$3 = (AndroidView_androidKt$AndroidView$noOpConnection$1$1) objH;
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = new NestedScrollDispatcher();
                    composerS.z(objH2);
                }
                composerS.Q();
                NestedScrollDispatcher nestedScrollDispatcher3 = (NestedScrollDispatcher) objH2;
                Modifier modifierE3 = ComposedModifierKt.e(composerS, SemanticsModifierKt.b(modifier3.B(NestedScrollModifierKt.a(Modifier.Companion, androidView_androidKt$AndroidView$noOpConnection$1$3, nestedScrollDispatcher3)), true, AndroidView_androidKt$AndroidView$modifierWithSemantics$1.INSTANCE));
                Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                CompositionContext compositionContextD3 = ComposablesKt.d(composerS, 0);
                saveableStateRegistry = (SaveableStateRegistry) composerS.x(SaveableStateRegistryKt.b());
                strValueOf = String.valueOf(ComposablesKt.a(composerS, 0));
                composerS.G(-492369756);
                objH3 = composerS.H();
                if (objH3 == companion.a()) {
                    objH3 = new Ref();
                    composerS.z(objH3);
                }
                composerS.Q();
                ref = (Ref) objH3;
                LifecycleOwner lifecycleOwner3 = (LifecycleOwner) composerS.x(AndroidCompositionLocals_androidKt.i());
                SavedStateRegistryOwner savedStateRegistryOwner3 = (SavedStateRegistryOwner) composerS.x(AndroidCompositionLocals_androidKt.j());
                Modifier modifier6 = modifier3;
                androidView_androidKt$AndroidView$1 = new AndroidView_androidKt$AndroidView$1(context3, compositionContextD3, nestedScrollDispatcher3, factory, saveableStateRegistry, strValueOf, ref);
                composerS.G(1886828752);
                if (!(composerS.t() instanceof UiApplier)) {
                    ComposablesKt.c();
                }
                composerS.v();
                if (composerS.r()) {
                    composerS.w(new AndroidView_androidKt$AndroidView$$inlined$ComposeNode$1(androidView_androidKt$AndroidView$1));
                } else {
                    composerS.c();
                }
                Composer composerA3 = Updater.a(composerS);
                Updater.e(composerA3, modifierE3, new AndroidView_androidKt$AndroidView$2$1(ref));
                Updater.e(composerA3, density3, new AndroidView_androidKt$AndroidView$2$2(ref));
                Updater.e(composerA3, lifecycleOwner3, new AndroidView_androidKt$AndroidView$2$3(ref));
                Updater.e(composerA3, savedStateRegistryOwner3, new AndroidView_androidKt$AndroidView$2$4(ref));
                Updater.e(composerA3, lVar3, new AndroidView_androidKt$AndroidView$2$5(ref));
                Updater.e(composerA3, layoutDirection3, new AndroidView_androidKt$AndroidView$2$6(ref));
                composerS.d();
                composerS.Q();
                if (saveableStateRegistry != null) {
                    EffectsKt.b(saveableStateRegistry, strValueOf, new AndroidView_androidKt$AndroidView$3(saveableStateRegistry, strValueOf, ref), composerS, 8);
                }
                modifier2 = modifier6;
                lVar4 = lVar3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AndroidView_androidKt$AndroidView$4(factory, modifier2, lVar4, i10, i11));
        }
        i12 |= 48;
        modifier2 = modifier;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 896) == 0) {
                lVar2 = lVar;
                if (composerS.k(lVar2)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i12 |= i14;
            }
            if ((i12 & 731) == 146) {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    lVar3 = NoOpUpdate;
                } else {
                    lVar3 = lVar2;
                }
                Context context4 = (Context) composerS.x(AndroidCompositionLocals_androidKt.g());
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = new NestedScrollConnection() { // from class: androidx.compose.ui.viewinterop.AndroidView_androidKt$AndroidView$noOpConnection$1$1
                        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                        public /* synthetic */ Object a(long j6, long j10, d dVar) {
                            return androidx.compose.ui.input.nestedscroll.a.a(this, j6, j10, dVar);
                        }

                        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                        public /* synthetic */ long b(long j6, long j10, int i16) {
                            return androidx.compose.ui.input.nestedscroll.a.b(this, j6, j10, i16);
                        }

                        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                        public /* synthetic */ Object c(long j6, d dVar) {
                            return androidx.compose.ui.input.nestedscroll.a.c(this, j6, dVar);
                        }

                        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                        public /* synthetic */ long d(long j6, int i16) {
                            return androidx.compose.ui.input.nestedscroll.a.d(this, j6, i16);
                        }
                    };
                    composerS.z(objH);
                }
                composerS.Q();
                AndroidView_androidKt$AndroidView$noOpConnection$1$1 androidView_androidKt$AndroidView$noOpConnection$1$4 = (AndroidView_androidKt$AndroidView$noOpConnection$1$1) objH;
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = new NestedScrollDispatcher();
                    composerS.z(objH2);
                }
                composerS.Q();
                NestedScrollDispatcher nestedScrollDispatcher4 = (NestedScrollDispatcher) objH2;
                Modifier modifierE4 = ComposedModifierKt.e(composerS, SemanticsModifierKt.b(modifier3.B(NestedScrollModifierKt.a(Modifier.Companion, androidView_androidKt$AndroidView$noOpConnection$1$4, nestedScrollDispatcher4)), true, AndroidView_androidKt$AndroidView$modifierWithSemantics$1.INSTANCE));
                Density density4 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection4 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                CompositionContext compositionContextD4 = ComposablesKt.d(composerS, 0);
                saveableStateRegistry = (SaveableStateRegistry) composerS.x(SaveableStateRegistryKt.b());
                strValueOf = String.valueOf(ComposablesKt.a(composerS, 0));
                composerS.G(-492369756);
                objH3 = composerS.H();
                if (objH3 == companion.a()) {
                    objH3 = new Ref();
                    composerS.z(objH3);
                }
                composerS.Q();
                ref = (Ref) objH3;
                LifecycleOwner lifecycleOwner4 = (LifecycleOwner) composerS.x(AndroidCompositionLocals_androidKt.i());
                SavedStateRegistryOwner savedStateRegistryOwner4 = (SavedStateRegistryOwner) composerS.x(AndroidCompositionLocals_androidKt.j());
                Modifier modifier7 = modifier3;
                androidView_androidKt$AndroidView$1 = new AndroidView_androidKt$AndroidView$1(context4, compositionContextD4, nestedScrollDispatcher4, factory, saveableStateRegistry, strValueOf, ref);
                composerS.G(1886828752);
                if (!(composerS.t() instanceof UiApplier)) {
                    ComposablesKt.c();
                }
                composerS.v();
                if (composerS.r()) {
                    composerS.w(new AndroidView_androidKt$AndroidView$$inlined$ComposeNode$1(androidView_androidKt$AndroidView$1));
                } else {
                    composerS.c();
                }
                Composer composerA4 = Updater.a(composerS);
                Updater.e(composerA4, modifierE4, new AndroidView_androidKt$AndroidView$2$1(ref));
                Updater.e(composerA4, density4, new AndroidView_androidKt$AndroidView$2$2(ref));
                Updater.e(composerA4, lifecycleOwner4, new AndroidView_androidKt$AndroidView$2$3(ref));
                Updater.e(composerA4, savedStateRegistryOwner4, new AndroidView_androidKt$AndroidView$2$4(ref));
                Updater.e(composerA4, lVar3, new AndroidView_androidKt$AndroidView$2$5(ref));
                Updater.e(composerA4, layoutDirection4, new AndroidView_androidKt$AndroidView$2$6(ref));
                composerS.d();
                composerS.Q();
                if (saveableStateRegistry != null) {
                    EffectsKt.b(saveableStateRegistry, strValueOf, new AndroidView_androidKt$AndroidView$3(saveableStateRegistry, strValueOf, ref), composerS, 8);
                }
                modifier2 = modifier7;
                lVar4 = lVar3;
            } else {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    lVar3 = NoOpUpdate;
                } else {
                    lVar3 = lVar2;
                }
                Context context5 = (Context) composerS.x(AndroidCompositionLocals_androidKt.g());
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = new NestedScrollConnection() { // from class: androidx.compose.ui.viewinterop.AndroidView_androidKt$AndroidView$noOpConnection$1$1
                        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                        public /* synthetic */ Object a(long j6, long j10, d dVar) {
                            return androidx.compose.ui.input.nestedscroll.a.a(this, j6, j10, dVar);
                        }

                        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                        public /* synthetic */ long b(long j6, long j10, int i16) {
                            return androidx.compose.ui.input.nestedscroll.a.b(this, j6, j10, i16);
                        }

                        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                        public /* synthetic */ Object c(long j6, d dVar) {
                            return androidx.compose.ui.input.nestedscroll.a.c(this, j6, dVar);
                        }

                        @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                        public /* synthetic */ long d(long j6, int i16) {
                            return androidx.compose.ui.input.nestedscroll.a.d(this, j6, i16);
                        }
                    };
                    composerS.z(objH);
                }
                composerS.Q();
                AndroidView_androidKt$AndroidView$noOpConnection$1$1 androidView_androidKt$AndroidView$noOpConnection$1$5 = (AndroidView_androidKt$AndroidView$noOpConnection$1$1) objH;
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = new NestedScrollDispatcher();
                    composerS.z(objH2);
                }
                composerS.Q();
                NestedScrollDispatcher nestedScrollDispatcher5 = (NestedScrollDispatcher) objH2;
                Modifier modifierE5 = ComposedModifierKt.e(composerS, SemanticsModifierKt.b(modifier3.B(NestedScrollModifierKt.a(Modifier.Companion, androidView_androidKt$AndroidView$noOpConnection$1$5, nestedScrollDispatcher5)), true, AndroidView_androidKt$AndroidView$modifierWithSemantics$1.INSTANCE));
                Density density5 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection5 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                CompositionContext compositionContextD5 = ComposablesKt.d(composerS, 0);
                saveableStateRegistry = (SaveableStateRegistry) composerS.x(SaveableStateRegistryKt.b());
                strValueOf = String.valueOf(ComposablesKt.a(composerS, 0));
                composerS.G(-492369756);
                objH3 = composerS.H();
                if (objH3 == companion.a()) {
                    objH3 = new Ref();
                    composerS.z(objH3);
                }
                composerS.Q();
                ref = (Ref) objH3;
                LifecycleOwner lifecycleOwner5 = (LifecycleOwner) composerS.x(AndroidCompositionLocals_androidKt.i());
                SavedStateRegistryOwner savedStateRegistryOwner5 = (SavedStateRegistryOwner) composerS.x(AndroidCompositionLocals_androidKt.j());
                Modifier modifier8 = modifier3;
                androidView_androidKt$AndroidView$1 = new AndroidView_androidKt$AndroidView$1(context5, compositionContextD5, nestedScrollDispatcher5, factory, saveableStateRegistry, strValueOf, ref);
                composerS.G(1886828752);
                if (!(composerS.t() instanceof UiApplier)) {
                    ComposablesKt.c();
                }
                composerS.v();
                if (composerS.r()) {
                    composerS.w(new AndroidView_androidKt$AndroidView$$inlined$ComposeNode$1(androidView_androidKt$AndroidView$1));
                } else {
                    composerS.c();
                }
                Composer composerA5 = Updater.a(composerS);
                Updater.e(composerA5, modifierE5, new AndroidView_androidKt$AndroidView$2$1(ref));
                Updater.e(composerA5, density5, new AndroidView_androidKt$AndroidView$2$2(ref));
                Updater.e(composerA5, lifecycleOwner5, new AndroidView_androidKt$AndroidView$2$3(ref));
                Updater.e(composerA5, savedStateRegistryOwner5, new AndroidView_androidKt$AndroidView$2$4(ref));
                Updater.e(composerA5, lVar3, new AndroidView_androidKt$AndroidView$2$5(ref));
                Updater.e(composerA5, layoutDirection5, new AndroidView_androidKt$AndroidView$2$6(ref));
                composerS.d();
                composerS.Q();
                if (saveableStateRegistry != null) {
                    EffectsKt.b(saveableStateRegistry, strValueOf, new AndroidView_androidKt$AndroidView$3(saveableStateRegistry, strValueOf, ref), composerS, 8);
                }
                modifier2 = modifier8;
                lVar4 = lVar3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AndroidView_androidKt$AndroidView$4(factory, modifier2, lVar4, i10, i11));
        }
        i12 |= 384;
        lVar2 = lVar;
        if ((i12 & 731) == 146) {
            if (i15 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                lVar3 = NoOpUpdate;
            } else {
                lVar3 = lVar2;
            }
            Context context6 = (Context) composerS.x(AndroidCompositionLocals_androidKt.g());
            composerS.G(-492369756);
            objH = composerS.H();
            companion = Composer.Companion;
            if (objH == companion.a()) {
                objH = new NestedScrollConnection() { // from class: androidx.compose.ui.viewinterop.AndroidView_androidKt$AndroidView$noOpConnection$1$1
                    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                    public /* synthetic */ Object a(long j6, long j10, d dVar) {
                        return androidx.compose.ui.input.nestedscroll.a.a(this, j6, j10, dVar);
                    }

                    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                    public /* synthetic */ long b(long j6, long j10, int i16) {
                        return androidx.compose.ui.input.nestedscroll.a.b(this, j6, j10, i16);
                    }

                    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                    public /* synthetic */ Object c(long j6, d dVar) {
                        return androidx.compose.ui.input.nestedscroll.a.c(this, j6, dVar);
                    }

                    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                    public /* synthetic */ long d(long j6, int i16) {
                        return androidx.compose.ui.input.nestedscroll.a.d(this, j6, i16);
                    }
                };
                composerS.z(objH);
            }
            composerS.Q();
            AndroidView_androidKt$AndroidView$noOpConnection$1$1 androidView_androidKt$AndroidView$noOpConnection$1$6 = (AndroidView_androidKt$AndroidView$noOpConnection$1$1) objH;
            composerS.G(-492369756);
            objH2 = composerS.H();
            if (objH2 == companion.a()) {
                objH2 = new NestedScrollDispatcher();
                composerS.z(objH2);
            }
            composerS.Q();
            NestedScrollDispatcher nestedScrollDispatcher6 = (NestedScrollDispatcher) objH2;
            Modifier modifierE6 = ComposedModifierKt.e(composerS, SemanticsModifierKt.b(modifier3.B(NestedScrollModifierKt.a(Modifier.Companion, androidView_androidKt$AndroidView$noOpConnection$1$6, nestedScrollDispatcher6)), true, AndroidView_androidKt$AndroidView$modifierWithSemantics$1.INSTANCE));
            Density density6 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection6 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            CompositionContext compositionContextD6 = ComposablesKt.d(composerS, 0);
            saveableStateRegistry = (SaveableStateRegistry) composerS.x(SaveableStateRegistryKt.b());
            strValueOf = String.valueOf(ComposablesKt.a(composerS, 0));
            composerS.G(-492369756);
            objH3 = composerS.H();
            if (objH3 == companion.a()) {
                objH3 = new Ref();
                composerS.z(objH3);
            }
            composerS.Q();
            ref = (Ref) objH3;
            LifecycleOwner lifecycleOwner6 = (LifecycleOwner) composerS.x(AndroidCompositionLocals_androidKt.i());
            SavedStateRegistryOwner savedStateRegistryOwner6 = (SavedStateRegistryOwner) composerS.x(AndroidCompositionLocals_androidKt.j());
            Modifier modifier9 = modifier3;
            androidView_androidKt$AndroidView$1 = new AndroidView_androidKt$AndroidView$1(context6, compositionContextD6, nestedScrollDispatcher6, factory, saveableStateRegistry, strValueOf, ref);
            composerS.G(1886828752);
            if (!(composerS.t() instanceof UiApplier)) {
                ComposablesKt.c();
            }
            composerS.v();
            if (composerS.r()) {
                composerS.w(new AndroidView_androidKt$AndroidView$$inlined$ComposeNode$1(androidView_androidKt$AndroidView$1));
            } else {
                composerS.c();
            }
            Composer composerA6 = Updater.a(composerS);
            Updater.e(composerA6, modifierE6, new AndroidView_androidKt$AndroidView$2$1(ref));
            Updater.e(composerA6, density6, new AndroidView_androidKt$AndroidView$2$2(ref));
            Updater.e(composerA6, lifecycleOwner6, new AndroidView_androidKt$AndroidView$2$3(ref));
            Updater.e(composerA6, savedStateRegistryOwner6, new AndroidView_androidKt$AndroidView$2$4(ref));
            Updater.e(composerA6, lVar3, new AndroidView_androidKt$AndroidView$2$5(ref));
            Updater.e(composerA6, layoutDirection6, new AndroidView_androidKt$AndroidView$2$6(ref));
            composerS.d();
            composerS.Q();
            if (saveableStateRegistry != null) {
                EffectsKt.b(saveableStateRegistry, strValueOf, new AndroidView_androidKt$AndroidView$3(saveableStateRegistry, strValueOf, ref), composerS, 8);
            }
            modifier2 = modifier9;
            lVar4 = lVar3;
        } else {
            if (i15 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                lVar3 = NoOpUpdate;
            } else {
                lVar3 = lVar2;
            }
            Context context7 = (Context) composerS.x(AndroidCompositionLocals_androidKt.g());
            composerS.G(-492369756);
            objH = composerS.H();
            companion = Composer.Companion;
            if (objH == companion.a()) {
                objH = new NestedScrollConnection() { // from class: androidx.compose.ui.viewinterop.AndroidView_androidKt$AndroidView$noOpConnection$1$1
                    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                    public /* synthetic */ Object a(long j6, long j10, d dVar) {
                        return androidx.compose.ui.input.nestedscroll.a.a(this, j6, j10, dVar);
                    }

                    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                    public /* synthetic */ long b(long j6, long j10, int i16) {
                        return androidx.compose.ui.input.nestedscroll.a.b(this, j6, j10, i16);
                    }

                    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                    public /* synthetic */ Object c(long j6, d dVar) {
                        return androidx.compose.ui.input.nestedscroll.a.c(this, j6, dVar);
                    }

                    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
                    public /* synthetic */ long d(long j6, int i16) {
                        return androidx.compose.ui.input.nestedscroll.a.d(this, j6, i16);
                    }
                };
                composerS.z(objH);
            }
            composerS.Q();
            AndroidView_androidKt$AndroidView$noOpConnection$1$1 androidView_androidKt$AndroidView$noOpConnection$1$7 = (AndroidView_androidKt$AndroidView$noOpConnection$1$1) objH;
            composerS.G(-492369756);
            objH2 = composerS.H();
            if (objH2 == companion.a()) {
                objH2 = new NestedScrollDispatcher();
                composerS.z(objH2);
            }
            composerS.Q();
            NestedScrollDispatcher nestedScrollDispatcher7 = (NestedScrollDispatcher) objH2;
            Modifier modifierE7 = ComposedModifierKt.e(composerS, SemanticsModifierKt.b(modifier3.B(NestedScrollModifierKt.a(Modifier.Companion, androidView_androidKt$AndroidView$noOpConnection$1$7, nestedScrollDispatcher7)), true, AndroidView_androidKt$AndroidView$modifierWithSemantics$1.INSTANCE));
            Density density7 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection7 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            CompositionContext compositionContextD7 = ComposablesKt.d(composerS, 0);
            saveableStateRegistry = (SaveableStateRegistry) composerS.x(SaveableStateRegistryKt.b());
            strValueOf = String.valueOf(ComposablesKt.a(composerS, 0));
            composerS.G(-492369756);
            objH3 = composerS.H();
            if (objH3 == companion.a()) {
                objH3 = new Ref();
                composerS.z(objH3);
            }
            composerS.Q();
            ref = (Ref) objH3;
            LifecycleOwner lifecycleOwner7 = (LifecycleOwner) composerS.x(AndroidCompositionLocals_androidKt.i());
            SavedStateRegistryOwner savedStateRegistryOwner7 = (SavedStateRegistryOwner) composerS.x(AndroidCompositionLocals_androidKt.j());
            Modifier modifier10 = modifier3;
            androidView_androidKt$AndroidView$1 = new AndroidView_androidKt$AndroidView$1(context7, compositionContextD7, nestedScrollDispatcher7, factory, saveableStateRegistry, strValueOf, ref);
            composerS.G(1886828752);
            if (!(composerS.t() instanceof UiApplier)) {
                ComposablesKt.c();
            }
            composerS.v();
            if (composerS.r()) {
                composerS.w(new AndroidView_androidKt$AndroidView$$inlined$ComposeNode$1(androidView_androidKt$AndroidView$1));
            } else {
                composerS.c();
            }
            Composer composerA7 = Updater.a(composerS);
            Updater.e(composerA7, modifierE7, new AndroidView_androidKt$AndroidView$2$1(ref));
            Updater.e(composerA7, density7, new AndroidView_androidKt$AndroidView$2$2(ref));
            Updater.e(composerA7, lifecycleOwner7, new AndroidView_androidKt$AndroidView$2$3(ref));
            Updater.e(composerA7, savedStateRegistryOwner7, new AndroidView_androidKt$AndroidView$2$4(ref));
            Updater.e(composerA7, lVar3, new AndroidView_androidKt$AndroidView$2$5(ref));
            Updater.e(composerA7, layoutDirection7, new AndroidView_androidKt$AndroidView$2$6(ref));
            composerS.d();
            composerS.Q();
            if (saveableStateRegistry != null) {
                EffectsKt.b(saveableStateRegistry, strValueOf, new AndroidView_androidKt$AndroidView$3(saveableStateRegistry, strValueOf, ref), composerS, 8);
            }
            modifier2 = modifier10;
            lVar4 = lVar3;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AndroidView_androidKt$AndroidView$4(factory, modifier2, lVar4, i10, i11));
    }
}
