package androidx.compose.material;

import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.selection.ToggleableKt;
import androidx.compose.material.ripple.RippleKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.CornerRadiusKt;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.graphics.drawscope.a;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.state.ToggleableStateKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.profileinstaller.ProfileVerifier;
import e8.l;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.s;

/* JADX INFO: loaded from: classes2.dex */
public final class CheckboxKt {
    private static final int BoxInDuration = 50;
    private static final int BoxOutDuration = 100;
    private static final int CheckAnimationDuration = 100;
    private static final float CheckboxDefaultPadding;
    private static final float CheckboxRippleRadius = Dp.f(24);
    private static final float CheckboxSize = Dp.f(20);
    private static final float RadiusSize;
    private static final float StrokeWidth;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ToggleableState.values().length];
            iArr[ToggleableState.On.ordinal()] = 1;
            iArr[ToggleableState.Off.ordinal()] = 2;
            iArr[ToggleableState.Indeterminate.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(DrawScope drawScope, long j6, float f, float f6, float f7, CheckDrawingCache checkDrawingCache) {
        Stroke stroke = new Stroke(f7, 0.0f, StrokeCap.Companion.c(), 0, null, 26, null);
        float fI = Size.i(drawScope.c());
        float fA = MathHelpersKt.a(0.4f, 0.5f, f6);
        float fA2 = MathHelpersKt.a(0.7f, 0.5f, f6);
        float fA3 = MathHelpersKt.a(0.5f, 0.5f, f6);
        float fA4 = MathHelpersKt.a(0.3f, 0.5f, f6);
        checkDrawingCache.a().reset();
        checkDrawingCache.a().moveTo(0.2f * fI, fA3 * fI);
        checkDrawingCache.a().lineTo(fA * fI, fA2 * fI);
        checkDrawingCache.a().lineTo(0.8f * fI, fI * fA4);
        checkDrawingCache.b().b(checkDrawingCache.a(), false);
        checkDrawingCache.c().reset();
        checkDrawingCache.b().a(0.0f, checkDrawingCache.b().getLength() * f, checkDrawingCache.c(), true);
        a.k(drawScope, checkDrawingCache.c(), j6, 0.0f, stroke, null, 0, 52, null);
    }

    static {
        float f = 2;
        CheckboxDefaultPadding = Dp.f(f);
        StrokeWidth = Dp.f(f);
        RadiusSize = Dp.f(f);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0144  */
    /* JADX WARN: Code duplicated, block: B:102:0x015d  */
    /* JADX WARN: Code duplicated, block: B:104:0x0165  */
    /* JADX WARN: Code duplicated, block: B:106:0x0174  */
    /* JADX WARN: Code duplicated, block: B:111:0x019e  */
    /* JADX WARN: Code duplicated, block: B:113:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x005c  */
    /* JADX WARN: Code duplicated, block: B:38:0x0061  */
    /* JADX WARN: Code duplicated, block: B:40:0x0065  */
    /* JADX WARN: Code duplicated, block: B:42:0x006d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0070  */
    /* JADX WARN: Code duplicated, block: B:47:0x007a  */
    /* JADX WARN: Code duplicated, block: B:49:0x007f  */
    /* JADX WARN: Code duplicated, block: B:51:0x0083  */
    /* JADX WARN: Code duplicated, block: B:53:0x008b  */
    /* JADX WARN: Code duplicated, block: B:54:0x008e  */
    /* JADX WARN: Code duplicated, block: B:58:0x0097  */
    /* JADX WARN: Code duplicated, block: B:60:0x009b  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e4 A[PHI: r3 r4 r5 r6
      0x00e4: PHI (r3v23 int) = (r3v18 int), (r3v25 int) binds: [B:96:0x0116, B:81:0x00e1] A[DONT_GENERATE, DONT_INLINE]
      0x00e4: PHI (r4v12 androidx.compose.ui.Modifier) = (r4v8 androidx.compose.ui.Modifier), (r4v14 androidx.compose.ui.Modifier) binds: [B:96:0x0116, B:81:0x00e1] A[DONT_GENERATE, DONT_INLINE]
      0x00e4: PHI (r5v8 boolean) = (r5v4 boolean), (r5v9 boolean) binds: [B:96:0x0116, B:81:0x00e1] A[DONT_GENERATE, DONT_INLINE]
      0x00e4: PHI (r6v14 androidx.compose.foundation.interaction.MutableInteractionSource) = 
      (r6v6 androidx.compose.foundation.interaction.MutableInteractionSource)
      (r6v15 androidx.compose.foundation.interaction.MutableInteractionSource)
     binds: [B:96:0x0116, B:81:0x00e1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:83:0x00e7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:85:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:87:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:88:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:90:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:92:0x0106  */
    /* JADX WARN: Code duplicated, block: B:94:0x0113  */
    /* JADX WARN: Code duplicated, block: B:97:0x0118  */
    @ComposableTarget
    @Composable
    public static final void a(boolean z6, @Nullable l<? super Boolean, l0> lVar, @Nullable Modifier modifier, boolean z10, @Nullable MutableInteractionSource mutableInteractionSource, @Nullable CheckboxColors checkboxColors, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        boolean z11;
        int i14;
        int i15;
        MutableInteractionSource mutableInteractionSource2;
        int i16;
        CheckboxColors checkboxColors2;
        Modifier modifier3;
        boolean z12;
        MutableInteractionSource mutableInteractionSource3;
        int i17;
        CheckboxColors checkboxColorsA;
        Object objH;
        e8.a aVar;
        CheckboxColors checkboxColors3;
        Modifier modifier4;
        boolean z13;
        MutableInteractionSource mutableInteractionSource4;
        boolean zK;
        Object objH2;
        ScopeUpdateScope scopeUpdateScopeU;
        Composer composerS = composer.s(-2118660998);
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
            i12 |= composerS.k(lVar) ? 32 : 16;
        }
        int i18 = i11 & 4;
        if (i18 == 0) {
            if ((i10 & 896) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 256 : 128;
            }
            i13 = i11 & 8;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    z11 = z10;
                    if (composerS.m(z11)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 16;
                if (i15 != 0) {
                    if ((i10 & 57344) == 0) {
                        mutableInteractionSource2 = mutableInteractionSource;
                        if (composerS.k(mutableInteractionSource2)) {
                            i16 = 16384;
                        } else {
                            i16 = 8192;
                        }
                        i12 |= i16;
                    }
                    if ((i10 & 458752) == 0) {
                        if ((i11 & 32) == 0) {
                            checkboxColors2 = checkboxColors;
                            int i19 = composerS.k(checkboxColors2) ? 131072 : 65536;
                            i12 |= i19;
                        } else {
                            checkboxColors2 = checkboxColors;
                        }
                        i12 |= i19;
                    } else {
                        checkboxColors2 = checkboxColors;
                    }
                    if ((374491 & i12) == 74898 || !composerS.b()) {
                        composerS.J();
                        if ((i10 & 1) != 0 || composerS.h()) {
                            if (i18 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z12 = true;
                            } else {
                                z12 = z11;
                            }
                            if (i15 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource3 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource2;
                            }
                            if ((i11 & 32) != 0) {
                                i17 = i12 & (-458753);
                                checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                            }
                            composerS.A();
                            ToggleableState toggleableStateA = ToggleableStateKt.a(z6);
                            composerS.G(1433125990);
                            if (lVar != null) {
                                Boolean boolValueOf = Boolean.valueOf(z6);
                                composerS.G(511388516);
                                zK = composerS.k(boolValueOf) | composerS.k(lVar);
                                objH2 = composerS.H();
                                if (zK || objH2 == Composer.Companion.a()) {
                                    objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                                    composerS.z(objH2);
                                }
                                composerS.Q();
                                aVar = (e8.a) objH2;
                            } else {
                                aVar = null;
                            }
                            composerS.Q();
                            h(toggleableStateA, aVar, modifier3, z12, mutableInteractionSource3, checkboxColorsA, composerS, (i17 & 896) | (i17 & 7168) | (i17 & 57344) | (i17 & 458752), 0);
                            MutableInteractionSource mutableInteractionSource5 = mutableInteractionSource3;
                            checkboxColors3 = checkboxColorsA;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource5;
                        } else {
                            composerS.g();
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                            }
                            modifier3 = modifier2;
                            z12 = z11;
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        i17 = i12;
                        checkboxColorsA = checkboxColors2;
                        composerS.A();
                        ToggleableState toggleableStateA2 = ToggleableStateKt.a(z6);
                        composerS.G(1433125990);
                        if (lVar != null) {
                            Boolean boolValueOf2 = Boolean.valueOf(z6);
                            composerS.G(511388516);
                            zK = composerS.k(boolValueOf2) | composerS.k(lVar);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                                composerS.z(objH2);
                            } else {
                                objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            aVar = (e8.a) objH2;
                        } else {
                            aVar = null;
                        }
                        composerS.Q();
                        h(toggleableStateA2, aVar, modifier3, z12, mutableInteractionSource3, checkboxColorsA, composerS, (i17 & 896) | (i17 & 7168) | (i17 & 57344) | (i17 & 458752), 0);
                        MutableInteractionSource mutableInteractionSource6 = mutableInteractionSource3;
                        checkboxColors3 = checkboxColorsA;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource6;
                    } else {
                        composerS.g();
                        modifier4 = modifier2;
                        z13 = z11;
                        mutableInteractionSource4 = mutableInteractionSource2;
                        checkboxColors3 = checkboxColors2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new CheckboxKt$Checkbox$3(z6, lVar, modifier4, z13, mutableInteractionSource4, checkboxColors3, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                mutableInteractionSource2 = mutableInteractionSource;
                if ((i10 & 458752) == 0) {
                    if ((i11 & 32) == 0) {
                        checkboxColors2 = checkboxColors;
                        if (composerS.k(checkboxColors2)) {
                        }
                        i12 |= i19;
                    } else {
                        checkboxColors2 = checkboxColors;
                    }
                    i12 |= i19;
                } else {
                    checkboxColors2 = checkboxColors;
                }
                if ((374491 & i12) == 74898) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            checkboxColorsA = checkboxColors2;
                        }
                    } else {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            checkboxColorsA = checkboxColors2;
                        }
                    }
                    composerS.A();
                    ToggleableState toggleableStateA3 = ToggleableStateKt.a(z6);
                    composerS.G(1433125990);
                    if (lVar != null) {
                        Boolean boolValueOf3 = Boolean.valueOf(z6);
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf3) | composerS.k(lVar);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                            composerS.z(objH2);
                        } else {
                            objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        aVar = (e8.a) objH2;
                    } else {
                        aVar = null;
                    }
                    composerS.Q();
                    h(toggleableStateA3, aVar, modifier3, z12, mutableInteractionSource3, checkboxColorsA, composerS, (i17 & 896) | (i17 & 7168) | (i17 & 57344) | (i17 & 458752), 0);
                    MutableInteractionSource mutableInteractionSource7 = mutableInteractionSource3;
                    checkboxColors3 = checkboxColorsA;
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource7;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            checkboxColorsA = checkboxColors2;
                        }
                    } else {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            checkboxColorsA = checkboxColors2;
                        }
                    }
                    composerS.A();
                    ToggleableState toggleableStateA4 = ToggleableStateKt.a(z6);
                    composerS.G(1433125990);
                    if (lVar != null) {
                        Boolean boolValueOf4 = Boolean.valueOf(z6);
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf4) | composerS.k(lVar);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                            composerS.z(objH2);
                        } else {
                            objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        aVar = (e8.a) objH2;
                    } else {
                        aVar = null;
                    }
                    composerS.Q();
                    h(toggleableStateA4, aVar, modifier3, z12, mutableInteractionSource3, checkboxColorsA, composerS, (i17 & 896) | (i17 & 7168) | (i17 & 57344) | (i17 & 458752), 0);
                    MutableInteractionSource mutableInteractionSource8 = mutableInteractionSource3;
                    checkboxColors3 = checkboxColorsA;
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource8;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new CheckboxKt$Checkbox$3(z6, lVar, modifier4, z13, mutableInteractionSource4, checkboxColors3, i10, i11));
            }
            i12 |= 3072;
            z11 = z10;
            i15 = i11 & 16;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if (composerS.k(mutableInteractionSource2)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                if ((i10 & 458752) == 0) {
                    if ((i11 & 32) == 0) {
                        checkboxColors2 = checkboxColors;
                        if (composerS.k(checkboxColors2)) {
                        }
                        i12 |= i19;
                    } else {
                        checkboxColors2 = checkboxColors;
                    }
                    i12 |= i19;
                } else {
                    checkboxColors2 = checkboxColors;
                }
                if ((374491 & i12) == 74898) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            checkboxColorsA = checkboxColors2;
                        }
                    } else {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            checkboxColorsA = checkboxColors2;
                        }
                    }
                    composerS.A();
                    ToggleableState toggleableStateA5 = ToggleableStateKt.a(z6);
                    composerS.G(1433125990);
                    if (lVar != null) {
                        Boolean boolValueOf5 = Boolean.valueOf(z6);
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf5) | composerS.k(lVar);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                            composerS.z(objH2);
                        } else {
                            objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        aVar = (e8.a) objH2;
                    } else {
                        aVar = null;
                    }
                    composerS.Q();
                    h(toggleableStateA5, aVar, modifier3, z12, mutableInteractionSource3, checkboxColorsA, composerS, (i17 & 896) | (i17 & 7168) | (i17 & 57344) | (i17 & 458752), 0);
                    MutableInteractionSource mutableInteractionSource9 = mutableInteractionSource3;
                    checkboxColors3 = checkboxColorsA;
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource9;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            checkboxColorsA = checkboxColors2;
                        }
                    } else {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            checkboxColorsA = checkboxColors2;
                        }
                    }
                    composerS.A();
                    ToggleableState toggleableStateA6 = ToggleableStateKt.a(z6);
                    composerS.G(1433125990);
                    if (lVar != null) {
                        Boolean boolValueOf6 = Boolean.valueOf(z6);
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf6) | composerS.k(lVar);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                            composerS.z(objH2);
                        } else {
                            objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        aVar = (e8.a) objH2;
                    } else {
                        aVar = null;
                    }
                    composerS.Q();
                    h(toggleableStateA6, aVar, modifier3, z12, mutableInteractionSource3, checkboxColorsA, composerS, (i17 & 896) | (i17 & 7168) | (i17 & 57344) | (i17 & 458752), 0);
                    MutableInteractionSource mutableInteractionSource10 = mutableInteractionSource3;
                    checkboxColors3 = checkboxColorsA;
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource10;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new CheckboxKt$Checkbox$3(z6, lVar, modifier4, z13, mutableInteractionSource4, checkboxColors3, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((i10 & 458752) == 0) {
                if ((i11 & 32) == 0) {
                    checkboxColors2 = checkboxColors;
                    if (composerS.k(checkboxColors2)) {
                    }
                    i12 |= i19;
                } else {
                    checkboxColors2 = checkboxColors;
                }
                i12 |= i19;
            } else {
                checkboxColors2 = checkboxColors;
            }
            if ((374491 & i12) == 74898) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        checkboxColorsA = checkboxColors2;
                    }
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        checkboxColorsA = checkboxColors2;
                    }
                }
                composerS.A();
                ToggleableState toggleableStateA7 = ToggleableStateKt.a(z6);
                composerS.G(1433125990);
                if (lVar != null) {
                    Boolean boolValueOf7 = Boolean.valueOf(z6);
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf7) | composerS.k(lVar);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                        composerS.z(objH2);
                    } else {
                        objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    aVar = (e8.a) objH2;
                } else {
                    aVar = null;
                }
                composerS.Q();
                h(toggleableStateA7, aVar, modifier3, z12, mutableInteractionSource3, checkboxColorsA, composerS, (i17 & 896) | (i17 & 7168) | (i17 & 57344) | (i17 & 458752), 0);
                MutableInteractionSource mutableInteractionSource11 = mutableInteractionSource3;
                checkboxColors3 = checkboxColorsA;
                modifier4 = modifier3;
                z13 = z12;
                mutableInteractionSource4 = mutableInteractionSource11;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        checkboxColorsA = checkboxColors2;
                    }
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        checkboxColorsA = checkboxColors2;
                    }
                }
                composerS.A();
                ToggleableState toggleableStateA8 = ToggleableStateKt.a(z6);
                composerS.G(1433125990);
                if (lVar != null) {
                    Boolean boolValueOf8 = Boolean.valueOf(z6);
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf8) | composerS.k(lVar);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                        composerS.z(objH2);
                    } else {
                        objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    aVar = (e8.a) objH2;
                } else {
                    aVar = null;
                }
                composerS.Q();
                h(toggleableStateA8, aVar, modifier3, z12, mutableInteractionSource3, checkboxColorsA, composerS, (i17 & 896) | (i17 & 7168) | (i17 & 57344) | (i17 & 458752), 0);
                MutableInteractionSource mutableInteractionSource12 = mutableInteractionSource3;
                checkboxColors3 = checkboxColorsA;
                modifier4 = modifier3;
                z13 = z12;
                mutableInteractionSource4 = mutableInteractionSource12;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new CheckboxKt$Checkbox$3(z6, lVar, modifier4, z13, mutableInteractionSource4, checkboxColors3, i10, i11));
        }
        i12 |= 384;
        modifier2 = modifier;
        i13 = i11 & 8;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                z11 = z10;
                if (composerS.m(z11)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            i15 = i11 & 16;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if (composerS.k(mutableInteractionSource2)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                if ((i10 & 458752) == 0) {
                    if ((i11 & 32) == 0) {
                        checkboxColors2 = checkboxColors;
                        if (composerS.k(checkboxColors2)) {
                        }
                        i12 |= i19;
                    } else {
                        checkboxColors2 = checkboxColors;
                    }
                    i12 |= i19;
                } else {
                    checkboxColors2 = checkboxColors;
                }
                if ((374491 & i12) == 74898) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            checkboxColorsA = checkboxColors2;
                        }
                    } else {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            checkboxColorsA = checkboxColors2;
                        }
                    }
                    composerS.A();
                    ToggleableState toggleableStateA9 = ToggleableStateKt.a(z6);
                    composerS.G(1433125990);
                    if (lVar != null) {
                        Boolean boolValueOf9 = Boolean.valueOf(z6);
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf9) | composerS.k(lVar);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                            composerS.z(objH2);
                        } else {
                            objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        aVar = (e8.a) objH2;
                    } else {
                        aVar = null;
                    }
                    composerS.Q();
                    h(toggleableStateA9, aVar, modifier3, z12, mutableInteractionSource3, checkboxColorsA, composerS, (i17 & 896) | (i17 & 7168) | (i17 & 57344) | (i17 & 458752), 0);
                    MutableInteractionSource mutableInteractionSource13 = mutableInteractionSource3;
                    checkboxColors3 = checkboxColorsA;
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource13;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            checkboxColorsA = checkboxColors2;
                        }
                    } else {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            checkboxColorsA = checkboxColors2;
                        }
                    }
                    composerS.A();
                    ToggleableState toggleableStateA10 = ToggleableStateKt.a(z6);
                    composerS.G(1433125990);
                    if (lVar != null) {
                        Boolean boolValueOf10 = Boolean.valueOf(z6);
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf10) | composerS.k(lVar);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                            composerS.z(objH2);
                        } else {
                            objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        aVar = (e8.a) objH2;
                    } else {
                        aVar = null;
                    }
                    composerS.Q();
                    h(toggleableStateA10, aVar, modifier3, z12, mutableInteractionSource3, checkboxColorsA, composerS, (i17 & 896) | (i17 & 7168) | (i17 & 57344) | (i17 & 458752), 0);
                    MutableInteractionSource mutableInteractionSource14 = mutableInteractionSource3;
                    checkboxColors3 = checkboxColorsA;
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource14;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new CheckboxKt$Checkbox$3(z6, lVar, modifier4, z13, mutableInteractionSource4, checkboxColors3, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((i10 & 458752) == 0) {
                if ((i11 & 32) == 0) {
                    checkboxColors2 = checkboxColors;
                    if (composerS.k(checkboxColors2)) {
                    }
                    i12 |= i19;
                } else {
                    checkboxColors2 = checkboxColors;
                }
                i12 |= i19;
            } else {
                checkboxColors2 = checkboxColors;
            }
            if ((374491 & i12) == 74898) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        checkboxColorsA = checkboxColors2;
                    }
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        checkboxColorsA = checkboxColors2;
                    }
                }
                composerS.A();
                ToggleableState toggleableStateA11 = ToggleableStateKt.a(z6);
                composerS.G(1433125990);
                if (lVar != null) {
                    Boolean boolValueOf11 = Boolean.valueOf(z6);
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf11) | composerS.k(lVar);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                        composerS.z(objH2);
                    } else {
                        objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    aVar = (e8.a) objH2;
                } else {
                    aVar = null;
                }
                composerS.Q();
                h(toggleableStateA11, aVar, modifier3, z12, mutableInteractionSource3, checkboxColorsA, composerS, (i17 & 896) | (i17 & 7168) | (i17 & 57344) | (i17 & 458752), 0);
                MutableInteractionSource mutableInteractionSource15 = mutableInteractionSource3;
                checkboxColors3 = checkboxColorsA;
                modifier4 = modifier3;
                z13 = z12;
                mutableInteractionSource4 = mutableInteractionSource15;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        checkboxColorsA = checkboxColors2;
                    }
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        checkboxColorsA = checkboxColors2;
                    }
                }
                composerS.A();
                ToggleableState toggleableStateA12 = ToggleableStateKt.a(z6);
                composerS.G(1433125990);
                if (lVar != null) {
                    Boolean boolValueOf12 = Boolean.valueOf(z6);
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf12) | composerS.k(lVar);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                        composerS.z(objH2);
                    } else {
                        objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    aVar = (e8.a) objH2;
                } else {
                    aVar = null;
                }
                composerS.Q();
                h(toggleableStateA12, aVar, modifier3, z12, mutableInteractionSource3, checkboxColorsA, composerS, (i17 & 896) | (i17 & 7168) | (i17 & 57344) | (i17 & 458752), 0);
                MutableInteractionSource mutableInteractionSource16 = mutableInteractionSource3;
                checkboxColors3 = checkboxColorsA;
                modifier4 = modifier3;
                z13 = z12;
                mutableInteractionSource4 = mutableInteractionSource16;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new CheckboxKt$Checkbox$3(z6, lVar, modifier4, z13, mutableInteractionSource4, checkboxColors3, i10, i11));
        }
        i12 |= 3072;
        z11 = z10;
        i15 = i11 & 16;
        if (i15 != 0) {
            if ((i10 & 57344) == 0) {
                mutableInteractionSource2 = mutableInteractionSource;
                if (composerS.k(mutableInteractionSource2)) {
                    i16 = 16384;
                } else {
                    i16 = 8192;
                }
                i12 |= i16;
            }
            if ((i10 & 458752) == 0) {
                if ((i11 & 32) == 0) {
                    checkboxColors2 = checkboxColors;
                    if (composerS.k(checkboxColors2)) {
                    }
                    i12 |= i19;
                } else {
                    checkboxColors2 = checkboxColors;
                }
                i12 |= i19;
            } else {
                checkboxColors2 = checkboxColors;
            }
            if ((374491 & i12) == 74898) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        checkboxColorsA = checkboxColors2;
                    }
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        checkboxColorsA = checkboxColors2;
                    }
                }
                composerS.A();
                ToggleableState toggleableStateA13 = ToggleableStateKt.a(z6);
                composerS.G(1433125990);
                if (lVar != null) {
                    Boolean boolValueOf13 = Boolean.valueOf(z6);
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf13) | composerS.k(lVar);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                        composerS.z(objH2);
                    } else {
                        objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    aVar = (e8.a) objH2;
                } else {
                    aVar = null;
                }
                composerS.Q();
                h(toggleableStateA13, aVar, modifier3, z12, mutableInteractionSource3, checkboxColorsA, composerS, (i17 & 896) | (i17 & 7168) | (i17 & 57344) | (i17 & 458752), 0);
                MutableInteractionSource mutableInteractionSource17 = mutableInteractionSource3;
                checkboxColors3 = checkboxColorsA;
                modifier4 = modifier3;
                z13 = z12;
                mutableInteractionSource4 = mutableInteractionSource17;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        checkboxColorsA = checkboxColors2;
                    }
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        checkboxColorsA = checkboxColors2;
                    }
                }
                composerS.A();
                ToggleableState toggleableStateA14 = ToggleableStateKt.a(z6);
                composerS.G(1433125990);
                if (lVar != null) {
                    Boolean boolValueOf14 = Boolean.valueOf(z6);
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf14) | composerS.k(lVar);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                        composerS.z(objH2);
                    } else {
                        objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    aVar = (e8.a) objH2;
                } else {
                    aVar = null;
                }
                composerS.Q();
                h(toggleableStateA14, aVar, modifier3, z12, mutableInteractionSource3, checkboxColorsA, composerS, (i17 & 896) | (i17 & 7168) | (i17 & 57344) | (i17 & 458752), 0);
                MutableInteractionSource mutableInteractionSource18 = mutableInteractionSource3;
                checkboxColors3 = checkboxColorsA;
                modifier4 = modifier3;
                z13 = z12;
                mutableInteractionSource4 = mutableInteractionSource18;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new CheckboxKt$Checkbox$3(z6, lVar, modifier4, z13, mutableInteractionSource4, checkboxColors3, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        mutableInteractionSource2 = mutableInteractionSource;
        if ((i10 & 458752) == 0) {
            if ((i11 & 32) == 0) {
                checkboxColors2 = checkboxColors;
                if (composerS.k(checkboxColors2)) {
                }
                i12 |= i19;
            } else {
                checkboxColors2 = checkboxColors;
            }
            i12 |= i19;
        } else {
            checkboxColors2 = checkboxColors;
        }
        if ((374491 & i12) == 74898) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                if ((i11 & 32) != 0) {
                    i17 = i12 & (-458753);
                    checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                } else {
                    i17 = i12;
                    checkboxColorsA = checkboxColors2;
                }
            } else {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                if ((i11 & 32) != 0) {
                    i17 = i12 & (-458753);
                    checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                } else {
                    i17 = i12;
                    checkboxColorsA = checkboxColors2;
                }
            }
            composerS.A();
            ToggleableState toggleableStateA15 = ToggleableStateKt.a(z6);
            composerS.G(1433125990);
            if (lVar != null) {
                Boolean boolValueOf15 = Boolean.valueOf(z6);
                composerS.G(511388516);
                zK = composerS.k(boolValueOf15) | composerS.k(lVar);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                    composerS.z(objH2);
                } else {
                    objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                    composerS.z(objH2);
                }
                composerS.Q();
                aVar = (e8.a) objH2;
            } else {
                aVar = null;
            }
            composerS.Q();
            h(toggleableStateA15, aVar, modifier3, z12, mutableInteractionSource3, checkboxColorsA, composerS, (i17 & 896) | (i17 & 7168) | (i17 & 57344) | (i17 & 458752), 0);
            MutableInteractionSource mutableInteractionSource19 = mutableInteractionSource3;
            checkboxColors3 = checkboxColorsA;
            modifier4 = modifier3;
            z13 = z12;
            mutableInteractionSource4 = mutableInteractionSource19;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                if ((i11 & 32) != 0) {
                    i17 = i12 & (-458753);
                    checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                } else {
                    i17 = i12;
                    checkboxColorsA = checkboxColors2;
                }
            } else {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                if ((i11 & 32) != 0) {
                    i17 = i12 & (-458753);
                    checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                } else {
                    i17 = i12;
                    checkboxColorsA = checkboxColors2;
                }
            }
            composerS.A();
            ToggleableState toggleableStateA16 = ToggleableStateKt.a(z6);
            composerS.G(1433125990);
            if (lVar != null) {
                Boolean boolValueOf16 = Boolean.valueOf(z6);
                composerS.G(511388516);
                zK = composerS.k(boolValueOf16) | composerS.k(lVar);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                    composerS.z(objH2);
                } else {
                    objH2 = new CheckboxKt$Checkbox$2$1(lVar, z6);
                    composerS.z(objH2);
                }
                composerS.Q();
                aVar = (e8.a) objH2;
            } else {
                aVar = null;
            }
            composerS.Q();
            h(toggleableStateA16, aVar, modifier3, z12, mutableInteractionSource3, checkboxColorsA, composerS, (i17 & 896) | (i17 & 7168) | (i17 & 57344) | (i17 & 458752), 0);
            MutableInteractionSource mutableInteractionSource110 = mutableInteractionSource3;
            checkboxColors3 = checkboxColorsA;
            modifier4 = modifier3;
            z13 = z12;
            mutableInteractionSource4 = mutableInteractionSource110;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new CheckboxKt$Checkbox$3(z6, lVar, modifier4, z13, mutableInteractionSource4, checkboxColors3, i10, i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ComposableTarget
    @Composable
    public static final void b(boolean z6, ToggleableState toggleableState, Modifier modifier, CheckboxColors checkboxColors, Composer composer, int i10) {
        float f;
        float f6;
        int i11;
        float f7;
        Composer composerS = composer.s(-2118895727);
        int i12 = (i10 & 14) == 0 ? (composerS.m(z6) ? 4 : 2) | i10 : i10;
        if ((i10 & 112) == 0) {
            i12 |= composerS.k(toggleableState) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            i12 |= composerS.k(modifier) ? 256 : 128;
        }
        if ((i10 & 7168) == 0) {
            i12 |= composerS.k(checkboxColors) ? 2048 : 1024;
        }
        int i13 = i12;
        if ((i13 & 5851) == 1170 && composerS.b()) {
            composerS.g();
        } else {
            int i14 = i13 >> 3;
            int i15 = i14 & 14;
            Transition transitionE = TransitionKt.e(toggleableState, null, composerS, i15, 2);
            CheckboxKt$CheckboxImpl$checkDrawFraction$2 checkboxKt$CheckboxImpl$checkDrawFraction$2 = CheckboxKt$CheckboxImpl$checkDrawFraction$2.INSTANCE;
            composerS.G(1399891485);
            m mVar = m.INSTANCE;
            TwoWayConverter<Float, AnimationVector1D> twoWayConverterI = VectorConvertersKt.i(mVar);
            composerS.G(1847725064);
            ToggleableState toggleableState2 = (ToggleableState) transitionE.g();
            composerS.G(-1798345588);
            int[] iArr = WhenMappings.$EnumSwitchMapping$0;
            int i16 = iArr[toggleableState2.ordinal()];
            float f10 = 0.0f;
            if (i16 == 1) {
                f = 1.0f;
            } else if (i16 != 2) {
                if (i16 != 3) {
                    throw new s();
                }
                f = 1.0f;
            } else {
                f = 0.0f;
            }
            composerS.Q();
            Float fValueOf = Float.valueOf(f);
            ToggleableState toggleableState3 = (ToggleableState) transitionE.m();
            composerS.G(-1798345588);
            int i17 = iArr[toggleableState3.ordinal()];
            if (i17 == 1) {
                f6 = 1.0f;
            } else if (i17 != 2) {
                if (i17 != 3) {
                    throw new s();
                }
                f6 = 1.0f;
            } else {
                f6 = 0.0f;
            }
            composerS.Q();
            State stateC = TransitionKt.c(transitionE, fValueOf, Float.valueOf(f6), checkboxKt$CheckboxImpl$checkDrawFraction$2.invoke(transitionE.k(), composerS, 0), twoWayConverterI, "FloatAnimation", composerS, 0);
            composerS.Q();
            composerS.Q();
            CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2 checkboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2 = CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2.INSTANCE;
            composerS.G(1399891485);
            TwoWayConverter<Float, AnimationVector1D> twoWayConverterI2 = VectorConvertersKt.i(mVar);
            composerS.G(1847725064);
            ToggleableState toggleableState4 = (ToggleableState) transitionE.g();
            composerS.G(-2098942571);
            int i18 = iArr[toggleableState4.ordinal()];
            if (i18 == 1 || i18 == 2) {
                i11 = 3;
                f7 = 0.0f;
            } else {
                i11 = 3;
                if (i18 != 3) {
                    throw new s();
                }
                f7 = 1.0f;
            }
            composerS.Q();
            Float fValueOf2 = Float.valueOf(f7);
            ToggleableState toggleableState5 = (ToggleableState) transitionE.m();
            composerS.G(-2098942571);
            int i19 = iArr[toggleableState5.ordinal()];
            if (i19 != 1 && i19 != 2) {
                if (i19 != i11) {
                    throw new s();
                }
                f10 = 1.0f;
            }
            composerS.Q();
            State stateC2 = TransitionKt.c(transitionE, fValueOf2, Float.valueOf(f10), checkboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$2.invoke(transitionE.k(), composerS, 0), twoWayConverterI2, "FloatAnimation", composerS, 0);
            composerS.Q();
            composerS.Q();
            composerS.G(-492369756);
            Object objH = composerS.H();
            if (objH == Composer.Companion.a()) {
                objH = new CheckDrawingCache(null, null, null, 7, null);
                composerS.z(objH);
            }
            composerS.Q();
            CheckDrawingCache checkDrawingCache = (CheckDrawingCache) objH;
            State<Color> stateA = checkboxColors.a(toggleableState, composerS, i15 | ((i13 >> 6) & 112));
            int i20 = (i13 & 14) | (i13 & 112) | (i14 & 896);
            State<Color> stateB = checkboxColors.b(z6, toggleableState, composerS, i20);
            State<Color> stateC3 = checkboxColors.c(z6, toggleableState, composerS, i20);
            Modifier modifierT = SizeKt.t(SizeKt.H(modifier, Alignment.Companion.e(), false, 2, null), CheckboxSize);
            Object[] objArr = new Object[6];
            objArr[0] = stateB;
            objArr[1] = stateC3;
            objArr[2] = stateA;
            objArr[i11] = stateC;
            objArr[4] = stateC2;
            objArr[5] = checkDrawingCache;
            composerS.G(-568225417);
            boolean zK = false;
            for (int i21 = 0; i21 < 6; i21++) {
                zK |= composerS.k(objArr[i21]);
            }
            Object objH2 = composerS.H();
            if (zK || objH2 == Composer.Companion.a()) {
                objH2 = new CheckboxKt$CheckboxImpl$1$1(checkDrawingCache, stateB, stateC3, stateA, stateC, stateC2);
                composerS.z(objH2);
            }
            composerS.Q();
            CanvasKt.a(modifierT, (l) objH2, composerS, 0);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new CheckboxKt$CheckboxImpl$2(z6, toggleableState, modifier, checkboxColors, i10));
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0154  */
    /* JADX WARN: Code duplicated, block: B:102:0x017e  */
    /* JADX WARN: Code duplicated, block: B:105:0x0189  */
    /* JADX WARN: Code duplicated, block: B:110:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:112:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0061  */
    /* JADX WARN: Code duplicated, block: B:38:0x0066  */
    /* JADX WARN: Code duplicated, block: B:40:0x006a  */
    /* JADX WARN: Code duplicated, block: B:42:0x0072  */
    /* JADX WARN: Code duplicated, block: B:43:0x0075  */
    /* JADX WARN: Code duplicated, block: B:47:0x007c  */
    /* JADX WARN: Code duplicated, block: B:49:0x0081  */
    /* JADX WARN: Code duplicated, block: B:51:0x0087  */
    /* JADX WARN: Code duplicated, block: B:53:0x008f  */
    /* JADX WARN: Code duplicated, block: B:54:0x0092  */
    /* JADX WARN: Code duplicated, block: B:58:0x009a  */
    /* JADX WARN: Code duplicated, block: B:60:0x009e  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:66:0x00af  */
    /* JADX WARN: Code duplicated, block: B:69:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:73:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:83:0x00ee A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:87:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:88:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:90:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:92:0x010d  */
    /* JADX WARN: Code duplicated, block: B:94:0x011a  */
    /* JADX WARN: Code duplicated, block: B:97:0x011f  */
    /* JADX WARN: Code duplicated, block: B:98:0x0141  */
    @ComposableTarget
    @Composable
    public static final void h(@NotNull ToggleableState state, @Nullable e8.a<l0> aVar, @Nullable Modifier modifier, boolean z6, @Nullable MutableInteractionSource mutableInteractionSource, @Nullable CheckboxColors checkboxColors, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        boolean z10;
        int i14;
        int i15;
        MutableInteractionSource mutableInteractionSource2;
        int i16;
        CheckboxColors checkboxColors2;
        Modifier modifier3;
        boolean z11;
        MutableInteractionSource mutableInteractionSource3;
        int i17;
        Modifier modifier4;
        boolean z12;
        MutableInteractionSource mutableInteractionSource4;
        CheckboxColors checkboxColorsA;
        Object objH;
        Modifier modifierD;
        Modifier modifierB;
        Modifier modifier5;
        MutableInteractionSource mutableInteractionSource5;
        CheckboxColors checkboxColors3;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(state, "state");
        Composer composerS = composer.s(2031255194);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(state) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            i12 |= composerS.k(aVar) ? 32 : 16;
        }
        int i18 = i11 & 4;
        if (i18 == 0) {
            if ((i10 & 896) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 256 : 128;
            }
            i13 = i11 & 8;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    z10 = z6;
                    if (composerS.m(z10)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 16;
                if (i15 != 0) {
                    if ((57344 & i10) == 0) {
                        mutableInteractionSource2 = mutableInteractionSource;
                        if (composerS.k(mutableInteractionSource2)) {
                            i16 = 16384;
                        } else {
                            i16 = 8192;
                        }
                        i12 |= i16;
                    }
                    if ((458752 & i10) == 0) {
                        if ((i11 & 32) == 0) {
                            checkboxColors2 = checkboxColors;
                            int i19 = composerS.k(checkboxColors2) ? 131072 : 65536;
                            i12 |= i19;
                        } else {
                            checkboxColors2 = checkboxColors;
                        }
                        i12 |= i19;
                    } else {
                        checkboxColors2 = checkboxColors;
                    }
                    if ((374491 & i12) == 74898 || !composerS.b()) {
                        composerS.J();
                        if ((i10 & 1) != 0 || composerS.h()) {
                            if (i18 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i15 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource3 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource2;
                            }
                            if ((i11 & 32) != 0) {
                                i17 = i12 & (-458753);
                                modifier4 = modifier3;
                                z12 = z11;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                            } else {
                                i17 = i12;
                                modifier4 = modifier3;
                                z12 = z11;
                                mutableInteractionSource4 = mutableInteractionSource3;
                            }
                            composerS.A();
                            composerS.G(-1517549514);
                            if (aVar != null) {
                                modifierD = ToggleableKt.d(Modifier.Companion, state, mutableInteractionSource4, RippleKt.e(false, CheckboxRippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), aVar);
                            } else {
                                modifierD = Modifier.Companion;
                            }
                            composerS.Q();
                            modifierB = Modifier.Companion;
                            if (aVar != null) {
                                modifierB = TouchTargetKt.b(modifierB);
                            }
                            b(z12, state, PaddingKt.i(modifier4.B(modifierB).B(modifierD), CheckboxDefaultPadding), checkboxColorsA, composerS, ((i17 >> 9) & 14) | ((i17 << 3) & 112) | ((i17 >> 6) & 7168));
                            modifier5 = modifier4;
                            z10 = z12;
                            mutableInteractionSource5 = mutableInteractionSource4;
                            checkboxColors3 = checkboxColorsA;
                        } else {
                            composerS.g();
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                            }
                            i17 = i12;
                            modifier4 = modifier2;
                            z12 = z10;
                            mutableInteractionSource4 = mutableInteractionSource2;
                        }
                        checkboxColorsA = checkboxColors2;
                        composerS.A();
                        composerS.G(-1517549514);
                        if (aVar != null) {
                            modifierD = ToggleableKt.d(Modifier.Companion, state, mutableInteractionSource4, RippleKt.e(false, CheckboxRippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), aVar);
                        } else {
                            modifierD = Modifier.Companion;
                        }
                        composerS.Q();
                        modifierB = Modifier.Companion;
                        if (aVar != null) {
                            modifierB = TouchTargetKt.b(modifierB);
                        }
                        b(z12, state, PaddingKt.i(modifier4.B(modifierB).B(modifierD), CheckboxDefaultPadding), checkboxColorsA, composerS, ((i17 >> 9) & 14) | ((i17 << 3) & 112) | ((i17 >> 6) & 7168));
                        modifier5 = modifier4;
                        z10 = z12;
                        mutableInteractionSource5 = mutableInteractionSource4;
                        checkboxColors3 = checkboxColorsA;
                    } else {
                        composerS.g();
                        modifier5 = modifier2;
                        mutableInteractionSource5 = mutableInteractionSource2;
                        composerS = composerS;
                        checkboxColors3 = checkboxColors2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new CheckboxKt$TriStateCheckbox$2(state, aVar, modifier5, z10, mutableInteractionSource5, checkboxColors3, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                mutableInteractionSource2 = mutableInteractionSource;
                if ((458752 & i10) == 0) {
                    if ((i11 & 32) == 0) {
                        checkboxColors2 = checkboxColors;
                        if (composerS.k(checkboxColors2)) {
                        }
                        i12 |= i19;
                    } else {
                        checkboxColors2 = checkboxColors;
                    }
                    i12 |= i19;
                } else {
                    checkboxColors2 = checkboxColors;
                }
                if ((374491 & i12) == 74898) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = checkboxColors2;
                        }
                    } else {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = checkboxColors2;
                        }
                    }
                    composerS.A();
                    composerS.G(-1517549514);
                    if (aVar != null) {
                        modifierD = ToggleableKt.d(Modifier.Companion, state, mutableInteractionSource4, RippleKt.e(false, CheckboxRippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), aVar);
                    } else {
                        modifierD = Modifier.Companion;
                    }
                    composerS.Q();
                    modifierB = Modifier.Companion;
                    if (aVar != null) {
                        modifierB = TouchTargetKt.b(modifierB);
                    }
                    b(z12, state, PaddingKt.i(modifier4.B(modifierB).B(modifierD), CheckboxDefaultPadding), checkboxColorsA, composerS, ((i17 >> 9) & 14) | ((i17 << 3) & 112) | ((i17 >> 6) & 7168));
                    modifier5 = modifier4;
                    z10 = z12;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    checkboxColors3 = checkboxColorsA;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = checkboxColors2;
                        }
                    } else {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = checkboxColors2;
                        }
                    }
                    composerS.A();
                    composerS.G(-1517549514);
                    if (aVar != null) {
                        modifierD = ToggleableKt.d(Modifier.Companion, state, mutableInteractionSource4, RippleKt.e(false, CheckboxRippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), aVar);
                    } else {
                        modifierD = Modifier.Companion;
                    }
                    composerS.Q();
                    modifierB = Modifier.Companion;
                    if (aVar != null) {
                        modifierB = TouchTargetKt.b(modifierB);
                    }
                    b(z12, state, PaddingKt.i(modifier4.B(modifierB).B(modifierD), CheckboxDefaultPadding), checkboxColorsA, composerS, ((i17 >> 9) & 14) | ((i17 << 3) & 112) | ((i17 >> 6) & 7168));
                    modifier5 = modifier4;
                    z10 = z12;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    checkboxColors3 = checkboxColorsA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new CheckboxKt$TriStateCheckbox$2(state, aVar, modifier5, z10, mutableInteractionSource5, checkboxColors3, i10, i11));
            }
            i12 |= 3072;
            z10 = z6;
            i15 = i11 & 16;
            if (i15 != 0) {
                if ((57344 & i10) == 0) {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if (composerS.k(mutableInteractionSource2)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                if ((458752 & i10) == 0) {
                    if ((i11 & 32) == 0) {
                        checkboxColors2 = checkboxColors;
                        if (composerS.k(checkboxColors2)) {
                        }
                        i12 |= i19;
                    } else {
                        checkboxColors2 = checkboxColors;
                    }
                    i12 |= i19;
                } else {
                    checkboxColors2 = checkboxColors;
                }
                if ((374491 & i12) == 74898) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = checkboxColors2;
                        }
                    } else {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = checkboxColors2;
                        }
                    }
                    composerS.A();
                    composerS.G(-1517549514);
                    if (aVar != null) {
                        modifierD = ToggleableKt.d(Modifier.Companion, state, mutableInteractionSource4, RippleKt.e(false, CheckboxRippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), aVar);
                    } else {
                        modifierD = Modifier.Companion;
                    }
                    composerS.Q();
                    modifierB = Modifier.Companion;
                    if (aVar != null) {
                        modifierB = TouchTargetKt.b(modifierB);
                    }
                    b(z12, state, PaddingKt.i(modifier4.B(modifierB).B(modifierD), CheckboxDefaultPadding), checkboxColorsA, composerS, ((i17 >> 9) & 14) | ((i17 << 3) & 112) | ((i17 >> 6) & 7168));
                    modifier5 = modifier4;
                    z10 = z12;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    checkboxColors3 = checkboxColorsA;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = checkboxColors2;
                        }
                    } else {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = checkboxColors2;
                        }
                    }
                    composerS.A();
                    composerS.G(-1517549514);
                    if (aVar != null) {
                        modifierD = ToggleableKt.d(Modifier.Companion, state, mutableInteractionSource4, RippleKt.e(false, CheckboxRippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), aVar);
                    } else {
                        modifierD = Modifier.Companion;
                    }
                    composerS.Q();
                    modifierB = Modifier.Companion;
                    if (aVar != null) {
                        modifierB = TouchTargetKt.b(modifierB);
                    }
                    b(z12, state, PaddingKt.i(modifier4.B(modifierB).B(modifierD), CheckboxDefaultPadding), checkboxColorsA, composerS, ((i17 >> 9) & 14) | ((i17 << 3) & 112) | ((i17 >> 6) & 7168));
                    modifier5 = modifier4;
                    z10 = z12;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    checkboxColors3 = checkboxColorsA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new CheckboxKt$TriStateCheckbox$2(state, aVar, modifier5, z10, mutableInteractionSource5, checkboxColors3, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((458752 & i10) == 0) {
                if ((i11 & 32) == 0) {
                    checkboxColors2 = checkboxColors;
                    if (composerS.k(checkboxColors2)) {
                    }
                    i12 |= i19;
                } else {
                    checkboxColors2 = checkboxColors;
                }
                i12 |= i19;
            } else {
                checkboxColors2 = checkboxColors;
            }
            if ((374491 & i12) == 74898) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = checkboxColors2;
                    }
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = checkboxColors2;
                    }
                }
                composerS.A();
                composerS.G(-1517549514);
                if (aVar != null) {
                    modifierD = ToggleableKt.d(Modifier.Companion, state, mutableInteractionSource4, RippleKt.e(false, CheckboxRippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), aVar);
                } else {
                    modifierD = Modifier.Companion;
                }
                composerS.Q();
                modifierB = Modifier.Companion;
                if (aVar != null) {
                    modifierB = TouchTargetKt.b(modifierB);
                }
                b(z12, state, PaddingKt.i(modifier4.B(modifierB).B(modifierD), CheckboxDefaultPadding), checkboxColorsA, composerS, ((i17 >> 9) & 14) | ((i17 << 3) & 112) | ((i17 >> 6) & 7168));
                modifier5 = modifier4;
                z10 = z12;
                mutableInteractionSource5 = mutableInteractionSource4;
                checkboxColors3 = checkboxColorsA;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = checkboxColors2;
                    }
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = checkboxColors2;
                    }
                }
                composerS.A();
                composerS.G(-1517549514);
                if (aVar != null) {
                    modifierD = ToggleableKt.d(Modifier.Companion, state, mutableInteractionSource4, RippleKt.e(false, CheckboxRippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), aVar);
                } else {
                    modifierD = Modifier.Companion;
                }
                composerS.Q();
                modifierB = Modifier.Companion;
                if (aVar != null) {
                    modifierB = TouchTargetKt.b(modifierB);
                }
                b(z12, state, PaddingKt.i(modifier4.B(modifierB).B(modifierD), CheckboxDefaultPadding), checkboxColorsA, composerS, ((i17 >> 9) & 14) | ((i17 << 3) & 112) | ((i17 >> 6) & 7168));
                modifier5 = modifier4;
                z10 = z12;
                mutableInteractionSource5 = mutableInteractionSource4;
                checkboxColors3 = checkboxColorsA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new CheckboxKt$TriStateCheckbox$2(state, aVar, modifier5, z10, mutableInteractionSource5, checkboxColors3, i10, i11));
        }
        i12 |= 384;
        modifier2 = modifier;
        i13 = i11 & 8;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                z10 = z6;
                if (composerS.m(z10)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            i15 = i11 & 16;
            if (i15 != 0) {
                if ((57344 & i10) == 0) {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if (composerS.k(mutableInteractionSource2)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                if ((458752 & i10) == 0) {
                    if ((i11 & 32) == 0) {
                        checkboxColors2 = checkboxColors;
                        if (composerS.k(checkboxColors2)) {
                        }
                        i12 |= i19;
                    } else {
                        checkboxColors2 = checkboxColors;
                    }
                    i12 |= i19;
                } else {
                    checkboxColors2 = checkboxColors;
                }
                if ((374491 & i12) == 74898) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = checkboxColors2;
                        }
                    } else {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = checkboxColors2;
                        }
                    }
                    composerS.A();
                    composerS.G(-1517549514);
                    if (aVar != null) {
                        modifierD = ToggleableKt.d(Modifier.Companion, state, mutableInteractionSource4, RippleKt.e(false, CheckboxRippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), aVar);
                    } else {
                        modifierD = Modifier.Companion;
                    }
                    composerS.Q();
                    modifierB = Modifier.Companion;
                    if (aVar != null) {
                        modifierB = TouchTargetKt.b(modifierB);
                    }
                    b(z12, state, PaddingKt.i(modifier4.B(modifierB).B(modifierD), CheckboxDefaultPadding), checkboxColorsA, composerS, ((i17 >> 9) & 14) | ((i17 << 3) & 112) | ((i17 >> 6) & 7168));
                    modifier5 = modifier4;
                    z10 = z12;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    checkboxColors3 = checkboxColorsA;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = checkboxColors2;
                        }
                    } else {
                        if (i18 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        if ((i11 & 32) != 0) {
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            checkboxColorsA = checkboxColors2;
                        }
                    }
                    composerS.A();
                    composerS.G(-1517549514);
                    if (aVar != null) {
                        modifierD = ToggleableKt.d(Modifier.Companion, state, mutableInteractionSource4, RippleKt.e(false, CheckboxRippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), aVar);
                    } else {
                        modifierD = Modifier.Companion;
                    }
                    composerS.Q();
                    modifierB = Modifier.Companion;
                    if (aVar != null) {
                        modifierB = TouchTargetKt.b(modifierB);
                    }
                    b(z12, state, PaddingKt.i(modifier4.B(modifierB).B(modifierD), CheckboxDefaultPadding), checkboxColorsA, composerS, ((i17 >> 9) & 14) | ((i17 << 3) & 112) | ((i17 >> 6) & 7168));
                    modifier5 = modifier4;
                    z10 = z12;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    checkboxColors3 = checkboxColorsA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new CheckboxKt$TriStateCheckbox$2(state, aVar, modifier5, z10, mutableInteractionSource5, checkboxColors3, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((458752 & i10) == 0) {
                if ((i11 & 32) == 0) {
                    checkboxColors2 = checkboxColors;
                    if (composerS.k(checkboxColors2)) {
                    }
                    i12 |= i19;
                } else {
                    checkboxColors2 = checkboxColors;
                }
                i12 |= i19;
            } else {
                checkboxColors2 = checkboxColors;
            }
            if ((374491 & i12) == 74898) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = checkboxColors2;
                    }
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = checkboxColors2;
                    }
                }
                composerS.A();
                composerS.G(-1517549514);
                if (aVar != null) {
                    modifierD = ToggleableKt.d(Modifier.Companion, state, mutableInteractionSource4, RippleKt.e(false, CheckboxRippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), aVar);
                } else {
                    modifierD = Modifier.Companion;
                }
                composerS.Q();
                modifierB = Modifier.Companion;
                if (aVar != null) {
                    modifierB = TouchTargetKt.b(modifierB);
                }
                b(z12, state, PaddingKt.i(modifier4.B(modifierB).B(modifierD), CheckboxDefaultPadding), checkboxColorsA, composerS, ((i17 >> 9) & 14) | ((i17 << 3) & 112) | ((i17 >> 6) & 7168));
                modifier5 = modifier4;
                z10 = z12;
                mutableInteractionSource5 = mutableInteractionSource4;
                checkboxColors3 = checkboxColorsA;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = checkboxColors2;
                    }
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = checkboxColors2;
                    }
                }
                composerS.A();
                composerS.G(-1517549514);
                if (aVar != null) {
                    modifierD = ToggleableKt.d(Modifier.Companion, state, mutableInteractionSource4, RippleKt.e(false, CheckboxRippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), aVar);
                } else {
                    modifierD = Modifier.Companion;
                }
                composerS.Q();
                modifierB = Modifier.Companion;
                if (aVar != null) {
                    modifierB = TouchTargetKt.b(modifierB);
                }
                b(z12, state, PaddingKt.i(modifier4.B(modifierB).B(modifierD), CheckboxDefaultPadding), checkboxColorsA, composerS, ((i17 >> 9) & 14) | ((i17 << 3) & 112) | ((i17 >> 6) & 7168));
                modifier5 = modifier4;
                z10 = z12;
                mutableInteractionSource5 = mutableInteractionSource4;
                checkboxColors3 = checkboxColorsA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new CheckboxKt$TriStateCheckbox$2(state, aVar, modifier5, z10, mutableInteractionSource5, checkboxColors3, i10, i11));
        }
        i12 |= 3072;
        z10 = z6;
        i15 = i11 & 16;
        if (i15 != 0) {
            if ((57344 & i10) == 0) {
                mutableInteractionSource2 = mutableInteractionSource;
                if (composerS.k(mutableInteractionSource2)) {
                    i16 = 16384;
                } else {
                    i16 = 8192;
                }
                i12 |= i16;
            }
            if ((458752 & i10) == 0) {
                if ((i11 & 32) == 0) {
                    checkboxColors2 = checkboxColors;
                    if (composerS.k(checkboxColors2)) {
                    }
                    i12 |= i19;
                } else {
                    checkboxColors2 = checkboxColors;
                }
                i12 |= i19;
            } else {
                checkboxColors2 = checkboxColors;
            }
            if ((374491 & i12) == 74898) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = checkboxColors2;
                    }
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = checkboxColors2;
                    }
                }
                composerS.A();
                composerS.G(-1517549514);
                if (aVar != null) {
                    modifierD = ToggleableKt.d(Modifier.Companion, state, mutableInteractionSource4, RippleKt.e(false, CheckboxRippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), aVar);
                } else {
                    modifierD = Modifier.Companion;
                }
                composerS.Q();
                modifierB = Modifier.Companion;
                if (aVar != null) {
                    modifierB = TouchTargetKt.b(modifierB);
                }
                b(z12, state, PaddingKt.i(modifier4.B(modifierB).B(modifierD), CheckboxDefaultPadding), checkboxColorsA, composerS, ((i17 >> 9) & 14) | ((i17 << 3) & 112) | ((i17 >> 6) & 7168));
                modifier5 = modifier4;
                z10 = z12;
                mutableInteractionSource5 = mutableInteractionSource4;
                checkboxColors3 = checkboxColorsA;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = checkboxColors2;
                    }
                } else {
                    if (i18 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    if ((i11 & 32) != 0) {
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        checkboxColorsA = checkboxColors2;
                    }
                }
                composerS.A();
                composerS.G(-1517549514);
                if (aVar != null) {
                    modifierD = ToggleableKt.d(Modifier.Companion, state, mutableInteractionSource4, RippleKt.e(false, CheckboxRippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), aVar);
                } else {
                    modifierD = Modifier.Companion;
                }
                composerS.Q();
                modifierB = Modifier.Companion;
                if (aVar != null) {
                    modifierB = TouchTargetKt.b(modifierB);
                }
                b(z12, state, PaddingKt.i(modifier4.B(modifierB).B(modifierD), CheckboxDefaultPadding), checkboxColorsA, composerS, ((i17 >> 9) & 14) | ((i17 << 3) & 112) | ((i17 >> 6) & 7168));
                modifier5 = modifier4;
                z10 = z12;
                mutableInteractionSource5 = mutableInteractionSource4;
                checkboxColors3 = checkboxColorsA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new CheckboxKt$TriStateCheckbox$2(state, aVar, modifier5, z10, mutableInteractionSource5, checkboxColors3, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        mutableInteractionSource2 = mutableInteractionSource;
        if ((458752 & i10) == 0) {
            if ((i11 & 32) == 0) {
                checkboxColors2 = checkboxColors;
                if (composerS.k(checkboxColors2)) {
                }
                i12 |= i19;
            } else {
                checkboxColors2 = checkboxColors;
            }
            i12 |= i19;
        } else {
            checkboxColors2 = checkboxColors;
        }
        if ((374491 & i12) == 74898) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                if ((i11 & 32) != 0) {
                    i17 = i12 & (-458753);
                    modifier4 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                } else {
                    i17 = i12;
                    modifier4 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    checkboxColorsA = checkboxColors2;
                }
            } else {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                if ((i11 & 32) != 0) {
                    i17 = i12 & (-458753);
                    modifier4 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                } else {
                    i17 = i12;
                    modifier4 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    checkboxColorsA = checkboxColors2;
                }
            }
            composerS.A();
            composerS.G(-1517549514);
            if (aVar != null) {
                modifierD = ToggleableKt.d(Modifier.Companion, state, mutableInteractionSource4, RippleKt.e(false, CheckboxRippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), aVar);
            } else {
                modifierD = Modifier.Companion;
            }
            composerS.Q();
            modifierB = Modifier.Companion;
            if (aVar != null) {
                modifierB = TouchTargetKt.b(modifierB);
            }
            b(z12, state, PaddingKt.i(modifier4.B(modifierB).B(modifierD), CheckboxDefaultPadding), checkboxColorsA, composerS, ((i17 >> 9) & 14) | ((i17 << 3) & 112) | ((i17 >> 6) & 7168));
            modifier5 = modifier4;
            z10 = z12;
            mutableInteractionSource5 = mutableInteractionSource4;
            checkboxColors3 = checkboxColorsA;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                if ((i11 & 32) != 0) {
                    i17 = i12 & (-458753);
                    modifier4 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                } else {
                    i17 = i12;
                    modifier4 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    checkboxColorsA = checkboxColors2;
                }
            } else {
                if (i18 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                if ((i11 & 32) != 0) {
                    i17 = i12 & (-458753);
                    modifier4 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    checkboxColorsA = CheckboxDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                } else {
                    i17 = i12;
                    modifier4 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    checkboxColorsA = checkboxColors2;
                }
            }
            composerS.A();
            composerS.G(-1517549514);
            if (aVar != null) {
                modifierD = ToggleableKt.d(Modifier.Companion, state, mutableInteractionSource4, RippleKt.e(false, CheckboxRippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), aVar);
            } else {
                modifierD = Modifier.Companion;
            }
            composerS.Q();
            modifierB = Modifier.Companion;
            if (aVar != null) {
                modifierB = TouchTargetKt.b(modifierB);
            }
            b(z12, state, PaddingKt.i(modifier4.B(modifierB).B(modifierD), CheckboxDefaultPadding), checkboxColorsA, composerS, ((i17 >> 9) & 14) | ((i17 << 3) & 112) | ((i17 >> 6) & 7168));
            modifier5 = modifier4;
            z10 = z12;
            mutableInteractionSource5 = mutableInteractionSource4;
            checkboxColors3 = checkboxColorsA;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new CheckboxKt$TriStateCheckbox$2(state, aVar, modifier5, z10, mutableInteractionSource5, checkboxColors3, i10, i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(DrawScope drawScope, long j6, long j10, float f, float f6) {
        float f7 = f6 / 2.0f;
        Stroke stroke = new Stroke(f6, 0.0f, 0, 0, null, 30, null);
        float fI = Size.i(drawScope.c());
        if (Color.n(j6, j10)) {
            a.p(drawScope, j6, 0L, androidx.compose.ui.geometry.SizeKt.a(fI, fI), CornerRadiusKt.b(f, 0.0f, 2, null), Fill.INSTANCE, 0.0f, null, 0, 226, null);
            return;
        }
        float f10 = fI - (2 * f6);
        a.p(drawScope, j6, OffsetKt.a(f6, f6), androidx.compose.ui.geometry.SizeKt.a(f10, f10), CornerRadiusKt.b(Math.max(0.0f, f - f6), 0.0f, 2, null), Fill.INSTANCE, 0.0f, null, 0, 224, null);
        float f11 = fI - f6;
        a.p(drawScope, j10, OffsetKt.a(f7, f7), androidx.compose.ui.geometry.SizeKt.a(f11, f11), CornerRadiusKt.b(f - f7, 0.0f, 2, null), stroke, 0.0f, null, 0, 224, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long c(State<Color> state) {
        return state.getValue().v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float d(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float e(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long f(State<Color> state) {
        return state.getValue().v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long g(State<Color> state) {
        return state.getValue().v();
    }
}
