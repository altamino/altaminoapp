package androidx.compose.material;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.c;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.profileinstaller.ProfileVerifier;
import e8.a;
import e8.p;
import e8.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class ListItemKt {
    /* JADX WARN: Code duplicated, block: B:101:0x0117  */
    /* JADX WARN: Code duplicated, block: B:104:0x015d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:106:0x017c  */
    /* JADX WARN: Code duplicated, block: B:108:0x0180 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:109:0x0182 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:116:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:118:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0050  */
    /* JADX WARN: Code duplicated, block: B:28:0x0055  */
    /* JADX WARN: Code duplicated, block: B:30:0x0059  */
    /* JADX WARN: Code duplicated, block: B:32:0x0061  */
    /* JADX WARN: Code duplicated, block: B:33:0x0064  */
    /* JADX WARN: Code duplicated, block: B:37:0x006b  */
    /* JADX WARN: Code duplicated, block: B:39:0x0070  */
    /* JADX WARN: Code duplicated, block: B:41:0x0074  */
    /* JADX WARN: Code duplicated, block: B:43:0x007c  */
    /* JADX WARN: Code duplicated, block: B:44:0x007f  */
    /* JADX WARN: Code duplicated, block: B:48:0x0086  */
    /* JADX WARN: Code duplicated, block: B:50:0x008b  */
    /* JADX WARN: Code duplicated, block: B:52:0x0091  */
    /* JADX WARN: Code duplicated, block: B:54:0x0099  */
    /* JADX WARN: Code duplicated, block: B:55:0x009c  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:73:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:85:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:86:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:89:0x0101  */
    /* JADX WARN: Code duplicated, block: B:90:0x0103  */
    /* JADX WARN: Code duplicated, block: B:92:0x0107  */
    /* JADX WARN: Code duplicated, block: B:93:0x0109  */
    /* JADX WARN: Code duplicated, block: B:95:0x010c  */
    /* JADX WARN: Code duplicated, block: B:96:0x010f  */
    /* JADX WARN: Code duplicated, block: B:98:0x0113  */
    @Composable
    @ExperimentalMaterialApi
    @ComposableInferredTarget
    public static final void b(@Nullable Modifier modifier, @Nullable p<? super Composer, ? super Integer, l0> pVar, @Nullable p<? super Composer, ? super Integer, l0> pVar2, boolean z6, @Nullable p<? super Composer, ? super Integer, l0> pVar3, @Nullable p<? super Composer, ? super Integer, l0> pVar4, @NotNull p<? super Composer, ? super Integer, l0> text, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        p<? super Composer, ? super Integer, l0> pVar5;
        int i14;
        int i15;
        boolean z10;
        int i16;
        int i17;
        p<? super Composer, ? super Integer, l0> pVar6;
        int i18;
        int i19;
        p<? super Composer, ? super Integer, l0> pVar7;
        int i20;
        int i21;
        Modifier modifier2;
        p<? super Composer, ? super Integer, l0> pVar8;
        p<? super Composer, ? super Integer, l0> pVar9;
        boolean z11;
        p<Composer, Integer, l0> pVarF;
        p<Composer, Integer, l0> pVarF2;
        p<Composer, Integer, l0> pVarF3;
        p<Composer, Integer, l0> pVarF4;
        Modifier modifierB;
        p<? super Composer, ? super Integer, l0> pVar10;
        p<? super Composer, ? super Integer, l0> pVar11;
        p<? super Composer, ? super Integer, l0> pVar12;
        p<? super Composer, ? super Integer, l0> pVar13;
        boolean z12;
        p<? super Composer, ? super Integer, l0> pVar14;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(text, "text");
        Composer composerS = composer.s(-450923337);
        int i22 = i11 & 1;
        if (i22 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(modifier) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i23 = i11 & 2;
        if (i23 == 0) {
            if ((i10 & 112) == 0) {
                i12 |= composerS.k(pVar) ? 32 : 16;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 896) == 0) {
                    pVar5 = pVar2;
                    if (composerS.k(pVar5)) {
                        i14 = 256;
                    } else {
                        i14 = 128;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 8;
                if (i15 != 0) {
                    if ((i10 & 7168) == 0) {
                        z10 = z6;
                        if (composerS.m(z10)) {
                            i16 = 2048;
                        } else {
                            i16 = 1024;
                        }
                        i12 |= i16;
                    }
                    i17 = i11 & 16;
                    if (i17 != 0) {
                        if ((57344 & i10) == 0) {
                            pVar6 = pVar3;
                            if (composerS.k(pVar6)) {
                                i18 = 16384;
                            } else {
                                i18 = 8192;
                            }
                            i12 |= i18;
                        }
                        i19 = i11 & 32;
                        if (i19 != 0) {
                            if ((458752 & i10) == 0) {
                                pVar7 = pVar4;
                                if (composerS.k(pVar7)) {
                                    i20 = 131072;
                                } else {
                                    i20 = 65536;
                                }
                                i12 |= i20;
                            }
                            if ((i11 & 64) != 0) {
                                i12 |= 1572864;
                            } else if ((i10 & 3670016) == 0) {
                                if (composerS.k(text)) {
                                    i21 = 1048576;
                                } else {
                                    i21 = 524288;
                                }
                                i12 |= i21;
                            }
                            if ((i12 & 2995931) == 599186 || !composerS.b()) {
                                if (i22 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar;
                                }
                                if (i13 != 0) {
                                    pVar9 = null;
                                } else {
                                    pVar9 = pVar5;
                                }
                                if (i15 != 0) {
                                    z11 = true;
                                } else {
                                    z11 = z10;
                                }
                                if (i17 != 0) {
                                    pVar6 = null;
                                }
                                p<? super Composer, ? super Integer, l0> pVar15 = i19 == 0 ? pVar7 : null;
                                Typography typographyC = MaterialTheme.INSTANCE.c(composerS, 6);
                                TextStyle textStyleG = typographyC.g();
                                ContentAlpha contentAlpha = ContentAlpha.INSTANCE;
                                pVarF = f(textStyleG, contentAlpha.c(composerS, 6), text);
                                t.g(pVarF);
                                pVarF2 = f(typographyC.b(), contentAlpha.d(composerS, 6), pVar9);
                                pVarF3 = f(typographyC.f(), contentAlpha.c(composerS, 6), pVar6);
                                pVarF4 = f(typographyC.d(), contentAlpha.c(composerS, 6), pVar15);
                                modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                                if (pVarF2 == null || pVarF3 != null) {
                                    pVar10 = pVar6;
                                    if ((pVarF3 == null || !z11) && pVarF2 != null) {
                                        composerS.G(-210280168);
                                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                        composerS.Q();
                                    } else {
                                        composerS.G(-210280382);
                                        TwoLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                        composerS.Q();
                                    }
                                } else {
                                    composerS.G(-210280579);
                                    pVar10 = pVar6;
                                    OneLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF4, composerS, (i12 & 112) | CpioConstants.C_ISBLK, 0);
                                    composerS.Q();
                                }
                                pVar11 = pVar15;
                                pVar12 = pVar8;
                                pVar13 = pVar9;
                                z12 = z11;
                                pVar14 = pVar10;
                            } else {
                                composerS.g();
                                modifier2 = modifier;
                                pVar12 = pVar;
                                pVar13 = pVar5;
                                z12 = z10;
                                pVar14 = pVar6;
                                pVar11 = pVar7;
                            }
                            scopeUpdateScopeU = composerS.u();
                            if (scopeUpdateScopeU == null) {
                                return;
                            }
                            scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
                        }
                        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        pVar7 = pVar4;
                        if ((i11 & 64) != 0) {
                            i12 |= 1572864;
                        } else if ((i10 & 3670016) == 0) {
                            if (composerS.k(text)) {
                                i21 = 1048576;
                            } else {
                                i21 = 524288;
                            }
                            i12 |= i21;
                        }
                        if ((i12 & 2995931) == 599186) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar;
                            }
                            if (i13 != 0) {
                                pVar9 = null;
                            } else {
                                pVar9 = pVar5;
                            }
                            if (i15 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i17 != 0) {
                                pVar6 = null;
                            }
                            if (i19 == 0) {
                            }
                            Typography typographyC2 = MaterialTheme.INSTANCE.c(composerS, 6);
                            TextStyle textStyleG2 = typographyC2.g();
                            ContentAlpha contentAlpha2 = ContentAlpha.INSTANCE;
                            pVarF = f(textStyleG2, contentAlpha2.c(composerS, 6), text);
                            t.g(pVarF);
                            pVarF2 = f(typographyC2.b(), contentAlpha2.d(composerS, 6), pVar9);
                            pVarF3 = f(typographyC2.f(), contentAlpha2.c(composerS, 6), pVar6);
                            pVarF4 = f(typographyC2.d(), contentAlpha2.c(composerS, 6), pVar15);
                            modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                            if (pVarF2 == null) {
                                pVar10 = pVar6;
                                if (pVarF3 == null) {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                } else {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                }
                            } else {
                                pVar10 = pVar6;
                                if (pVarF3 == null) {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                } else {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                }
                            }
                            pVar11 = pVar15;
                            pVar12 = pVar8;
                            pVar13 = pVar9;
                            z12 = z11;
                            pVar14 = pVar10;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar;
                            }
                            if (i13 != 0) {
                                pVar9 = null;
                            } else {
                                pVar9 = pVar5;
                            }
                            if (i15 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i17 != 0) {
                                pVar6 = null;
                            }
                            if (i19 == 0) {
                            }
                            Typography typographyC3 = MaterialTheme.INSTANCE.c(composerS, 6);
                            TextStyle textStyleG3 = typographyC3.g();
                            ContentAlpha contentAlpha3 = ContentAlpha.INSTANCE;
                            pVarF = f(textStyleG3, contentAlpha3.c(composerS, 6), text);
                            t.g(pVarF);
                            pVarF2 = f(typographyC3.b(), contentAlpha3.d(composerS, 6), pVar9);
                            pVarF3 = f(typographyC3.f(), contentAlpha3.c(composerS, 6), pVar6);
                            pVarF4 = f(typographyC3.d(), contentAlpha3.c(composerS, 6), pVar15);
                            modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                            if (pVarF2 == null) {
                                pVar10 = pVar6;
                                if (pVarF3 == null) {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                } else {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                }
                            } else {
                                pVar10 = pVar6;
                                if (pVarF3 == null) {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                } else {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                }
                            }
                            pVar11 = pVar15;
                            pVar12 = pVar8;
                            pVar13 = pVar9;
                            z12 = z11;
                            pVar14 = pVar10;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
                    }
                    i12 |= CpioConstants.C_ISBLK;
                    pVar6 = pVar3;
                    i19 = i11 & 32;
                    if (i19 != 0) {
                        if ((458752 & i10) == 0) {
                            pVar7 = pVar4;
                            if (composerS.k(pVar7)) {
                                i20 = 131072;
                            } else {
                                i20 = 65536;
                            }
                            i12 |= i20;
                        }
                        if ((i11 & 64) != 0) {
                            i12 |= 1572864;
                        } else if ((i10 & 3670016) == 0) {
                            if (composerS.k(text)) {
                                i21 = 1048576;
                            } else {
                                i21 = 524288;
                            }
                            i12 |= i21;
                        }
                        if ((i12 & 2995931) == 599186) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar;
                            }
                            if (i13 != 0) {
                                pVar9 = null;
                            } else {
                                pVar9 = pVar5;
                            }
                            if (i15 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i17 != 0) {
                                pVar6 = null;
                            }
                            if (i19 == 0) {
                            }
                            Typography typographyC4 = MaterialTheme.INSTANCE.c(composerS, 6);
                            TextStyle textStyleG4 = typographyC4.g();
                            ContentAlpha contentAlpha4 = ContentAlpha.INSTANCE;
                            pVarF = f(textStyleG4, contentAlpha4.c(composerS, 6), text);
                            t.g(pVarF);
                            pVarF2 = f(typographyC4.b(), contentAlpha4.d(composerS, 6), pVar9);
                            pVarF3 = f(typographyC4.f(), contentAlpha4.c(composerS, 6), pVar6);
                            pVarF4 = f(typographyC4.d(), contentAlpha4.c(composerS, 6), pVar15);
                            modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                            if (pVarF2 == null) {
                                pVar10 = pVar6;
                                if (pVarF3 == null) {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                } else {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                }
                            } else {
                                pVar10 = pVar6;
                                if (pVarF3 == null) {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                } else {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                }
                            }
                            pVar11 = pVar15;
                            pVar12 = pVar8;
                            pVar13 = pVar9;
                            z12 = z11;
                            pVar14 = pVar10;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar;
                            }
                            if (i13 != 0) {
                                pVar9 = null;
                            } else {
                                pVar9 = pVar5;
                            }
                            if (i15 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i17 != 0) {
                                pVar6 = null;
                            }
                            if (i19 == 0) {
                            }
                            Typography typographyC5 = MaterialTheme.INSTANCE.c(composerS, 6);
                            TextStyle textStyleG5 = typographyC5.g();
                            ContentAlpha contentAlpha5 = ContentAlpha.INSTANCE;
                            pVarF = f(textStyleG5, contentAlpha5.c(composerS, 6), text);
                            t.g(pVarF);
                            pVarF2 = f(typographyC5.b(), contentAlpha5.d(composerS, 6), pVar9);
                            pVarF3 = f(typographyC5.f(), contentAlpha5.c(composerS, 6), pVar6);
                            pVarF4 = f(typographyC5.d(), contentAlpha5.c(composerS, 6), pVar15);
                            modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                            if (pVarF2 == null) {
                                pVar10 = pVar6;
                                if (pVarF3 == null) {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                } else {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                }
                            } else {
                                pVar10 = pVar6;
                                if (pVarF3 == null) {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                } else {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                }
                            }
                            pVar11 = pVar15;
                            pVar12 = pVar8;
                            pVar13 = pVar9;
                            z12 = z11;
                            pVar14 = pVar10;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
                    }
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    pVar7 = pVar4;
                    if ((i11 & 64) != 0) {
                        i12 |= 1572864;
                    } else if ((i10 & 3670016) == 0) {
                        if (composerS.k(text)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i12 |= i21;
                    }
                    if ((i12 & 2995931) == 599186) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar;
                        }
                        if (i13 != 0) {
                            pVar9 = null;
                        } else {
                            pVar9 = pVar5;
                        }
                        if (i15 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i17 != 0) {
                            pVar6 = null;
                        }
                        if (i19 == 0) {
                        }
                        Typography typographyC6 = MaterialTheme.INSTANCE.c(composerS, 6);
                        TextStyle textStyleG6 = typographyC6.g();
                        ContentAlpha contentAlpha6 = ContentAlpha.INSTANCE;
                        pVarF = f(textStyleG6, contentAlpha6.c(composerS, 6), text);
                        t.g(pVarF);
                        pVarF2 = f(typographyC6.b(), contentAlpha6.d(composerS, 6), pVar9);
                        pVarF3 = f(typographyC6.f(), contentAlpha6.c(composerS, 6), pVar6);
                        pVarF4 = f(typographyC6.d(), contentAlpha6.c(composerS, 6), pVar15);
                        modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                        if (pVarF2 == null) {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        } else {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        }
                        pVar11 = pVar15;
                        pVar12 = pVar8;
                        pVar13 = pVar9;
                        z12 = z11;
                        pVar14 = pVar10;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar;
                        }
                        if (i13 != 0) {
                            pVar9 = null;
                        } else {
                            pVar9 = pVar5;
                        }
                        if (i15 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i17 != 0) {
                            pVar6 = null;
                        }
                        if (i19 == 0) {
                        }
                        Typography typographyC7 = MaterialTheme.INSTANCE.c(composerS, 6);
                        TextStyle textStyleG7 = typographyC7.g();
                        ContentAlpha contentAlpha7 = ContentAlpha.INSTANCE;
                        pVarF = f(textStyleG7, contentAlpha7.c(composerS, 6), text);
                        t.g(pVarF);
                        pVarF2 = f(typographyC7.b(), contentAlpha7.d(composerS, 6), pVar9);
                        pVarF3 = f(typographyC7.f(), contentAlpha7.c(composerS, 6), pVar6);
                        pVarF4 = f(typographyC7.d(), contentAlpha7.c(composerS, 6), pVar15);
                        modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                        if (pVarF2 == null) {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        } else {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        }
                        pVar11 = pVar15;
                        pVar12 = pVar8;
                        pVar13 = pVar9;
                        z12 = z11;
                        pVar14 = pVar10;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
                }
                i12 |= 3072;
                z10 = z6;
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((57344 & i10) == 0) {
                        pVar6 = pVar3;
                        if (composerS.k(pVar6)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    i19 = i11 & 32;
                    if (i19 != 0) {
                        if ((458752 & i10) == 0) {
                            pVar7 = pVar4;
                            if (composerS.k(pVar7)) {
                                i20 = 131072;
                            } else {
                                i20 = 65536;
                            }
                            i12 |= i20;
                        }
                        if ((i11 & 64) != 0) {
                            i12 |= 1572864;
                        } else if ((i10 & 3670016) == 0) {
                            if (composerS.k(text)) {
                                i21 = 1048576;
                            } else {
                                i21 = 524288;
                            }
                            i12 |= i21;
                        }
                        if ((i12 & 2995931) == 599186) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar;
                            }
                            if (i13 != 0) {
                                pVar9 = null;
                            } else {
                                pVar9 = pVar5;
                            }
                            if (i15 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i17 != 0) {
                                pVar6 = null;
                            }
                            if (i19 == 0) {
                            }
                            Typography typographyC8 = MaterialTheme.INSTANCE.c(composerS, 6);
                            TextStyle textStyleG8 = typographyC8.g();
                            ContentAlpha contentAlpha8 = ContentAlpha.INSTANCE;
                            pVarF = f(textStyleG8, contentAlpha8.c(composerS, 6), text);
                            t.g(pVarF);
                            pVarF2 = f(typographyC8.b(), contentAlpha8.d(composerS, 6), pVar9);
                            pVarF3 = f(typographyC8.f(), contentAlpha8.c(composerS, 6), pVar6);
                            pVarF4 = f(typographyC8.d(), contentAlpha8.c(composerS, 6), pVar15);
                            modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                            if (pVarF2 == null) {
                                pVar10 = pVar6;
                                if (pVarF3 == null) {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                } else {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                }
                            } else {
                                pVar10 = pVar6;
                                if (pVarF3 == null) {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                } else {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                }
                            }
                            pVar11 = pVar15;
                            pVar12 = pVar8;
                            pVar13 = pVar9;
                            z12 = z11;
                            pVar14 = pVar10;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar;
                            }
                            if (i13 != 0) {
                                pVar9 = null;
                            } else {
                                pVar9 = pVar5;
                            }
                            if (i15 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i17 != 0) {
                                pVar6 = null;
                            }
                            if (i19 == 0) {
                            }
                            Typography typographyC9 = MaterialTheme.INSTANCE.c(composerS, 6);
                            TextStyle textStyleG9 = typographyC9.g();
                            ContentAlpha contentAlpha9 = ContentAlpha.INSTANCE;
                            pVarF = f(textStyleG9, contentAlpha9.c(composerS, 6), text);
                            t.g(pVarF);
                            pVarF2 = f(typographyC9.b(), contentAlpha9.d(composerS, 6), pVar9);
                            pVarF3 = f(typographyC9.f(), contentAlpha9.c(composerS, 6), pVar6);
                            pVarF4 = f(typographyC9.d(), contentAlpha9.c(composerS, 6), pVar15);
                            modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                            if (pVarF2 == null) {
                                pVar10 = pVar6;
                                if (pVarF3 == null) {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                } else {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                }
                            } else {
                                pVar10 = pVar6;
                                if (pVarF3 == null) {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                } else {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                }
                            }
                            pVar11 = pVar15;
                            pVar12 = pVar8;
                            pVar13 = pVar9;
                            z12 = z11;
                            pVar14 = pVar10;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
                    }
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    pVar7 = pVar4;
                    if ((i11 & 64) != 0) {
                        i12 |= 1572864;
                    } else if ((i10 & 3670016) == 0) {
                        if (composerS.k(text)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i12 |= i21;
                    }
                    if ((i12 & 2995931) == 599186) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar;
                        }
                        if (i13 != 0) {
                            pVar9 = null;
                        } else {
                            pVar9 = pVar5;
                        }
                        if (i15 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i17 != 0) {
                            pVar6 = null;
                        }
                        if (i19 == 0) {
                        }
                        Typography typographyC10 = MaterialTheme.INSTANCE.c(composerS, 6);
                        TextStyle textStyleG10 = typographyC10.g();
                        ContentAlpha contentAlpha10 = ContentAlpha.INSTANCE;
                        pVarF = f(textStyleG10, contentAlpha10.c(composerS, 6), text);
                        t.g(pVarF);
                        pVarF2 = f(typographyC10.b(), contentAlpha10.d(composerS, 6), pVar9);
                        pVarF3 = f(typographyC10.f(), contentAlpha10.c(composerS, 6), pVar6);
                        pVarF4 = f(typographyC10.d(), contentAlpha10.c(composerS, 6), pVar15);
                        modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                        if (pVarF2 == null) {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        } else {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        }
                        pVar11 = pVar15;
                        pVar12 = pVar8;
                        pVar13 = pVar9;
                        z12 = z11;
                        pVar14 = pVar10;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar;
                        }
                        if (i13 != 0) {
                            pVar9 = null;
                        } else {
                            pVar9 = pVar5;
                        }
                        if (i15 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i17 != 0) {
                            pVar6 = null;
                        }
                        if (i19 == 0) {
                        }
                        Typography typographyC11 = MaterialTheme.INSTANCE.c(composerS, 6);
                        TextStyle textStyleG11 = typographyC11.g();
                        ContentAlpha contentAlpha11 = ContentAlpha.INSTANCE;
                        pVarF = f(textStyleG11, contentAlpha11.c(composerS, 6), text);
                        t.g(pVarF);
                        pVarF2 = f(typographyC11.b(), contentAlpha11.d(composerS, 6), pVar9);
                        pVarF3 = f(typographyC11.f(), contentAlpha11.c(composerS, 6), pVar6);
                        pVarF4 = f(typographyC11.d(), contentAlpha11.c(composerS, 6), pVar15);
                        modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                        if (pVarF2 == null) {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        } else {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        }
                        pVar11 = pVar15;
                        pVar12 = pVar8;
                        pVar13 = pVar9;
                        z12 = z11;
                        pVar14 = pVar10;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                pVar6 = pVar3;
                i19 = i11 & 32;
                if (i19 != 0) {
                    if ((458752 & i10) == 0) {
                        pVar7 = pVar4;
                        if (composerS.k(pVar7)) {
                            i20 = 131072;
                        } else {
                            i20 = 65536;
                        }
                        i12 |= i20;
                    }
                    if ((i11 & 64) != 0) {
                        i12 |= 1572864;
                    } else if ((i10 & 3670016) == 0) {
                        if (composerS.k(text)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i12 |= i21;
                    }
                    if ((i12 & 2995931) == 599186) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar;
                        }
                        if (i13 != 0) {
                            pVar9 = null;
                        } else {
                            pVar9 = pVar5;
                        }
                        if (i15 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i17 != 0) {
                            pVar6 = null;
                        }
                        if (i19 == 0) {
                        }
                        Typography typographyC12 = MaterialTheme.INSTANCE.c(composerS, 6);
                        TextStyle textStyleG12 = typographyC12.g();
                        ContentAlpha contentAlpha12 = ContentAlpha.INSTANCE;
                        pVarF = f(textStyleG12, contentAlpha12.c(composerS, 6), text);
                        t.g(pVarF);
                        pVarF2 = f(typographyC12.b(), contentAlpha12.d(composerS, 6), pVar9);
                        pVarF3 = f(typographyC12.f(), contentAlpha12.c(composerS, 6), pVar6);
                        pVarF4 = f(typographyC12.d(), contentAlpha12.c(composerS, 6), pVar15);
                        modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                        if (pVarF2 == null) {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        } else {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        }
                        pVar11 = pVar15;
                        pVar12 = pVar8;
                        pVar13 = pVar9;
                        z12 = z11;
                        pVar14 = pVar10;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar;
                        }
                        if (i13 != 0) {
                            pVar9 = null;
                        } else {
                            pVar9 = pVar5;
                        }
                        if (i15 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i17 != 0) {
                            pVar6 = null;
                        }
                        if (i19 == 0) {
                        }
                        Typography typographyC13 = MaterialTheme.INSTANCE.c(composerS, 6);
                        TextStyle textStyleG13 = typographyC13.g();
                        ContentAlpha contentAlpha13 = ContentAlpha.INSTANCE;
                        pVarF = f(textStyleG13, contentAlpha13.c(composerS, 6), text);
                        t.g(pVarF);
                        pVarF2 = f(typographyC13.b(), contentAlpha13.d(composerS, 6), pVar9);
                        pVarF3 = f(typographyC13.f(), contentAlpha13.c(composerS, 6), pVar6);
                        pVarF4 = f(typographyC13.d(), contentAlpha13.c(composerS, 6), pVar15);
                        modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                        if (pVarF2 == null) {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        } else {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        }
                        pVar11 = pVar15;
                        pVar12 = pVar8;
                        pVar13 = pVar9;
                        z12 = z11;
                        pVar14 = pVar10;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                pVar7 = pVar4;
                if ((i11 & 64) != 0) {
                    i12 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.k(text)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i12 |= i21;
                }
                if ((i12 & 2995931) == 599186) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar;
                    }
                    if (i13 != 0) {
                        pVar9 = null;
                    } else {
                        pVar9 = pVar5;
                    }
                    if (i15 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i17 != 0) {
                        pVar6 = null;
                    }
                    if (i19 == 0) {
                    }
                    Typography typographyC14 = MaterialTheme.INSTANCE.c(composerS, 6);
                    TextStyle textStyleG14 = typographyC14.g();
                    ContentAlpha contentAlpha14 = ContentAlpha.INSTANCE;
                    pVarF = f(textStyleG14, contentAlpha14.c(composerS, 6), text);
                    t.g(pVarF);
                    pVarF2 = f(typographyC14.b(), contentAlpha14.d(composerS, 6), pVar9);
                    pVarF3 = f(typographyC14.f(), contentAlpha14.c(composerS, 6), pVar6);
                    pVarF4 = f(typographyC14.d(), contentAlpha14.c(composerS, 6), pVar15);
                    modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                    if (pVarF2 == null) {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    } else {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    }
                    pVar11 = pVar15;
                    pVar12 = pVar8;
                    pVar13 = pVar9;
                    z12 = z11;
                    pVar14 = pVar10;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar;
                    }
                    if (i13 != 0) {
                        pVar9 = null;
                    } else {
                        pVar9 = pVar5;
                    }
                    if (i15 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i17 != 0) {
                        pVar6 = null;
                    }
                    if (i19 == 0) {
                    }
                    Typography typographyC15 = MaterialTheme.INSTANCE.c(composerS, 6);
                    TextStyle textStyleG15 = typographyC15.g();
                    ContentAlpha contentAlpha15 = ContentAlpha.INSTANCE;
                    pVarF = f(textStyleG15, contentAlpha15.c(composerS, 6), text);
                    t.g(pVarF);
                    pVarF2 = f(typographyC15.b(), contentAlpha15.d(composerS, 6), pVar9);
                    pVarF3 = f(typographyC15.f(), contentAlpha15.c(composerS, 6), pVar6);
                    pVarF4 = f(typographyC15.d(), contentAlpha15.c(composerS, 6), pVar15);
                    modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                    if (pVarF2 == null) {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    } else {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    }
                    pVar11 = pVar15;
                    pVar12 = pVar8;
                    pVar13 = pVar9;
                    z12 = z11;
                    pVar14 = pVar10;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
            }
            i12 |= 384;
            pVar5 = pVar2;
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 7168) == 0) {
                    z10 = z6;
                    if (composerS.m(z10)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((57344 & i10) == 0) {
                        pVar6 = pVar3;
                        if (composerS.k(pVar6)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    i19 = i11 & 32;
                    if (i19 != 0) {
                        if ((458752 & i10) == 0) {
                            pVar7 = pVar4;
                            if (composerS.k(pVar7)) {
                                i20 = 131072;
                            } else {
                                i20 = 65536;
                            }
                            i12 |= i20;
                        }
                        if ((i11 & 64) != 0) {
                            i12 |= 1572864;
                        } else if ((i10 & 3670016) == 0) {
                            if (composerS.k(text)) {
                                i21 = 1048576;
                            } else {
                                i21 = 524288;
                            }
                            i12 |= i21;
                        }
                        if ((i12 & 2995931) == 599186) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar;
                            }
                            if (i13 != 0) {
                                pVar9 = null;
                            } else {
                                pVar9 = pVar5;
                            }
                            if (i15 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i17 != 0) {
                                pVar6 = null;
                            }
                            if (i19 == 0) {
                            }
                            Typography typographyC16 = MaterialTheme.INSTANCE.c(composerS, 6);
                            TextStyle textStyleG16 = typographyC16.g();
                            ContentAlpha contentAlpha16 = ContentAlpha.INSTANCE;
                            pVarF = f(textStyleG16, contentAlpha16.c(composerS, 6), text);
                            t.g(pVarF);
                            pVarF2 = f(typographyC16.b(), contentAlpha16.d(composerS, 6), pVar9);
                            pVarF3 = f(typographyC16.f(), contentAlpha16.c(composerS, 6), pVar6);
                            pVarF4 = f(typographyC16.d(), contentAlpha16.c(composerS, 6), pVar15);
                            modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                            if (pVarF2 == null) {
                                pVar10 = pVar6;
                                if (pVarF3 == null) {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                } else {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                }
                            } else {
                                pVar10 = pVar6;
                                if (pVarF3 == null) {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                } else {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                }
                            }
                            pVar11 = pVar15;
                            pVar12 = pVar8;
                            pVar13 = pVar9;
                            z12 = z11;
                            pVar14 = pVar10;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar;
                            }
                            if (i13 != 0) {
                                pVar9 = null;
                            } else {
                                pVar9 = pVar5;
                            }
                            if (i15 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i17 != 0) {
                                pVar6 = null;
                            }
                            if (i19 == 0) {
                            }
                            Typography typographyC17 = MaterialTheme.INSTANCE.c(composerS, 6);
                            TextStyle textStyleG17 = typographyC17.g();
                            ContentAlpha contentAlpha17 = ContentAlpha.INSTANCE;
                            pVarF = f(textStyleG17, contentAlpha17.c(composerS, 6), text);
                            t.g(pVarF);
                            pVarF2 = f(typographyC17.b(), contentAlpha17.d(composerS, 6), pVar9);
                            pVarF3 = f(typographyC17.f(), contentAlpha17.c(composerS, 6), pVar6);
                            pVarF4 = f(typographyC17.d(), contentAlpha17.c(composerS, 6), pVar15);
                            modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                            if (pVarF2 == null) {
                                pVar10 = pVar6;
                                if (pVarF3 == null) {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                } else {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                }
                            } else {
                                pVar10 = pVar6;
                                if (pVarF3 == null) {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                } else {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                }
                            }
                            pVar11 = pVar15;
                            pVar12 = pVar8;
                            pVar13 = pVar9;
                            z12 = z11;
                            pVar14 = pVar10;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
                    }
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    pVar7 = pVar4;
                    if ((i11 & 64) != 0) {
                        i12 |= 1572864;
                    } else if ((i10 & 3670016) == 0) {
                        if (composerS.k(text)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i12 |= i21;
                    }
                    if ((i12 & 2995931) == 599186) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar;
                        }
                        if (i13 != 0) {
                            pVar9 = null;
                        } else {
                            pVar9 = pVar5;
                        }
                        if (i15 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i17 != 0) {
                            pVar6 = null;
                        }
                        if (i19 == 0) {
                        }
                        Typography typographyC18 = MaterialTheme.INSTANCE.c(composerS, 6);
                        TextStyle textStyleG18 = typographyC18.g();
                        ContentAlpha contentAlpha18 = ContentAlpha.INSTANCE;
                        pVarF = f(textStyleG18, contentAlpha18.c(composerS, 6), text);
                        t.g(pVarF);
                        pVarF2 = f(typographyC18.b(), contentAlpha18.d(composerS, 6), pVar9);
                        pVarF3 = f(typographyC18.f(), contentAlpha18.c(composerS, 6), pVar6);
                        pVarF4 = f(typographyC18.d(), contentAlpha18.c(composerS, 6), pVar15);
                        modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                        if (pVarF2 == null) {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        } else {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        }
                        pVar11 = pVar15;
                        pVar12 = pVar8;
                        pVar13 = pVar9;
                        z12 = z11;
                        pVar14 = pVar10;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar;
                        }
                        if (i13 != 0) {
                            pVar9 = null;
                        } else {
                            pVar9 = pVar5;
                        }
                        if (i15 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i17 != 0) {
                            pVar6 = null;
                        }
                        if (i19 == 0) {
                        }
                        Typography typographyC19 = MaterialTheme.INSTANCE.c(composerS, 6);
                        TextStyle textStyleG19 = typographyC19.g();
                        ContentAlpha contentAlpha19 = ContentAlpha.INSTANCE;
                        pVarF = f(textStyleG19, contentAlpha19.c(composerS, 6), text);
                        t.g(pVarF);
                        pVarF2 = f(typographyC19.b(), contentAlpha19.d(composerS, 6), pVar9);
                        pVarF3 = f(typographyC19.f(), contentAlpha19.c(composerS, 6), pVar6);
                        pVarF4 = f(typographyC19.d(), contentAlpha19.c(composerS, 6), pVar15);
                        modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                        if (pVarF2 == null) {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        } else {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        }
                        pVar11 = pVar15;
                        pVar12 = pVar8;
                        pVar13 = pVar9;
                        z12 = z11;
                        pVar14 = pVar10;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                pVar6 = pVar3;
                i19 = i11 & 32;
                if (i19 != 0) {
                    if ((458752 & i10) == 0) {
                        pVar7 = pVar4;
                        if (composerS.k(pVar7)) {
                            i20 = 131072;
                        } else {
                            i20 = 65536;
                        }
                        i12 |= i20;
                    }
                    if ((i11 & 64) != 0) {
                        i12 |= 1572864;
                    } else if ((i10 & 3670016) == 0) {
                        if (composerS.k(text)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i12 |= i21;
                    }
                    if ((i12 & 2995931) == 599186) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar;
                        }
                        if (i13 != 0) {
                            pVar9 = null;
                        } else {
                            pVar9 = pVar5;
                        }
                        if (i15 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i17 != 0) {
                            pVar6 = null;
                        }
                        if (i19 == 0) {
                        }
                        Typography typographyC110 = MaterialTheme.INSTANCE.c(composerS, 6);
                        TextStyle textStyleG110 = typographyC110.g();
                        ContentAlpha contentAlpha110 = ContentAlpha.INSTANCE;
                        pVarF = f(textStyleG110, contentAlpha110.c(composerS, 6), text);
                        t.g(pVarF);
                        pVarF2 = f(typographyC110.b(), contentAlpha110.d(composerS, 6), pVar9);
                        pVarF3 = f(typographyC110.f(), contentAlpha110.c(composerS, 6), pVar6);
                        pVarF4 = f(typographyC110.d(), contentAlpha110.c(composerS, 6), pVar15);
                        modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                        if (pVarF2 == null) {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        } else {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        }
                        pVar11 = pVar15;
                        pVar12 = pVar8;
                        pVar13 = pVar9;
                        z12 = z11;
                        pVar14 = pVar10;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar;
                        }
                        if (i13 != 0) {
                            pVar9 = null;
                        } else {
                            pVar9 = pVar5;
                        }
                        if (i15 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i17 != 0) {
                            pVar6 = null;
                        }
                        if (i19 == 0) {
                        }
                        Typography typographyC111 = MaterialTheme.INSTANCE.c(composerS, 6);
                        TextStyle textStyleG111 = typographyC111.g();
                        ContentAlpha contentAlpha111 = ContentAlpha.INSTANCE;
                        pVarF = f(textStyleG111, contentAlpha111.c(composerS, 6), text);
                        t.g(pVarF);
                        pVarF2 = f(typographyC111.b(), contentAlpha111.d(composerS, 6), pVar9);
                        pVarF3 = f(typographyC111.f(), contentAlpha111.c(composerS, 6), pVar6);
                        pVarF4 = f(typographyC111.d(), contentAlpha111.c(composerS, 6), pVar15);
                        modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                        if (pVarF2 == null) {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        } else {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        }
                        pVar11 = pVar15;
                        pVar12 = pVar8;
                        pVar13 = pVar9;
                        z12 = z11;
                        pVar14 = pVar10;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                pVar7 = pVar4;
                if ((i11 & 64) != 0) {
                    i12 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.k(text)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i12 |= i21;
                }
                if ((i12 & 2995931) == 599186) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar;
                    }
                    if (i13 != 0) {
                        pVar9 = null;
                    } else {
                        pVar9 = pVar5;
                    }
                    if (i15 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i17 != 0) {
                        pVar6 = null;
                    }
                    if (i19 == 0) {
                    }
                    Typography typographyC112 = MaterialTheme.INSTANCE.c(composerS, 6);
                    TextStyle textStyleG112 = typographyC112.g();
                    ContentAlpha contentAlpha112 = ContentAlpha.INSTANCE;
                    pVarF = f(textStyleG112, contentAlpha112.c(composerS, 6), text);
                    t.g(pVarF);
                    pVarF2 = f(typographyC112.b(), contentAlpha112.d(composerS, 6), pVar9);
                    pVarF3 = f(typographyC112.f(), contentAlpha112.c(composerS, 6), pVar6);
                    pVarF4 = f(typographyC112.d(), contentAlpha112.c(composerS, 6), pVar15);
                    modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                    if (pVarF2 == null) {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    } else {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    }
                    pVar11 = pVar15;
                    pVar12 = pVar8;
                    pVar13 = pVar9;
                    z12 = z11;
                    pVar14 = pVar10;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar;
                    }
                    if (i13 != 0) {
                        pVar9 = null;
                    } else {
                        pVar9 = pVar5;
                    }
                    if (i15 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i17 != 0) {
                        pVar6 = null;
                    }
                    if (i19 == 0) {
                    }
                    Typography typographyC113 = MaterialTheme.INSTANCE.c(composerS, 6);
                    TextStyle textStyleG113 = typographyC113.g();
                    ContentAlpha contentAlpha113 = ContentAlpha.INSTANCE;
                    pVarF = f(textStyleG113, contentAlpha113.c(composerS, 6), text);
                    t.g(pVarF);
                    pVarF2 = f(typographyC113.b(), contentAlpha113.d(composerS, 6), pVar9);
                    pVarF3 = f(typographyC113.f(), contentAlpha113.c(composerS, 6), pVar6);
                    pVarF4 = f(typographyC113.d(), contentAlpha113.c(composerS, 6), pVar15);
                    modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                    if (pVarF2 == null) {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    } else {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    }
                    pVar11 = pVar15;
                    pVar12 = pVar8;
                    pVar13 = pVar9;
                    z12 = z11;
                    pVar14 = pVar10;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
            }
            i12 |= 3072;
            z10 = z6;
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((57344 & i10) == 0) {
                    pVar6 = pVar3;
                    if (composerS.k(pVar6)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                i19 = i11 & 32;
                if (i19 != 0) {
                    if ((458752 & i10) == 0) {
                        pVar7 = pVar4;
                        if (composerS.k(pVar7)) {
                            i20 = 131072;
                        } else {
                            i20 = 65536;
                        }
                        i12 |= i20;
                    }
                    if ((i11 & 64) != 0) {
                        i12 |= 1572864;
                    } else if ((i10 & 3670016) == 0) {
                        if (composerS.k(text)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i12 |= i21;
                    }
                    if ((i12 & 2995931) == 599186) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar;
                        }
                        if (i13 != 0) {
                            pVar9 = null;
                        } else {
                            pVar9 = pVar5;
                        }
                        if (i15 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i17 != 0) {
                            pVar6 = null;
                        }
                        if (i19 == 0) {
                        }
                        Typography typographyC114 = MaterialTheme.INSTANCE.c(composerS, 6);
                        TextStyle textStyleG114 = typographyC114.g();
                        ContentAlpha contentAlpha114 = ContentAlpha.INSTANCE;
                        pVarF = f(textStyleG114, contentAlpha114.c(composerS, 6), text);
                        t.g(pVarF);
                        pVarF2 = f(typographyC114.b(), contentAlpha114.d(composerS, 6), pVar9);
                        pVarF3 = f(typographyC114.f(), contentAlpha114.c(composerS, 6), pVar6);
                        pVarF4 = f(typographyC114.d(), contentAlpha114.c(composerS, 6), pVar15);
                        modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                        if (pVarF2 == null) {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        } else {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        }
                        pVar11 = pVar15;
                        pVar12 = pVar8;
                        pVar13 = pVar9;
                        z12 = z11;
                        pVar14 = pVar10;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar;
                        }
                        if (i13 != 0) {
                            pVar9 = null;
                        } else {
                            pVar9 = pVar5;
                        }
                        if (i15 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i17 != 0) {
                            pVar6 = null;
                        }
                        if (i19 == 0) {
                        }
                        Typography typographyC115 = MaterialTheme.INSTANCE.c(composerS, 6);
                        TextStyle textStyleG115 = typographyC115.g();
                        ContentAlpha contentAlpha115 = ContentAlpha.INSTANCE;
                        pVarF = f(textStyleG115, contentAlpha115.c(composerS, 6), text);
                        t.g(pVarF);
                        pVarF2 = f(typographyC115.b(), contentAlpha115.d(composerS, 6), pVar9);
                        pVarF3 = f(typographyC115.f(), contentAlpha115.c(composerS, 6), pVar6);
                        pVarF4 = f(typographyC115.d(), contentAlpha115.c(composerS, 6), pVar15);
                        modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                        if (pVarF2 == null) {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        } else {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        }
                        pVar11 = pVar15;
                        pVar12 = pVar8;
                        pVar13 = pVar9;
                        z12 = z11;
                        pVar14 = pVar10;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                pVar7 = pVar4;
                if ((i11 & 64) != 0) {
                    i12 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.k(text)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i12 |= i21;
                }
                if ((i12 & 2995931) == 599186) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar;
                    }
                    if (i13 != 0) {
                        pVar9 = null;
                    } else {
                        pVar9 = pVar5;
                    }
                    if (i15 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i17 != 0) {
                        pVar6 = null;
                    }
                    if (i19 == 0) {
                    }
                    Typography typographyC116 = MaterialTheme.INSTANCE.c(composerS, 6);
                    TextStyle textStyleG116 = typographyC116.g();
                    ContentAlpha contentAlpha116 = ContentAlpha.INSTANCE;
                    pVarF = f(textStyleG116, contentAlpha116.c(composerS, 6), text);
                    t.g(pVarF);
                    pVarF2 = f(typographyC116.b(), contentAlpha116.d(composerS, 6), pVar9);
                    pVarF3 = f(typographyC116.f(), contentAlpha116.c(composerS, 6), pVar6);
                    pVarF4 = f(typographyC116.d(), contentAlpha116.c(composerS, 6), pVar15);
                    modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                    if (pVarF2 == null) {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    } else {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    }
                    pVar11 = pVar15;
                    pVar12 = pVar8;
                    pVar13 = pVar9;
                    z12 = z11;
                    pVar14 = pVar10;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar;
                    }
                    if (i13 != 0) {
                        pVar9 = null;
                    } else {
                        pVar9 = pVar5;
                    }
                    if (i15 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i17 != 0) {
                        pVar6 = null;
                    }
                    if (i19 == 0) {
                    }
                    Typography typographyC117 = MaterialTheme.INSTANCE.c(composerS, 6);
                    TextStyle textStyleG117 = typographyC117.g();
                    ContentAlpha contentAlpha117 = ContentAlpha.INSTANCE;
                    pVarF = f(textStyleG117, contentAlpha117.c(composerS, 6), text);
                    t.g(pVarF);
                    pVarF2 = f(typographyC117.b(), contentAlpha117.d(composerS, 6), pVar9);
                    pVarF3 = f(typographyC117.f(), contentAlpha117.c(composerS, 6), pVar6);
                    pVarF4 = f(typographyC117.d(), contentAlpha117.c(composerS, 6), pVar15);
                    modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                    if (pVarF2 == null) {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    } else {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    }
                    pVar11 = pVar15;
                    pVar12 = pVar8;
                    pVar13 = pVar9;
                    z12 = z11;
                    pVar14 = pVar10;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            pVar6 = pVar3;
            i19 = i11 & 32;
            if (i19 != 0) {
                if ((458752 & i10) == 0) {
                    pVar7 = pVar4;
                    if (composerS.k(pVar7)) {
                        i20 = 131072;
                    } else {
                        i20 = 65536;
                    }
                    i12 |= i20;
                }
                if ((i11 & 64) != 0) {
                    i12 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.k(text)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i12 |= i21;
                }
                if ((i12 & 2995931) == 599186) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar;
                    }
                    if (i13 != 0) {
                        pVar9 = null;
                    } else {
                        pVar9 = pVar5;
                    }
                    if (i15 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i17 != 0) {
                        pVar6 = null;
                    }
                    if (i19 == 0) {
                    }
                    Typography typographyC118 = MaterialTheme.INSTANCE.c(composerS, 6);
                    TextStyle textStyleG118 = typographyC118.g();
                    ContentAlpha contentAlpha118 = ContentAlpha.INSTANCE;
                    pVarF = f(textStyleG118, contentAlpha118.c(composerS, 6), text);
                    t.g(pVarF);
                    pVarF2 = f(typographyC118.b(), contentAlpha118.d(composerS, 6), pVar9);
                    pVarF3 = f(typographyC118.f(), contentAlpha118.c(composerS, 6), pVar6);
                    pVarF4 = f(typographyC118.d(), contentAlpha118.c(composerS, 6), pVar15);
                    modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                    if (pVarF2 == null) {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    } else {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    }
                    pVar11 = pVar15;
                    pVar12 = pVar8;
                    pVar13 = pVar9;
                    z12 = z11;
                    pVar14 = pVar10;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar;
                    }
                    if (i13 != 0) {
                        pVar9 = null;
                    } else {
                        pVar9 = pVar5;
                    }
                    if (i15 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i17 != 0) {
                        pVar6 = null;
                    }
                    if (i19 == 0) {
                    }
                    Typography typographyC119 = MaterialTheme.INSTANCE.c(composerS, 6);
                    TextStyle textStyleG119 = typographyC119.g();
                    ContentAlpha contentAlpha119 = ContentAlpha.INSTANCE;
                    pVarF = f(textStyleG119, contentAlpha119.c(composerS, 6), text);
                    t.g(pVarF);
                    pVarF2 = f(typographyC119.b(), contentAlpha119.d(composerS, 6), pVar9);
                    pVarF3 = f(typographyC119.f(), contentAlpha119.c(composerS, 6), pVar6);
                    pVarF4 = f(typographyC119.d(), contentAlpha119.c(composerS, 6), pVar15);
                    modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                    if (pVarF2 == null) {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    } else {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    }
                    pVar11 = pVar15;
                    pVar12 = pVar8;
                    pVar13 = pVar9;
                    z12 = z11;
                    pVar14 = pVar10;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            pVar7 = pVar4;
            if ((i11 & 64) != 0) {
                i12 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.k(text)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i12 |= i21;
            }
            if ((i12 & 2995931) == 599186) {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i23 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar;
                }
                if (i13 != 0) {
                    pVar9 = null;
                } else {
                    pVar9 = pVar5;
                }
                if (i15 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i17 != 0) {
                    pVar6 = null;
                }
                if (i19 == 0) {
                }
                Typography typographyC1110 = MaterialTheme.INSTANCE.c(composerS, 6);
                TextStyle textStyleG1110 = typographyC1110.g();
                ContentAlpha contentAlpha1110 = ContentAlpha.INSTANCE;
                pVarF = f(textStyleG1110, contentAlpha1110.c(composerS, 6), text);
                t.g(pVarF);
                pVarF2 = f(typographyC1110.b(), contentAlpha1110.d(composerS, 6), pVar9);
                pVarF3 = f(typographyC1110.f(), contentAlpha1110.c(composerS, 6), pVar6);
                pVarF4 = f(typographyC1110.d(), contentAlpha1110.c(composerS, 6), pVar15);
                modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                if (pVarF2 == null) {
                    pVar10 = pVar6;
                    if (pVarF3 == null) {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    } else {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    }
                } else {
                    pVar10 = pVar6;
                    if (pVarF3 == null) {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    } else {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    }
                }
                pVar11 = pVar15;
                pVar12 = pVar8;
                pVar13 = pVar9;
                z12 = z11;
                pVar14 = pVar10;
            } else {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i23 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar;
                }
                if (i13 != 0) {
                    pVar9 = null;
                } else {
                    pVar9 = pVar5;
                }
                if (i15 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i17 != 0) {
                    pVar6 = null;
                }
                if (i19 == 0) {
                }
                Typography typographyC1111 = MaterialTheme.INSTANCE.c(composerS, 6);
                TextStyle textStyleG1111 = typographyC1111.g();
                ContentAlpha contentAlpha1111 = ContentAlpha.INSTANCE;
                pVarF = f(textStyleG1111, contentAlpha1111.c(composerS, 6), text);
                t.g(pVarF);
                pVarF2 = f(typographyC1111.b(), contentAlpha1111.d(composerS, 6), pVar9);
                pVarF3 = f(typographyC1111.f(), contentAlpha1111.c(composerS, 6), pVar6);
                pVarF4 = f(typographyC1111.d(), contentAlpha1111.c(composerS, 6), pVar15);
                modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                if (pVarF2 == null) {
                    pVar10 = pVar6;
                    if (pVarF3 == null) {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    } else {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    }
                } else {
                    pVar10 = pVar6;
                    if (pVarF3 == null) {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    } else {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    }
                }
                pVar11 = pVar15;
                pVar12 = pVar8;
                pVar13 = pVar9;
                z12 = z11;
                pVar14 = pVar10;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
        }
        i12 |= 48;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 896) == 0) {
                pVar5 = pVar2;
                if (composerS.k(pVar5)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i12 |= i14;
            }
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 7168) == 0) {
                    z10 = z6;
                    if (composerS.m(z10)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((57344 & i10) == 0) {
                        pVar6 = pVar3;
                        if (composerS.k(pVar6)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    i19 = i11 & 32;
                    if (i19 != 0) {
                        if ((458752 & i10) == 0) {
                            pVar7 = pVar4;
                            if (composerS.k(pVar7)) {
                                i20 = 131072;
                            } else {
                                i20 = 65536;
                            }
                            i12 |= i20;
                        }
                        if ((i11 & 64) != 0) {
                            i12 |= 1572864;
                        } else if ((i10 & 3670016) == 0) {
                            if (composerS.k(text)) {
                                i21 = 1048576;
                            } else {
                                i21 = 524288;
                            }
                            i12 |= i21;
                        }
                        if ((i12 & 2995931) == 599186) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar;
                            }
                            if (i13 != 0) {
                                pVar9 = null;
                            } else {
                                pVar9 = pVar5;
                            }
                            if (i15 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i17 != 0) {
                                pVar6 = null;
                            }
                            if (i19 == 0) {
                            }
                            Typography typographyC1112 = MaterialTheme.INSTANCE.c(composerS, 6);
                            TextStyle textStyleG1112 = typographyC1112.g();
                            ContentAlpha contentAlpha1112 = ContentAlpha.INSTANCE;
                            pVarF = f(textStyleG1112, contentAlpha1112.c(composerS, 6), text);
                            t.g(pVarF);
                            pVarF2 = f(typographyC1112.b(), contentAlpha1112.d(composerS, 6), pVar9);
                            pVarF3 = f(typographyC1112.f(), contentAlpha1112.c(composerS, 6), pVar6);
                            pVarF4 = f(typographyC1112.d(), contentAlpha1112.c(composerS, 6), pVar15);
                            modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                            if (pVarF2 == null) {
                                pVar10 = pVar6;
                                if (pVarF3 == null) {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                } else {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                }
                            } else {
                                pVar10 = pVar6;
                                if (pVarF3 == null) {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                } else {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                }
                            }
                            pVar11 = pVar15;
                            pVar12 = pVar8;
                            pVar13 = pVar9;
                            z12 = z11;
                            pVar14 = pVar10;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar;
                            }
                            if (i13 != 0) {
                                pVar9 = null;
                            } else {
                                pVar9 = pVar5;
                            }
                            if (i15 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i17 != 0) {
                                pVar6 = null;
                            }
                            if (i19 == 0) {
                            }
                            Typography typographyC1113 = MaterialTheme.INSTANCE.c(composerS, 6);
                            TextStyle textStyleG1113 = typographyC1113.g();
                            ContentAlpha contentAlpha1113 = ContentAlpha.INSTANCE;
                            pVarF = f(textStyleG1113, contentAlpha1113.c(composerS, 6), text);
                            t.g(pVarF);
                            pVarF2 = f(typographyC1113.b(), contentAlpha1113.d(composerS, 6), pVar9);
                            pVarF3 = f(typographyC1113.f(), contentAlpha1113.c(composerS, 6), pVar6);
                            pVarF4 = f(typographyC1113.d(), contentAlpha1113.c(composerS, 6), pVar15);
                            modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                            if (pVarF2 == null) {
                                pVar10 = pVar6;
                                if (pVarF3 == null) {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                } else {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                }
                            } else {
                                pVar10 = pVar6;
                                if (pVarF3 == null) {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                } else {
                                    composerS.G(-210280168);
                                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                    composerS.Q();
                                }
                            }
                            pVar11 = pVar15;
                            pVar12 = pVar8;
                            pVar13 = pVar9;
                            z12 = z11;
                            pVar14 = pVar10;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
                    }
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    pVar7 = pVar4;
                    if ((i11 & 64) != 0) {
                        i12 |= 1572864;
                    } else if ((i10 & 3670016) == 0) {
                        if (composerS.k(text)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i12 |= i21;
                    }
                    if ((i12 & 2995931) == 599186) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar;
                        }
                        if (i13 != 0) {
                            pVar9 = null;
                        } else {
                            pVar9 = pVar5;
                        }
                        if (i15 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i17 != 0) {
                            pVar6 = null;
                        }
                        if (i19 == 0) {
                        }
                        Typography typographyC1114 = MaterialTheme.INSTANCE.c(composerS, 6);
                        TextStyle textStyleG1114 = typographyC1114.g();
                        ContentAlpha contentAlpha1114 = ContentAlpha.INSTANCE;
                        pVarF = f(textStyleG1114, contentAlpha1114.c(composerS, 6), text);
                        t.g(pVarF);
                        pVarF2 = f(typographyC1114.b(), contentAlpha1114.d(composerS, 6), pVar9);
                        pVarF3 = f(typographyC1114.f(), contentAlpha1114.c(composerS, 6), pVar6);
                        pVarF4 = f(typographyC1114.d(), contentAlpha1114.c(composerS, 6), pVar15);
                        modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                        if (pVarF2 == null) {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        } else {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        }
                        pVar11 = pVar15;
                        pVar12 = pVar8;
                        pVar13 = pVar9;
                        z12 = z11;
                        pVar14 = pVar10;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar;
                        }
                        if (i13 != 0) {
                            pVar9 = null;
                        } else {
                            pVar9 = pVar5;
                        }
                        if (i15 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i17 != 0) {
                            pVar6 = null;
                        }
                        if (i19 == 0) {
                        }
                        Typography typographyC1115 = MaterialTheme.INSTANCE.c(composerS, 6);
                        TextStyle textStyleG1115 = typographyC1115.g();
                        ContentAlpha contentAlpha1115 = ContentAlpha.INSTANCE;
                        pVarF = f(textStyleG1115, contentAlpha1115.c(composerS, 6), text);
                        t.g(pVarF);
                        pVarF2 = f(typographyC1115.b(), contentAlpha1115.d(composerS, 6), pVar9);
                        pVarF3 = f(typographyC1115.f(), contentAlpha1115.c(composerS, 6), pVar6);
                        pVarF4 = f(typographyC1115.d(), contentAlpha1115.c(composerS, 6), pVar15);
                        modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                        if (pVarF2 == null) {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        } else {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        }
                        pVar11 = pVar15;
                        pVar12 = pVar8;
                        pVar13 = pVar9;
                        z12 = z11;
                        pVar14 = pVar10;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                pVar6 = pVar3;
                i19 = i11 & 32;
                if (i19 != 0) {
                    if ((458752 & i10) == 0) {
                        pVar7 = pVar4;
                        if (composerS.k(pVar7)) {
                            i20 = 131072;
                        } else {
                            i20 = 65536;
                        }
                        i12 |= i20;
                    }
                    if ((i11 & 64) != 0) {
                        i12 |= 1572864;
                    } else if ((i10 & 3670016) == 0) {
                        if (composerS.k(text)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i12 |= i21;
                    }
                    if ((i12 & 2995931) == 599186) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar;
                        }
                        if (i13 != 0) {
                            pVar9 = null;
                        } else {
                            pVar9 = pVar5;
                        }
                        if (i15 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i17 != 0) {
                            pVar6 = null;
                        }
                        if (i19 == 0) {
                        }
                        Typography typographyC1116 = MaterialTheme.INSTANCE.c(composerS, 6);
                        TextStyle textStyleG1116 = typographyC1116.g();
                        ContentAlpha contentAlpha1116 = ContentAlpha.INSTANCE;
                        pVarF = f(textStyleG1116, contentAlpha1116.c(composerS, 6), text);
                        t.g(pVarF);
                        pVarF2 = f(typographyC1116.b(), contentAlpha1116.d(composerS, 6), pVar9);
                        pVarF3 = f(typographyC1116.f(), contentAlpha1116.c(composerS, 6), pVar6);
                        pVarF4 = f(typographyC1116.d(), contentAlpha1116.c(composerS, 6), pVar15);
                        modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                        if (pVarF2 == null) {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        } else {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        }
                        pVar11 = pVar15;
                        pVar12 = pVar8;
                        pVar13 = pVar9;
                        z12 = z11;
                        pVar14 = pVar10;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar;
                        }
                        if (i13 != 0) {
                            pVar9 = null;
                        } else {
                            pVar9 = pVar5;
                        }
                        if (i15 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i17 != 0) {
                            pVar6 = null;
                        }
                        if (i19 == 0) {
                        }
                        Typography typographyC1117 = MaterialTheme.INSTANCE.c(composerS, 6);
                        TextStyle textStyleG1117 = typographyC1117.g();
                        ContentAlpha contentAlpha1117 = ContentAlpha.INSTANCE;
                        pVarF = f(textStyleG1117, contentAlpha1117.c(composerS, 6), text);
                        t.g(pVarF);
                        pVarF2 = f(typographyC1117.b(), contentAlpha1117.d(composerS, 6), pVar9);
                        pVarF3 = f(typographyC1117.f(), contentAlpha1117.c(composerS, 6), pVar6);
                        pVarF4 = f(typographyC1117.d(), contentAlpha1117.c(composerS, 6), pVar15);
                        modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                        if (pVarF2 == null) {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        } else {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        }
                        pVar11 = pVar15;
                        pVar12 = pVar8;
                        pVar13 = pVar9;
                        z12 = z11;
                        pVar14 = pVar10;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                pVar7 = pVar4;
                if ((i11 & 64) != 0) {
                    i12 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.k(text)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i12 |= i21;
                }
                if ((i12 & 2995931) == 599186) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar;
                    }
                    if (i13 != 0) {
                        pVar9 = null;
                    } else {
                        pVar9 = pVar5;
                    }
                    if (i15 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i17 != 0) {
                        pVar6 = null;
                    }
                    if (i19 == 0) {
                    }
                    Typography typographyC1118 = MaterialTheme.INSTANCE.c(composerS, 6);
                    TextStyle textStyleG1118 = typographyC1118.g();
                    ContentAlpha contentAlpha1118 = ContentAlpha.INSTANCE;
                    pVarF = f(textStyleG1118, contentAlpha1118.c(composerS, 6), text);
                    t.g(pVarF);
                    pVarF2 = f(typographyC1118.b(), contentAlpha1118.d(composerS, 6), pVar9);
                    pVarF3 = f(typographyC1118.f(), contentAlpha1118.c(composerS, 6), pVar6);
                    pVarF4 = f(typographyC1118.d(), contentAlpha1118.c(composerS, 6), pVar15);
                    modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                    if (pVarF2 == null) {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    } else {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    }
                    pVar11 = pVar15;
                    pVar12 = pVar8;
                    pVar13 = pVar9;
                    z12 = z11;
                    pVar14 = pVar10;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar;
                    }
                    if (i13 != 0) {
                        pVar9 = null;
                    } else {
                        pVar9 = pVar5;
                    }
                    if (i15 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i17 != 0) {
                        pVar6 = null;
                    }
                    if (i19 == 0) {
                    }
                    Typography typographyC1119 = MaterialTheme.INSTANCE.c(composerS, 6);
                    TextStyle textStyleG1119 = typographyC1119.g();
                    ContentAlpha contentAlpha1119 = ContentAlpha.INSTANCE;
                    pVarF = f(textStyleG1119, contentAlpha1119.c(composerS, 6), text);
                    t.g(pVarF);
                    pVarF2 = f(typographyC1119.b(), contentAlpha1119.d(composerS, 6), pVar9);
                    pVarF3 = f(typographyC1119.f(), contentAlpha1119.c(composerS, 6), pVar6);
                    pVarF4 = f(typographyC1119.d(), contentAlpha1119.c(composerS, 6), pVar15);
                    modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                    if (pVarF2 == null) {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    } else {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    }
                    pVar11 = pVar15;
                    pVar12 = pVar8;
                    pVar13 = pVar9;
                    z12 = z11;
                    pVar14 = pVar10;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
            }
            i12 |= 3072;
            z10 = z6;
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((57344 & i10) == 0) {
                    pVar6 = pVar3;
                    if (composerS.k(pVar6)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                i19 = i11 & 32;
                if (i19 != 0) {
                    if ((458752 & i10) == 0) {
                        pVar7 = pVar4;
                        if (composerS.k(pVar7)) {
                            i20 = 131072;
                        } else {
                            i20 = 65536;
                        }
                        i12 |= i20;
                    }
                    if ((i11 & 64) != 0) {
                        i12 |= 1572864;
                    } else if ((i10 & 3670016) == 0) {
                        if (composerS.k(text)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i12 |= i21;
                    }
                    if ((i12 & 2995931) == 599186) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar;
                        }
                        if (i13 != 0) {
                            pVar9 = null;
                        } else {
                            pVar9 = pVar5;
                        }
                        if (i15 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i17 != 0) {
                            pVar6 = null;
                        }
                        if (i19 == 0) {
                        }
                        Typography typographyC11110 = MaterialTheme.INSTANCE.c(composerS, 6);
                        TextStyle textStyleG11110 = typographyC11110.g();
                        ContentAlpha contentAlpha11110 = ContentAlpha.INSTANCE;
                        pVarF = f(textStyleG11110, contentAlpha11110.c(composerS, 6), text);
                        t.g(pVarF);
                        pVarF2 = f(typographyC11110.b(), contentAlpha11110.d(composerS, 6), pVar9);
                        pVarF3 = f(typographyC11110.f(), contentAlpha11110.c(composerS, 6), pVar6);
                        pVarF4 = f(typographyC11110.d(), contentAlpha11110.c(composerS, 6), pVar15);
                        modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                        if (pVarF2 == null) {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        } else {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        }
                        pVar11 = pVar15;
                        pVar12 = pVar8;
                        pVar13 = pVar9;
                        z12 = z11;
                        pVar14 = pVar10;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar;
                        }
                        if (i13 != 0) {
                            pVar9 = null;
                        } else {
                            pVar9 = pVar5;
                        }
                        if (i15 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i17 != 0) {
                            pVar6 = null;
                        }
                        if (i19 == 0) {
                        }
                        Typography typographyC11111 = MaterialTheme.INSTANCE.c(composerS, 6);
                        TextStyle textStyleG11111 = typographyC11111.g();
                        ContentAlpha contentAlpha11111 = ContentAlpha.INSTANCE;
                        pVarF = f(textStyleG11111, contentAlpha11111.c(composerS, 6), text);
                        t.g(pVarF);
                        pVarF2 = f(typographyC11111.b(), contentAlpha11111.d(composerS, 6), pVar9);
                        pVarF3 = f(typographyC11111.f(), contentAlpha11111.c(composerS, 6), pVar6);
                        pVarF4 = f(typographyC11111.d(), contentAlpha11111.c(composerS, 6), pVar15);
                        modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                        if (pVarF2 == null) {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        } else {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        }
                        pVar11 = pVar15;
                        pVar12 = pVar8;
                        pVar13 = pVar9;
                        z12 = z11;
                        pVar14 = pVar10;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                pVar7 = pVar4;
                if ((i11 & 64) != 0) {
                    i12 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.k(text)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i12 |= i21;
                }
                if ((i12 & 2995931) == 599186) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar;
                    }
                    if (i13 != 0) {
                        pVar9 = null;
                    } else {
                        pVar9 = pVar5;
                    }
                    if (i15 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i17 != 0) {
                        pVar6 = null;
                    }
                    if (i19 == 0) {
                    }
                    Typography typographyC11112 = MaterialTheme.INSTANCE.c(composerS, 6);
                    TextStyle textStyleG11112 = typographyC11112.g();
                    ContentAlpha contentAlpha11112 = ContentAlpha.INSTANCE;
                    pVarF = f(textStyleG11112, contentAlpha11112.c(composerS, 6), text);
                    t.g(pVarF);
                    pVarF2 = f(typographyC11112.b(), contentAlpha11112.d(composerS, 6), pVar9);
                    pVarF3 = f(typographyC11112.f(), contentAlpha11112.c(composerS, 6), pVar6);
                    pVarF4 = f(typographyC11112.d(), contentAlpha11112.c(composerS, 6), pVar15);
                    modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                    if (pVarF2 == null) {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    } else {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    }
                    pVar11 = pVar15;
                    pVar12 = pVar8;
                    pVar13 = pVar9;
                    z12 = z11;
                    pVar14 = pVar10;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar;
                    }
                    if (i13 != 0) {
                        pVar9 = null;
                    } else {
                        pVar9 = pVar5;
                    }
                    if (i15 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i17 != 0) {
                        pVar6 = null;
                    }
                    if (i19 == 0) {
                    }
                    Typography typographyC11113 = MaterialTheme.INSTANCE.c(composerS, 6);
                    TextStyle textStyleG11113 = typographyC11113.g();
                    ContentAlpha contentAlpha11113 = ContentAlpha.INSTANCE;
                    pVarF = f(textStyleG11113, contentAlpha11113.c(composerS, 6), text);
                    t.g(pVarF);
                    pVarF2 = f(typographyC11113.b(), contentAlpha11113.d(composerS, 6), pVar9);
                    pVarF3 = f(typographyC11113.f(), contentAlpha11113.c(composerS, 6), pVar6);
                    pVarF4 = f(typographyC11113.d(), contentAlpha11113.c(composerS, 6), pVar15);
                    modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                    if (pVarF2 == null) {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    } else {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    }
                    pVar11 = pVar15;
                    pVar12 = pVar8;
                    pVar13 = pVar9;
                    z12 = z11;
                    pVar14 = pVar10;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            pVar6 = pVar3;
            i19 = i11 & 32;
            if (i19 != 0) {
                if ((458752 & i10) == 0) {
                    pVar7 = pVar4;
                    if (composerS.k(pVar7)) {
                        i20 = 131072;
                    } else {
                        i20 = 65536;
                    }
                    i12 |= i20;
                }
                if ((i11 & 64) != 0) {
                    i12 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.k(text)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i12 |= i21;
                }
                if ((i12 & 2995931) == 599186) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar;
                    }
                    if (i13 != 0) {
                        pVar9 = null;
                    } else {
                        pVar9 = pVar5;
                    }
                    if (i15 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i17 != 0) {
                        pVar6 = null;
                    }
                    if (i19 == 0) {
                    }
                    Typography typographyC11114 = MaterialTheme.INSTANCE.c(composerS, 6);
                    TextStyle textStyleG11114 = typographyC11114.g();
                    ContentAlpha contentAlpha11114 = ContentAlpha.INSTANCE;
                    pVarF = f(textStyleG11114, contentAlpha11114.c(composerS, 6), text);
                    t.g(pVarF);
                    pVarF2 = f(typographyC11114.b(), contentAlpha11114.d(composerS, 6), pVar9);
                    pVarF3 = f(typographyC11114.f(), contentAlpha11114.c(composerS, 6), pVar6);
                    pVarF4 = f(typographyC11114.d(), contentAlpha11114.c(composerS, 6), pVar15);
                    modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                    if (pVarF2 == null) {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    } else {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    }
                    pVar11 = pVar15;
                    pVar12 = pVar8;
                    pVar13 = pVar9;
                    z12 = z11;
                    pVar14 = pVar10;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar;
                    }
                    if (i13 != 0) {
                        pVar9 = null;
                    } else {
                        pVar9 = pVar5;
                    }
                    if (i15 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i17 != 0) {
                        pVar6 = null;
                    }
                    if (i19 == 0) {
                    }
                    Typography typographyC11115 = MaterialTheme.INSTANCE.c(composerS, 6);
                    TextStyle textStyleG11115 = typographyC11115.g();
                    ContentAlpha contentAlpha11115 = ContentAlpha.INSTANCE;
                    pVarF = f(textStyleG11115, contentAlpha11115.c(composerS, 6), text);
                    t.g(pVarF);
                    pVarF2 = f(typographyC11115.b(), contentAlpha11115.d(composerS, 6), pVar9);
                    pVarF3 = f(typographyC11115.f(), contentAlpha11115.c(composerS, 6), pVar6);
                    pVarF4 = f(typographyC11115.d(), contentAlpha11115.c(composerS, 6), pVar15);
                    modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                    if (pVarF2 == null) {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    } else {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    }
                    pVar11 = pVar15;
                    pVar12 = pVar8;
                    pVar13 = pVar9;
                    z12 = z11;
                    pVar14 = pVar10;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            pVar7 = pVar4;
            if ((i11 & 64) != 0) {
                i12 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.k(text)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i12 |= i21;
            }
            if ((i12 & 2995931) == 599186) {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i23 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar;
                }
                if (i13 != 0) {
                    pVar9 = null;
                } else {
                    pVar9 = pVar5;
                }
                if (i15 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i17 != 0) {
                    pVar6 = null;
                }
                if (i19 == 0) {
                }
                Typography typographyC11116 = MaterialTheme.INSTANCE.c(composerS, 6);
                TextStyle textStyleG11116 = typographyC11116.g();
                ContentAlpha contentAlpha11116 = ContentAlpha.INSTANCE;
                pVarF = f(textStyleG11116, contentAlpha11116.c(composerS, 6), text);
                t.g(pVarF);
                pVarF2 = f(typographyC11116.b(), contentAlpha11116.d(composerS, 6), pVar9);
                pVarF3 = f(typographyC11116.f(), contentAlpha11116.c(composerS, 6), pVar6);
                pVarF4 = f(typographyC11116.d(), contentAlpha11116.c(composerS, 6), pVar15);
                modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                if (pVarF2 == null) {
                    pVar10 = pVar6;
                    if (pVarF3 == null) {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    } else {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    }
                } else {
                    pVar10 = pVar6;
                    if (pVarF3 == null) {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    } else {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    }
                }
                pVar11 = pVar15;
                pVar12 = pVar8;
                pVar13 = pVar9;
                z12 = z11;
                pVar14 = pVar10;
            } else {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i23 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar;
                }
                if (i13 != 0) {
                    pVar9 = null;
                } else {
                    pVar9 = pVar5;
                }
                if (i15 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i17 != 0) {
                    pVar6 = null;
                }
                if (i19 == 0) {
                }
                Typography typographyC11117 = MaterialTheme.INSTANCE.c(composerS, 6);
                TextStyle textStyleG11117 = typographyC11117.g();
                ContentAlpha contentAlpha11117 = ContentAlpha.INSTANCE;
                pVarF = f(textStyleG11117, contentAlpha11117.c(composerS, 6), text);
                t.g(pVarF);
                pVarF2 = f(typographyC11117.b(), contentAlpha11117.d(composerS, 6), pVar9);
                pVarF3 = f(typographyC11117.f(), contentAlpha11117.c(composerS, 6), pVar6);
                pVarF4 = f(typographyC11117.d(), contentAlpha11117.c(composerS, 6), pVar15);
                modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                if (pVarF2 == null) {
                    pVar10 = pVar6;
                    if (pVarF3 == null) {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    } else {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    }
                } else {
                    pVar10 = pVar6;
                    if (pVarF3 == null) {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    } else {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    }
                }
                pVar11 = pVar15;
                pVar12 = pVar8;
                pVar13 = pVar9;
                z12 = z11;
                pVar14 = pVar10;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
        }
        i12 |= 384;
        pVar5 = pVar2;
        i15 = i11 & 8;
        if (i15 != 0) {
            if ((i10 & 7168) == 0) {
                z10 = z6;
                if (composerS.m(z10)) {
                    i16 = 2048;
                } else {
                    i16 = 1024;
                }
                i12 |= i16;
            }
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((57344 & i10) == 0) {
                    pVar6 = pVar3;
                    if (composerS.k(pVar6)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                i19 = i11 & 32;
                if (i19 != 0) {
                    if ((458752 & i10) == 0) {
                        pVar7 = pVar4;
                        if (composerS.k(pVar7)) {
                            i20 = 131072;
                        } else {
                            i20 = 65536;
                        }
                        i12 |= i20;
                    }
                    if ((i11 & 64) != 0) {
                        i12 |= 1572864;
                    } else if ((i10 & 3670016) == 0) {
                        if (composerS.k(text)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i12 |= i21;
                    }
                    if ((i12 & 2995931) == 599186) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar;
                        }
                        if (i13 != 0) {
                            pVar9 = null;
                        } else {
                            pVar9 = pVar5;
                        }
                        if (i15 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i17 != 0) {
                            pVar6 = null;
                        }
                        if (i19 == 0) {
                        }
                        Typography typographyC11118 = MaterialTheme.INSTANCE.c(composerS, 6);
                        TextStyle textStyleG11118 = typographyC11118.g();
                        ContentAlpha contentAlpha11118 = ContentAlpha.INSTANCE;
                        pVarF = f(textStyleG11118, contentAlpha11118.c(composerS, 6), text);
                        t.g(pVarF);
                        pVarF2 = f(typographyC11118.b(), contentAlpha11118.d(composerS, 6), pVar9);
                        pVarF3 = f(typographyC11118.f(), contentAlpha11118.c(composerS, 6), pVar6);
                        pVarF4 = f(typographyC11118.d(), contentAlpha11118.c(composerS, 6), pVar15);
                        modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                        if (pVarF2 == null) {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        } else {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        }
                        pVar11 = pVar15;
                        pVar12 = pVar8;
                        pVar13 = pVar9;
                        z12 = z11;
                        pVar14 = pVar10;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar;
                        }
                        if (i13 != 0) {
                            pVar9 = null;
                        } else {
                            pVar9 = pVar5;
                        }
                        if (i15 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i17 != 0) {
                            pVar6 = null;
                        }
                        if (i19 == 0) {
                        }
                        Typography typographyC11119 = MaterialTheme.INSTANCE.c(composerS, 6);
                        TextStyle textStyleG11119 = typographyC11119.g();
                        ContentAlpha contentAlpha11119 = ContentAlpha.INSTANCE;
                        pVarF = f(textStyleG11119, contentAlpha11119.c(composerS, 6), text);
                        t.g(pVarF);
                        pVarF2 = f(typographyC11119.b(), contentAlpha11119.d(composerS, 6), pVar9);
                        pVarF3 = f(typographyC11119.f(), contentAlpha11119.c(composerS, 6), pVar6);
                        pVarF4 = f(typographyC11119.d(), contentAlpha11119.c(composerS, 6), pVar15);
                        modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                        if (pVarF2 == null) {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        } else {
                            pVar10 = pVar6;
                            if (pVarF3 == null) {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            } else {
                                composerS.G(-210280168);
                                ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                                composerS.Q();
                            }
                        }
                        pVar11 = pVar15;
                        pVar12 = pVar8;
                        pVar13 = pVar9;
                        z12 = z11;
                        pVar14 = pVar10;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                pVar7 = pVar4;
                if ((i11 & 64) != 0) {
                    i12 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.k(text)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i12 |= i21;
                }
                if ((i12 & 2995931) == 599186) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar;
                    }
                    if (i13 != 0) {
                        pVar9 = null;
                    } else {
                        pVar9 = pVar5;
                    }
                    if (i15 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i17 != 0) {
                        pVar6 = null;
                    }
                    if (i19 == 0) {
                    }
                    Typography typographyC111110 = MaterialTheme.INSTANCE.c(composerS, 6);
                    TextStyle textStyleG111110 = typographyC111110.g();
                    ContentAlpha contentAlpha111110 = ContentAlpha.INSTANCE;
                    pVarF = f(textStyleG111110, contentAlpha111110.c(composerS, 6), text);
                    t.g(pVarF);
                    pVarF2 = f(typographyC111110.b(), contentAlpha111110.d(composerS, 6), pVar9);
                    pVarF3 = f(typographyC111110.f(), contentAlpha111110.c(composerS, 6), pVar6);
                    pVarF4 = f(typographyC111110.d(), contentAlpha111110.c(composerS, 6), pVar15);
                    modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                    if (pVarF2 == null) {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    } else {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    }
                    pVar11 = pVar15;
                    pVar12 = pVar8;
                    pVar13 = pVar9;
                    z12 = z11;
                    pVar14 = pVar10;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar;
                    }
                    if (i13 != 0) {
                        pVar9 = null;
                    } else {
                        pVar9 = pVar5;
                    }
                    if (i15 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i17 != 0) {
                        pVar6 = null;
                    }
                    if (i19 == 0) {
                    }
                    Typography typographyC111111 = MaterialTheme.INSTANCE.c(composerS, 6);
                    TextStyle textStyleG111111 = typographyC111111.g();
                    ContentAlpha contentAlpha111111 = ContentAlpha.INSTANCE;
                    pVarF = f(textStyleG111111, contentAlpha111111.c(composerS, 6), text);
                    t.g(pVarF);
                    pVarF2 = f(typographyC111111.b(), contentAlpha111111.d(composerS, 6), pVar9);
                    pVarF3 = f(typographyC111111.f(), contentAlpha111111.c(composerS, 6), pVar6);
                    pVarF4 = f(typographyC111111.d(), contentAlpha111111.c(composerS, 6), pVar15);
                    modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                    if (pVarF2 == null) {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    } else {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    }
                    pVar11 = pVar15;
                    pVar12 = pVar8;
                    pVar13 = pVar9;
                    z12 = z11;
                    pVar14 = pVar10;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            pVar6 = pVar3;
            i19 = i11 & 32;
            if (i19 != 0) {
                if ((458752 & i10) == 0) {
                    pVar7 = pVar4;
                    if (composerS.k(pVar7)) {
                        i20 = 131072;
                    } else {
                        i20 = 65536;
                    }
                    i12 |= i20;
                }
                if ((i11 & 64) != 0) {
                    i12 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.k(text)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i12 |= i21;
                }
                if ((i12 & 2995931) == 599186) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar;
                    }
                    if (i13 != 0) {
                        pVar9 = null;
                    } else {
                        pVar9 = pVar5;
                    }
                    if (i15 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i17 != 0) {
                        pVar6 = null;
                    }
                    if (i19 == 0) {
                    }
                    Typography typographyC111112 = MaterialTheme.INSTANCE.c(composerS, 6);
                    TextStyle textStyleG111112 = typographyC111112.g();
                    ContentAlpha contentAlpha111112 = ContentAlpha.INSTANCE;
                    pVarF = f(textStyleG111112, contentAlpha111112.c(composerS, 6), text);
                    t.g(pVarF);
                    pVarF2 = f(typographyC111112.b(), contentAlpha111112.d(composerS, 6), pVar9);
                    pVarF3 = f(typographyC111112.f(), contentAlpha111112.c(composerS, 6), pVar6);
                    pVarF4 = f(typographyC111112.d(), contentAlpha111112.c(composerS, 6), pVar15);
                    modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                    if (pVarF2 == null) {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    } else {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    }
                    pVar11 = pVar15;
                    pVar12 = pVar8;
                    pVar13 = pVar9;
                    z12 = z11;
                    pVar14 = pVar10;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar;
                    }
                    if (i13 != 0) {
                        pVar9 = null;
                    } else {
                        pVar9 = pVar5;
                    }
                    if (i15 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i17 != 0) {
                        pVar6 = null;
                    }
                    if (i19 == 0) {
                    }
                    Typography typographyC111113 = MaterialTheme.INSTANCE.c(composerS, 6);
                    TextStyle textStyleG111113 = typographyC111113.g();
                    ContentAlpha contentAlpha111113 = ContentAlpha.INSTANCE;
                    pVarF = f(textStyleG111113, contentAlpha111113.c(composerS, 6), text);
                    t.g(pVarF);
                    pVarF2 = f(typographyC111113.b(), contentAlpha111113.d(composerS, 6), pVar9);
                    pVarF3 = f(typographyC111113.f(), contentAlpha111113.c(composerS, 6), pVar6);
                    pVarF4 = f(typographyC111113.d(), contentAlpha111113.c(composerS, 6), pVar15);
                    modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                    if (pVarF2 == null) {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    } else {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    }
                    pVar11 = pVar15;
                    pVar12 = pVar8;
                    pVar13 = pVar9;
                    z12 = z11;
                    pVar14 = pVar10;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            pVar7 = pVar4;
            if ((i11 & 64) != 0) {
                i12 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.k(text)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i12 |= i21;
            }
            if ((i12 & 2995931) == 599186) {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i23 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar;
                }
                if (i13 != 0) {
                    pVar9 = null;
                } else {
                    pVar9 = pVar5;
                }
                if (i15 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i17 != 0) {
                    pVar6 = null;
                }
                if (i19 == 0) {
                }
                Typography typographyC111114 = MaterialTheme.INSTANCE.c(composerS, 6);
                TextStyle textStyleG111114 = typographyC111114.g();
                ContentAlpha contentAlpha111114 = ContentAlpha.INSTANCE;
                pVarF = f(textStyleG111114, contentAlpha111114.c(composerS, 6), text);
                t.g(pVarF);
                pVarF2 = f(typographyC111114.b(), contentAlpha111114.d(composerS, 6), pVar9);
                pVarF3 = f(typographyC111114.f(), contentAlpha111114.c(composerS, 6), pVar6);
                pVarF4 = f(typographyC111114.d(), contentAlpha111114.c(composerS, 6), pVar15);
                modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                if (pVarF2 == null) {
                    pVar10 = pVar6;
                    if (pVarF3 == null) {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    } else {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    }
                } else {
                    pVar10 = pVar6;
                    if (pVarF3 == null) {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    } else {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    }
                }
                pVar11 = pVar15;
                pVar12 = pVar8;
                pVar13 = pVar9;
                z12 = z11;
                pVar14 = pVar10;
            } else {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i23 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar;
                }
                if (i13 != 0) {
                    pVar9 = null;
                } else {
                    pVar9 = pVar5;
                }
                if (i15 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i17 != 0) {
                    pVar6 = null;
                }
                if (i19 == 0) {
                }
                Typography typographyC111115 = MaterialTheme.INSTANCE.c(composerS, 6);
                TextStyle textStyleG111115 = typographyC111115.g();
                ContentAlpha contentAlpha111115 = ContentAlpha.INSTANCE;
                pVarF = f(textStyleG111115, contentAlpha111115.c(composerS, 6), text);
                t.g(pVarF);
                pVarF2 = f(typographyC111115.b(), contentAlpha111115.d(composerS, 6), pVar9);
                pVarF3 = f(typographyC111115.f(), contentAlpha111115.c(composerS, 6), pVar6);
                pVarF4 = f(typographyC111115.d(), contentAlpha111115.c(composerS, 6), pVar15);
                modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                if (pVarF2 == null) {
                    pVar10 = pVar6;
                    if (pVarF3 == null) {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    } else {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    }
                } else {
                    pVar10 = pVar6;
                    if (pVarF3 == null) {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    } else {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    }
                }
                pVar11 = pVar15;
                pVar12 = pVar8;
                pVar13 = pVar9;
                z12 = z11;
                pVar14 = pVar10;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
        }
        i12 |= 3072;
        z10 = z6;
        i17 = i11 & 16;
        if (i17 != 0) {
            if ((57344 & i10) == 0) {
                pVar6 = pVar3;
                if (composerS.k(pVar6)) {
                    i18 = 16384;
                } else {
                    i18 = 8192;
                }
                i12 |= i18;
            }
            i19 = i11 & 32;
            if (i19 != 0) {
                if ((458752 & i10) == 0) {
                    pVar7 = pVar4;
                    if (composerS.k(pVar7)) {
                        i20 = 131072;
                    } else {
                        i20 = 65536;
                    }
                    i12 |= i20;
                }
                if ((i11 & 64) != 0) {
                    i12 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.k(text)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i12 |= i21;
                }
                if ((i12 & 2995931) == 599186) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar;
                    }
                    if (i13 != 0) {
                        pVar9 = null;
                    } else {
                        pVar9 = pVar5;
                    }
                    if (i15 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i17 != 0) {
                        pVar6 = null;
                    }
                    if (i19 == 0) {
                    }
                    Typography typographyC111116 = MaterialTheme.INSTANCE.c(composerS, 6);
                    TextStyle textStyleG111116 = typographyC111116.g();
                    ContentAlpha contentAlpha111116 = ContentAlpha.INSTANCE;
                    pVarF = f(textStyleG111116, contentAlpha111116.c(composerS, 6), text);
                    t.g(pVarF);
                    pVarF2 = f(typographyC111116.b(), contentAlpha111116.d(composerS, 6), pVar9);
                    pVarF3 = f(typographyC111116.f(), contentAlpha111116.c(composerS, 6), pVar6);
                    pVarF4 = f(typographyC111116.d(), contentAlpha111116.c(composerS, 6), pVar15);
                    modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                    if (pVarF2 == null) {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    } else {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    }
                    pVar11 = pVar15;
                    pVar12 = pVar8;
                    pVar13 = pVar9;
                    z12 = z11;
                    pVar14 = pVar10;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar;
                    }
                    if (i13 != 0) {
                        pVar9 = null;
                    } else {
                        pVar9 = pVar5;
                    }
                    if (i15 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i17 != 0) {
                        pVar6 = null;
                    }
                    if (i19 == 0) {
                    }
                    Typography typographyC111117 = MaterialTheme.INSTANCE.c(composerS, 6);
                    TextStyle textStyleG111117 = typographyC111117.g();
                    ContentAlpha contentAlpha111117 = ContentAlpha.INSTANCE;
                    pVarF = f(textStyleG111117, contentAlpha111117.c(composerS, 6), text);
                    t.g(pVarF);
                    pVarF2 = f(typographyC111117.b(), contentAlpha111117.d(composerS, 6), pVar9);
                    pVarF3 = f(typographyC111117.f(), contentAlpha111117.c(composerS, 6), pVar6);
                    pVarF4 = f(typographyC111117.d(), contentAlpha111117.c(composerS, 6), pVar15);
                    modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                    if (pVarF2 == null) {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    } else {
                        pVar10 = pVar6;
                        if (pVarF3 == null) {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        } else {
                            composerS.G(-210280168);
                            ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                            composerS.Q();
                        }
                    }
                    pVar11 = pVar15;
                    pVar12 = pVar8;
                    pVar13 = pVar9;
                    z12 = z11;
                    pVar14 = pVar10;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            pVar7 = pVar4;
            if ((i11 & 64) != 0) {
                i12 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.k(text)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i12 |= i21;
            }
            if ((i12 & 2995931) == 599186) {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i23 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar;
                }
                if (i13 != 0) {
                    pVar9 = null;
                } else {
                    pVar9 = pVar5;
                }
                if (i15 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i17 != 0) {
                    pVar6 = null;
                }
                if (i19 == 0) {
                }
                Typography typographyC111118 = MaterialTheme.INSTANCE.c(composerS, 6);
                TextStyle textStyleG111118 = typographyC111118.g();
                ContentAlpha contentAlpha111118 = ContentAlpha.INSTANCE;
                pVarF = f(textStyleG111118, contentAlpha111118.c(composerS, 6), text);
                t.g(pVarF);
                pVarF2 = f(typographyC111118.b(), contentAlpha111118.d(composerS, 6), pVar9);
                pVarF3 = f(typographyC111118.f(), contentAlpha111118.c(composerS, 6), pVar6);
                pVarF4 = f(typographyC111118.d(), contentAlpha111118.c(composerS, 6), pVar15);
                modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                if (pVarF2 == null) {
                    pVar10 = pVar6;
                    if (pVarF3 == null) {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    } else {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    }
                } else {
                    pVar10 = pVar6;
                    if (pVarF3 == null) {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    } else {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    }
                }
                pVar11 = pVar15;
                pVar12 = pVar8;
                pVar13 = pVar9;
                z12 = z11;
                pVar14 = pVar10;
            } else {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i23 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar;
                }
                if (i13 != 0) {
                    pVar9 = null;
                } else {
                    pVar9 = pVar5;
                }
                if (i15 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i17 != 0) {
                    pVar6 = null;
                }
                if (i19 == 0) {
                }
                Typography typographyC111119 = MaterialTheme.INSTANCE.c(composerS, 6);
                TextStyle textStyleG111119 = typographyC111119.g();
                ContentAlpha contentAlpha111119 = ContentAlpha.INSTANCE;
                pVarF = f(textStyleG111119, contentAlpha111119.c(composerS, 6), text);
                t.g(pVarF);
                pVarF2 = f(typographyC111119.b(), contentAlpha111119.d(composerS, 6), pVar9);
                pVarF3 = f(typographyC111119.f(), contentAlpha111119.c(composerS, 6), pVar6);
                pVarF4 = f(typographyC111119.d(), contentAlpha111119.c(composerS, 6), pVar15);
                modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                if (pVarF2 == null) {
                    pVar10 = pVar6;
                    if (pVarF3 == null) {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    } else {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    }
                } else {
                    pVar10 = pVar6;
                    if (pVarF3 == null) {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    } else {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    }
                }
                pVar11 = pVar15;
                pVar12 = pVar8;
                pVar13 = pVar9;
                z12 = z11;
                pVar14 = pVar10;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        pVar6 = pVar3;
        i19 = i11 & 32;
        if (i19 != 0) {
            if ((458752 & i10) == 0) {
                pVar7 = pVar4;
                if (composerS.k(pVar7)) {
                    i20 = 131072;
                } else {
                    i20 = 65536;
                }
                i12 |= i20;
            }
            if ((i11 & 64) != 0) {
                i12 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.k(text)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i12 |= i21;
            }
            if ((i12 & 2995931) == 599186) {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i23 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar;
                }
                if (i13 != 0) {
                    pVar9 = null;
                } else {
                    pVar9 = pVar5;
                }
                if (i15 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i17 != 0) {
                    pVar6 = null;
                }
                if (i19 == 0) {
                }
                Typography typographyC1111110 = MaterialTheme.INSTANCE.c(composerS, 6);
                TextStyle textStyleG1111110 = typographyC1111110.g();
                ContentAlpha contentAlpha1111110 = ContentAlpha.INSTANCE;
                pVarF = f(textStyleG1111110, contentAlpha1111110.c(composerS, 6), text);
                t.g(pVarF);
                pVarF2 = f(typographyC1111110.b(), contentAlpha1111110.d(composerS, 6), pVar9);
                pVarF3 = f(typographyC1111110.f(), contentAlpha1111110.c(composerS, 6), pVar6);
                pVarF4 = f(typographyC1111110.d(), contentAlpha1111110.c(composerS, 6), pVar15);
                modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                if (pVarF2 == null) {
                    pVar10 = pVar6;
                    if (pVarF3 == null) {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    } else {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    }
                } else {
                    pVar10 = pVar6;
                    if (pVarF3 == null) {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    } else {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    }
                }
                pVar11 = pVar15;
                pVar12 = pVar8;
                pVar13 = pVar9;
                z12 = z11;
                pVar14 = pVar10;
            } else {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i23 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar;
                }
                if (i13 != 0) {
                    pVar9 = null;
                } else {
                    pVar9 = pVar5;
                }
                if (i15 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i17 != 0) {
                    pVar6 = null;
                }
                if (i19 == 0) {
                }
                Typography typographyC1111111 = MaterialTheme.INSTANCE.c(composerS, 6);
                TextStyle textStyleG1111111 = typographyC1111111.g();
                ContentAlpha contentAlpha1111111 = ContentAlpha.INSTANCE;
                pVarF = f(textStyleG1111111, contentAlpha1111111.c(composerS, 6), text);
                t.g(pVarF);
                pVarF2 = f(typographyC1111111.b(), contentAlpha1111111.d(composerS, 6), pVar9);
                pVarF3 = f(typographyC1111111.f(), contentAlpha1111111.c(composerS, 6), pVar6);
                pVarF4 = f(typographyC1111111.d(), contentAlpha1111111.c(composerS, 6), pVar15);
                modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
                if (pVarF2 == null) {
                    pVar10 = pVar6;
                    if (pVarF3 == null) {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    } else {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    }
                } else {
                    pVar10 = pVar6;
                    if (pVarF3 == null) {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    } else {
                        composerS.G(-210280168);
                        ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                        composerS.Q();
                    }
                }
                pVar11 = pVar15;
                pVar12 = pVar8;
                pVar13 = pVar9;
                z12 = z11;
                pVar14 = pVar10;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
        }
        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        pVar7 = pVar4;
        if ((i11 & 64) != 0) {
            i12 |= 1572864;
        } else if ((i10 & 3670016) == 0) {
            if (composerS.k(text)) {
                i21 = 1048576;
            } else {
                i21 = 524288;
            }
            i12 |= i21;
        }
        if ((i12 & 2995931) == 599186) {
            if (i22 != 0) {
                modifier2 = Modifier.Companion;
            } else {
                modifier2 = modifier;
            }
            if (i23 != 0) {
                pVar8 = null;
            } else {
                pVar8 = pVar;
            }
            if (i13 != 0) {
                pVar9 = null;
            } else {
                pVar9 = pVar5;
            }
            if (i15 != 0) {
                z11 = true;
            } else {
                z11 = z10;
            }
            if (i17 != 0) {
                pVar6 = null;
            }
            if (i19 == 0) {
            }
            Typography typographyC1111112 = MaterialTheme.INSTANCE.c(composerS, 6);
            TextStyle textStyleG1111112 = typographyC1111112.g();
            ContentAlpha contentAlpha1111112 = ContentAlpha.INSTANCE;
            pVarF = f(textStyleG1111112, contentAlpha1111112.c(composerS, 6), text);
            t.g(pVarF);
            pVarF2 = f(typographyC1111112.b(), contentAlpha1111112.d(composerS, 6), pVar9);
            pVarF3 = f(typographyC1111112.f(), contentAlpha1111112.c(composerS, 6), pVar6);
            pVarF4 = f(typographyC1111112.d(), contentAlpha1111112.c(composerS, 6), pVar15);
            modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
            if (pVarF2 == null) {
                pVar10 = pVar6;
                if (pVarF3 == null) {
                    composerS.G(-210280168);
                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                    composerS.Q();
                } else {
                    composerS.G(-210280168);
                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                    composerS.Q();
                }
            } else {
                pVar10 = pVar6;
                if (pVarF3 == null) {
                    composerS.G(-210280168);
                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                    composerS.Q();
                } else {
                    composerS.G(-210280168);
                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                    composerS.Q();
                }
            }
            pVar11 = pVar15;
            pVar12 = pVar8;
            pVar13 = pVar9;
            z12 = z11;
            pVar14 = pVar10;
        } else {
            if (i22 != 0) {
                modifier2 = Modifier.Companion;
            } else {
                modifier2 = modifier;
            }
            if (i23 != 0) {
                pVar8 = null;
            } else {
                pVar8 = pVar;
            }
            if (i13 != 0) {
                pVar9 = null;
            } else {
                pVar9 = pVar5;
            }
            if (i15 != 0) {
                z11 = true;
            } else {
                z11 = z10;
            }
            if (i17 != 0) {
                pVar6 = null;
            }
            if (i19 == 0) {
            }
            Typography typographyC1111113 = MaterialTheme.INSTANCE.c(composerS, 6);
            TextStyle textStyleG1111113 = typographyC1111113.g();
            ContentAlpha contentAlpha1111113 = ContentAlpha.INSTANCE;
            pVarF = f(textStyleG1111113, contentAlpha1111113.c(composerS, 6), text);
            t.g(pVarF);
            pVarF2 = f(typographyC1111113.b(), contentAlpha1111113.d(composerS, 6), pVar9);
            pVarF3 = f(typographyC1111113.f(), contentAlpha1111113.c(composerS, 6), pVar6);
            pVarF4 = f(typographyC1111113.d(), contentAlpha1111113.c(composerS, 6), pVar15);
            modifierB = SemanticsModifierKt.b(modifier2, true, ListItemKt$ListItem$semanticsModifier$1.INSTANCE);
            if (pVarF2 == null) {
                pVar10 = pVar6;
                if (pVarF3 == null) {
                    composerS.G(-210280168);
                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                    composerS.Q();
                } else {
                    composerS.G(-210280168);
                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                    composerS.Q();
                }
            } else {
                pVar10 = pVar6;
                if (pVarF3 == null) {
                    composerS.G(-210280168);
                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                    composerS.Q();
                } else {
                    composerS.G(-210280168);
                    ThreeLine.INSTANCE.a(modifierB, pVar8, pVarF, pVarF2, pVarF3, pVarF4, composerS, (i12 & 112) | 1572864, 0);
                    composerS.Q();
                }
            }
            pVar11 = pVar15;
            pVar12 = pVar8;
            pVar13 = pVar9;
            z12 = z11;
            pVar14 = pVar10;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new ListItemKt$ListItem$1(modifier2, pVar12, pVar13, z12, pVar14, pVar11, text, i10, i11));
    }

    private static final p<Composer, Integer, l0> f(TextStyle textStyle, float f, p<? super Composer, ? super Integer, l0> pVar) {
        if (pVar == null) {
            return null;
        }
        return ComposableLambdaKt.c(-830176860, true, new ListItemKt$applyTextStyle$1(f, textStyle, pVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget
    public static final void a(final List<Dp> list, Modifier modifier, p<? super Composer, ? super Integer, l0> pVar, Composer composer, int i10, int i11) {
        Composer composerS = composer.s(1631148337);
        if ((i11 & 2) != 0) {
            modifier = Modifier.Companion;
        }
        Modifier modifier2 = modifier;
        MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.material.ListItemKt$BaselinesOffsetColumn$1
            @Override // androidx.compose.ui.layout.MeasurePolicy
            public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list2, int i12) {
                return c.c(this, intrinsicMeasureScope, list2, i12);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list2, int i12) {
                return c.d(this, intrinsicMeasureScope, list2, i12);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list2, int i12) {
                return c.a(this, intrinsicMeasureScope, list2, i12);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list2, int i12) {
                return c.b(this, intrinsicMeasureScope, list2, i12);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            @NotNull
            public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j6) {
                int iB0;
                t.j(Layout, "$this$Layout");
                t.j(measurables, "measurables");
                long jE = Constraints.e(j6, 0, 0, 0, Integer.MAX_VALUE, 3, null);
                List<? extends Measurable> list2 = measurables;
                ArrayList arrayList = new ArrayList(w.x(list2, 10));
                Iterator<T> it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(((Measurable) it.next()).b0(jE));
                }
                Iterator it2 = arrayList.iterator();
                int iMax = 0;
                while (it2.hasNext()) {
                    iMax = Math.max(iMax, ((Placeable) it2.next()).Q0());
                }
                int size = arrayList.size();
                Integer[] numArr = new Integer[size];
                for (int i12 = 0; i12 < size; i12++) {
                    numArr[i12] = 0;
                }
                List<Dp> list3 = list;
                int size2 = arrayList.size();
                int iB1 = 0;
                for (int i13 = 0; i13 < size2; i13++) {
                    Placeable placeable = (Placeable) arrayList.get(i13);
                    if (i13 > 0) {
                        int i14 = i13 - 1;
                        iB0 = ((Placeable) arrayList.get(i14)).B0() - ((Placeable) arrayList.get(i14)).c0(AlignmentLineKt.b());
                    } else {
                        iB0 = 0;
                    }
                    int iMax2 = Math.max(0, (Layout.j0(list3.get(i13).l()) - placeable.c0(AlignmentLineKt.a())) - iB0);
                    numArr[i13] = Integer.valueOf(iMax2 + iB1);
                    iB1 += iMax2 + placeable.B0();
                }
                return MeasureScope.CC.b(Layout, iMax, iB1, null, new ListItemKt$BaselinesOffsetColumn$1$measure$2(arrayList, numArr), 4, null);
            }
        };
        composerS.G(-1323940314);
        Density density = (Density) composerS.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        a<ComposeUiNode> aVarA = companion.a();
        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifier2);
        int i12 = (((((i10 >> 6) & 14) | (i10 & 112)) << 9) & 7168) | 6;
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
        qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i12 >> 3) & 112));
        composerS.G(2058660585);
        pVar.invoke(composerS, Integer.valueOf((i12 >> 9) & 14));
        composerS.Q();
        composerS.d();
        composerS.Q();
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new ListItemKt$BaselinesOffsetColumn$2(list, modifier2, pVar, i10, i11));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget
    public static final void c(final float f, Modifier modifier, p<? super Composer, ? super Integer, l0> pVar, Composer composer, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        Composer composerS = composer.s(-1062692685);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            if (composerS.n(f)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i12 = i13 | i10;
        } else {
            i12 = i10;
        }
        int i16 = i11 & 2;
        if (i16 != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            if (composerS.k(modifier)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i12 |= i14;
        }
        if ((i11 & 4) != 0) {
            i12 |= 384;
        } else if ((i10 & 896) == 0) {
            if (composerS.k(pVar)) {
                i15 = 256;
            } else {
                i15 = 128;
            }
            i12 |= i15;
        }
        if ((i12 & 731) == 146 && composerS.b()) {
            composerS.g();
        } else {
            if (i16 != 0) {
                modifier = Modifier.Companion;
            }
            MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.material.ListItemKt$OffsetToBaselineOrCenter$1
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
                public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j6) {
                    int iMax;
                    int iK;
                    t.j(Layout, "$this$Layout");
                    t.j(measurables, "measurables");
                    Placeable placeableB0 = measurables.get(0).b0(Constraints.e(j6, 0, 0, 0, 0, 11, null));
                    int iC0 = placeableB0.c0(AlignmentLineKt.a());
                    if (iC0 != Integer.MIN_VALUE) {
                        iK = Layout.j0(f) - iC0;
                        iMax = Math.max(Constraints.o(j6), placeableB0.B0() + iK);
                    } else {
                        iMax = Math.max(Constraints.o(j6), placeableB0.B0());
                        iK = IntOffset.k(Alignment.Companion.e().a(IntSize.Companion.a(), IntSizeKt.a(0, iMax - placeableB0.B0()), Layout.getLayoutDirection()));
                    }
                    return MeasureScope.CC.b(Layout, placeableB0.Q0(), iMax, null, new ListItemKt$OffsetToBaselineOrCenter$1$measure$1(placeableB0, iK), 4, null);
                }
            };
            int i17 = (i12 & 112) | ((i12 >> 6) & 14);
            composerS.G(-1323940314);
            Density density = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            a<ComposeUiNode> aVarA = companion.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifier);
            int i18 = ((i17 << 9) & 7168) | 6;
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
            qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i18 >> 3) & 112));
            composerS.G(2058660585);
            pVar.invoke(composerS, Integer.valueOf((i18 >> 9) & 14));
            composerS.Q();
            composerS.d();
            composerS.Q();
        }
        Modifier modifier2 = modifier;
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new ListItemKt$OffsetToBaselineOrCenter$2(f, modifier2, pVar, i10, i11));
        }
    }
}
