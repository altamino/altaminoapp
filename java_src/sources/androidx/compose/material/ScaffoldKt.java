package androidx.compose.material;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.UiComposable;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.unit.Dp;
import androidx.profileinstaller.ProfileVerifier;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class ScaffoldKt {

    @NotNull
    private static final ProvidableCompositionLocal<FabPlacement> LocalFabPlacement = CompositionLocalKt.e(ScaffoldKt$LocalFabPlacement$1.INSTANCE);
    private static final float FabSpacing = Dp.f(16);

    /* JADX WARN: Code duplicated, block: B:101:0x0145  */
    /* JADX WARN: Code duplicated, block: B:103:0x014b  */
    /* JADX WARN: Code duplicated, block: B:104:0x014e  */
    /* JADX WARN: Code duplicated, block: B:108:0x0156  */
    /* JADX WARN: Code duplicated, block: B:110:0x015a  */
    /* JADX WARN: Code duplicated, block: B:113:0x0165 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:116:0x016c  */
    /* JADX WARN: Code duplicated, block: B:119:0x0174  */
    /* JADX WARN: Code duplicated, block: B:120:0x0179  */
    /* JADX WARN: Code duplicated, block: B:122:0x017f  */
    /* JADX WARN: Code duplicated, block: B:124:0x0185  */
    /* JADX WARN: Code duplicated, block: B:125:0x0188  */
    /* JADX WARN: Code duplicated, block: B:129:0x0190  */
    /* JADX WARN: Code duplicated, block: B:131:0x0194  */
    /* JADX WARN: Code duplicated, block: B:134:0x019f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:137:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:140:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:142:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:145:0x01b9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:148:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:151:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:153:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:156:0x01d5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:158:0x01da  */
    /* JADX WARN: Code duplicated, block: B:161:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:163:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:166:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:168:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:171:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:173:0x0203  */
    /* JADX WARN: Code duplicated, block: B:176:0x020c  */
    /* JADX WARN: Code duplicated, block: B:178:0x0211  */
    /* JADX WARN: Code duplicated, block: B:181:0x0217  */
    /* JADX WARN: Code duplicated, block: B:183:0x021c  */
    /* JADX WARN: Code duplicated, block: B:185:0x0220  */
    /* JADX WARN: Code duplicated, block: B:187:0x0226  */
    /* JADX WARN: Code duplicated, block: B:188:0x0229  */
    /* JADX WARN: Code duplicated, block: B:191:0x0236  */
    /* JADX WARN: Code duplicated, block: B:197:0x026c  */
    /* JADX WARN: Code duplicated, block: B:199:0x0273  */
    /* JADX WARN: Code duplicated, block: B:224:0x02d6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:225:0x02d8  */
    /* JADX WARN: Code duplicated, block: B:226:0x02db  */
    /* JADX WARN: Code duplicated, block: B:229:0x02e1  */
    /* JADX WARN: Code duplicated, block: B:230:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:232:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:233:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:235:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:236:0x0306  */
    /* JADX WARN: Code duplicated, block: B:238:0x030a  */
    /* JADX WARN: Code duplicated, block: B:239:0x0311  */
    /* JADX WARN: Code duplicated, block: B:241:0x0315  */
    /* JADX WARN: Code duplicated, block: B:242:0x031c  */
    /* JADX WARN: Code duplicated, block: B:244:0x0320  */
    /* JADX WARN: Code duplicated, block: B:246:0x0328  */
    /* JADX WARN: Code duplicated, block: B:247:0x032a  */
    /* JADX WARN: Code duplicated, block: B:249:0x032e  */
    /* JADX WARN: Code duplicated, block: B:250:0x0330  */
    /* JADX WARN: Code duplicated, block: B:252:0x0334  */
    /* JADX WARN: Code duplicated, block: B:253:0x0336  */
    /* JADX WARN: Code duplicated, block: B:256:0x0341  */
    /* JADX WARN: Code duplicated, block: B:258:0x0350  */
    /* JADX WARN: Code duplicated, block: B:260:0x0355  */
    /* JADX WARN: Code duplicated, block: B:261:0x035c  */
    /* JADX WARN: Code duplicated, block: B:264:0x0362  */
    /* JADX WARN: Code duplicated, block: B:265:0x037d  */
    /* JADX WARN: Code duplicated, block: B:268:0x038c  */
    /* JADX WARN: Code duplicated, block: B:269:0x0397  */
    /* JADX WARN: Code duplicated, block: B:272:0x039d  */
    /* JADX WARN: Code duplicated, block: B:273:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:276:0x03b6  */
    /* JADX WARN: Code duplicated, block: B:277:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:280:0x03cb  */
    /* JADX WARN: Code duplicated, block: B:282:0x03f0  */
    /* JADX WARN: Code duplicated, block: B:285:0x0431  */
    /* JADX WARN: Code duplicated, block: B:286:0x0494  */
    /* JADX WARN: Code duplicated, block: B:291:0x04c3  */
    /* JADX WARN: Code duplicated, block: B:293:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x0073  */
    /* JADX WARN: Code duplicated, block: B:39:0x0078  */
    /* JADX WARN: Code duplicated, block: B:41:0x007c  */
    /* JADX WARN: Code duplicated, block: B:43:0x0084  */
    /* JADX WARN: Code duplicated, block: B:44:0x0087  */
    /* JADX WARN: Code duplicated, block: B:48:0x0096  */
    /* JADX WARN: Code duplicated, block: B:49:0x009b  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:54:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:59:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:61:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:63:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:69:0x00df  */
    /* JADX WARN: Code duplicated, block: B:71:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:73:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:74:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:78:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:79:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:81:0x0105  */
    /* JADX WARN: Code duplicated, block: B:83:0x010b  */
    /* JADX WARN: Code duplicated, block: B:84:0x010e  */
    /* JADX WARN: Code duplicated, block: B:88:0x0116  */
    /* JADX WARN: Code duplicated, block: B:89:0x011d  */
    /* JADX WARN: Code duplicated, block: B:91:0x0125  */
    /* JADX WARN: Code duplicated, block: B:93:0x012b  */
    /* JADX WARN: Code duplicated, block: B:94:0x012e  */
    /* JADX WARN: Code duplicated, block: B:98:0x0136  */
    /* JADX WARN: Code duplicated, block: B:99:0x013d  */
    @Composable
    @ComposableInferredTarget
    public static final void a(@Nullable Modifier modifier, @Nullable ScaffoldState scaffoldState, @Nullable p<? super Composer, ? super Integer, l0> pVar, @Nullable p<? super Composer, ? super Integer, l0> pVar2, @Nullable q<? super SnackbarHostState, ? super Composer, ? super Integer, l0> qVar, @Nullable p<? super Composer, ? super Integer, l0> pVar3, int i10, boolean z6, @Nullable q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar2, boolean z10, @Nullable Shape shape, float f, long j6, long j10, long j11, long j12, long j13, @NotNull q<? super PaddingValues, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        p<? super Composer, ? super Integer, l0> pVar4;
        int i21;
        int i22;
        int iB;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        Modifier modifier2;
        ScaffoldState scaffoldStateF;
        p<? super Composer, ? super Integer, l0> pVarA;
        p<? super Composer, ? super Integer, l0> pVarB;
        q<? super SnackbarHostState, ? super Composer, ? super Integer, l0> qVarC;
        p<? super Composer, ? super Integer, l0> pVarD;
        boolean z11;
        q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar3;
        boolean z12;
        ScaffoldState scaffoldState2;
        Shape shapeA;
        int i34;
        float fA;
        boolean z13;
        int i35;
        long jN;
        long jB;
        int i36;
        long jB2;
        long jC;
        long j14;
        long j15;
        float f6;
        int i37;
        q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar4;
        ComposableLambda composableLambdaB;
        ScaffoldState scaffoldState3;
        p<? super Composer, ? super Integer, l0> pVar5;
        int i38;
        float f7;
        q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar5;
        boolean z14;
        p<? super Composer, ? super Integer, l0> pVar6;
        p<? super Composer, ? super Integer, l0> pVar7;
        Shape shape2;
        q<? super SnackbarHostState, ? super Composer, ? super Integer, l0> qVar6;
        boolean z15;
        ScopeUpdateScope scopeUpdateScopeU;
        int i39;
        int i40;
        t.j(content, "content");
        Composer composerS = composer.s(1037492569);
        int i41 = i13 & 1;
        if (i41 != 0) {
            i14 = i11 | 6;
        } else if ((i11 & 14) == 0) {
            i14 = (composerS.k(modifier) ? 4 : 2) | i11;
        } else {
            i14 = i11;
        }
        if ((i11 & 112) == 0) {
            i14 |= ((i13 & 2) == 0 && composerS.k(scaffoldState)) ? 32 : 16;
        }
        int i42 = i13 & 4;
        if (i42 == 0) {
            if ((i11 & 896) == 0) {
                i14 |= composerS.k(pVar) ? 256 : 128;
            }
            i15 = i13 & 8;
            if (i15 != 0) {
                if ((i11 & 7168) == 0) {
                    if (composerS.k(pVar2)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i14 |= i16;
                }
                i17 = i13 & 16;
                i18 = 8192;
                if (i17 != 0) {
                    i14 |= CpioConstants.C_ISBLK;
                } else if ((i11 & 57344) == 0) {
                    if (composerS.k(qVar)) {
                        i19 = 16384;
                    } else {
                        i19 = 8192;
                    }
                    i14 |= i19;
                }
                i20 = i13 & 32;
                if (i20 != 0) {
                    i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    pVar4 = pVar3;
                } else {
                    pVar4 = pVar3;
                    if ((i11 & 458752) == 0) {
                        if (composerS.k(pVar4)) {
                            i21 = 131072;
                        } else {
                            i21 = 65536;
                        }
                        i14 |= i21;
                    }
                }
                i22 = i13 & 64;
                if (i22 != 0) {
                    i14 |= 1572864;
                    iB = i10;
                } else {
                    iB = i10;
                    if ((i11 & 3670016) == 0) {
                        if (composerS.p(iB)) {
                            i23 = 1048576;
                        } else {
                            i23 = 524288;
                        }
                        i14 |= i23;
                    }
                }
                i24 = i13 & 128;
                if (i24 != 0) {
                    i14 |= 12582912;
                } else if ((i11 & 29360128) == 0) {
                    if (composerS.m(z6)) {
                        i25 = 8388608;
                    } else {
                        i25 = 4194304;
                    }
                    i14 |= i25;
                }
                i26 = i13 & 256;
                if (i26 != 0) {
                    i14 |= 100663296;
                } else if ((i11 & 234881024) == 0) {
                    if (composerS.k(qVar2)) {
                        i27 = 67108864;
                    } else {
                        i27 = 33554432;
                    }
                    i14 |= i27;
                }
                i28 = i13 & 512;
                if (i28 != 0) {
                    i14 |= 805306368;
                } else if ((i11 & 1879048192) == 0) {
                    if (composerS.m(z10)) {
                        i29 = 536870912;
                    } else {
                        i29 = 268435456;
                    }
                    i14 |= i29;
                }
                if ((i12 & 14) == 0) {
                    i30 = i12 | (((i13 & 1024) == 0 || !composerS.k(shape)) ? 2 : 4);
                } else {
                    i30 = i12;
                }
                i31 = i13 & 2048;
                if (i31 != 0) {
                    i30 |= 48;
                } else if ((i12 & 112) == 0) {
                    if (composerS.n(f)) {
                        i32 = 32;
                    } else {
                        i32 = 16;
                    }
                    i30 |= i32;
                }
                if ((i12 & 896) != 0) {
                    i30 |= ((i13 & 4096) == 0 || !composerS.q(j6)) ? 128 : 256;
                }
                if ((i12 & 7168) != 0) {
                    i30 |= ((i13 & 8192) == 0 || !composerS.q(j10)) ? 1024 : 2048;
                }
                if ((i12 & 57344) != 0) {
                    if ((i13 & 16384) == 0 && composerS.q(j11)) {
                        i18 = 16384;
                    }
                    i30 |= i18;
                }
                if ((i12 & 458752) != 0) {
                    if ((i13 & 32768) == 0 || !composerS.q(j12)) {
                        i40 = 65536;
                    } else {
                        i40 = 131072;
                    }
                    i30 |= i40;
                }
                if ((i12 & 3670016) != 0) {
                    if ((i13 & 65536) == 0 || !composerS.q(j13)) {
                        i39 = 524288;
                    } else {
                        i39 = 1048576;
                    }
                    i30 |= i39;
                }
                if ((i13 & 131072) != 0) {
                    if ((i12 & 29360128) == 0) {
                        if (composerS.k(content)) {
                            i33 = 8388608;
                        } else {
                            i33 = 4194304;
                        }
                    }
                    if ((i14 & 1533916891) != 306783378 && (i30 & 23967451) == 4793490 && composerS.b()) {
                        composerS.g();
                        modifier2 = modifier;
                        scaffoldState3 = scaffoldState;
                        pVar6 = pVar;
                        pVar7 = pVar2;
                        qVar6 = qVar;
                        qVar5 = qVar2;
                        shape2 = shape;
                        f7 = f;
                        jN = j6;
                        j15 = j10;
                        jB2 = j11;
                        jC = j12;
                        j14 = j13;
                        pVar5 = pVar4;
                        i38 = iB;
                        z15 = z6;
                        z14 = z10;
                    } else {
                        composerS.J();
                        if ((i11 & 1) != 0 || composerS.h()) {
                            if (i41 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i13 & 2) != 0) {
                                scaffoldStateF = f(null, null, composerS, 0, 3);
                                i14 &= -113;
                            } else {
                                scaffoldStateF = scaffoldState;
                            }
                            if (i42 != 0) {
                                pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                            } else {
                                pVarA = pVar;
                            }
                            if (i15 != 0) {
                                pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                            } else {
                                pVarB = pVar2;
                            }
                            if (i17 != 0) {
                                qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                            } else {
                                qVarC = qVar;
                            }
                            if (i20 != 0) {
                                pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                            } else {
                                pVarD = pVar3;
                            }
                            if (i22 != 0) {
                                iB = FabPosition.Companion.b();
                            }
                            if (i24 != 0) {
                                z11 = false;
                            } else {
                                z11 = z6;
                            }
                            if (i26 != 0) {
                                qVar3 = null;
                            } else {
                                qVar3 = qVar2;
                            }
                            if (i28 != 0) {
                                z12 = true;
                            } else {
                                z12 = z10;
                            }
                            scaffoldState2 = scaffoldStateF;
                            q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar7 = qVar3;
                            if ((i13 & 1024) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i30 &= -15;
                            } else {
                                shapeA = shape;
                            }
                            i34 = i30;
                            if (i31 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f;
                            }
                            if ((i13 & 4096) != 0) {
                                boolean z16 = z12;
                                i35 = i34 & (-897);
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                z13 = z16;
                            } else {
                                z13 = z12;
                                i35 = i34;
                                jN = j6;
                            }
                            float f10 = fA;
                            if ((i13 & 8192) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                                i35 &= -7169;
                            } else {
                                jB = j10;
                            }
                            if ((i13 & 16384) != 0) {
                                i36 = 6;
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                i35 &= -57345;
                            } else {
                                i36 = 6;
                                jB2 = j11;
                            }
                            if ((32768 & i13) != 0) {
                                jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                                i35 &= -458753;
                            } else {
                                jC = j12;
                            }
                            if ((i13 & 65536) != 0) {
                                long jB3 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                                i35 &= -3670017;
                                j14 = jB3;
                            } else {
                                j14 = j13;
                            }
                            j15 = jB;
                            f6 = f10;
                            i37 = i35;
                            qVar4 = qVar7;
                        } else {
                            composerS.g();
                            if ((i13 & 2) != 0) {
                                i14 &= -113;
                            }
                            if ((i13 & 1024) != 0) {
                                i30 &= -15;
                            }
                            int i43 = i30;
                            if ((i13 & 4096) != 0) {
                                i43 &= -897;
                            }
                            if ((i13 & 8192) != 0) {
                                i43 &= -7169;
                            }
                            if ((i13 & 16384) != 0) {
                                i43 &= -57345;
                            }
                            if ((32768 & i13) != 0) {
                                i43 &= -458753;
                            }
                            if ((i13 & 65536) != 0) {
                                i43 &= -3670017;
                            }
                            scaffoldState2 = scaffoldState;
                            pVarA = pVar;
                            pVarB = pVar2;
                            z11 = z6;
                            qVar4 = qVar2;
                            z13 = z10;
                            f6 = f;
                            jN = j6;
                            j15 = j10;
                            jB2 = j11;
                            jC = j12;
                            j14 = j13;
                            i37 = i43;
                            i14 = i14;
                            pVarD = pVar4;
                            modifier2 = modifier;
                            qVarC = qVar;
                            shapeA = shape;
                        }
                        composerS.A();
                        p<? super Composer, ? super Integer, l0> pVar8 = pVarA;
                        p<? super Composer, ? super Integer, l0> pVar9 = pVarB;
                        composableLambdaB = ComposableLambdaKt.b(composerS, 1823402604, true, new ScaffoldKt$Scaffold$child$1(jC, j14, i37, z11, iB, pVarA, content, pVarD, pVarB, i14, qVarC, scaffoldState2));
                        if (qVar4 != null) {
                            composerS.G(-1013848234);
                            int i44 = i37 << 12;
                            DrawerKt.d(qVar4, modifier2, scaffoldState2.a(), z13, shapeA, f6, jN, j15, jB2, ComposableLambdaKt.b(composerS, 100842932, true, new ScaffoldKt$Scaffold$1(composableLambdaB)), composerS, ((i14 >> 24) & 14) | 805306368 | ((i14 << 3) & 112) | ((i14 >> 18) & 7168) | (i44 & 57344) | (i44 & 458752) | (i44 & 3670016) | (i44 & 29360128) | (i44 & 234881024), 0);
                            composerS.Q();
                        } else {
                            composerS.G(-1013847725);
                            composableLambdaB.invoke(modifier2, composerS, Integer.valueOf((i14 & 14) | 48));
                            composerS.Q();
                        }
                        scaffoldState3 = scaffoldState2;
                        pVar5 = pVarD;
                        i38 = iB;
                        f7 = f6;
                        qVar5 = qVar4;
                        z14 = z13;
                        pVar6 = pVar8;
                        pVar7 = pVar9;
                        boolean z17 = z11;
                        shape2 = shapeA;
                        qVar6 = qVarC;
                        z15 = z17;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ScaffoldKt$Scaffold$2(modifier2, scaffoldState3, pVar6, pVar7, qVar6, pVar5, i38, z15, qVar5, z14, shape2, f7, jN, j15, jB2, jC, j14, content, i11, i12, i13));
                }
                i33 = 12582912;
                i30 |= i33;
                if ((i14 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i41 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i13 & 2) != 0) {
                            scaffoldStateF = f(null, null, composerS, 0, 3);
                            i14 &= -113;
                        } else {
                            scaffoldStateF = scaffoldState;
                        }
                        if (i42 != 0) {
                            pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                        } else {
                            pVarA = pVar;
                        }
                        if (i15 != 0) {
                            pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                        } else {
                            pVarB = pVar2;
                        }
                        if (i17 != 0) {
                            qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                        } else {
                            qVarC = qVar;
                        }
                        if (i20 != 0) {
                            pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                        } else {
                            pVarD = pVar3;
                        }
                        if (i22 != 0) {
                            iB = FabPosition.Companion.b();
                        }
                        if (i24 != 0) {
                            z11 = false;
                        } else {
                            z11 = z6;
                        }
                        if (i26 != 0) {
                            qVar3 = null;
                        } else {
                            qVar3 = qVar2;
                        }
                        if (i28 != 0) {
                            z12 = true;
                        } else {
                            z12 = z10;
                        }
                        scaffoldState2 = scaffoldStateF;
                        q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar8 = qVar3;
                        if ((i13 & 1024) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i30 &= -15;
                        } else {
                            shapeA = shape;
                        }
                        i34 = i30;
                        if (i31 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f;
                        }
                        if ((i13 & 4096) != 0) {
                            boolean z18 = z12;
                            i35 = i34 & (-897);
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            z13 = z18;
                        } else {
                            z13 = z12;
                            i35 = i34;
                            jN = j6;
                        }
                        float f11 = fA;
                        if ((i13 & 8192) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                            i35 &= -7169;
                        } else {
                            jB = j10;
                        }
                        if ((i13 & 16384) != 0) {
                            i36 = 6;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i35 &= -57345;
                        } else {
                            i36 = 6;
                            jB2 = j11;
                        }
                        if ((32768 & i13) != 0) {
                            jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                            i35 &= -458753;
                        } else {
                            jC = j12;
                        }
                        if ((i13 & 65536) != 0) {
                            long jB4 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                            i35 &= -3670017;
                            j14 = jB4;
                        } else {
                            j14 = j13;
                        }
                        j15 = jB;
                        f6 = f11;
                        i37 = i35;
                        qVar4 = qVar8;
                    } else {
                        if (i41 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i13 & 2) != 0) {
                            scaffoldStateF = f(null, null, composerS, 0, 3);
                            i14 &= -113;
                        } else {
                            scaffoldStateF = scaffoldState;
                        }
                        if (i42 != 0) {
                            pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                        } else {
                            pVarA = pVar;
                        }
                        if (i15 != 0) {
                            pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                        } else {
                            pVarB = pVar2;
                        }
                        if (i17 != 0) {
                            qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                        } else {
                            qVarC = qVar;
                        }
                        if (i20 != 0) {
                            pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                        } else {
                            pVarD = pVar3;
                        }
                        if (i22 != 0) {
                            iB = FabPosition.Companion.b();
                        }
                        if (i24 != 0) {
                            z11 = false;
                        } else {
                            z11 = z6;
                        }
                        if (i26 != 0) {
                            qVar3 = null;
                        } else {
                            qVar3 = qVar2;
                        }
                        if (i28 != 0) {
                            z12 = true;
                        } else {
                            z12 = z10;
                        }
                        scaffoldState2 = scaffoldStateF;
                        q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar9 = qVar3;
                        if ((i13 & 1024) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i30 &= -15;
                        } else {
                            shapeA = shape;
                        }
                        i34 = i30;
                        if (i31 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f;
                        }
                        if ((i13 & 4096) != 0) {
                            boolean z19 = z12;
                            i35 = i34 & (-897);
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            z13 = z19;
                        } else {
                            z13 = z12;
                            i35 = i34;
                            jN = j6;
                        }
                        float f12 = fA;
                        if ((i13 & 8192) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                            i35 &= -7169;
                        } else {
                            jB = j10;
                        }
                        if ((i13 & 16384) != 0) {
                            i36 = 6;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i35 &= -57345;
                        } else {
                            i36 = 6;
                            jB2 = j11;
                        }
                        if ((32768 & i13) != 0) {
                            jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                            i35 &= -458753;
                        } else {
                            jC = j12;
                        }
                        if ((i13 & 65536) != 0) {
                            long jB5 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                            i35 &= -3670017;
                            j14 = jB5;
                        } else {
                            j14 = j13;
                        }
                        j15 = jB;
                        f6 = f12;
                        i37 = i35;
                        qVar4 = qVar9;
                    }
                    composerS.A();
                    p<? super Composer, ? super Integer, l0> pVar10 = pVarA;
                    p<? super Composer, ? super Integer, l0> pVar11 = pVarB;
                    composableLambdaB = ComposableLambdaKt.b(composerS, 1823402604, true, new ScaffoldKt$Scaffold$child$1(jC, j14, i37, z11, iB, pVarA, content, pVarD, pVarB, i14, qVarC, scaffoldState2));
                    if (qVar4 != null) {
                        composerS.G(-1013848234);
                        int i45 = i37 << 12;
                        DrawerKt.d(qVar4, modifier2, scaffoldState2.a(), z13, shapeA, f6, jN, j15, jB2, ComposableLambdaKt.b(composerS, 100842932, true, new ScaffoldKt$Scaffold$1(composableLambdaB)), composerS, ((i14 >> 24) & 14) | 805306368 | ((i14 << 3) & 112) | ((i14 >> 18) & 7168) | (i45 & 57344) | (i45 & 458752) | (i45 & 3670016) | (i45 & 29360128) | (i45 & 234881024), 0);
                        composerS.Q();
                    } else {
                        composerS.G(-1013847725);
                        composableLambdaB.invoke(modifier2, composerS, Integer.valueOf((i14 & 14) | 48));
                        composerS.Q();
                    }
                    scaffoldState3 = scaffoldState2;
                    pVar5 = pVarD;
                    i38 = iB;
                    f7 = f6;
                    qVar5 = qVar4;
                    z14 = z13;
                    pVar6 = pVar10;
                    pVar7 = pVar11;
                    boolean z110 = z11;
                    shape2 = shapeA;
                    qVar6 = qVarC;
                    z15 = z110;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i41 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i13 & 2) != 0) {
                            scaffoldStateF = f(null, null, composerS, 0, 3);
                            i14 &= -113;
                        } else {
                            scaffoldStateF = scaffoldState;
                        }
                        if (i42 != 0) {
                            pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                        } else {
                            pVarA = pVar;
                        }
                        if (i15 != 0) {
                            pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                        } else {
                            pVarB = pVar2;
                        }
                        if (i17 != 0) {
                            qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                        } else {
                            qVarC = qVar;
                        }
                        if (i20 != 0) {
                            pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                        } else {
                            pVarD = pVar3;
                        }
                        if (i22 != 0) {
                            iB = FabPosition.Companion.b();
                        }
                        if (i24 != 0) {
                            z11 = false;
                        } else {
                            z11 = z6;
                        }
                        if (i26 != 0) {
                            qVar3 = null;
                        } else {
                            qVar3 = qVar2;
                        }
                        if (i28 != 0) {
                            z12 = true;
                        } else {
                            z12 = z10;
                        }
                        scaffoldState2 = scaffoldStateF;
                        q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar10 = qVar3;
                        if ((i13 & 1024) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i30 &= -15;
                        } else {
                            shapeA = shape;
                        }
                        i34 = i30;
                        if (i31 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f;
                        }
                        if ((i13 & 4096) != 0) {
                            boolean z111 = z12;
                            i35 = i34 & (-897);
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            z13 = z111;
                        } else {
                            z13 = z12;
                            i35 = i34;
                            jN = j6;
                        }
                        float f13 = fA;
                        if ((i13 & 8192) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                            i35 &= -7169;
                        } else {
                            jB = j10;
                        }
                        if ((i13 & 16384) != 0) {
                            i36 = 6;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i35 &= -57345;
                        } else {
                            i36 = 6;
                            jB2 = j11;
                        }
                        if ((32768 & i13) != 0) {
                            jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                            i35 &= -458753;
                        } else {
                            jC = j12;
                        }
                        if ((i13 & 65536) != 0) {
                            long jB6 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                            i35 &= -3670017;
                            j14 = jB6;
                        } else {
                            j14 = j13;
                        }
                        j15 = jB;
                        f6 = f13;
                        i37 = i35;
                        qVar4 = qVar10;
                    } else {
                        if (i41 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i13 & 2) != 0) {
                            scaffoldStateF = f(null, null, composerS, 0, 3);
                            i14 &= -113;
                        } else {
                            scaffoldStateF = scaffoldState;
                        }
                        if (i42 != 0) {
                            pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                        } else {
                            pVarA = pVar;
                        }
                        if (i15 != 0) {
                            pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                        } else {
                            pVarB = pVar2;
                        }
                        if (i17 != 0) {
                            qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                        } else {
                            qVarC = qVar;
                        }
                        if (i20 != 0) {
                            pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                        } else {
                            pVarD = pVar3;
                        }
                        if (i22 != 0) {
                            iB = FabPosition.Companion.b();
                        }
                        if (i24 != 0) {
                            z11 = false;
                        } else {
                            z11 = z6;
                        }
                        if (i26 != 0) {
                            qVar3 = null;
                        } else {
                            qVar3 = qVar2;
                        }
                        if (i28 != 0) {
                            z12 = true;
                        } else {
                            z12 = z10;
                        }
                        scaffoldState2 = scaffoldStateF;
                        q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar11 = qVar3;
                        if ((i13 & 1024) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i30 &= -15;
                        } else {
                            shapeA = shape;
                        }
                        i34 = i30;
                        if (i31 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f;
                        }
                        if ((i13 & 4096) != 0) {
                            boolean z112 = z12;
                            i35 = i34 & (-897);
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            z13 = z112;
                        } else {
                            z13 = z12;
                            i35 = i34;
                            jN = j6;
                        }
                        float f14 = fA;
                        if ((i13 & 8192) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                            i35 &= -7169;
                        } else {
                            jB = j10;
                        }
                        if ((i13 & 16384) != 0) {
                            i36 = 6;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i35 &= -57345;
                        } else {
                            i36 = 6;
                            jB2 = j11;
                        }
                        if ((32768 & i13) != 0) {
                            jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                            i35 &= -458753;
                        } else {
                            jC = j12;
                        }
                        if ((i13 & 65536) != 0) {
                            long jB7 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                            i35 &= -3670017;
                            j14 = jB7;
                        } else {
                            j14 = j13;
                        }
                        j15 = jB;
                        f6 = f14;
                        i37 = i35;
                        qVar4 = qVar11;
                    }
                    composerS.A();
                    p<? super Composer, ? super Integer, l0> pVar12 = pVarA;
                    p<? super Composer, ? super Integer, l0> pVar13 = pVarB;
                    composableLambdaB = ComposableLambdaKt.b(composerS, 1823402604, true, new ScaffoldKt$Scaffold$child$1(jC, j14, i37, z11, iB, pVarA, content, pVarD, pVarB, i14, qVarC, scaffoldState2));
                    if (qVar4 != null) {
                        composerS.G(-1013848234);
                        int i46 = i37 << 12;
                        DrawerKt.d(qVar4, modifier2, scaffoldState2.a(), z13, shapeA, f6, jN, j15, jB2, ComposableLambdaKt.b(composerS, 100842932, true, new ScaffoldKt$Scaffold$1(composableLambdaB)), composerS, ((i14 >> 24) & 14) | 805306368 | ((i14 << 3) & 112) | ((i14 >> 18) & 7168) | (i46 & 57344) | (i46 & 458752) | (i46 & 3670016) | (i46 & 29360128) | (i46 & 234881024), 0);
                        composerS.Q();
                    } else {
                        composerS.G(-1013847725);
                        composableLambdaB.invoke(modifier2, composerS, Integer.valueOf((i14 & 14) | 48));
                        composerS.Q();
                    }
                    scaffoldState3 = scaffoldState2;
                    pVar5 = pVarD;
                    i38 = iB;
                    f7 = f6;
                    qVar5 = qVar4;
                    z14 = z13;
                    pVar6 = pVar12;
                    pVar7 = pVar13;
                    boolean z113 = z11;
                    shape2 = shapeA;
                    qVar6 = qVarC;
                    z15 = z113;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ScaffoldKt$Scaffold$2(modifier2, scaffoldState3, pVar6, pVar7, qVar6, pVar5, i38, z15, qVar5, z14, shape2, f7, jN, j15, jB2, jC, j14, content, i11, i12, i13));
            }
            i14 |= 3072;
            i17 = i13 & 16;
            i18 = 8192;
            if (i17 != 0) {
                i14 |= CpioConstants.C_ISBLK;
            } else if ((i11 & 57344) == 0) {
                if (composerS.k(qVar)) {
                    i19 = 16384;
                } else {
                    i19 = 8192;
                }
                i14 |= i19;
            }
            i20 = i13 & 32;
            if (i20 != 0) {
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                pVar4 = pVar3;
            } else {
                pVar4 = pVar3;
                if ((i11 & 458752) == 0) {
                    if (composerS.k(pVar4)) {
                        i21 = 131072;
                    } else {
                        i21 = 65536;
                    }
                    i14 |= i21;
                }
            }
            i22 = i13 & 64;
            if (i22 != 0) {
                i14 |= 1572864;
                iB = i10;
            } else {
                iB = i10;
                if ((i11 & 3670016) == 0) {
                    if (composerS.p(iB)) {
                        i23 = 1048576;
                    } else {
                        i23 = 524288;
                    }
                    i14 |= i23;
                }
            }
            i24 = i13 & 128;
            if (i24 != 0) {
                i14 |= 12582912;
            } else if ((i11 & 29360128) == 0) {
                if (composerS.m(z6)) {
                    i25 = 8388608;
                } else {
                    i25 = 4194304;
                }
                i14 |= i25;
            }
            i26 = i13 & 256;
            if (i26 != 0) {
                i14 |= 100663296;
            } else if ((i11 & 234881024) == 0) {
                if (composerS.k(qVar2)) {
                    i27 = 67108864;
                } else {
                    i27 = 33554432;
                }
                i14 |= i27;
            }
            i28 = i13 & 512;
            if (i28 != 0) {
                i14 |= 805306368;
            } else if ((i11 & 1879048192) == 0) {
                if (composerS.m(z10)) {
                    i29 = 536870912;
                } else {
                    i29 = 268435456;
                }
                i14 |= i29;
            }
            if ((i12 & 14) == 0) {
                i30 = i12 | (((i13 & 1024) == 0 || !composerS.k(shape)) ? 2 : 4);
            } else {
                i30 = i12;
            }
            i31 = i13 & 2048;
            if (i31 != 0) {
                i30 |= 48;
            } else if ((i12 & 112) == 0) {
                if (composerS.n(f)) {
                    i32 = 32;
                } else {
                    i32 = 16;
                }
                i30 |= i32;
            }
            if ((i12 & 896) != 0) {
                i30 |= ((i13 & 4096) == 0 || !composerS.q(j6)) ? 128 : 256;
            }
            if ((i12 & 7168) != 0) {
                i30 |= ((i13 & 8192) == 0 || !composerS.q(j10)) ? 1024 : 2048;
            }
            if ((i12 & 57344) != 0) {
                if ((i13 & 16384) == 0) {
                    i18 = 16384;
                }
                i30 |= i18;
            }
            if ((i12 & 458752) != 0) {
                if ((i13 & 32768) == 0) {
                    i40 = 65536;
                } else {
                    i40 = 65536;
                }
                i30 |= i40;
            }
            if ((i12 & 3670016) != 0) {
                if ((i13 & 65536) == 0) {
                    i39 = 524288;
                } else {
                    i39 = 524288;
                }
                i30 |= i39;
            }
            if ((i13 & 131072) != 0) {
                if ((i12 & 29360128) == 0) {
                    if (composerS.k(content)) {
                        i33 = 8388608;
                    } else {
                        i33 = 4194304;
                    }
                }
                if ((i14 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i41 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i13 & 2) != 0) {
                            scaffoldStateF = f(null, null, composerS, 0, 3);
                            i14 &= -113;
                        } else {
                            scaffoldStateF = scaffoldState;
                        }
                        if (i42 != 0) {
                            pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                        } else {
                            pVarA = pVar;
                        }
                        if (i15 != 0) {
                            pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                        } else {
                            pVarB = pVar2;
                        }
                        if (i17 != 0) {
                            qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                        } else {
                            qVarC = qVar;
                        }
                        if (i20 != 0) {
                            pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                        } else {
                            pVarD = pVar3;
                        }
                        if (i22 != 0) {
                            iB = FabPosition.Companion.b();
                        }
                        if (i24 != 0) {
                            z11 = false;
                        } else {
                            z11 = z6;
                        }
                        if (i26 != 0) {
                            qVar3 = null;
                        } else {
                            qVar3 = qVar2;
                        }
                        if (i28 != 0) {
                            z12 = true;
                        } else {
                            z12 = z10;
                        }
                        scaffoldState2 = scaffoldStateF;
                        q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar12 = qVar3;
                        if ((i13 & 1024) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i30 &= -15;
                        } else {
                            shapeA = shape;
                        }
                        i34 = i30;
                        if (i31 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f;
                        }
                        if ((i13 & 4096) != 0) {
                            boolean z114 = z12;
                            i35 = i34 & (-897);
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            z13 = z114;
                        } else {
                            z13 = z12;
                            i35 = i34;
                            jN = j6;
                        }
                        float f15 = fA;
                        if ((i13 & 8192) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                            i35 &= -7169;
                        } else {
                            jB = j10;
                        }
                        if ((i13 & 16384) != 0) {
                            i36 = 6;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i35 &= -57345;
                        } else {
                            i36 = 6;
                            jB2 = j11;
                        }
                        if ((32768 & i13) != 0) {
                            jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                            i35 &= -458753;
                        } else {
                            jC = j12;
                        }
                        if ((i13 & 65536) != 0) {
                            long jB8 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                            i35 &= -3670017;
                            j14 = jB8;
                        } else {
                            j14 = j13;
                        }
                        j15 = jB;
                        f6 = f15;
                        i37 = i35;
                        qVar4 = qVar12;
                    } else {
                        if (i41 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i13 & 2) != 0) {
                            scaffoldStateF = f(null, null, composerS, 0, 3);
                            i14 &= -113;
                        } else {
                            scaffoldStateF = scaffoldState;
                        }
                        if (i42 != 0) {
                            pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                        } else {
                            pVarA = pVar;
                        }
                        if (i15 != 0) {
                            pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                        } else {
                            pVarB = pVar2;
                        }
                        if (i17 != 0) {
                            qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                        } else {
                            qVarC = qVar;
                        }
                        if (i20 != 0) {
                            pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                        } else {
                            pVarD = pVar3;
                        }
                        if (i22 != 0) {
                            iB = FabPosition.Companion.b();
                        }
                        if (i24 != 0) {
                            z11 = false;
                        } else {
                            z11 = z6;
                        }
                        if (i26 != 0) {
                            qVar3 = null;
                        } else {
                            qVar3 = qVar2;
                        }
                        if (i28 != 0) {
                            z12 = true;
                        } else {
                            z12 = z10;
                        }
                        scaffoldState2 = scaffoldStateF;
                        q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar13 = qVar3;
                        if ((i13 & 1024) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i30 &= -15;
                        } else {
                            shapeA = shape;
                        }
                        i34 = i30;
                        if (i31 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f;
                        }
                        if ((i13 & 4096) != 0) {
                            boolean z115 = z12;
                            i35 = i34 & (-897);
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            z13 = z115;
                        } else {
                            z13 = z12;
                            i35 = i34;
                            jN = j6;
                        }
                        float f16 = fA;
                        if ((i13 & 8192) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                            i35 &= -7169;
                        } else {
                            jB = j10;
                        }
                        if ((i13 & 16384) != 0) {
                            i36 = 6;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i35 &= -57345;
                        } else {
                            i36 = 6;
                            jB2 = j11;
                        }
                        if ((32768 & i13) != 0) {
                            jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                            i35 &= -458753;
                        } else {
                            jC = j12;
                        }
                        if ((i13 & 65536) != 0) {
                            long jB9 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                            i35 &= -3670017;
                            j14 = jB9;
                        } else {
                            j14 = j13;
                        }
                        j15 = jB;
                        f6 = f16;
                        i37 = i35;
                        qVar4 = qVar13;
                    }
                    composerS.A();
                    p<? super Composer, ? super Integer, l0> pVar14 = pVarA;
                    p<? super Composer, ? super Integer, l0> pVar15 = pVarB;
                    composableLambdaB = ComposableLambdaKt.b(composerS, 1823402604, true, new ScaffoldKt$Scaffold$child$1(jC, j14, i37, z11, iB, pVarA, content, pVarD, pVarB, i14, qVarC, scaffoldState2));
                    if (qVar4 != null) {
                        composerS.G(-1013848234);
                        int i47 = i37 << 12;
                        DrawerKt.d(qVar4, modifier2, scaffoldState2.a(), z13, shapeA, f6, jN, j15, jB2, ComposableLambdaKt.b(composerS, 100842932, true, new ScaffoldKt$Scaffold$1(composableLambdaB)), composerS, ((i14 >> 24) & 14) | 805306368 | ((i14 << 3) & 112) | ((i14 >> 18) & 7168) | (i47 & 57344) | (i47 & 458752) | (i47 & 3670016) | (i47 & 29360128) | (i47 & 234881024), 0);
                        composerS.Q();
                    } else {
                        composerS.G(-1013847725);
                        composableLambdaB.invoke(modifier2, composerS, Integer.valueOf((i14 & 14) | 48));
                        composerS.Q();
                    }
                    scaffoldState3 = scaffoldState2;
                    pVar5 = pVarD;
                    i38 = iB;
                    f7 = f6;
                    qVar5 = qVar4;
                    z14 = z13;
                    pVar6 = pVar14;
                    pVar7 = pVar15;
                    boolean z116 = z11;
                    shape2 = shapeA;
                    qVar6 = qVarC;
                    z15 = z116;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i41 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i13 & 2) != 0) {
                            scaffoldStateF = f(null, null, composerS, 0, 3);
                            i14 &= -113;
                        } else {
                            scaffoldStateF = scaffoldState;
                        }
                        if (i42 != 0) {
                            pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                        } else {
                            pVarA = pVar;
                        }
                        if (i15 != 0) {
                            pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                        } else {
                            pVarB = pVar2;
                        }
                        if (i17 != 0) {
                            qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                        } else {
                            qVarC = qVar;
                        }
                        if (i20 != 0) {
                            pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                        } else {
                            pVarD = pVar3;
                        }
                        if (i22 != 0) {
                            iB = FabPosition.Companion.b();
                        }
                        if (i24 != 0) {
                            z11 = false;
                        } else {
                            z11 = z6;
                        }
                        if (i26 != 0) {
                            qVar3 = null;
                        } else {
                            qVar3 = qVar2;
                        }
                        if (i28 != 0) {
                            z12 = true;
                        } else {
                            z12 = z10;
                        }
                        scaffoldState2 = scaffoldStateF;
                        q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar14 = qVar3;
                        if ((i13 & 1024) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i30 &= -15;
                        } else {
                            shapeA = shape;
                        }
                        i34 = i30;
                        if (i31 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f;
                        }
                        if ((i13 & 4096) != 0) {
                            boolean z117 = z12;
                            i35 = i34 & (-897);
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            z13 = z117;
                        } else {
                            z13 = z12;
                            i35 = i34;
                            jN = j6;
                        }
                        float f17 = fA;
                        if ((i13 & 8192) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                            i35 &= -7169;
                        } else {
                            jB = j10;
                        }
                        if ((i13 & 16384) != 0) {
                            i36 = 6;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i35 &= -57345;
                        } else {
                            i36 = 6;
                            jB2 = j11;
                        }
                        if ((32768 & i13) != 0) {
                            jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                            i35 &= -458753;
                        } else {
                            jC = j12;
                        }
                        if ((i13 & 65536) != 0) {
                            long jB10 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                            i35 &= -3670017;
                            j14 = jB10;
                        } else {
                            j14 = j13;
                        }
                        j15 = jB;
                        f6 = f17;
                        i37 = i35;
                        qVar4 = qVar14;
                    } else {
                        if (i41 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i13 & 2) != 0) {
                            scaffoldStateF = f(null, null, composerS, 0, 3);
                            i14 &= -113;
                        } else {
                            scaffoldStateF = scaffoldState;
                        }
                        if (i42 != 0) {
                            pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                        } else {
                            pVarA = pVar;
                        }
                        if (i15 != 0) {
                            pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                        } else {
                            pVarB = pVar2;
                        }
                        if (i17 != 0) {
                            qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                        } else {
                            qVarC = qVar;
                        }
                        if (i20 != 0) {
                            pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                        } else {
                            pVarD = pVar3;
                        }
                        if (i22 != 0) {
                            iB = FabPosition.Companion.b();
                        }
                        if (i24 != 0) {
                            z11 = false;
                        } else {
                            z11 = z6;
                        }
                        if (i26 != 0) {
                            qVar3 = null;
                        } else {
                            qVar3 = qVar2;
                        }
                        if (i28 != 0) {
                            z12 = true;
                        } else {
                            z12 = z10;
                        }
                        scaffoldState2 = scaffoldStateF;
                        q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar15 = qVar3;
                        if ((i13 & 1024) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i30 &= -15;
                        } else {
                            shapeA = shape;
                        }
                        i34 = i30;
                        if (i31 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f;
                        }
                        if ((i13 & 4096) != 0) {
                            boolean z118 = z12;
                            i35 = i34 & (-897);
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            z13 = z118;
                        } else {
                            z13 = z12;
                            i35 = i34;
                            jN = j6;
                        }
                        float f18 = fA;
                        if ((i13 & 8192) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                            i35 &= -7169;
                        } else {
                            jB = j10;
                        }
                        if ((i13 & 16384) != 0) {
                            i36 = 6;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i35 &= -57345;
                        } else {
                            i36 = 6;
                            jB2 = j11;
                        }
                        if ((32768 & i13) != 0) {
                            jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                            i35 &= -458753;
                        } else {
                            jC = j12;
                        }
                        if ((i13 & 65536) != 0) {
                            long jB11 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                            i35 &= -3670017;
                            j14 = jB11;
                        } else {
                            j14 = j13;
                        }
                        j15 = jB;
                        f6 = f18;
                        i37 = i35;
                        qVar4 = qVar15;
                    }
                    composerS.A();
                    p<? super Composer, ? super Integer, l0> pVar16 = pVarA;
                    p<? super Composer, ? super Integer, l0> pVar17 = pVarB;
                    composableLambdaB = ComposableLambdaKt.b(composerS, 1823402604, true, new ScaffoldKt$Scaffold$child$1(jC, j14, i37, z11, iB, pVarA, content, pVarD, pVarB, i14, qVarC, scaffoldState2));
                    if (qVar4 != null) {
                        composerS.G(-1013848234);
                        int i48 = i37 << 12;
                        DrawerKt.d(qVar4, modifier2, scaffoldState2.a(), z13, shapeA, f6, jN, j15, jB2, ComposableLambdaKt.b(composerS, 100842932, true, new ScaffoldKt$Scaffold$1(composableLambdaB)), composerS, ((i14 >> 24) & 14) | 805306368 | ((i14 << 3) & 112) | ((i14 >> 18) & 7168) | (i48 & 57344) | (i48 & 458752) | (i48 & 3670016) | (i48 & 29360128) | (i48 & 234881024), 0);
                        composerS.Q();
                    } else {
                        composerS.G(-1013847725);
                        composableLambdaB.invoke(modifier2, composerS, Integer.valueOf((i14 & 14) | 48));
                        composerS.Q();
                    }
                    scaffoldState3 = scaffoldState2;
                    pVar5 = pVarD;
                    i38 = iB;
                    f7 = f6;
                    qVar5 = qVar4;
                    z14 = z13;
                    pVar6 = pVar16;
                    pVar7 = pVar17;
                    boolean z119 = z11;
                    shape2 = shapeA;
                    qVar6 = qVarC;
                    z15 = z119;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ScaffoldKt$Scaffold$2(modifier2, scaffoldState3, pVar6, pVar7, qVar6, pVar5, i38, z15, qVar5, z14, shape2, f7, jN, j15, jB2, jC, j14, content, i11, i12, i13));
            }
            i33 = 12582912;
            i30 |= i33;
            if ((i14 & 1533916891) != 306783378) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i41 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i13 & 2) != 0) {
                        scaffoldStateF = f(null, null, composerS, 0, 3);
                        i14 &= -113;
                    } else {
                        scaffoldStateF = scaffoldState;
                    }
                    if (i42 != 0) {
                        pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                    } else {
                        pVarA = pVar;
                    }
                    if (i15 != 0) {
                        pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                    } else {
                        pVarB = pVar2;
                    }
                    if (i17 != 0) {
                        qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                    } else {
                        qVarC = qVar;
                    }
                    if (i20 != 0) {
                        pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                    } else {
                        pVarD = pVar3;
                    }
                    if (i22 != 0) {
                        iB = FabPosition.Companion.b();
                    }
                    if (i24 != 0) {
                        z11 = false;
                    } else {
                        z11 = z6;
                    }
                    if (i26 != 0) {
                        qVar3 = null;
                    } else {
                        qVar3 = qVar2;
                    }
                    if (i28 != 0) {
                        z12 = true;
                    } else {
                        z12 = z10;
                    }
                    scaffoldState2 = scaffoldStateF;
                    q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar16 = qVar3;
                    if ((i13 & 1024) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i30 &= -15;
                    } else {
                        shapeA = shape;
                    }
                    i34 = i30;
                    if (i31 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f;
                    }
                    if ((i13 & 4096) != 0) {
                        boolean z1110 = z12;
                        i35 = i34 & (-897);
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        z13 = z1110;
                    } else {
                        z13 = z12;
                        i35 = i34;
                        jN = j6;
                    }
                    float f19 = fA;
                    if ((i13 & 8192) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                        i35 &= -7169;
                    } else {
                        jB = j10;
                    }
                    if ((i13 & 16384) != 0) {
                        i36 = 6;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i35 &= -57345;
                    } else {
                        i36 = 6;
                        jB2 = j11;
                    }
                    if ((32768 & i13) != 0) {
                        jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                        i35 &= -458753;
                    } else {
                        jC = j12;
                    }
                    if ((i13 & 65536) != 0) {
                        long jB12 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                        i35 &= -3670017;
                        j14 = jB12;
                    } else {
                        j14 = j13;
                    }
                    j15 = jB;
                    f6 = f19;
                    i37 = i35;
                    qVar4 = qVar16;
                } else {
                    if (i41 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i13 & 2) != 0) {
                        scaffoldStateF = f(null, null, composerS, 0, 3);
                        i14 &= -113;
                    } else {
                        scaffoldStateF = scaffoldState;
                    }
                    if (i42 != 0) {
                        pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                    } else {
                        pVarA = pVar;
                    }
                    if (i15 != 0) {
                        pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                    } else {
                        pVarB = pVar2;
                    }
                    if (i17 != 0) {
                        qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                    } else {
                        qVarC = qVar;
                    }
                    if (i20 != 0) {
                        pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                    } else {
                        pVarD = pVar3;
                    }
                    if (i22 != 0) {
                        iB = FabPosition.Companion.b();
                    }
                    if (i24 != 0) {
                        z11 = false;
                    } else {
                        z11 = z6;
                    }
                    if (i26 != 0) {
                        qVar3 = null;
                    } else {
                        qVar3 = qVar2;
                    }
                    if (i28 != 0) {
                        z12 = true;
                    } else {
                        z12 = z10;
                    }
                    scaffoldState2 = scaffoldStateF;
                    q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar17 = qVar3;
                    if ((i13 & 1024) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i30 &= -15;
                    } else {
                        shapeA = shape;
                    }
                    i34 = i30;
                    if (i31 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f;
                    }
                    if ((i13 & 4096) != 0) {
                        boolean z1111 = z12;
                        i35 = i34 & (-897);
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        z13 = z1111;
                    } else {
                        z13 = z12;
                        i35 = i34;
                        jN = j6;
                    }
                    float f110 = fA;
                    if ((i13 & 8192) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                        i35 &= -7169;
                    } else {
                        jB = j10;
                    }
                    if ((i13 & 16384) != 0) {
                        i36 = 6;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i35 &= -57345;
                    } else {
                        i36 = 6;
                        jB2 = j11;
                    }
                    if ((32768 & i13) != 0) {
                        jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                        i35 &= -458753;
                    } else {
                        jC = j12;
                    }
                    if ((i13 & 65536) != 0) {
                        long jB13 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                        i35 &= -3670017;
                        j14 = jB13;
                    } else {
                        j14 = j13;
                    }
                    j15 = jB;
                    f6 = f110;
                    i37 = i35;
                    qVar4 = qVar17;
                }
                composerS.A();
                p<? super Composer, ? super Integer, l0> pVar18 = pVarA;
                p<? super Composer, ? super Integer, l0> pVar19 = pVarB;
                composableLambdaB = ComposableLambdaKt.b(composerS, 1823402604, true, new ScaffoldKt$Scaffold$child$1(jC, j14, i37, z11, iB, pVarA, content, pVarD, pVarB, i14, qVarC, scaffoldState2));
                if (qVar4 != null) {
                    composerS.G(-1013848234);
                    int i49 = i37 << 12;
                    DrawerKt.d(qVar4, modifier2, scaffoldState2.a(), z13, shapeA, f6, jN, j15, jB2, ComposableLambdaKt.b(composerS, 100842932, true, new ScaffoldKt$Scaffold$1(composableLambdaB)), composerS, ((i14 >> 24) & 14) | 805306368 | ((i14 << 3) & 112) | ((i14 >> 18) & 7168) | (i49 & 57344) | (i49 & 458752) | (i49 & 3670016) | (i49 & 29360128) | (i49 & 234881024), 0);
                    composerS.Q();
                } else {
                    composerS.G(-1013847725);
                    composableLambdaB.invoke(modifier2, composerS, Integer.valueOf((i14 & 14) | 48));
                    composerS.Q();
                }
                scaffoldState3 = scaffoldState2;
                pVar5 = pVarD;
                i38 = iB;
                f7 = f6;
                qVar5 = qVar4;
                z14 = z13;
                pVar6 = pVar18;
                pVar7 = pVar19;
                boolean z1112 = z11;
                shape2 = shapeA;
                qVar6 = qVarC;
                z15 = z1112;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i41 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i13 & 2) != 0) {
                        scaffoldStateF = f(null, null, composerS, 0, 3);
                        i14 &= -113;
                    } else {
                        scaffoldStateF = scaffoldState;
                    }
                    if (i42 != 0) {
                        pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                    } else {
                        pVarA = pVar;
                    }
                    if (i15 != 0) {
                        pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                    } else {
                        pVarB = pVar2;
                    }
                    if (i17 != 0) {
                        qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                    } else {
                        qVarC = qVar;
                    }
                    if (i20 != 0) {
                        pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                    } else {
                        pVarD = pVar3;
                    }
                    if (i22 != 0) {
                        iB = FabPosition.Companion.b();
                    }
                    if (i24 != 0) {
                        z11 = false;
                    } else {
                        z11 = z6;
                    }
                    if (i26 != 0) {
                        qVar3 = null;
                    } else {
                        qVar3 = qVar2;
                    }
                    if (i28 != 0) {
                        z12 = true;
                    } else {
                        z12 = z10;
                    }
                    scaffoldState2 = scaffoldStateF;
                    q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar18 = qVar3;
                    if ((i13 & 1024) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i30 &= -15;
                    } else {
                        shapeA = shape;
                    }
                    i34 = i30;
                    if (i31 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f;
                    }
                    if ((i13 & 4096) != 0) {
                        boolean z1113 = z12;
                        i35 = i34 & (-897);
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        z13 = z1113;
                    } else {
                        z13 = z12;
                        i35 = i34;
                        jN = j6;
                    }
                    float f111 = fA;
                    if ((i13 & 8192) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                        i35 &= -7169;
                    } else {
                        jB = j10;
                    }
                    if ((i13 & 16384) != 0) {
                        i36 = 6;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i35 &= -57345;
                    } else {
                        i36 = 6;
                        jB2 = j11;
                    }
                    if ((32768 & i13) != 0) {
                        jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                        i35 &= -458753;
                    } else {
                        jC = j12;
                    }
                    if ((i13 & 65536) != 0) {
                        long jB14 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                        i35 &= -3670017;
                        j14 = jB14;
                    } else {
                        j14 = j13;
                    }
                    j15 = jB;
                    f6 = f111;
                    i37 = i35;
                    qVar4 = qVar18;
                } else {
                    if (i41 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i13 & 2) != 0) {
                        scaffoldStateF = f(null, null, composerS, 0, 3);
                        i14 &= -113;
                    } else {
                        scaffoldStateF = scaffoldState;
                    }
                    if (i42 != 0) {
                        pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                    } else {
                        pVarA = pVar;
                    }
                    if (i15 != 0) {
                        pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                    } else {
                        pVarB = pVar2;
                    }
                    if (i17 != 0) {
                        qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                    } else {
                        qVarC = qVar;
                    }
                    if (i20 != 0) {
                        pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                    } else {
                        pVarD = pVar3;
                    }
                    if (i22 != 0) {
                        iB = FabPosition.Companion.b();
                    }
                    if (i24 != 0) {
                        z11 = false;
                    } else {
                        z11 = z6;
                    }
                    if (i26 != 0) {
                        qVar3 = null;
                    } else {
                        qVar3 = qVar2;
                    }
                    if (i28 != 0) {
                        z12 = true;
                    } else {
                        z12 = z10;
                    }
                    scaffoldState2 = scaffoldStateF;
                    q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar19 = qVar3;
                    if ((i13 & 1024) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i30 &= -15;
                    } else {
                        shapeA = shape;
                    }
                    i34 = i30;
                    if (i31 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f;
                    }
                    if ((i13 & 4096) != 0) {
                        boolean z1114 = z12;
                        i35 = i34 & (-897);
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        z13 = z1114;
                    } else {
                        z13 = z12;
                        i35 = i34;
                        jN = j6;
                    }
                    float f112 = fA;
                    if ((i13 & 8192) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                        i35 &= -7169;
                    } else {
                        jB = j10;
                    }
                    if ((i13 & 16384) != 0) {
                        i36 = 6;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i35 &= -57345;
                    } else {
                        i36 = 6;
                        jB2 = j11;
                    }
                    if ((32768 & i13) != 0) {
                        jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                        i35 &= -458753;
                    } else {
                        jC = j12;
                    }
                    if ((i13 & 65536) != 0) {
                        long jB15 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                        i35 &= -3670017;
                        j14 = jB15;
                    } else {
                        j14 = j13;
                    }
                    j15 = jB;
                    f6 = f112;
                    i37 = i35;
                    qVar4 = qVar19;
                }
                composerS.A();
                p<? super Composer, ? super Integer, l0> pVar110 = pVarA;
                p<? super Composer, ? super Integer, l0> pVar111 = pVarB;
                composableLambdaB = ComposableLambdaKt.b(composerS, 1823402604, true, new ScaffoldKt$Scaffold$child$1(jC, j14, i37, z11, iB, pVarA, content, pVarD, pVarB, i14, qVarC, scaffoldState2));
                if (qVar4 != null) {
                    composerS.G(-1013848234);
                    int i410 = i37 << 12;
                    DrawerKt.d(qVar4, modifier2, scaffoldState2.a(), z13, shapeA, f6, jN, j15, jB2, ComposableLambdaKt.b(composerS, 100842932, true, new ScaffoldKt$Scaffold$1(composableLambdaB)), composerS, ((i14 >> 24) & 14) | 805306368 | ((i14 << 3) & 112) | ((i14 >> 18) & 7168) | (i410 & 57344) | (i410 & 458752) | (i410 & 3670016) | (i410 & 29360128) | (i410 & 234881024), 0);
                    composerS.Q();
                } else {
                    composerS.G(-1013847725);
                    composableLambdaB.invoke(modifier2, composerS, Integer.valueOf((i14 & 14) | 48));
                    composerS.Q();
                }
                scaffoldState3 = scaffoldState2;
                pVar5 = pVarD;
                i38 = iB;
                f7 = f6;
                qVar5 = qVar4;
                z14 = z13;
                pVar6 = pVar110;
                pVar7 = pVar111;
                boolean z1115 = z11;
                shape2 = shapeA;
                qVar6 = qVarC;
                z15 = z1115;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ScaffoldKt$Scaffold$2(modifier2, scaffoldState3, pVar6, pVar7, qVar6, pVar5, i38, z15, qVar5, z14, shape2, f7, jN, j15, jB2, jC, j14, content, i11, i12, i13));
        }
        i14 |= 384;
        i15 = i13 & 8;
        if (i15 != 0) {
            if ((i11 & 7168) == 0) {
                if (composerS.k(pVar2)) {
                    i16 = 2048;
                } else {
                    i16 = 1024;
                }
                i14 |= i16;
            }
            i17 = i13 & 16;
            i18 = 8192;
            if (i17 != 0) {
                i14 |= CpioConstants.C_ISBLK;
            } else if ((i11 & 57344) == 0) {
                if (composerS.k(qVar)) {
                    i19 = 16384;
                } else {
                    i19 = 8192;
                }
                i14 |= i19;
            }
            i20 = i13 & 32;
            if (i20 != 0) {
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                pVar4 = pVar3;
            } else {
                pVar4 = pVar3;
                if ((i11 & 458752) == 0) {
                    if (composerS.k(pVar4)) {
                        i21 = 131072;
                    } else {
                        i21 = 65536;
                    }
                    i14 |= i21;
                }
            }
            i22 = i13 & 64;
            if (i22 != 0) {
                i14 |= 1572864;
                iB = i10;
            } else {
                iB = i10;
                if ((i11 & 3670016) == 0) {
                    if (composerS.p(iB)) {
                        i23 = 1048576;
                    } else {
                        i23 = 524288;
                    }
                    i14 |= i23;
                }
            }
            i24 = i13 & 128;
            if (i24 != 0) {
                i14 |= 12582912;
            } else if ((i11 & 29360128) == 0) {
                if (composerS.m(z6)) {
                    i25 = 8388608;
                } else {
                    i25 = 4194304;
                }
                i14 |= i25;
            }
            i26 = i13 & 256;
            if (i26 != 0) {
                i14 |= 100663296;
            } else if ((i11 & 234881024) == 0) {
                if (composerS.k(qVar2)) {
                    i27 = 67108864;
                } else {
                    i27 = 33554432;
                }
                i14 |= i27;
            }
            i28 = i13 & 512;
            if (i28 != 0) {
                i14 |= 805306368;
            } else if ((i11 & 1879048192) == 0) {
                if (composerS.m(z10)) {
                    i29 = 536870912;
                } else {
                    i29 = 268435456;
                }
                i14 |= i29;
            }
            if ((i12 & 14) == 0) {
                i30 = i12 | (((i13 & 1024) == 0 || !composerS.k(shape)) ? 2 : 4);
            } else {
                i30 = i12;
            }
            i31 = i13 & 2048;
            if (i31 != 0) {
                i30 |= 48;
            } else if ((i12 & 112) == 0) {
                if (composerS.n(f)) {
                    i32 = 32;
                } else {
                    i32 = 16;
                }
                i30 |= i32;
            }
            if ((i12 & 896) != 0) {
                i30 |= ((i13 & 4096) == 0 || !composerS.q(j6)) ? 128 : 256;
            }
            if ((i12 & 7168) != 0) {
                i30 |= ((i13 & 8192) == 0 || !composerS.q(j10)) ? 1024 : 2048;
            }
            if ((i12 & 57344) != 0) {
                if ((i13 & 16384) == 0) {
                    i18 = 16384;
                }
                i30 |= i18;
            }
            if ((i12 & 458752) != 0) {
                if ((i13 & 32768) == 0) {
                    i40 = 65536;
                } else {
                    i40 = 65536;
                }
                i30 |= i40;
            }
            if ((i12 & 3670016) != 0) {
                if ((i13 & 65536) == 0) {
                    i39 = 524288;
                } else {
                    i39 = 524288;
                }
                i30 |= i39;
            }
            if ((i13 & 131072) != 0) {
                if ((i12 & 29360128) == 0) {
                    if (composerS.k(content)) {
                        i33 = 8388608;
                    } else {
                        i33 = 4194304;
                    }
                }
                if ((i14 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i41 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i13 & 2) != 0) {
                            scaffoldStateF = f(null, null, composerS, 0, 3);
                            i14 &= -113;
                        } else {
                            scaffoldStateF = scaffoldState;
                        }
                        if (i42 != 0) {
                            pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                        } else {
                            pVarA = pVar;
                        }
                        if (i15 != 0) {
                            pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                        } else {
                            pVarB = pVar2;
                        }
                        if (i17 != 0) {
                            qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                        } else {
                            qVarC = qVar;
                        }
                        if (i20 != 0) {
                            pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                        } else {
                            pVarD = pVar3;
                        }
                        if (i22 != 0) {
                            iB = FabPosition.Companion.b();
                        }
                        if (i24 != 0) {
                            z11 = false;
                        } else {
                            z11 = z6;
                        }
                        if (i26 != 0) {
                            qVar3 = null;
                        } else {
                            qVar3 = qVar2;
                        }
                        if (i28 != 0) {
                            z12 = true;
                        } else {
                            z12 = z10;
                        }
                        scaffoldState2 = scaffoldStateF;
                        q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar110 = qVar3;
                        if ((i13 & 1024) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i30 &= -15;
                        } else {
                            shapeA = shape;
                        }
                        i34 = i30;
                        if (i31 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f;
                        }
                        if ((i13 & 4096) != 0) {
                            boolean z1116 = z12;
                            i35 = i34 & (-897);
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            z13 = z1116;
                        } else {
                            z13 = z12;
                            i35 = i34;
                            jN = j6;
                        }
                        float f113 = fA;
                        if ((i13 & 8192) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                            i35 &= -7169;
                        } else {
                            jB = j10;
                        }
                        if ((i13 & 16384) != 0) {
                            i36 = 6;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i35 &= -57345;
                        } else {
                            i36 = 6;
                            jB2 = j11;
                        }
                        if ((32768 & i13) != 0) {
                            jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                            i35 &= -458753;
                        } else {
                            jC = j12;
                        }
                        if ((i13 & 65536) != 0) {
                            long jB16 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                            i35 &= -3670017;
                            j14 = jB16;
                        } else {
                            j14 = j13;
                        }
                        j15 = jB;
                        f6 = f113;
                        i37 = i35;
                        qVar4 = qVar110;
                    } else {
                        if (i41 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i13 & 2) != 0) {
                            scaffoldStateF = f(null, null, composerS, 0, 3);
                            i14 &= -113;
                        } else {
                            scaffoldStateF = scaffoldState;
                        }
                        if (i42 != 0) {
                            pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                        } else {
                            pVarA = pVar;
                        }
                        if (i15 != 0) {
                            pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                        } else {
                            pVarB = pVar2;
                        }
                        if (i17 != 0) {
                            qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                        } else {
                            qVarC = qVar;
                        }
                        if (i20 != 0) {
                            pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                        } else {
                            pVarD = pVar3;
                        }
                        if (i22 != 0) {
                            iB = FabPosition.Companion.b();
                        }
                        if (i24 != 0) {
                            z11 = false;
                        } else {
                            z11 = z6;
                        }
                        if (i26 != 0) {
                            qVar3 = null;
                        } else {
                            qVar3 = qVar2;
                        }
                        if (i28 != 0) {
                            z12 = true;
                        } else {
                            z12 = z10;
                        }
                        scaffoldState2 = scaffoldStateF;
                        q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar111 = qVar3;
                        if ((i13 & 1024) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i30 &= -15;
                        } else {
                            shapeA = shape;
                        }
                        i34 = i30;
                        if (i31 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f;
                        }
                        if ((i13 & 4096) != 0) {
                            boolean z1117 = z12;
                            i35 = i34 & (-897);
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            z13 = z1117;
                        } else {
                            z13 = z12;
                            i35 = i34;
                            jN = j6;
                        }
                        float f114 = fA;
                        if ((i13 & 8192) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                            i35 &= -7169;
                        } else {
                            jB = j10;
                        }
                        if ((i13 & 16384) != 0) {
                            i36 = 6;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i35 &= -57345;
                        } else {
                            i36 = 6;
                            jB2 = j11;
                        }
                        if ((32768 & i13) != 0) {
                            jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                            i35 &= -458753;
                        } else {
                            jC = j12;
                        }
                        if ((i13 & 65536) != 0) {
                            long jB17 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                            i35 &= -3670017;
                            j14 = jB17;
                        } else {
                            j14 = j13;
                        }
                        j15 = jB;
                        f6 = f114;
                        i37 = i35;
                        qVar4 = qVar111;
                    }
                    composerS.A();
                    p<? super Composer, ? super Integer, l0> pVar112 = pVarA;
                    p<? super Composer, ? super Integer, l0> pVar113 = pVarB;
                    composableLambdaB = ComposableLambdaKt.b(composerS, 1823402604, true, new ScaffoldKt$Scaffold$child$1(jC, j14, i37, z11, iB, pVarA, content, pVarD, pVarB, i14, qVarC, scaffoldState2));
                    if (qVar4 != null) {
                        composerS.G(-1013848234);
                        int i411 = i37 << 12;
                        DrawerKt.d(qVar4, modifier2, scaffoldState2.a(), z13, shapeA, f6, jN, j15, jB2, ComposableLambdaKt.b(composerS, 100842932, true, new ScaffoldKt$Scaffold$1(composableLambdaB)), composerS, ((i14 >> 24) & 14) | 805306368 | ((i14 << 3) & 112) | ((i14 >> 18) & 7168) | (i411 & 57344) | (i411 & 458752) | (i411 & 3670016) | (i411 & 29360128) | (i411 & 234881024), 0);
                        composerS.Q();
                    } else {
                        composerS.G(-1013847725);
                        composableLambdaB.invoke(modifier2, composerS, Integer.valueOf((i14 & 14) | 48));
                        composerS.Q();
                    }
                    scaffoldState3 = scaffoldState2;
                    pVar5 = pVarD;
                    i38 = iB;
                    f7 = f6;
                    qVar5 = qVar4;
                    z14 = z13;
                    pVar6 = pVar112;
                    pVar7 = pVar113;
                    boolean z1118 = z11;
                    shape2 = shapeA;
                    qVar6 = qVarC;
                    z15 = z1118;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i41 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i13 & 2) != 0) {
                            scaffoldStateF = f(null, null, composerS, 0, 3);
                            i14 &= -113;
                        } else {
                            scaffoldStateF = scaffoldState;
                        }
                        if (i42 != 0) {
                            pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                        } else {
                            pVarA = pVar;
                        }
                        if (i15 != 0) {
                            pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                        } else {
                            pVarB = pVar2;
                        }
                        if (i17 != 0) {
                            qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                        } else {
                            qVarC = qVar;
                        }
                        if (i20 != 0) {
                            pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                        } else {
                            pVarD = pVar3;
                        }
                        if (i22 != 0) {
                            iB = FabPosition.Companion.b();
                        }
                        if (i24 != 0) {
                            z11 = false;
                        } else {
                            z11 = z6;
                        }
                        if (i26 != 0) {
                            qVar3 = null;
                        } else {
                            qVar3 = qVar2;
                        }
                        if (i28 != 0) {
                            z12 = true;
                        } else {
                            z12 = z10;
                        }
                        scaffoldState2 = scaffoldStateF;
                        q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar112 = qVar3;
                        if ((i13 & 1024) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i30 &= -15;
                        } else {
                            shapeA = shape;
                        }
                        i34 = i30;
                        if (i31 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f;
                        }
                        if ((i13 & 4096) != 0) {
                            boolean z1119 = z12;
                            i35 = i34 & (-897);
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            z13 = z1119;
                        } else {
                            z13 = z12;
                            i35 = i34;
                            jN = j6;
                        }
                        float f115 = fA;
                        if ((i13 & 8192) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                            i35 &= -7169;
                        } else {
                            jB = j10;
                        }
                        if ((i13 & 16384) != 0) {
                            i36 = 6;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i35 &= -57345;
                        } else {
                            i36 = 6;
                            jB2 = j11;
                        }
                        if ((32768 & i13) != 0) {
                            jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                            i35 &= -458753;
                        } else {
                            jC = j12;
                        }
                        if ((i13 & 65536) != 0) {
                            long jB18 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                            i35 &= -3670017;
                            j14 = jB18;
                        } else {
                            j14 = j13;
                        }
                        j15 = jB;
                        f6 = f115;
                        i37 = i35;
                        qVar4 = qVar112;
                    } else {
                        if (i41 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i13 & 2) != 0) {
                            scaffoldStateF = f(null, null, composerS, 0, 3);
                            i14 &= -113;
                        } else {
                            scaffoldStateF = scaffoldState;
                        }
                        if (i42 != 0) {
                            pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                        } else {
                            pVarA = pVar;
                        }
                        if (i15 != 0) {
                            pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                        } else {
                            pVarB = pVar2;
                        }
                        if (i17 != 0) {
                            qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                        } else {
                            qVarC = qVar;
                        }
                        if (i20 != 0) {
                            pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                        } else {
                            pVarD = pVar3;
                        }
                        if (i22 != 0) {
                            iB = FabPosition.Companion.b();
                        }
                        if (i24 != 0) {
                            z11 = false;
                        } else {
                            z11 = z6;
                        }
                        if (i26 != 0) {
                            qVar3 = null;
                        } else {
                            qVar3 = qVar2;
                        }
                        if (i28 != 0) {
                            z12 = true;
                        } else {
                            z12 = z10;
                        }
                        scaffoldState2 = scaffoldStateF;
                        q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar113 = qVar3;
                        if ((i13 & 1024) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i30 &= -15;
                        } else {
                            shapeA = shape;
                        }
                        i34 = i30;
                        if (i31 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f;
                        }
                        if ((i13 & 4096) != 0) {
                            boolean z11110 = z12;
                            i35 = i34 & (-897);
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            z13 = z11110;
                        } else {
                            z13 = z12;
                            i35 = i34;
                            jN = j6;
                        }
                        float f116 = fA;
                        if ((i13 & 8192) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                            i35 &= -7169;
                        } else {
                            jB = j10;
                        }
                        if ((i13 & 16384) != 0) {
                            i36 = 6;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i35 &= -57345;
                        } else {
                            i36 = 6;
                            jB2 = j11;
                        }
                        if ((32768 & i13) != 0) {
                            jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                            i35 &= -458753;
                        } else {
                            jC = j12;
                        }
                        if ((i13 & 65536) != 0) {
                            long jB19 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                            i35 &= -3670017;
                            j14 = jB19;
                        } else {
                            j14 = j13;
                        }
                        j15 = jB;
                        f6 = f116;
                        i37 = i35;
                        qVar4 = qVar113;
                    }
                    composerS.A();
                    p<? super Composer, ? super Integer, l0> pVar114 = pVarA;
                    p<? super Composer, ? super Integer, l0> pVar115 = pVarB;
                    composableLambdaB = ComposableLambdaKt.b(composerS, 1823402604, true, new ScaffoldKt$Scaffold$child$1(jC, j14, i37, z11, iB, pVarA, content, pVarD, pVarB, i14, qVarC, scaffoldState2));
                    if (qVar4 != null) {
                        composerS.G(-1013848234);
                        int i412 = i37 << 12;
                        DrawerKt.d(qVar4, modifier2, scaffoldState2.a(), z13, shapeA, f6, jN, j15, jB2, ComposableLambdaKt.b(composerS, 100842932, true, new ScaffoldKt$Scaffold$1(composableLambdaB)), composerS, ((i14 >> 24) & 14) | 805306368 | ((i14 << 3) & 112) | ((i14 >> 18) & 7168) | (i412 & 57344) | (i412 & 458752) | (i412 & 3670016) | (i412 & 29360128) | (i412 & 234881024), 0);
                        composerS.Q();
                    } else {
                        composerS.G(-1013847725);
                        composableLambdaB.invoke(modifier2, composerS, Integer.valueOf((i14 & 14) | 48));
                        composerS.Q();
                    }
                    scaffoldState3 = scaffoldState2;
                    pVar5 = pVarD;
                    i38 = iB;
                    f7 = f6;
                    qVar5 = qVar4;
                    z14 = z13;
                    pVar6 = pVar114;
                    pVar7 = pVar115;
                    boolean z11111 = z11;
                    shape2 = shapeA;
                    qVar6 = qVarC;
                    z15 = z11111;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ScaffoldKt$Scaffold$2(modifier2, scaffoldState3, pVar6, pVar7, qVar6, pVar5, i38, z15, qVar5, z14, shape2, f7, jN, j15, jB2, jC, j14, content, i11, i12, i13));
            }
            i33 = 12582912;
            i30 |= i33;
            if ((i14 & 1533916891) != 306783378) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i41 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i13 & 2) != 0) {
                        scaffoldStateF = f(null, null, composerS, 0, 3);
                        i14 &= -113;
                    } else {
                        scaffoldStateF = scaffoldState;
                    }
                    if (i42 != 0) {
                        pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                    } else {
                        pVarA = pVar;
                    }
                    if (i15 != 0) {
                        pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                    } else {
                        pVarB = pVar2;
                    }
                    if (i17 != 0) {
                        qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                    } else {
                        qVarC = qVar;
                    }
                    if (i20 != 0) {
                        pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                    } else {
                        pVarD = pVar3;
                    }
                    if (i22 != 0) {
                        iB = FabPosition.Companion.b();
                    }
                    if (i24 != 0) {
                        z11 = false;
                    } else {
                        z11 = z6;
                    }
                    if (i26 != 0) {
                        qVar3 = null;
                    } else {
                        qVar3 = qVar2;
                    }
                    if (i28 != 0) {
                        z12 = true;
                    } else {
                        z12 = z10;
                    }
                    scaffoldState2 = scaffoldStateF;
                    q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar114 = qVar3;
                    if ((i13 & 1024) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i30 &= -15;
                    } else {
                        shapeA = shape;
                    }
                    i34 = i30;
                    if (i31 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f;
                    }
                    if ((i13 & 4096) != 0) {
                        boolean z11112 = z12;
                        i35 = i34 & (-897);
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        z13 = z11112;
                    } else {
                        z13 = z12;
                        i35 = i34;
                        jN = j6;
                    }
                    float f117 = fA;
                    if ((i13 & 8192) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                        i35 &= -7169;
                    } else {
                        jB = j10;
                    }
                    if ((i13 & 16384) != 0) {
                        i36 = 6;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i35 &= -57345;
                    } else {
                        i36 = 6;
                        jB2 = j11;
                    }
                    if ((32768 & i13) != 0) {
                        jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                        i35 &= -458753;
                    } else {
                        jC = j12;
                    }
                    if ((i13 & 65536) != 0) {
                        long jB110 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                        i35 &= -3670017;
                        j14 = jB110;
                    } else {
                        j14 = j13;
                    }
                    j15 = jB;
                    f6 = f117;
                    i37 = i35;
                    qVar4 = qVar114;
                } else {
                    if (i41 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i13 & 2) != 0) {
                        scaffoldStateF = f(null, null, composerS, 0, 3);
                        i14 &= -113;
                    } else {
                        scaffoldStateF = scaffoldState;
                    }
                    if (i42 != 0) {
                        pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                    } else {
                        pVarA = pVar;
                    }
                    if (i15 != 0) {
                        pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                    } else {
                        pVarB = pVar2;
                    }
                    if (i17 != 0) {
                        qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                    } else {
                        qVarC = qVar;
                    }
                    if (i20 != 0) {
                        pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                    } else {
                        pVarD = pVar3;
                    }
                    if (i22 != 0) {
                        iB = FabPosition.Companion.b();
                    }
                    if (i24 != 0) {
                        z11 = false;
                    } else {
                        z11 = z6;
                    }
                    if (i26 != 0) {
                        qVar3 = null;
                    } else {
                        qVar3 = qVar2;
                    }
                    if (i28 != 0) {
                        z12 = true;
                    } else {
                        z12 = z10;
                    }
                    scaffoldState2 = scaffoldStateF;
                    q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar115 = qVar3;
                    if ((i13 & 1024) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i30 &= -15;
                    } else {
                        shapeA = shape;
                    }
                    i34 = i30;
                    if (i31 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f;
                    }
                    if ((i13 & 4096) != 0) {
                        boolean z11113 = z12;
                        i35 = i34 & (-897);
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        z13 = z11113;
                    } else {
                        z13 = z12;
                        i35 = i34;
                        jN = j6;
                    }
                    float f118 = fA;
                    if ((i13 & 8192) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                        i35 &= -7169;
                    } else {
                        jB = j10;
                    }
                    if ((i13 & 16384) != 0) {
                        i36 = 6;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i35 &= -57345;
                    } else {
                        i36 = 6;
                        jB2 = j11;
                    }
                    if ((32768 & i13) != 0) {
                        jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                        i35 &= -458753;
                    } else {
                        jC = j12;
                    }
                    if ((i13 & 65536) != 0) {
                        long jB111 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                        i35 &= -3670017;
                        j14 = jB111;
                    } else {
                        j14 = j13;
                    }
                    j15 = jB;
                    f6 = f118;
                    i37 = i35;
                    qVar4 = qVar115;
                }
                composerS.A();
                p<? super Composer, ? super Integer, l0> pVar116 = pVarA;
                p<? super Composer, ? super Integer, l0> pVar117 = pVarB;
                composableLambdaB = ComposableLambdaKt.b(composerS, 1823402604, true, new ScaffoldKt$Scaffold$child$1(jC, j14, i37, z11, iB, pVarA, content, pVarD, pVarB, i14, qVarC, scaffoldState2));
                if (qVar4 != null) {
                    composerS.G(-1013848234);
                    int i413 = i37 << 12;
                    DrawerKt.d(qVar4, modifier2, scaffoldState2.a(), z13, shapeA, f6, jN, j15, jB2, ComposableLambdaKt.b(composerS, 100842932, true, new ScaffoldKt$Scaffold$1(composableLambdaB)), composerS, ((i14 >> 24) & 14) | 805306368 | ((i14 << 3) & 112) | ((i14 >> 18) & 7168) | (i413 & 57344) | (i413 & 458752) | (i413 & 3670016) | (i413 & 29360128) | (i413 & 234881024), 0);
                    composerS.Q();
                } else {
                    composerS.G(-1013847725);
                    composableLambdaB.invoke(modifier2, composerS, Integer.valueOf((i14 & 14) | 48));
                    composerS.Q();
                }
                scaffoldState3 = scaffoldState2;
                pVar5 = pVarD;
                i38 = iB;
                f7 = f6;
                qVar5 = qVar4;
                z14 = z13;
                pVar6 = pVar116;
                pVar7 = pVar117;
                boolean z11114 = z11;
                shape2 = shapeA;
                qVar6 = qVarC;
                z15 = z11114;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i41 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i13 & 2) != 0) {
                        scaffoldStateF = f(null, null, composerS, 0, 3);
                        i14 &= -113;
                    } else {
                        scaffoldStateF = scaffoldState;
                    }
                    if (i42 != 0) {
                        pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                    } else {
                        pVarA = pVar;
                    }
                    if (i15 != 0) {
                        pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                    } else {
                        pVarB = pVar2;
                    }
                    if (i17 != 0) {
                        qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                    } else {
                        qVarC = qVar;
                    }
                    if (i20 != 0) {
                        pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                    } else {
                        pVarD = pVar3;
                    }
                    if (i22 != 0) {
                        iB = FabPosition.Companion.b();
                    }
                    if (i24 != 0) {
                        z11 = false;
                    } else {
                        z11 = z6;
                    }
                    if (i26 != 0) {
                        qVar3 = null;
                    } else {
                        qVar3 = qVar2;
                    }
                    if (i28 != 0) {
                        z12 = true;
                    } else {
                        z12 = z10;
                    }
                    scaffoldState2 = scaffoldStateF;
                    q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar116 = qVar3;
                    if ((i13 & 1024) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i30 &= -15;
                    } else {
                        shapeA = shape;
                    }
                    i34 = i30;
                    if (i31 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f;
                    }
                    if ((i13 & 4096) != 0) {
                        boolean z11115 = z12;
                        i35 = i34 & (-897);
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        z13 = z11115;
                    } else {
                        z13 = z12;
                        i35 = i34;
                        jN = j6;
                    }
                    float f119 = fA;
                    if ((i13 & 8192) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                        i35 &= -7169;
                    } else {
                        jB = j10;
                    }
                    if ((i13 & 16384) != 0) {
                        i36 = 6;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i35 &= -57345;
                    } else {
                        i36 = 6;
                        jB2 = j11;
                    }
                    if ((32768 & i13) != 0) {
                        jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                        i35 &= -458753;
                    } else {
                        jC = j12;
                    }
                    if ((i13 & 65536) != 0) {
                        long jB112 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                        i35 &= -3670017;
                        j14 = jB112;
                    } else {
                        j14 = j13;
                    }
                    j15 = jB;
                    f6 = f119;
                    i37 = i35;
                    qVar4 = qVar116;
                } else {
                    if (i41 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i13 & 2) != 0) {
                        scaffoldStateF = f(null, null, composerS, 0, 3);
                        i14 &= -113;
                    } else {
                        scaffoldStateF = scaffoldState;
                    }
                    if (i42 != 0) {
                        pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                    } else {
                        pVarA = pVar;
                    }
                    if (i15 != 0) {
                        pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                    } else {
                        pVarB = pVar2;
                    }
                    if (i17 != 0) {
                        qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                    } else {
                        qVarC = qVar;
                    }
                    if (i20 != 0) {
                        pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                    } else {
                        pVarD = pVar3;
                    }
                    if (i22 != 0) {
                        iB = FabPosition.Companion.b();
                    }
                    if (i24 != 0) {
                        z11 = false;
                    } else {
                        z11 = z6;
                    }
                    if (i26 != 0) {
                        qVar3 = null;
                    } else {
                        qVar3 = qVar2;
                    }
                    if (i28 != 0) {
                        z12 = true;
                    } else {
                        z12 = z10;
                    }
                    scaffoldState2 = scaffoldStateF;
                    q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar117 = qVar3;
                    if ((i13 & 1024) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i30 &= -15;
                    } else {
                        shapeA = shape;
                    }
                    i34 = i30;
                    if (i31 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f;
                    }
                    if ((i13 & 4096) != 0) {
                        boolean z11116 = z12;
                        i35 = i34 & (-897);
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        z13 = z11116;
                    } else {
                        z13 = z12;
                        i35 = i34;
                        jN = j6;
                    }
                    float f1110 = fA;
                    if ((i13 & 8192) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                        i35 &= -7169;
                    } else {
                        jB = j10;
                    }
                    if ((i13 & 16384) != 0) {
                        i36 = 6;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i35 &= -57345;
                    } else {
                        i36 = 6;
                        jB2 = j11;
                    }
                    if ((32768 & i13) != 0) {
                        jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                        i35 &= -458753;
                    } else {
                        jC = j12;
                    }
                    if ((i13 & 65536) != 0) {
                        long jB113 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                        i35 &= -3670017;
                        j14 = jB113;
                    } else {
                        j14 = j13;
                    }
                    j15 = jB;
                    f6 = f1110;
                    i37 = i35;
                    qVar4 = qVar117;
                }
                composerS.A();
                p<? super Composer, ? super Integer, l0> pVar118 = pVarA;
                p<? super Composer, ? super Integer, l0> pVar119 = pVarB;
                composableLambdaB = ComposableLambdaKt.b(composerS, 1823402604, true, new ScaffoldKt$Scaffold$child$1(jC, j14, i37, z11, iB, pVarA, content, pVarD, pVarB, i14, qVarC, scaffoldState2));
                if (qVar4 != null) {
                    composerS.G(-1013848234);
                    int i414 = i37 << 12;
                    DrawerKt.d(qVar4, modifier2, scaffoldState2.a(), z13, shapeA, f6, jN, j15, jB2, ComposableLambdaKt.b(composerS, 100842932, true, new ScaffoldKt$Scaffold$1(composableLambdaB)), composerS, ((i14 >> 24) & 14) | 805306368 | ((i14 << 3) & 112) | ((i14 >> 18) & 7168) | (i414 & 57344) | (i414 & 458752) | (i414 & 3670016) | (i414 & 29360128) | (i414 & 234881024), 0);
                    composerS.Q();
                } else {
                    composerS.G(-1013847725);
                    composableLambdaB.invoke(modifier2, composerS, Integer.valueOf((i14 & 14) | 48));
                    composerS.Q();
                }
                scaffoldState3 = scaffoldState2;
                pVar5 = pVarD;
                i38 = iB;
                f7 = f6;
                qVar5 = qVar4;
                z14 = z13;
                pVar6 = pVar118;
                pVar7 = pVar119;
                boolean z11117 = z11;
                shape2 = shapeA;
                qVar6 = qVarC;
                z15 = z11117;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ScaffoldKt$Scaffold$2(modifier2, scaffoldState3, pVar6, pVar7, qVar6, pVar5, i38, z15, qVar5, z14, shape2, f7, jN, j15, jB2, jC, j14, content, i11, i12, i13));
        }
        i14 |= 3072;
        i17 = i13 & 16;
        i18 = 8192;
        if (i17 != 0) {
            i14 |= CpioConstants.C_ISBLK;
        } else if ((i11 & 57344) == 0) {
            if (composerS.k(qVar)) {
                i19 = 16384;
            } else {
                i19 = 8192;
            }
            i14 |= i19;
        }
        i20 = i13 & 32;
        if (i20 != 0) {
            i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            pVar4 = pVar3;
        } else {
            pVar4 = pVar3;
            if ((i11 & 458752) == 0) {
                if (composerS.k(pVar4)) {
                    i21 = 131072;
                } else {
                    i21 = 65536;
                }
                i14 |= i21;
            }
        }
        i22 = i13 & 64;
        if (i22 != 0) {
            i14 |= 1572864;
            iB = i10;
        } else {
            iB = i10;
            if ((i11 & 3670016) == 0) {
                if (composerS.p(iB)) {
                    i23 = 1048576;
                } else {
                    i23 = 524288;
                }
                i14 |= i23;
            }
        }
        i24 = i13 & 128;
        if (i24 != 0) {
            i14 |= 12582912;
        } else if ((i11 & 29360128) == 0) {
            if (composerS.m(z6)) {
                i25 = 8388608;
            } else {
                i25 = 4194304;
            }
            i14 |= i25;
        }
        i26 = i13 & 256;
        if (i26 != 0) {
            i14 |= 100663296;
        } else if ((i11 & 234881024) == 0) {
            if (composerS.k(qVar2)) {
                i27 = 67108864;
            } else {
                i27 = 33554432;
            }
            i14 |= i27;
        }
        i28 = i13 & 512;
        if (i28 != 0) {
            i14 |= 805306368;
        } else if ((i11 & 1879048192) == 0) {
            if (composerS.m(z10)) {
                i29 = 536870912;
            } else {
                i29 = 268435456;
            }
            i14 |= i29;
        }
        if ((i12 & 14) == 0) {
            i30 = i12 | (((i13 & 1024) == 0 || !composerS.k(shape)) ? 2 : 4);
        } else {
            i30 = i12;
        }
        i31 = i13 & 2048;
        if (i31 != 0) {
            i30 |= 48;
        } else if ((i12 & 112) == 0) {
            if (composerS.n(f)) {
                i32 = 32;
            } else {
                i32 = 16;
            }
            i30 |= i32;
        }
        if ((i12 & 896) != 0) {
            i30 |= ((i13 & 4096) == 0 || !composerS.q(j6)) ? 128 : 256;
        }
        if ((i12 & 7168) != 0) {
            i30 |= ((i13 & 8192) == 0 || !composerS.q(j10)) ? 1024 : 2048;
        }
        if ((i12 & 57344) != 0) {
            if ((i13 & 16384) == 0) {
                i18 = 16384;
            }
            i30 |= i18;
        }
        if ((i12 & 458752) != 0) {
            if ((i13 & 32768) == 0) {
                i40 = 65536;
            } else {
                i40 = 65536;
            }
            i30 |= i40;
        }
        if ((i12 & 3670016) != 0) {
            if ((i13 & 65536) == 0) {
                i39 = 524288;
            } else {
                i39 = 524288;
            }
            i30 |= i39;
        }
        if ((i13 & 131072) != 0) {
            if ((i12 & 29360128) == 0) {
                if (composerS.k(content)) {
                    i33 = 8388608;
                } else {
                    i33 = 4194304;
                }
            }
            if ((i14 & 1533916891) != 306783378) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i41 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i13 & 2) != 0) {
                        scaffoldStateF = f(null, null, composerS, 0, 3);
                        i14 &= -113;
                    } else {
                        scaffoldStateF = scaffoldState;
                    }
                    if (i42 != 0) {
                        pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                    } else {
                        pVarA = pVar;
                    }
                    if (i15 != 0) {
                        pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                    } else {
                        pVarB = pVar2;
                    }
                    if (i17 != 0) {
                        qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                    } else {
                        qVarC = qVar;
                    }
                    if (i20 != 0) {
                        pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                    } else {
                        pVarD = pVar3;
                    }
                    if (i22 != 0) {
                        iB = FabPosition.Companion.b();
                    }
                    if (i24 != 0) {
                        z11 = false;
                    } else {
                        z11 = z6;
                    }
                    if (i26 != 0) {
                        qVar3 = null;
                    } else {
                        qVar3 = qVar2;
                    }
                    if (i28 != 0) {
                        z12 = true;
                    } else {
                        z12 = z10;
                    }
                    scaffoldState2 = scaffoldStateF;
                    q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar118 = qVar3;
                    if ((i13 & 1024) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i30 &= -15;
                    } else {
                        shapeA = shape;
                    }
                    i34 = i30;
                    if (i31 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f;
                    }
                    if ((i13 & 4096) != 0) {
                        boolean z11118 = z12;
                        i35 = i34 & (-897);
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        z13 = z11118;
                    } else {
                        z13 = z12;
                        i35 = i34;
                        jN = j6;
                    }
                    float f1111 = fA;
                    if ((i13 & 8192) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                        i35 &= -7169;
                    } else {
                        jB = j10;
                    }
                    if ((i13 & 16384) != 0) {
                        i36 = 6;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i35 &= -57345;
                    } else {
                        i36 = 6;
                        jB2 = j11;
                    }
                    if ((32768 & i13) != 0) {
                        jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                        i35 &= -458753;
                    } else {
                        jC = j12;
                    }
                    if ((i13 & 65536) != 0) {
                        long jB114 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                        i35 &= -3670017;
                        j14 = jB114;
                    } else {
                        j14 = j13;
                    }
                    j15 = jB;
                    f6 = f1111;
                    i37 = i35;
                    qVar4 = qVar118;
                } else {
                    if (i41 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i13 & 2) != 0) {
                        scaffoldStateF = f(null, null, composerS, 0, 3);
                        i14 &= -113;
                    } else {
                        scaffoldStateF = scaffoldState;
                    }
                    if (i42 != 0) {
                        pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                    } else {
                        pVarA = pVar;
                    }
                    if (i15 != 0) {
                        pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                    } else {
                        pVarB = pVar2;
                    }
                    if (i17 != 0) {
                        qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                    } else {
                        qVarC = qVar;
                    }
                    if (i20 != 0) {
                        pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                    } else {
                        pVarD = pVar3;
                    }
                    if (i22 != 0) {
                        iB = FabPosition.Companion.b();
                    }
                    if (i24 != 0) {
                        z11 = false;
                    } else {
                        z11 = z6;
                    }
                    if (i26 != 0) {
                        qVar3 = null;
                    } else {
                        qVar3 = qVar2;
                    }
                    if (i28 != 0) {
                        z12 = true;
                    } else {
                        z12 = z10;
                    }
                    scaffoldState2 = scaffoldStateF;
                    q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar119 = qVar3;
                    if ((i13 & 1024) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i30 &= -15;
                    } else {
                        shapeA = shape;
                    }
                    i34 = i30;
                    if (i31 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f;
                    }
                    if ((i13 & 4096) != 0) {
                        boolean z11119 = z12;
                        i35 = i34 & (-897);
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        z13 = z11119;
                    } else {
                        z13 = z12;
                        i35 = i34;
                        jN = j6;
                    }
                    float f1112 = fA;
                    if ((i13 & 8192) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                        i35 &= -7169;
                    } else {
                        jB = j10;
                    }
                    if ((i13 & 16384) != 0) {
                        i36 = 6;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i35 &= -57345;
                    } else {
                        i36 = 6;
                        jB2 = j11;
                    }
                    if ((32768 & i13) != 0) {
                        jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                        i35 &= -458753;
                    } else {
                        jC = j12;
                    }
                    if ((i13 & 65536) != 0) {
                        long jB115 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                        i35 &= -3670017;
                        j14 = jB115;
                    } else {
                        j14 = j13;
                    }
                    j15 = jB;
                    f6 = f1112;
                    i37 = i35;
                    qVar4 = qVar119;
                }
                composerS.A();
                p<? super Composer, ? super Integer, l0> pVar1110 = pVarA;
                p<? super Composer, ? super Integer, l0> pVar1111 = pVarB;
                composableLambdaB = ComposableLambdaKt.b(composerS, 1823402604, true, new ScaffoldKt$Scaffold$child$1(jC, j14, i37, z11, iB, pVarA, content, pVarD, pVarB, i14, qVarC, scaffoldState2));
                if (qVar4 != null) {
                    composerS.G(-1013848234);
                    int i415 = i37 << 12;
                    DrawerKt.d(qVar4, modifier2, scaffoldState2.a(), z13, shapeA, f6, jN, j15, jB2, ComposableLambdaKt.b(composerS, 100842932, true, new ScaffoldKt$Scaffold$1(composableLambdaB)), composerS, ((i14 >> 24) & 14) | 805306368 | ((i14 << 3) & 112) | ((i14 >> 18) & 7168) | (i415 & 57344) | (i415 & 458752) | (i415 & 3670016) | (i415 & 29360128) | (i415 & 234881024), 0);
                    composerS.Q();
                } else {
                    composerS.G(-1013847725);
                    composableLambdaB.invoke(modifier2, composerS, Integer.valueOf((i14 & 14) | 48));
                    composerS.Q();
                }
                scaffoldState3 = scaffoldState2;
                pVar5 = pVarD;
                i38 = iB;
                f7 = f6;
                qVar5 = qVar4;
                z14 = z13;
                pVar6 = pVar1110;
                pVar7 = pVar1111;
                boolean z111110 = z11;
                shape2 = shapeA;
                qVar6 = qVarC;
                z15 = z111110;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i41 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i13 & 2) != 0) {
                        scaffoldStateF = f(null, null, composerS, 0, 3);
                        i14 &= -113;
                    } else {
                        scaffoldStateF = scaffoldState;
                    }
                    if (i42 != 0) {
                        pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                    } else {
                        pVarA = pVar;
                    }
                    if (i15 != 0) {
                        pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                    } else {
                        pVarB = pVar2;
                    }
                    if (i17 != 0) {
                        qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                    } else {
                        qVarC = qVar;
                    }
                    if (i20 != 0) {
                        pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                    } else {
                        pVarD = pVar3;
                    }
                    if (i22 != 0) {
                        iB = FabPosition.Companion.b();
                    }
                    if (i24 != 0) {
                        z11 = false;
                    } else {
                        z11 = z6;
                    }
                    if (i26 != 0) {
                        qVar3 = null;
                    } else {
                        qVar3 = qVar2;
                    }
                    if (i28 != 0) {
                        z12 = true;
                    } else {
                        z12 = z10;
                    }
                    scaffoldState2 = scaffoldStateF;
                    q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar1110 = qVar3;
                    if ((i13 & 1024) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i30 &= -15;
                    } else {
                        shapeA = shape;
                    }
                    i34 = i30;
                    if (i31 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f;
                    }
                    if ((i13 & 4096) != 0) {
                        boolean z111111 = z12;
                        i35 = i34 & (-897);
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        z13 = z111111;
                    } else {
                        z13 = z12;
                        i35 = i34;
                        jN = j6;
                    }
                    float f1113 = fA;
                    if ((i13 & 8192) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                        i35 &= -7169;
                    } else {
                        jB = j10;
                    }
                    if ((i13 & 16384) != 0) {
                        i36 = 6;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i35 &= -57345;
                    } else {
                        i36 = 6;
                        jB2 = j11;
                    }
                    if ((32768 & i13) != 0) {
                        jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                        i35 &= -458753;
                    } else {
                        jC = j12;
                    }
                    if ((i13 & 65536) != 0) {
                        long jB116 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                        i35 &= -3670017;
                        j14 = jB116;
                    } else {
                        j14 = j13;
                    }
                    j15 = jB;
                    f6 = f1113;
                    i37 = i35;
                    qVar4 = qVar1110;
                } else {
                    if (i41 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i13 & 2) != 0) {
                        scaffoldStateF = f(null, null, composerS, 0, 3);
                        i14 &= -113;
                    } else {
                        scaffoldStateF = scaffoldState;
                    }
                    if (i42 != 0) {
                        pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                    } else {
                        pVarA = pVar;
                    }
                    if (i15 != 0) {
                        pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                    } else {
                        pVarB = pVar2;
                    }
                    if (i17 != 0) {
                        qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                    } else {
                        qVarC = qVar;
                    }
                    if (i20 != 0) {
                        pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                    } else {
                        pVarD = pVar3;
                    }
                    if (i22 != 0) {
                        iB = FabPosition.Companion.b();
                    }
                    if (i24 != 0) {
                        z11 = false;
                    } else {
                        z11 = z6;
                    }
                    if (i26 != 0) {
                        qVar3 = null;
                    } else {
                        qVar3 = qVar2;
                    }
                    if (i28 != 0) {
                        z12 = true;
                    } else {
                        z12 = z10;
                    }
                    scaffoldState2 = scaffoldStateF;
                    q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar1111 = qVar3;
                    if ((i13 & 1024) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i30 &= -15;
                    } else {
                        shapeA = shape;
                    }
                    i34 = i30;
                    if (i31 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f;
                    }
                    if ((i13 & 4096) != 0) {
                        boolean z111112 = z12;
                        i35 = i34 & (-897);
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        z13 = z111112;
                    } else {
                        z13 = z12;
                        i35 = i34;
                        jN = j6;
                    }
                    float f1114 = fA;
                    if ((i13 & 8192) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                        i35 &= -7169;
                    } else {
                        jB = j10;
                    }
                    if ((i13 & 16384) != 0) {
                        i36 = 6;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i35 &= -57345;
                    } else {
                        i36 = 6;
                        jB2 = j11;
                    }
                    if ((32768 & i13) != 0) {
                        jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                        i35 &= -458753;
                    } else {
                        jC = j12;
                    }
                    if ((i13 & 65536) != 0) {
                        long jB117 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                        i35 &= -3670017;
                        j14 = jB117;
                    } else {
                        j14 = j13;
                    }
                    j15 = jB;
                    f6 = f1114;
                    i37 = i35;
                    qVar4 = qVar1111;
                }
                composerS.A();
                p<? super Composer, ? super Integer, l0> pVar1112 = pVarA;
                p<? super Composer, ? super Integer, l0> pVar1113 = pVarB;
                composableLambdaB = ComposableLambdaKt.b(composerS, 1823402604, true, new ScaffoldKt$Scaffold$child$1(jC, j14, i37, z11, iB, pVarA, content, pVarD, pVarB, i14, qVarC, scaffoldState2));
                if (qVar4 != null) {
                    composerS.G(-1013848234);
                    int i416 = i37 << 12;
                    DrawerKt.d(qVar4, modifier2, scaffoldState2.a(), z13, shapeA, f6, jN, j15, jB2, ComposableLambdaKt.b(composerS, 100842932, true, new ScaffoldKt$Scaffold$1(composableLambdaB)), composerS, ((i14 >> 24) & 14) | 805306368 | ((i14 << 3) & 112) | ((i14 >> 18) & 7168) | (i416 & 57344) | (i416 & 458752) | (i416 & 3670016) | (i416 & 29360128) | (i416 & 234881024), 0);
                    composerS.Q();
                } else {
                    composerS.G(-1013847725);
                    composableLambdaB.invoke(modifier2, composerS, Integer.valueOf((i14 & 14) | 48));
                    composerS.Q();
                }
                scaffoldState3 = scaffoldState2;
                pVar5 = pVarD;
                i38 = iB;
                f7 = f6;
                qVar5 = qVar4;
                z14 = z13;
                pVar6 = pVar1112;
                pVar7 = pVar1113;
                boolean z111113 = z11;
                shape2 = shapeA;
                qVar6 = qVarC;
                z15 = z111113;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ScaffoldKt$Scaffold$2(modifier2, scaffoldState3, pVar6, pVar7, qVar6, pVar5, i38, z15, qVar5, z14, shape2, f7, jN, j15, jB2, jC, j14, content, i11, i12, i13));
        }
        i33 = 12582912;
        i30 |= i33;
        if ((i14 & 1533916891) != 306783378) {
            composerS.J();
            if ((i11 & 1) != 0) {
                if (i41 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i13 & 2) != 0) {
                    scaffoldStateF = f(null, null, composerS, 0, 3);
                    i14 &= -113;
                } else {
                    scaffoldStateF = scaffoldState;
                }
                if (i42 != 0) {
                    pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                } else {
                    pVarA = pVar;
                }
                if (i15 != 0) {
                    pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                } else {
                    pVarB = pVar2;
                }
                if (i17 != 0) {
                    qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                } else {
                    qVarC = qVar;
                }
                if (i20 != 0) {
                    pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                } else {
                    pVarD = pVar3;
                }
                if (i22 != 0) {
                    iB = FabPosition.Companion.b();
                }
                if (i24 != 0) {
                    z11 = false;
                } else {
                    z11 = z6;
                }
                if (i26 != 0) {
                    qVar3 = null;
                } else {
                    qVar3 = qVar2;
                }
                if (i28 != 0) {
                    z12 = true;
                } else {
                    z12 = z10;
                }
                scaffoldState2 = scaffoldStateF;
                q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar1112 = qVar3;
                if ((i13 & 1024) != 0) {
                    shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                    i30 &= -15;
                } else {
                    shapeA = shape;
                }
                i34 = i30;
                if (i31 != 0) {
                    fA = DrawerDefaults.INSTANCE.a();
                } else {
                    fA = f;
                }
                if ((i13 & 4096) != 0) {
                    boolean z111114 = z12;
                    i35 = i34 & (-897);
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    z13 = z111114;
                } else {
                    z13 = z12;
                    i35 = i34;
                    jN = j6;
                }
                float f1115 = fA;
                if ((i13 & 8192) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                    i35 &= -7169;
                } else {
                    jB = j10;
                }
                if ((i13 & 16384) != 0) {
                    i36 = 6;
                    jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                    i35 &= -57345;
                } else {
                    i36 = 6;
                    jB2 = j11;
                }
                if ((32768 & i13) != 0) {
                    jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                    i35 &= -458753;
                } else {
                    jC = j12;
                }
                if ((i13 & 65536) != 0) {
                    long jB118 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                    i35 &= -3670017;
                    j14 = jB118;
                } else {
                    j14 = j13;
                }
                j15 = jB;
                f6 = f1115;
                i37 = i35;
                qVar4 = qVar1112;
            } else {
                if (i41 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i13 & 2) != 0) {
                    scaffoldStateF = f(null, null, composerS, 0, 3);
                    i14 &= -113;
                } else {
                    scaffoldStateF = scaffoldState;
                }
                if (i42 != 0) {
                    pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                } else {
                    pVarA = pVar;
                }
                if (i15 != 0) {
                    pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                } else {
                    pVarB = pVar2;
                }
                if (i17 != 0) {
                    qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                } else {
                    qVarC = qVar;
                }
                if (i20 != 0) {
                    pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                } else {
                    pVarD = pVar3;
                }
                if (i22 != 0) {
                    iB = FabPosition.Companion.b();
                }
                if (i24 != 0) {
                    z11 = false;
                } else {
                    z11 = z6;
                }
                if (i26 != 0) {
                    qVar3 = null;
                } else {
                    qVar3 = qVar2;
                }
                if (i28 != 0) {
                    z12 = true;
                } else {
                    z12 = z10;
                }
                scaffoldState2 = scaffoldStateF;
                q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar1113 = qVar3;
                if ((i13 & 1024) != 0) {
                    shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                    i30 &= -15;
                } else {
                    shapeA = shape;
                }
                i34 = i30;
                if (i31 != 0) {
                    fA = DrawerDefaults.INSTANCE.a();
                } else {
                    fA = f;
                }
                if ((i13 & 4096) != 0) {
                    boolean z111115 = z12;
                    i35 = i34 & (-897);
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    z13 = z111115;
                } else {
                    z13 = z12;
                    i35 = i34;
                    jN = j6;
                }
                float f1116 = fA;
                if ((i13 & 8192) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                    i35 &= -7169;
                } else {
                    jB = j10;
                }
                if ((i13 & 16384) != 0) {
                    i36 = 6;
                    jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                    i35 &= -57345;
                } else {
                    i36 = 6;
                    jB2 = j11;
                }
                if ((32768 & i13) != 0) {
                    jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                    i35 &= -458753;
                } else {
                    jC = j12;
                }
                if ((i13 & 65536) != 0) {
                    long jB119 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                    i35 &= -3670017;
                    j14 = jB119;
                } else {
                    j14 = j13;
                }
                j15 = jB;
                f6 = f1116;
                i37 = i35;
                qVar4 = qVar1113;
            }
            composerS.A();
            p<? super Composer, ? super Integer, l0> pVar1114 = pVarA;
            p<? super Composer, ? super Integer, l0> pVar1115 = pVarB;
            composableLambdaB = ComposableLambdaKt.b(composerS, 1823402604, true, new ScaffoldKt$Scaffold$child$1(jC, j14, i37, z11, iB, pVarA, content, pVarD, pVarB, i14, qVarC, scaffoldState2));
            if (qVar4 != null) {
                composerS.G(-1013848234);
                int i417 = i37 << 12;
                DrawerKt.d(qVar4, modifier2, scaffoldState2.a(), z13, shapeA, f6, jN, j15, jB2, ComposableLambdaKt.b(composerS, 100842932, true, new ScaffoldKt$Scaffold$1(composableLambdaB)), composerS, ((i14 >> 24) & 14) | 805306368 | ((i14 << 3) & 112) | ((i14 >> 18) & 7168) | (i417 & 57344) | (i417 & 458752) | (i417 & 3670016) | (i417 & 29360128) | (i417 & 234881024), 0);
                composerS.Q();
            } else {
                composerS.G(-1013847725);
                composableLambdaB.invoke(modifier2, composerS, Integer.valueOf((i14 & 14) | 48));
                composerS.Q();
            }
            scaffoldState3 = scaffoldState2;
            pVar5 = pVarD;
            i38 = iB;
            f7 = f6;
            qVar5 = qVar4;
            z14 = z13;
            pVar6 = pVar1114;
            pVar7 = pVar1115;
            boolean z111116 = z11;
            shape2 = shapeA;
            qVar6 = qVarC;
            z15 = z111116;
        } else {
            composerS.J();
            if ((i11 & 1) != 0) {
                if (i41 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i13 & 2) != 0) {
                    scaffoldStateF = f(null, null, composerS, 0, 3);
                    i14 &= -113;
                } else {
                    scaffoldStateF = scaffoldState;
                }
                if (i42 != 0) {
                    pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                } else {
                    pVarA = pVar;
                }
                if (i15 != 0) {
                    pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                } else {
                    pVarB = pVar2;
                }
                if (i17 != 0) {
                    qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                } else {
                    qVarC = qVar;
                }
                if (i20 != 0) {
                    pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                } else {
                    pVarD = pVar3;
                }
                if (i22 != 0) {
                    iB = FabPosition.Companion.b();
                }
                if (i24 != 0) {
                    z11 = false;
                } else {
                    z11 = z6;
                }
                if (i26 != 0) {
                    qVar3 = null;
                } else {
                    qVar3 = qVar2;
                }
                if (i28 != 0) {
                    z12 = true;
                } else {
                    z12 = z10;
                }
                scaffoldState2 = scaffoldStateF;
                q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar1114 = qVar3;
                if ((i13 & 1024) != 0) {
                    shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                    i30 &= -15;
                } else {
                    shapeA = shape;
                }
                i34 = i30;
                if (i31 != 0) {
                    fA = DrawerDefaults.INSTANCE.a();
                } else {
                    fA = f;
                }
                if ((i13 & 4096) != 0) {
                    boolean z111117 = z12;
                    i35 = i34 & (-897);
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    z13 = z111117;
                } else {
                    z13 = z12;
                    i35 = i34;
                    jN = j6;
                }
                float f1117 = fA;
                if ((i13 & 8192) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                    i35 &= -7169;
                } else {
                    jB = j10;
                }
                if ((i13 & 16384) != 0) {
                    i36 = 6;
                    jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                    i35 &= -57345;
                } else {
                    i36 = 6;
                    jB2 = j11;
                }
                if ((32768 & i13) != 0) {
                    jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                    i35 &= -458753;
                } else {
                    jC = j12;
                }
                if ((i13 & 65536) != 0) {
                    long jB1110 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                    i35 &= -3670017;
                    j14 = jB1110;
                } else {
                    j14 = j13;
                }
                j15 = jB;
                f6 = f1117;
                i37 = i35;
                qVar4 = qVar1114;
            } else {
                if (i41 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i13 & 2) != 0) {
                    scaffoldStateF = f(null, null, composerS, 0, 3);
                    i14 &= -113;
                } else {
                    scaffoldStateF = scaffoldState;
                }
                if (i42 != 0) {
                    pVarA = ComposableSingletons$ScaffoldKt.INSTANCE.a();
                } else {
                    pVarA = pVar;
                }
                if (i15 != 0) {
                    pVarB = ComposableSingletons$ScaffoldKt.INSTANCE.b();
                } else {
                    pVarB = pVar2;
                }
                if (i17 != 0) {
                    qVarC = ComposableSingletons$ScaffoldKt.INSTANCE.c();
                } else {
                    qVarC = qVar;
                }
                if (i20 != 0) {
                    pVarD = ComposableSingletons$ScaffoldKt.INSTANCE.d();
                } else {
                    pVarD = pVar3;
                }
                if (i22 != 0) {
                    iB = FabPosition.Companion.b();
                }
                if (i24 != 0) {
                    z11 = false;
                } else {
                    z11 = z6;
                }
                if (i26 != 0) {
                    qVar3 = null;
                } else {
                    qVar3 = qVar2;
                }
                if (i28 != 0) {
                    z12 = true;
                } else {
                    z12 = z10;
                }
                scaffoldState2 = scaffoldStateF;
                q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar1115 = qVar3;
                if ((i13 & 1024) != 0) {
                    shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                    i30 &= -15;
                } else {
                    shapeA = shape;
                }
                i34 = i30;
                if (i31 != 0) {
                    fA = DrawerDefaults.INSTANCE.a();
                } else {
                    fA = f;
                }
                if ((i13 & 4096) != 0) {
                    boolean z111118 = z12;
                    i35 = i34 & (-897);
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    z13 = z111118;
                } else {
                    z13 = z12;
                    i35 = i34;
                    jN = j6;
                }
                float f1118 = fA;
                if ((i13 & 8192) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i35 >> 6) & 14);
                    i35 &= -7169;
                } else {
                    jB = j10;
                }
                if ((i13 & 16384) != 0) {
                    i36 = 6;
                    jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                    i35 &= -57345;
                } else {
                    i36 = 6;
                    jB2 = j11;
                }
                if ((32768 & i13) != 0) {
                    jC = MaterialTheme.INSTANCE.a(composerS, i36).c();
                    i35 &= -458753;
                } else {
                    jC = j12;
                }
                if ((i13 & 65536) != 0) {
                    long jB1111 = ColorsKt.b(jC, composerS, (i35 >> 15) & 14);
                    i35 &= -3670017;
                    j14 = jB1111;
                } else {
                    j14 = j13;
                }
                j15 = jB;
                f6 = f1118;
                i37 = i35;
                qVar4 = qVar1115;
            }
            composerS.A();
            p<? super Composer, ? super Integer, l0> pVar1116 = pVarA;
            p<? super Composer, ? super Integer, l0> pVar1117 = pVarB;
            composableLambdaB = ComposableLambdaKt.b(composerS, 1823402604, true, new ScaffoldKt$Scaffold$child$1(jC, j14, i37, z11, iB, pVarA, content, pVarD, pVarB, i14, qVarC, scaffoldState2));
            if (qVar4 != null) {
                composerS.G(-1013848234);
                int i418 = i37 << 12;
                DrawerKt.d(qVar4, modifier2, scaffoldState2.a(), z13, shapeA, f6, jN, j15, jB2, ComposableLambdaKt.b(composerS, 100842932, true, new ScaffoldKt$Scaffold$1(composableLambdaB)), composerS, ((i14 >> 24) & 14) | 805306368 | ((i14 << 3) & 112) | ((i14 >> 18) & 7168) | (i418 & 57344) | (i418 & 458752) | (i418 & 3670016) | (i418 & 29360128) | (i418 & 234881024), 0);
                composerS.Q();
            } else {
                composerS.G(-1013847725);
                composableLambdaB.invoke(modifier2, composerS, Integer.valueOf((i14 & 14) | 48));
                composerS.Q();
            }
            scaffoldState3 = scaffoldState2;
            pVar5 = pVarD;
            i38 = iB;
            f7 = f6;
            qVar5 = qVar4;
            z14 = z13;
            pVar6 = pVar1116;
            pVar7 = pVar1117;
            boolean z111119 = z11;
            shape2 = shapeA;
            qVar6 = qVarC;
            z15 = z111119;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new ScaffoldKt$Scaffold$2(modifier2, scaffoldState3, pVar6, pVar7, qVar6, pVar5, i38, z15, qVar5, z14, shape2, f7, jN, j15, jB2, jC, j14, content, i11, i12, i13));
    }

    @NotNull
    public static final ProvidableCompositionLocal<FabPlacement> e() {
        return LocalFabPlacement;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @UiComposable
    public static final void b(boolean z6, int i10, p<? super Composer, ? super Integer, l0> pVar, q<? super PaddingValues, ? super Composer, ? super Integer, l0> qVar, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, p<? super Composer, ? super Integer, l0> pVar4, Composer composer, int i11) {
        Composer composerS = composer.s(-1401632215);
        int i12 = (i11 & 14) == 0 ? (composerS.m(z6) ? 4 : 2) | i11 : i11;
        if ((i11 & 112) == 0) {
            i12 |= composerS.p(i10) ? 32 : 16;
        }
        if ((i11 & 896) == 0) {
            i12 |= composerS.k(pVar) ? 256 : 128;
        }
        if ((i11 & 7168) == 0) {
            i12 |= composerS.k(qVar) ? 2048 : 1024;
        }
        if ((57344 & i11) == 0) {
            i12 |= composerS.k(pVar2) ? 16384 : 8192;
        }
        if ((458752 & i11) == 0) {
            i12 |= composerS.k(pVar3) ? 131072 : 65536;
        }
        if ((3670016 & i11) == 0) {
            i12 |= composerS.k(pVar4) ? 1048576 : 524288;
        }
        int i13 = i12;
        if ((i13 & 2995931) == 599186 && composerS.b()) {
            composerS.g();
        } else {
            Object[] objArr = {pVar, pVar2, pVar3, FabPosition.c(i10), Boolean.valueOf(z6), pVar4, qVar};
            composerS.G(-568225417);
            boolean zK = false;
            for (int i14 = 0; i14 < 7; i14++) {
                zK |= composerS.k(objArr[i14]);
            }
            Object objH = composerS.H();
            if (zK || objH == Composer.Companion.a()) {
                ScaffoldKt$ScaffoldLayout$1$1 scaffoldKt$ScaffoldLayout$1$1 = new ScaffoldKt$ScaffoldLayout$1$1(pVar, pVar2, pVar3, i10, z6, pVar4, i13, qVar);
                composerS.z(scaffoldKt$ScaffoldLayout$1$1);
                objH = scaffoldKt$ScaffoldLayout$1$1;
            }
            composerS.Q();
            SubcomposeLayoutKt.a(null, (p) objH, composerS, 0, 1);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new ScaffoldKt$ScaffoldLayout$2(z6, i10, pVar, qVar, pVar2, pVar3, pVar4, i11));
    }

    @Composable
    @NotNull
    public static final ScaffoldState f(@Nullable DrawerState drawerState, @Nullable SnackbarHostState snackbarHostState, @Nullable Composer composer, int i10, int i11) {
        composer.G(1569641925);
        if ((i11 & 1) != 0) {
            drawerState = DrawerKt.o(DrawerValue.Closed, null, composer, 6, 2);
        }
        if ((i11 & 2) != 0) {
            composer.G(-492369756);
            Object objH = composer.H();
            if (objH == Composer.Companion.a()) {
                objH = new SnackbarHostState();
                composer.z(objH);
            }
            composer.Q();
            snackbarHostState = (SnackbarHostState) objH;
        }
        composer.G(-492369756);
        Object objH2 = composer.H();
        if (objH2 == Composer.Companion.a()) {
            objH2 = new ScaffoldState(drawerState, snackbarHostState);
            composer.z(objH2);
        }
        composer.Q();
        ScaffoldState scaffoldState = (ScaffoldState) objH2;
        composer.Q();
        return scaffoldState;
    }
}
