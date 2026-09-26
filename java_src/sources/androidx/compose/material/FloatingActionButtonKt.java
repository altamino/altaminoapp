package androidx.compose.material;

import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.CornerSizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Dp;
import e8.a;
import e8.p;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class FloatingActionButtonKt {
    private static final float FabSize = Dp.f(56);
    private static final float ExtendedFabSize = Dp.f(48);
    private static final float ExtendedFabIconPadding = Dp.f(12);
    private static final float ExtendedFabTextPadding = Dp.f(20);

    /* JADX WARN: Code duplicated, block: B:100:0x011b  */
    /* JADX WARN: Code duplicated, block: B:104:0x0137  */
    /* JADX WARN: Code duplicated, block: B:106:0x0148  */
    /* JADX WARN: Code duplicated, block: B:122:0x017c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:123:0x017e  */
    /* JADX WARN: Code duplicated, block: B:124:0x0181  */
    /* JADX WARN: Code duplicated, block: B:126:0x0185  */
    /* JADX WARN: Code duplicated, block: B:127:0x0187  */
    /* JADX WARN: Code duplicated, block: B:129:0x018b  */
    /* JADX WARN: Code duplicated, block: B:131:0x019d  */
    /* JADX WARN: Code duplicated, block: B:133:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:136:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:137:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:140:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:143:0x01de  */
    /* JADX WARN: Code duplicated, block: B:144:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:147:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:148:0x0221  */
    /* JADX WARN: Code duplicated, block: B:153:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:155:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0069  */
    /* JADX WARN: Code duplicated, block: B:38:0x006e  */
    /* JADX WARN: Code duplicated, block: B:40:0x0072  */
    /* JADX WARN: Code duplicated, block: B:42:0x007a  */
    /* JADX WARN: Code duplicated, block: B:43:0x007d  */
    /* JADX WARN: Code duplicated, block: B:47:0x0087  */
    /* JADX WARN: Code duplicated, block: B:49:0x008c  */
    /* JADX WARN: Code duplicated, block: B:51:0x0090  */
    /* JADX WARN: Code duplicated, block: B:53:0x0098  */
    /* JADX WARN: Code duplicated, block: B:54:0x009b  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b3 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:66:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:79:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:84:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:91:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:93:0x0105  */
    /* JADX WARN: Code duplicated, block: B:94:0x0108  */
    /* JADX WARN: Code duplicated, block: B:97:0x010f  */
    @Composable
    @ComposableInferredTarget
    public static final void a(@NotNull p<? super Composer, ? super Integer, l0> text, @NotNull a<l0> onClick, @Nullable Modifier modifier, @Nullable p<? super Composer, ? super Integer, l0> pVar, @Nullable MutableInteractionSource mutableInteractionSource, @Nullable Shape shape, long j6, long j10, @Nullable FloatingActionButtonElevation floatingActionButtonElevation, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        long jL;
        long j11;
        FloatingActionButtonElevation floatingActionButtonElevation2;
        Modifier modifier2;
        p<? super Composer, ? super Integer, l0> pVar2;
        MutableInteractionSource mutableInteractionSource2;
        Shape shapeB;
        long jB;
        Modifier modifier3;
        MutableInteractionSource mutableInteractionSource3;
        Shape shape2;
        long j12;
        long j13;
        FloatingActionButtonElevation floatingActionButtonElevationA;
        p<? super Composer, ? super Integer, l0> pVar3;
        Object objH;
        Modifier modifier4;
        MutableInteractionSource mutableInteractionSource4;
        Shape shape3;
        long j14;
        p<? super Composer, ? super Integer, l0> pVar4;
        long j15;
        FloatingActionButtonElevation floatingActionButtonElevation3;
        ScopeUpdateScope scopeUpdateScopeU;
        int i17;
        int i18;
        t.j(text, "text");
        t.j(onClick, "onClick");
        Composer composerS = composer.s(-1555720195);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(text) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            i12 |= composerS.k(onClick) ? 32 : 16;
        }
        int i19 = i11 & 4;
        if (i19 == 0) {
            if ((i10 & 896) == 0) {
                i12 |= composerS.k(modifier) ? 256 : 128;
            }
            i13 = i11 & 8;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    if (composerS.k(pVar)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 16;
                if (i15 != 0) {
                    if ((i10 & 57344) == 0) {
                        if (composerS.k(mutableInteractionSource)) {
                            i16 = 16384;
                        } else {
                            i16 = 8192;
                        }
                        i12 |= i16;
                    }
                    if ((i10 & 458752) != 0) {
                        i12 |= ((i11 & 32) == 0 || !composerS.k(shape)) ? 65536 : 131072;
                    }
                    if ((i10 & 3670016) == 0) {
                        jL = j6;
                        if ((i11 & 64) == 0 || !composerS.q(jL)) {
                            i18 = 524288;
                        } else {
                            i18 = 1048576;
                        }
                        i12 |= i18;
                    } else {
                        jL = j6;
                    }
                    if ((i10 & 29360128) == 0) {
                        j11 = j10;
                        if ((i11 & 128) == 0 || !composerS.q(j11)) {
                            i17 = 4194304;
                        } else {
                            i17 = 8388608;
                        }
                        i12 |= i17;
                    } else {
                        j11 = j10;
                    }
                    if ((i10 & 234881024) == 0) {
                        if ((i11 & 256) == 0) {
                            floatingActionButtonElevation2 = floatingActionButtonElevation;
                            int i20 = composerS.k(floatingActionButtonElevation2) ? 67108864 : 33554432;
                            i12 |= i20;
                        } else {
                            floatingActionButtonElevation2 = floatingActionButtonElevation;
                        }
                        i12 |= i20;
                    } else {
                        floatingActionButtonElevation2 = floatingActionButtonElevation;
                    }
                    if ((i12 & 191739611) == 38347922 || !composerS.b()) {
                        composerS.J();
                        if ((i10 & 1) != 0 || composerS.h()) {
                            if (i19 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            if (i15 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 32) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -458753;
                            } else {
                                shapeB = shape;
                            }
                            if ((i11 & 64) != 0) {
                                jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                                i12 &= -3670017;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j11;
                            }
                            if ((i11 & 256) != 0) {
                                i12 &= -234881025;
                                modifier3 = modifier2;
                                pVar3 = pVar2;
                                mutableInteractionSource3 = mutableInteractionSource2;
                                shape2 = shapeB;
                                j12 = jB;
                                floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                                j13 = jL;
                            } else {
                                modifier3 = modifier2;
                                mutableInteractionSource3 = mutableInteractionSource2;
                                shape2 = shapeB;
                                j12 = jB;
                                j13 = jL;
                                floatingActionButtonElevationA = floatingActionButtonElevation2;
                                pVar3 = pVar2;
                            }
                        } else {
                            composerS.g();
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                            }
                            if ((i11 & 64) != 0) {
                                i12 &= -3670017;
                            }
                            if ((i11 & 128) != 0) {
                                i12 &= -29360129;
                            }
                            if ((i11 & 256) != 0) {
                                i12 &= -234881025;
                            }
                            modifier3 = modifier;
                            mutableInteractionSource3 = mutableInteractionSource;
                            shape2 = shape;
                            j12 = j11;
                            j13 = jL;
                            floatingActionButtonElevationA = floatingActionButtonElevation2;
                            pVar3 = pVar;
                        }
                        composerS.A();
                        float f = ExtendedFabSize;
                        Modifier modifierC = SizeKt.C(modifier3, f, f, 0.0f, 0.0f, 12, null);
                        ComposableLambda composableLambdaB = ComposableLambdaKt.b(composerS, 1418981691, true, new FloatingActionButtonKt$ExtendedFloatingActionButton$2(pVar3, i12, text));
                        int i21 = ((i12 >> 3) & 14) | 12582912;
                        int i22 = i12 >> 6;
                        b(onClick, modifierC, mutableInteractionSource3, shape2, j13, j12, floatingActionButtonElevationA, composableLambdaB, composerS, i21 | (i22 & 896) | (i22 & 7168) | (57344 & i22) | (458752 & i22) | (i22 & 3670016), 0);
                        modifier4 = modifier3;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        shape3 = shape2;
                        j14 = j13;
                        pVar4 = pVar3;
                        j15 = j12;
                        floatingActionButtonElevation3 = floatingActionButtonElevationA;
                    } else {
                        composerS.g();
                        modifier4 = modifier;
                        pVar4 = pVar;
                        mutableInteractionSource4 = mutableInteractionSource;
                        shape3 = shape;
                        floatingActionButtonElevation3 = floatingActionButtonElevation2;
                        j15 = j11;
                        j14 = jL;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new FloatingActionButtonKt$ExtendedFloatingActionButton$3(text, onClick, modifier4, pVar4, mutableInteractionSource4, shape3, j14, j15, floatingActionButtonElevation3, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                if ((i10 & 458752) != 0) {
                    i12 |= ((i11 & 32) == 0 || !composerS.k(shape)) ? 65536 : 131072;
                }
                if ((i10 & 3670016) == 0) {
                    jL = j6;
                    if ((i11 & 64) == 0) {
                        i18 = 524288;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                } else {
                    jL = j6;
                }
                if ((i10 & 29360128) == 0) {
                    j11 = j10;
                    if ((i11 & 128) == 0) {
                        i17 = 4194304;
                    } else {
                        i17 = 4194304;
                    }
                    i12 |= i17;
                } else {
                    j11 = j10;
                }
                if ((i10 & 234881024) == 0) {
                    if ((i11 & 256) == 0) {
                        floatingActionButtonElevation2 = floatingActionButtonElevation;
                        if (composerS.k(floatingActionButtonElevation2)) {
                        }
                        i12 |= i20;
                    } else {
                        floatingActionButtonElevation2 = floatingActionButtonElevation;
                    }
                    i12 |= i20;
                } else {
                    floatingActionButtonElevation2 = floatingActionButtonElevation;
                }
                if ((i12 & 191739611) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier3 = modifier2;
                            pVar3 = pVar2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            j13 = jL;
                        } else {
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            j13 = jL;
                            floatingActionButtonElevationA = floatingActionButtonElevation2;
                            pVar3 = pVar2;
                        }
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier3 = modifier2;
                            pVar3 = pVar2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            j13 = jL;
                        } else {
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            j13 = jL;
                            floatingActionButtonElevationA = floatingActionButtonElevation2;
                            pVar3 = pVar2;
                        }
                    }
                    composerS.A();
                    float f6 = ExtendedFabSize;
                    Modifier modifierC2 = SizeKt.C(modifier3, f6, f6, 0.0f, 0.0f, 12, null);
                    ComposableLambda composableLambdaB2 = ComposableLambdaKt.b(composerS, 1418981691, true, new FloatingActionButtonKt$ExtendedFloatingActionButton$2(pVar3, i12, text));
                    int i23 = ((i12 >> 3) & 14) | 12582912;
                    int i24 = i12 >> 6;
                    b(onClick, modifierC2, mutableInteractionSource3, shape2, j13, j12, floatingActionButtonElevationA, composableLambdaB2, composerS, i23 | (i24 & 896) | (i24 & 7168) | (57344 & i24) | (458752 & i24) | (i24 & 3670016), 0);
                    modifier4 = modifier3;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    shape3 = shape2;
                    j14 = j13;
                    pVar4 = pVar3;
                    j15 = j12;
                    floatingActionButtonElevation3 = floatingActionButtonElevationA;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier3 = modifier2;
                            pVar3 = pVar2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            j13 = jL;
                        } else {
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            j13 = jL;
                            floatingActionButtonElevationA = floatingActionButtonElevation2;
                            pVar3 = pVar2;
                        }
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier3 = modifier2;
                            pVar3 = pVar2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            j13 = jL;
                        } else {
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            j13 = jL;
                            floatingActionButtonElevationA = floatingActionButtonElevation2;
                            pVar3 = pVar2;
                        }
                    }
                    composerS.A();
                    float f7 = ExtendedFabSize;
                    Modifier modifierC3 = SizeKt.C(modifier3, f7, f7, 0.0f, 0.0f, 12, null);
                    ComposableLambda composableLambdaB3 = ComposableLambdaKt.b(composerS, 1418981691, true, new FloatingActionButtonKt$ExtendedFloatingActionButton$2(pVar3, i12, text));
                    int i25 = ((i12 >> 3) & 14) | 12582912;
                    int i26 = i12 >> 6;
                    b(onClick, modifierC3, mutableInteractionSource3, shape2, j13, j12, floatingActionButtonElevationA, composableLambdaB3, composerS, i25 | (i26 & 896) | (i26 & 7168) | (57344 & i26) | (458752 & i26) | (i26 & 3670016), 0);
                    modifier4 = modifier3;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    shape3 = shape2;
                    j14 = j13;
                    pVar4 = pVar3;
                    j15 = j12;
                    floatingActionButtonElevation3 = floatingActionButtonElevationA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new FloatingActionButtonKt$ExtendedFloatingActionButton$3(text, onClick, modifier4, pVar4, mutableInteractionSource4, shape3, j14, j15, floatingActionButtonElevation3, i10, i11));
            }
            i12 |= 3072;
            i15 = i11 & 16;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                if ((i10 & 458752) != 0) {
                    i12 |= ((i11 & 32) == 0 || !composerS.k(shape)) ? 65536 : 131072;
                }
                if ((i10 & 3670016) == 0) {
                    jL = j6;
                    if ((i11 & 64) == 0) {
                        i18 = 524288;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                } else {
                    jL = j6;
                }
                if ((i10 & 29360128) == 0) {
                    j11 = j10;
                    if ((i11 & 128) == 0) {
                        i17 = 4194304;
                    } else {
                        i17 = 4194304;
                    }
                    i12 |= i17;
                } else {
                    j11 = j10;
                }
                if ((i10 & 234881024) == 0) {
                    if ((i11 & 256) == 0) {
                        floatingActionButtonElevation2 = floatingActionButtonElevation;
                        if (composerS.k(floatingActionButtonElevation2)) {
                        }
                        i12 |= i20;
                    } else {
                        floatingActionButtonElevation2 = floatingActionButtonElevation;
                    }
                    i12 |= i20;
                } else {
                    floatingActionButtonElevation2 = floatingActionButtonElevation;
                }
                if ((i12 & 191739611) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier3 = modifier2;
                            pVar3 = pVar2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            j13 = jL;
                        } else {
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            j13 = jL;
                            floatingActionButtonElevationA = floatingActionButtonElevation2;
                            pVar3 = pVar2;
                        }
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier3 = modifier2;
                            pVar3 = pVar2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            j13 = jL;
                        } else {
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            j13 = jL;
                            floatingActionButtonElevationA = floatingActionButtonElevation2;
                            pVar3 = pVar2;
                        }
                    }
                    composerS.A();
                    float f10 = ExtendedFabSize;
                    Modifier modifierC4 = SizeKt.C(modifier3, f10, f10, 0.0f, 0.0f, 12, null);
                    ComposableLambda composableLambdaB4 = ComposableLambdaKt.b(composerS, 1418981691, true, new FloatingActionButtonKt$ExtendedFloatingActionButton$2(pVar3, i12, text));
                    int i27 = ((i12 >> 3) & 14) | 12582912;
                    int i28 = i12 >> 6;
                    b(onClick, modifierC4, mutableInteractionSource3, shape2, j13, j12, floatingActionButtonElevationA, composableLambdaB4, composerS, i27 | (i28 & 896) | (i28 & 7168) | (57344 & i28) | (458752 & i28) | (i28 & 3670016), 0);
                    modifier4 = modifier3;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    shape3 = shape2;
                    j14 = j13;
                    pVar4 = pVar3;
                    j15 = j12;
                    floatingActionButtonElevation3 = floatingActionButtonElevationA;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier3 = modifier2;
                            pVar3 = pVar2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            j13 = jL;
                        } else {
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            j13 = jL;
                            floatingActionButtonElevationA = floatingActionButtonElevation2;
                            pVar3 = pVar2;
                        }
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier3 = modifier2;
                            pVar3 = pVar2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            j13 = jL;
                        } else {
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            j13 = jL;
                            floatingActionButtonElevationA = floatingActionButtonElevation2;
                            pVar3 = pVar2;
                        }
                    }
                    composerS.A();
                    float f11 = ExtendedFabSize;
                    Modifier modifierC5 = SizeKt.C(modifier3, f11, f11, 0.0f, 0.0f, 12, null);
                    ComposableLambda composableLambdaB5 = ComposableLambdaKt.b(composerS, 1418981691, true, new FloatingActionButtonKt$ExtendedFloatingActionButton$2(pVar3, i12, text));
                    int i29 = ((i12 >> 3) & 14) | 12582912;
                    int i210 = i12 >> 6;
                    b(onClick, modifierC5, mutableInteractionSource3, shape2, j13, j12, floatingActionButtonElevationA, composableLambdaB5, composerS, i29 | (i210 & 896) | (i210 & 7168) | (57344 & i210) | (458752 & i210) | (i210 & 3670016), 0);
                    modifier4 = modifier3;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    shape3 = shape2;
                    j14 = j13;
                    pVar4 = pVar3;
                    j15 = j12;
                    floatingActionButtonElevation3 = floatingActionButtonElevationA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new FloatingActionButtonKt$ExtendedFloatingActionButton$3(text, onClick, modifier4, pVar4, mutableInteractionSource4, shape3, j14, j15, floatingActionButtonElevation3, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            if ((i10 & 458752) != 0) {
                i12 |= ((i11 & 32) == 0 || !composerS.k(shape)) ? 65536 : 131072;
            }
            if ((i10 & 3670016) == 0) {
                jL = j6;
                if ((i11 & 64) == 0) {
                    i18 = 524288;
                } else {
                    i18 = 524288;
                }
                i12 |= i18;
            } else {
                jL = j6;
            }
            if ((i10 & 29360128) == 0) {
                j11 = j10;
                if ((i11 & 128) == 0) {
                    i17 = 4194304;
                } else {
                    i17 = 4194304;
                }
                i12 |= i17;
            } else {
                j11 = j10;
            }
            if ((i10 & 234881024) == 0) {
                if ((i11 & 256) == 0) {
                    floatingActionButtonElevation2 = floatingActionButtonElevation;
                    if (composerS.k(floatingActionButtonElevation2)) {
                    }
                    i12 |= i20;
                } else {
                    floatingActionButtonElevation2 = floatingActionButtonElevation;
                }
                i12 |= i20;
            } else {
                floatingActionButtonElevation2 = floatingActionButtonElevation;
            }
            if ((i12 & 191739611) == 38347922) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier3 = modifier2;
                        pVar3 = pVar2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        j13 = jL;
                    } else {
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        j13 = jL;
                        floatingActionButtonElevationA = floatingActionButtonElevation2;
                        pVar3 = pVar2;
                    }
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier3 = modifier2;
                        pVar3 = pVar2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        j13 = jL;
                    } else {
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        j13 = jL;
                        floatingActionButtonElevationA = floatingActionButtonElevation2;
                        pVar3 = pVar2;
                    }
                }
                composerS.A();
                float f12 = ExtendedFabSize;
                Modifier modifierC6 = SizeKt.C(modifier3, f12, f12, 0.0f, 0.0f, 12, null);
                ComposableLambda composableLambdaB6 = ComposableLambdaKt.b(composerS, 1418981691, true, new FloatingActionButtonKt$ExtendedFloatingActionButton$2(pVar3, i12, text));
                int i211 = ((i12 >> 3) & 14) | 12582912;
                int i212 = i12 >> 6;
                b(onClick, modifierC6, mutableInteractionSource3, shape2, j13, j12, floatingActionButtonElevationA, composableLambdaB6, composerS, i211 | (i212 & 896) | (i212 & 7168) | (57344 & i212) | (458752 & i212) | (i212 & 3670016), 0);
                modifier4 = modifier3;
                mutableInteractionSource4 = mutableInteractionSource3;
                shape3 = shape2;
                j14 = j13;
                pVar4 = pVar3;
                j15 = j12;
                floatingActionButtonElevation3 = floatingActionButtonElevationA;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier3 = modifier2;
                        pVar3 = pVar2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        j13 = jL;
                    } else {
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        j13 = jL;
                        floatingActionButtonElevationA = floatingActionButtonElevation2;
                        pVar3 = pVar2;
                    }
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier3 = modifier2;
                        pVar3 = pVar2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        j13 = jL;
                    } else {
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        j13 = jL;
                        floatingActionButtonElevationA = floatingActionButtonElevation2;
                        pVar3 = pVar2;
                    }
                }
                composerS.A();
                float f13 = ExtendedFabSize;
                Modifier modifierC7 = SizeKt.C(modifier3, f13, f13, 0.0f, 0.0f, 12, null);
                ComposableLambda composableLambdaB7 = ComposableLambdaKt.b(composerS, 1418981691, true, new FloatingActionButtonKt$ExtendedFloatingActionButton$2(pVar3, i12, text));
                int i213 = ((i12 >> 3) & 14) | 12582912;
                int i214 = i12 >> 6;
                b(onClick, modifierC7, mutableInteractionSource3, shape2, j13, j12, floatingActionButtonElevationA, composableLambdaB7, composerS, i213 | (i214 & 896) | (i214 & 7168) | (57344 & i214) | (458752 & i214) | (i214 & 3670016), 0);
                modifier4 = modifier3;
                mutableInteractionSource4 = mutableInteractionSource3;
                shape3 = shape2;
                j14 = j13;
                pVar4 = pVar3;
                j15 = j12;
                floatingActionButtonElevation3 = floatingActionButtonElevationA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new FloatingActionButtonKt$ExtendedFloatingActionButton$3(text, onClick, modifier4, pVar4, mutableInteractionSource4, shape3, j14, j15, floatingActionButtonElevation3, i10, i11));
        }
        i12 |= 384;
        i13 = i11 & 8;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                if (composerS.k(pVar)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            i15 = i11 & 16;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                if ((i10 & 458752) != 0) {
                    i12 |= ((i11 & 32) == 0 || !composerS.k(shape)) ? 65536 : 131072;
                }
                if ((i10 & 3670016) == 0) {
                    jL = j6;
                    if ((i11 & 64) == 0) {
                        i18 = 524288;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                } else {
                    jL = j6;
                }
                if ((i10 & 29360128) == 0) {
                    j11 = j10;
                    if ((i11 & 128) == 0) {
                        i17 = 4194304;
                    } else {
                        i17 = 4194304;
                    }
                    i12 |= i17;
                } else {
                    j11 = j10;
                }
                if ((i10 & 234881024) == 0) {
                    if ((i11 & 256) == 0) {
                        floatingActionButtonElevation2 = floatingActionButtonElevation;
                        if (composerS.k(floatingActionButtonElevation2)) {
                        }
                        i12 |= i20;
                    } else {
                        floatingActionButtonElevation2 = floatingActionButtonElevation;
                    }
                    i12 |= i20;
                } else {
                    floatingActionButtonElevation2 = floatingActionButtonElevation;
                }
                if ((i12 & 191739611) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier3 = modifier2;
                            pVar3 = pVar2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            j13 = jL;
                        } else {
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            j13 = jL;
                            floatingActionButtonElevationA = floatingActionButtonElevation2;
                            pVar3 = pVar2;
                        }
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier3 = modifier2;
                            pVar3 = pVar2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            j13 = jL;
                        } else {
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            j13 = jL;
                            floatingActionButtonElevationA = floatingActionButtonElevation2;
                            pVar3 = pVar2;
                        }
                    }
                    composerS.A();
                    float f14 = ExtendedFabSize;
                    Modifier modifierC8 = SizeKt.C(modifier3, f14, f14, 0.0f, 0.0f, 12, null);
                    ComposableLambda composableLambdaB8 = ComposableLambdaKt.b(composerS, 1418981691, true, new FloatingActionButtonKt$ExtendedFloatingActionButton$2(pVar3, i12, text));
                    int i215 = ((i12 >> 3) & 14) | 12582912;
                    int i216 = i12 >> 6;
                    b(onClick, modifierC8, mutableInteractionSource3, shape2, j13, j12, floatingActionButtonElevationA, composableLambdaB8, composerS, i215 | (i216 & 896) | (i216 & 7168) | (57344 & i216) | (458752 & i216) | (i216 & 3670016), 0);
                    modifier4 = modifier3;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    shape3 = shape2;
                    j14 = j13;
                    pVar4 = pVar3;
                    j15 = j12;
                    floatingActionButtonElevation3 = floatingActionButtonElevationA;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier3 = modifier2;
                            pVar3 = pVar2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            j13 = jL;
                        } else {
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            j13 = jL;
                            floatingActionButtonElevationA = floatingActionButtonElevation2;
                            pVar3 = pVar2;
                        }
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier3 = modifier2;
                            pVar3 = pVar2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            j13 = jL;
                        } else {
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape2 = shapeB;
                            j12 = jB;
                            j13 = jL;
                            floatingActionButtonElevationA = floatingActionButtonElevation2;
                            pVar3 = pVar2;
                        }
                    }
                    composerS.A();
                    float f15 = ExtendedFabSize;
                    Modifier modifierC9 = SizeKt.C(modifier3, f15, f15, 0.0f, 0.0f, 12, null);
                    ComposableLambda composableLambdaB9 = ComposableLambdaKt.b(composerS, 1418981691, true, new FloatingActionButtonKt$ExtendedFloatingActionButton$2(pVar3, i12, text));
                    int i217 = ((i12 >> 3) & 14) | 12582912;
                    int i218 = i12 >> 6;
                    b(onClick, modifierC9, mutableInteractionSource3, shape2, j13, j12, floatingActionButtonElevationA, composableLambdaB9, composerS, i217 | (i218 & 896) | (i218 & 7168) | (57344 & i218) | (458752 & i218) | (i218 & 3670016), 0);
                    modifier4 = modifier3;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    shape3 = shape2;
                    j14 = j13;
                    pVar4 = pVar3;
                    j15 = j12;
                    floatingActionButtonElevation3 = floatingActionButtonElevationA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new FloatingActionButtonKt$ExtendedFloatingActionButton$3(text, onClick, modifier4, pVar4, mutableInteractionSource4, shape3, j14, j15, floatingActionButtonElevation3, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            if ((i10 & 458752) != 0) {
                i12 |= ((i11 & 32) == 0 || !composerS.k(shape)) ? 65536 : 131072;
            }
            if ((i10 & 3670016) == 0) {
                jL = j6;
                if ((i11 & 64) == 0) {
                    i18 = 524288;
                } else {
                    i18 = 524288;
                }
                i12 |= i18;
            } else {
                jL = j6;
            }
            if ((i10 & 29360128) == 0) {
                j11 = j10;
                if ((i11 & 128) == 0) {
                    i17 = 4194304;
                } else {
                    i17 = 4194304;
                }
                i12 |= i17;
            } else {
                j11 = j10;
            }
            if ((i10 & 234881024) == 0) {
                if ((i11 & 256) == 0) {
                    floatingActionButtonElevation2 = floatingActionButtonElevation;
                    if (composerS.k(floatingActionButtonElevation2)) {
                    }
                    i12 |= i20;
                } else {
                    floatingActionButtonElevation2 = floatingActionButtonElevation;
                }
                i12 |= i20;
            } else {
                floatingActionButtonElevation2 = floatingActionButtonElevation;
            }
            if ((i12 & 191739611) == 38347922) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier3 = modifier2;
                        pVar3 = pVar2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        j13 = jL;
                    } else {
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        j13 = jL;
                        floatingActionButtonElevationA = floatingActionButtonElevation2;
                        pVar3 = pVar2;
                    }
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier3 = modifier2;
                        pVar3 = pVar2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        j13 = jL;
                    } else {
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        j13 = jL;
                        floatingActionButtonElevationA = floatingActionButtonElevation2;
                        pVar3 = pVar2;
                    }
                }
                composerS.A();
                float f16 = ExtendedFabSize;
                Modifier modifierC10 = SizeKt.C(modifier3, f16, f16, 0.0f, 0.0f, 12, null);
                ComposableLambda composableLambdaB10 = ComposableLambdaKt.b(composerS, 1418981691, true, new FloatingActionButtonKt$ExtendedFloatingActionButton$2(pVar3, i12, text));
                int i219 = ((i12 >> 3) & 14) | 12582912;
                int i2110 = i12 >> 6;
                b(onClick, modifierC10, mutableInteractionSource3, shape2, j13, j12, floatingActionButtonElevationA, composableLambdaB10, composerS, i219 | (i2110 & 896) | (i2110 & 7168) | (57344 & i2110) | (458752 & i2110) | (i2110 & 3670016), 0);
                modifier4 = modifier3;
                mutableInteractionSource4 = mutableInteractionSource3;
                shape3 = shape2;
                j14 = j13;
                pVar4 = pVar3;
                j15 = j12;
                floatingActionButtonElevation3 = floatingActionButtonElevationA;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier3 = modifier2;
                        pVar3 = pVar2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        j13 = jL;
                    } else {
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        j13 = jL;
                        floatingActionButtonElevationA = floatingActionButtonElevation2;
                        pVar3 = pVar2;
                    }
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier3 = modifier2;
                        pVar3 = pVar2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        j13 = jL;
                    } else {
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        j13 = jL;
                        floatingActionButtonElevationA = floatingActionButtonElevation2;
                        pVar3 = pVar2;
                    }
                }
                composerS.A();
                float f17 = ExtendedFabSize;
                Modifier modifierC11 = SizeKt.C(modifier3, f17, f17, 0.0f, 0.0f, 12, null);
                ComposableLambda composableLambdaB11 = ComposableLambdaKt.b(composerS, 1418981691, true, new FloatingActionButtonKt$ExtendedFloatingActionButton$2(pVar3, i12, text));
                int i2111 = ((i12 >> 3) & 14) | 12582912;
                int i2112 = i12 >> 6;
                b(onClick, modifierC11, mutableInteractionSource3, shape2, j13, j12, floatingActionButtonElevationA, composableLambdaB11, composerS, i2111 | (i2112 & 896) | (i2112 & 7168) | (57344 & i2112) | (458752 & i2112) | (i2112 & 3670016), 0);
                modifier4 = modifier3;
                mutableInteractionSource4 = mutableInteractionSource3;
                shape3 = shape2;
                j14 = j13;
                pVar4 = pVar3;
                j15 = j12;
                floatingActionButtonElevation3 = floatingActionButtonElevationA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new FloatingActionButtonKt$ExtendedFloatingActionButton$3(text, onClick, modifier4, pVar4, mutableInteractionSource4, shape3, j14, j15, floatingActionButtonElevation3, i10, i11));
        }
        i12 |= 3072;
        i15 = i11 & 16;
        if (i15 != 0) {
            if ((i10 & 57344) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i16 = 16384;
                } else {
                    i16 = 8192;
                }
                i12 |= i16;
            }
            if ((i10 & 458752) != 0) {
                i12 |= ((i11 & 32) == 0 || !composerS.k(shape)) ? 65536 : 131072;
            }
            if ((i10 & 3670016) == 0) {
                jL = j6;
                if ((i11 & 64) == 0) {
                    i18 = 524288;
                } else {
                    i18 = 524288;
                }
                i12 |= i18;
            } else {
                jL = j6;
            }
            if ((i10 & 29360128) == 0) {
                j11 = j10;
                if ((i11 & 128) == 0) {
                    i17 = 4194304;
                } else {
                    i17 = 4194304;
                }
                i12 |= i17;
            } else {
                j11 = j10;
            }
            if ((i10 & 234881024) == 0) {
                if ((i11 & 256) == 0) {
                    floatingActionButtonElevation2 = floatingActionButtonElevation;
                    if (composerS.k(floatingActionButtonElevation2)) {
                    }
                    i12 |= i20;
                } else {
                    floatingActionButtonElevation2 = floatingActionButtonElevation;
                }
                i12 |= i20;
            } else {
                floatingActionButtonElevation2 = floatingActionButtonElevation;
            }
            if ((i12 & 191739611) == 38347922) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier3 = modifier2;
                        pVar3 = pVar2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        j13 = jL;
                    } else {
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        j13 = jL;
                        floatingActionButtonElevationA = floatingActionButtonElevation2;
                        pVar3 = pVar2;
                    }
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier3 = modifier2;
                        pVar3 = pVar2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        j13 = jL;
                    } else {
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        j13 = jL;
                        floatingActionButtonElevationA = floatingActionButtonElevation2;
                        pVar3 = pVar2;
                    }
                }
                composerS.A();
                float f18 = ExtendedFabSize;
                Modifier modifierC12 = SizeKt.C(modifier3, f18, f18, 0.0f, 0.0f, 12, null);
                ComposableLambda composableLambdaB12 = ComposableLambdaKt.b(composerS, 1418981691, true, new FloatingActionButtonKt$ExtendedFloatingActionButton$2(pVar3, i12, text));
                int i2113 = ((i12 >> 3) & 14) | 12582912;
                int i2114 = i12 >> 6;
                b(onClick, modifierC12, mutableInteractionSource3, shape2, j13, j12, floatingActionButtonElevationA, composableLambdaB12, composerS, i2113 | (i2114 & 896) | (i2114 & 7168) | (57344 & i2114) | (458752 & i2114) | (i2114 & 3670016), 0);
                modifier4 = modifier3;
                mutableInteractionSource4 = mutableInteractionSource3;
                shape3 = shape2;
                j14 = j13;
                pVar4 = pVar3;
                j15 = j12;
                floatingActionButtonElevation3 = floatingActionButtonElevationA;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier3 = modifier2;
                        pVar3 = pVar2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        j13 = jL;
                    } else {
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        j13 = jL;
                        floatingActionButtonElevationA = floatingActionButtonElevation2;
                        pVar3 = pVar2;
                    }
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier3 = modifier2;
                        pVar3 = pVar2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        j13 = jL;
                    } else {
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        j12 = jB;
                        j13 = jL;
                        floatingActionButtonElevationA = floatingActionButtonElevation2;
                        pVar3 = pVar2;
                    }
                }
                composerS.A();
                float f19 = ExtendedFabSize;
                Modifier modifierC13 = SizeKt.C(modifier3, f19, f19, 0.0f, 0.0f, 12, null);
                ComposableLambda composableLambdaB13 = ComposableLambdaKt.b(composerS, 1418981691, true, new FloatingActionButtonKt$ExtendedFloatingActionButton$2(pVar3, i12, text));
                int i2115 = ((i12 >> 3) & 14) | 12582912;
                int i2116 = i12 >> 6;
                b(onClick, modifierC13, mutableInteractionSource3, shape2, j13, j12, floatingActionButtonElevationA, composableLambdaB13, composerS, i2115 | (i2116 & 896) | (i2116 & 7168) | (57344 & i2116) | (458752 & i2116) | (i2116 & 3670016), 0);
                modifier4 = modifier3;
                mutableInteractionSource4 = mutableInteractionSource3;
                shape3 = shape2;
                j14 = j13;
                pVar4 = pVar3;
                j15 = j12;
                floatingActionButtonElevation3 = floatingActionButtonElevationA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new FloatingActionButtonKt$ExtendedFloatingActionButton$3(text, onClick, modifier4, pVar4, mutableInteractionSource4, shape3, j14, j15, floatingActionButtonElevation3, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        if ((i10 & 458752) != 0) {
            i12 |= ((i11 & 32) == 0 || !composerS.k(shape)) ? 65536 : 131072;
        }
        if ((i10 & 3670016) == 0) {
            jL = j6;
            if ((i11 & 64) == 0) {
                i18 = 524288;
            } else {
                i18 = 524288;
            }
            i12 |= i18;
        } else {
            jL = j6;
        }
        if ((i10 & 29360128) == 0) {
            j11 = j10;
            if ((i11 & 128) == 0) {
                i17 = 4194304;
            } else {
                i17 = 4194304;
            }
            i12 |= i17;
        } else {
            j11 = j10;
        }
        if ((i10 & 234881024) == 0) {
            if ((i11 & 256) == 0) {
                floatingActionButtonElevation2 = floatingActionButtonElevation;
                if (composerS.k(floatingActionButtonElevation2)) {
                }
                i12 |= i20;
            } else {
                floatingActionButtonElevation2 = floatingActionButtonElevation;
            }
            i12 |= i20;
        } else {
            floatingActionButtonElevation2 = floatingActionButtonElevation;
        }
        if ((i12 & 191739611) == 38347922) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    pVar2 = null;
                } else {
                    pVar2 = pVar;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i11 & 32) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                    i12 &= -458753;
                } else {
                    shapeB = shape;
                }
                if ((i11 & 64) != 0) {
                    jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                    i12 &= -3670017;
                }
                if ((i11 & 128) != 0) {
                    jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                    i12 &= -29360129;
                } else {
                    jB = j11;
                }
                if ((i11 & 256) != 0) {
                    i12 &= -234881025;
                    modifier3 = modifier2;
                    pVar3 = pVar2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape2 = shapeB;
                    j12 = jB;
                    floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                    j13 = jL;
                } else {
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape2 = shapeB;
                    j12 = jB;
                    j13 = jL;
                    floatingActionButtonElevationA = floatingActionButtonElevation2;
                    pVar3 = pVar2;
                }
            } else {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    pVar2 = null;
                } else {
                    pVar2 = pVar;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i11 & 32) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                    i12 &= -458753;
                } else {
                    shapeB = shape;
                }
                if ((i11 & 64) != 0) {
                    jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                    i12 &= -3670017;
                }
                if ((i11 & 128) != 0) {
                    jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                    i12 &= -29360129;
                } else {
                    jB = j11;
                }
                if ((i11 & 256) != 0) {
                    i12 &= -234881025;
                    modifier3 = modifier2;
                    pVar3 = pVar2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape2 = shapeB;
                    j12 = jB;
                    floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                    j13 = jL;
                } else {
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape2 = shapeB;
                    j12 = jB;
                    j13 = jL;
                    floatingActionButtonElevationA = floatingActionButtonElevation2;
                    pVar3 = pVar2;
                }
            }
            composerS.A();
            float f110 = ExtendedFabSize;
            Modifier modifierC14 = SizeKt.C(modifier3, f110, f110, 0.0f, 0.0f, 12, null);
            ComposableLambda composableLambdaB14 = ComposableLambdaKt.b(composerS, 1418981691, true, new FloatingActionButtonKt$ExtendedFloatingActionButton$2(pVar3, i12, text));
            int i2117 = ((i12 >> 3) & 14) | 12582912;
            int i2118 = i12 >> 6;
            b(onClick, modifierC14, mutableInteractionSource3, shape2, j13, j12, floatingActionButtonElevationA, composableLambdaB14, composerS, i2117 | (i2118 & 896) | (i2118 & 7168) | (57344 & i2118) | (458752 & i2118) | (i2118 & 3670016), 0);
            modifier4 = modifier3;
            mutableInteractionSource4 = mutableInteractionSource3;
            shape3 = shape2;
            j14 = j13;
            pVar4 = pVar3;
            j15 = j12;
            floatingActionButtonElevation3 = floatingActionButtonElevationA;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    pVar2 = null;
                } else {
                    pVar2 = pVar;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i11 & 32) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                    i12 &= -458753;
                } else {
                    shapeB = shape;
                }
                if ((i11 & 64) != 0) {
                    jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                    i12 &= -3670017;
                }
                if ((i11 & 128) != 0) {
                    jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                    i12 &= -29360129;
                } else {
                    jB = j11;
                }
                if ((i11 & 256) != 0) {
                    i12 &= -234881025;
                    modifier3 = modifier2;
                    pVar3 = pVar2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape2 = shapeB;
                    j12 = jB;
                    floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                    j13 = jL;
                } else {
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape2 = shapeB;
                    j12 = jB;
                    j13 = jL;
                    floatingActionButtonElevationA = floatingActionButtonElevation2;
                    pVar3 = pVar2;
                }
            } else {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    pVar2 = null;
                } else {
                    pVar2 = pVar;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i11 & 32) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                    i12 &= -458753;
                } else {
                    shapeB = shape;
                }
                if ((i11 & 64) != 0) {
                    jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                    i12 &= -3670017;
                }
                if ((i11 & 128) != 0) {
                    jB = ColorsKt.b(jL, composerS, (i12 >> 18) & 14);
                    i12 &= -29360129;
                } else {
                    jB = j11;
                }
                if ((i11 & 256) != 0) {
                    i12 &= -234881025;
                    modifier3 = modifier2;
                    pVar3 = pVar2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape2 = shapeB;
                    j12 = jB;
                    floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                    j13 = jL;
                } else {
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape2 = shapeB;
                    j12 = jB;
                    j13 = jL;
                    floatingActionButtonElevationA = floatingActionButtonElevation2;
                    pVar3 = pVar2;
                }
            }
            composerS.A();
            float f111 = ExtendedFabSize;
            Modifier modifierC15 = SizeKt.C(modifier3, f111, f111, 0.0f, 0.0f, 12, null);
            ComposableLambda composableLambdaB15 = ComposableLambdaKt.b(composerS, 1418981691, true, new FloatingActionButtonKt$ExtendedFloatingActionButton$2(pVar3, i12, text));
            int i2119 = ((i12 >> 3) & 14) | 12582912;
            int i21110 = i12 >> 6;
            b(onClick, modifierC15, mutableInteractionSource3, shape2, j13, j12, floatingActionButtonElevationA, composableLambdaB15, composerS, i2119 | (i21110 & 896) | (i21110 & 7168) | (57344 & i21110) | (458752 & i21110) | (i21110 & 3670016), 0);
            modifier4 = modifier3;
            mutableInteractionSource4 = mutableInteractionSource3;
            shape3 = shape2;
            j14 = j13;
            pVar4 = pVar3;
            j15 = j12;
            floatingActionButtonElevation3 = floatingActionButtonElevationA;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new FloatingActionButtonKt$ExtendedFloatingActionButton$3(text, onClick, modifier4, pVar4, mutableInteractionSource4, shape3, j14, j15, floatingActionButtonElevation3, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:112:0x0152 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:113:0x0154  */
    /* JADX WARN: Code duplicated, block: B:114:0x0157  */
    /* JADX WARN: Code duplicated, block: B:116:0x015b  */
    /* JADX WARN: Code duplicated, block: B:118:0x016d  */
    /* JADX WARN: Code duplicated, block: B:120:0x017a  */
    /* JADX WARN: Code duplicated, block: B:123:0x0181  */
    /* JADX WARN: Code duplicated, block: B:124:0x0198  */
    /* JADX WARN: Code duplicated, block: B:127:0x019d  */
    /* JADX WARN: Code duplicated, block: B:128:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:131:0x01af  */
    /* JADX WARN: Code duplicated, block: B:132:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:135:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:141:0x0265  */
    /* JADX WARN: Code duplicated, block: B:143:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0051  */
    /* JADX WARN: Code duplicated, block: B:28:0x0056  */
    /* JADX WARN: Code duplicated, block: B:30:0x005a  */
    /* JADX WARN: Code duplicated, block: B:32:0x0062  */
    /* JADX WARN: Code duplicated, block: B:33:0x0065  */
    /* JADX WARN: Code duplicated, block: B:37:0x006c  */
    /* JADX WARN: Code duplicated, block: B:39:0x0070  */
    /* JADX WARN: Code duplicated, block: B:41:0x0078  */
    /* JADX WARN: Code duplicated, block: B:42:0x007b  */
    /* JADX WARN: Code duplicated, block: B:45:0x0081  */
    /* JADX WARN: Code duplicated, block: B:48:0x008a  */
    /* JADX WARN: Code duplicated, block: B:50:0x008e  */
    /* JADX WARN: Code duplicated, block: B:52:0x0096  */
    /* JADX WARN: Code duplicated, block: B:53:0x0099  */
    /* JADX WARN: Code duplicated, block: B:56:0x009f  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:67:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:72:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:80:0x00df  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:86:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:87:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:90:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:94:0x0116  */
    /* JADX WARN: Code duplicated, block: B:96:0x0126  */
    @Composable
    @ComposableInferredTarget
    public static final void b(@NotNull a<l0> onClick, @Nullable Modifier modifier, @Nullable MutableInteractionSource mutableInteractionSource, @Nullable Shape shape, long j6, long j10, @Nullable FloatingActionButtonElevation floatingActionButtonElevation, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        Shape shape2;
        long j11;
        long j12;
        FloatingActionButtonElevation floatingActionButtonElevationA;
        int i15;
        Modifier modifier2;
        MutableInteractionSource mutableInteractionSource2;
        Shape shapeB;
        long jL;
        long jB;
        Modifier modifier3;
        MutableInteractionSource mutableInteractionSource3;
        Shape shape3;
        long j13;
        long j14;
        Object objH;
        Composer composer2;
        Modifier modifier4;
        Shape shape4;
        long j15;
        MutableInteractionSource mutableInteractionSource4;
        FloatingActionButtonElevation floatingActionButtonElevation2;
        long j16;
        ScopeUpdateScope scopeUpdateScopeU;
        int i16;
        t.j(onClick, "onClick");
        t.j(content, "content");
        Composer composerS = composer.s(1028985328);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(onClick) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i17 = i11 & 2;
        if (i17 == 0) {
            if ((i10 & 112) == 0) {
                i12 |= composerS.k(modifier) ? 32 : 16;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 896) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i14 = 256;
                    } else {
                        i14 = 128;
                    }
                    i12 |= i14;
                }
                if ((i10 & 7168) == 0) {
                    if ((i11 & 8) == 0) {
                        shape2 = shape;
                        int i18 = composerS.k(shape2) ? 2048 : 1024;
                        i12 |= i18;
                    } else {
                        shape2 = shape;
                    }
                    i12 |= i18;
                } else {
                    shape2 = shape;
                }
                if ((i10 & 57344) == 0) {
                    if ((i11 & 16) == 0) {
                        j11 = j6;
                        int i19 = composerS.q(j11) ? 16384 : 8192;
                        i12 |= i19;
                    } else {
                        j11 = j6;
                    }
                    i12 |= i19;
                } else {
                    j11 = j6;
                }
                if ((i10 & 458752) == 0) {
                    if ((i11 & 32) == 0) {
                        j12 = j10;
                        int i20 = composerS.q(j12) ? 131072 : 65536;
                        i12 |= i20;
                    } else {
                        j12 = j10;
                    }
                    i12 |= i20;
                } else {
                    j12 = j10;
                }
                if ((i10 & 3670016) == 0) {
                    floatingActionButtonElevationA = floatingActionButtonElevation;
                    if ((i11 & 64) == 0 || !composerS.k(floatingActionButtonElevationA)) {
                        i16 = 524288;
                    } else {
                        i16 = 1048576;
                    }
                    i12 |= i16;
                } else {
                    floatingActionButtonElevationA = floatingActionButtonElevation;
                }
                if ((i11 & 128) != 0) {
                    if ((29360128 & i10) == 0) {
                        if (composerS.k(content)) {
                            i15 = 8388608;
                        } else {
                            i15 = 4194304;
                        }
                    }
                    if ((23967451 & i12) == 4793490 || !composerS.b()) {
                        composerS.J();
                        if ((i10 & 1) != 0 || composerS.h()) {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 8) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -7169;
                            } else {
                                shapeB = shape2;
                            }
                            if ((i11 & 16) != 0) {
                                jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                                i12 &= -57345;
                            } else {
                                jL = j11;
                            }
                            if ((i11 & 32) != 0) {
                                jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                                i12 &= -458753;
                            } else {
                                jB = j12;
                            }
                            if ((i11 & 64) != 0) {
                                floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                                i12 &= -3670017;
                            }
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape3 = shapeB;
                            j13 = jL;
                            j14 = jB;
                        } else {
                            composerS.g();
                            if ((i11 & 8) != 0) {
                                i12 &= -7169;
                            }
                            if ((i11 & 16) != 0) {
                                i12 &= -57345;
                            }
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                            }
                            if ((i11 & 64) != 0) {
                                i12 &= -3670017;
                            }
                            modifier3 = modifier;
                            shape3 = shape2;
                            j13 = j11;
                            j14 = j12;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        composerS.A();
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier3, false, shape3, j13, j14, null, floatingActionButtonElevationA.a(mutableInteractionSource3, composerS, ((i12 >> 6) & 14) | ((i12 >> 15) & 112)).getValue().l(), mutableInteractionSource3, ComposableLambdaKt.b(composerS, 1972871863, true, new FloatingActionButtonKt$FloatingActionButton$2(j14, content, i12)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 << 18) & 234881024), 68);
                        modifier4 = modifier3;
                        shape4 = shape3;
                        j15 = j13;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        floatingActionButtonElevation2 = floatingActionButtonElevationA;
                        j16 = j14;
                    } else {
                        composerS.g();
                        modifier4 = modifier;
                        mutableInteractionSource4 = mutableInteractionSource;
                        shape4 = shape2;
                        composer2 = composerS;
                        long j17 = j12;
                        floatingActionButtonElevation2 = floatingActionButtonElevationA;
                        j15 = j11;
                        j16 = j17;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new FloatingActionButtonKt$FloatingActionButton$3(onClick, modifier4, mutableInteractionSource4, shape4, j15, j16, floatingActionButtonElevation2, content, i10, i11));
                }
                i15 = 12582912;
                i12 |= i15;
                if ((23967451 & i12) == 4793490) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 8) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -7169;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 16) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -57345;
                        } else {
                            jL = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if ((i11 & 64) != 0) {
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -3670017;
                        }
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        j13 = jL;
                        j14 = jB;
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 8) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -7169;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 16) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -57345;
                        } else {
                            jL = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if ((i11 & 64) != 0) {
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -3670017;
                        }
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        j13 = jL;
                        j14 = jB;
                    }
                    composerS.A();
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier3, false, shape3, j13, j14, null, floatingActionButtonElevationA.a(mutableInteractionSource3, composerS, ((i12 >> 6) & 14) | ((i12 >> 15) & 112)).getValue().l(), mutableInteractionSource3, ComposableLambdaKt.b(composerS, 1972871863, true, new FloatingActionButtonKt$FloatingActionButton$2(j14, content, i12)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 << 18) & 234881024), 68);
                    modifier4 = modifier3;
                    shape4 = shape3;
                    j15 = j13;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    floatingActionButtonElevation2 = floatingActionButtonElevationA;
                    j16 = j14;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 8) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -7169;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 16) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -57345;
                        } else {
                            jL = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if ((i11 & 64) != 0) {
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -3670017;
                        }
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        j13 = jL;
                        j14 = jB;
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 8) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -7169;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 16) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -57345;
                        } else {
                            jL = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if ((i11 & 64) != 0) {
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -3670017;
                        }
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        j13 = jL;
                        j14 = jB;
                    }
                    composerS.A();
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier3, false, shape3, j13, j14, null, floatingActionButtonElevationA.a(mutableInteractionSource3, composerS, ((i12 >> 6) & 14) | ((i12 >> 15) & 112)).getValue().l(), mutableInteractionSource3, ComposableLambdaKt.b(composerS, 1972871863, true, new FloatingActionButtonKt$FloatingActionButton$2(j14, content, i12)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 << 18) & 234881024), 68);
                    modifier4 = modifier3;
                    shape4 = shape3;
                    j15 = j13;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    floatingActionButtonElevation2 = floatingActionButtonElevationA;
                    j16 = j14;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new FloatingActionButtonKt$FloatingActionButton$3(onClick, modifier4, mutableInteractionSource4, shape4, j15, j16, floatingActionButtonElevation2, content, i10, i11));
            }
            i12 |= 384;
            if ((i10 & 7168) == 0) {
                if ((i11 & 8) == 0) {
                    shape2 = shape;
                    if (composerS.k(shape2)) {
                    }
                    i12 |= i18;
                } else {
                    shape2 = shape;
                }
                i12 |= i18;
            } else {
                shape2 = shape;
            }
            if ((i10 & 57344) == 0) {
                if ((i11 & 16) == 0) {
                    j11 = j6;
                    if (composerS.q(j11)) {
                    }
                    i12 |= i19;
                } else {
                    j11 = j6;
                }
                i12 |= i19;
            } else {
                j11 = j6;
            }
            if ((i10 & 458752) == 0) {
                if ((i11 & 32) == 0) {
                    j12 = j10;
                    if (composerS.q(j12)) {
                    }
                    i12 |= i20;
                } else {
                    j12 = j10;
                }
                i12 |= i20;
            } else {
                j12 = j10;
            }
            if ((i10 & 3670016) == 0) {
                floatingActionButtonElevationA = floatingActionButtonElevation;
                if ((i11 & 64) == 0) {
                    i16 = 524288;
                } else {
                    i16 = 524288;
                }
                i12 |= i16;
            } else {
                floatingActionButtonElevationA = floatingActionButtonElevation;
            }
            if ((i11 & 128) != 0) {
                if ((29360128 & i10) == 0) {
                    if (composerS.k(content)) {
                        i15 = 8388608;
                    } else {
                        i15 = 4194304;
                    }
                }
                if ((23967451 & i12) == 4793490) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 8) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -7169;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 16) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -57345;
                        } else {
                            jL = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if ((i11 & 64) != 0) {
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -3670017;
                        }
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        j13 = jL;
                        j14 = jB;
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 8) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -7169;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 16) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -57345;
                        } else {
                            jL = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if ((i11 & 64) != 0) {
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -3670017;
                        }
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        j13 = jL;
                        j14 = jB;
                    }
                    composerS.A();
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier3, false, shape3, j13, j14, null, floatingActionButtonElevationA.a(mutableInteractionSource3, composerS, ((i12 >> 6) & 14) | ((i12 >> 15) & 112)).getValue().l(), mutableInteractionSource3, ComposableLambdaKt.b(composerS, 1972871863, true, new FloatingActionButtonKt$FloatingActionButton$2(j14, content, i12)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 << 18) & 234881024), 68);
                    modifier4 = modifier3;
                    shape4 = shape3;
                    j15 = j13;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    floatingActionButtonElevation2 = floatingActionButtonElevationA;
                    j16 = j14;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 8) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -7169;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 16) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -57345;
                        } else {
                            jL = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if ((i11 & 64) != 0) {
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -3670017;
                        }
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        j13 = jL;
                        j14 = jB;
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 8) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -7169;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 16) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -57345;
                        } else {
                            jL = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if ((i11 & 64) != 0) {
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -3670017;
                        }
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        j13 = jL;
                        j14 = jB;
                    }
                    composerS.A();
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier3, false, shape3, j13, j14, null, floatingActionButtonElevationA.a(mutableInteractionSource3, composerS, ((i12 >> 6) & 14) | ((i12 >> 15) & 112)).getValue().l(), mutableInteractionSource3, ComposableLambdaKt.b(composerS, 1972871863, true, new FloatingActionButtonKt$FloatingActionButton$2(j14, content, i12)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 << 18) & 234881024), 68);
                    modifier4 = modifier3;
                    shape4 = shape3;
                    j15 = j13;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    floatingActionButtonElevation2 = floatingActionButtonElevationA;
                    j16 = j14;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new FloatingActionButtonKt$FloatingActionButton$3(onClick, modifier4, mutableInteractionSource4, shape4, j15, j16, floatingActionButtonElevation2, content, i10, i11));
            }
            i15 = 12582912;
            i12 |= i15;
            if ((23967451 & i12) == 4793490) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 8) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -7169;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 16) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -57345;
                    } else {
                        jL = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if ((i11 & 64) != 0) {
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -3670017;
                    }
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    j13 = jL;
                    j14 = jB;
                } else {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 8) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -7169;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 16) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -57345;
                    } else {
                        jL = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if ((i11 & 64) != 0) {
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -3670017;
                    }
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    j13 = jL;
                    j14 = jB;
                }
                composerS.A();
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier3, false, shape3, j13, j14, null, floatingActionButtonElevationA.a(mutableInteractionSource3, composerS, ((i12 >> 6) & 14) | ((i12 >> 15) & 112)).getValue().l(), mutableInteractionSource3, ComposableLambdaKt.b(composerS, 1972871863, true, new FloatingActionButtonKt$FloatingActionButton$2(j14, content, i12)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 << 18) & 234881024), 68);
                modifier4 = modifier3;
                shape4 = shape3;
                j15 = j13;
                mutableInteractionSource4 = mutableInteractionSource3;
                floatingActionButtonElevation2 = floatingActionButtonElevationA;
                j16 = j14;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 8) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -7169;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 16) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -57345;
                    } else {
                        jL = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if ((i11 & 64) != 0) {
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -3670017;
                    }
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    j13 = jL;
                    j14 = jB;
                } else {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 8) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -7169;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 16) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -57345;
                    } else {
                        jL = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if ((i11 & 64) != 0) {
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -3670017;
                    }
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    j13 = jL;
                    j14 = jB;
                }
                composerS.A();
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier3, false, shape3, j13, j14, null, floatingActionButtonElevationA.a(mutableInteractionSource3, composerS, ((i12 >> 6) & 14) | ((i12 >> 15) & 112)).getValue().l(), mutableInteractionSource3, ComposableLambdaKt.b(composerS, 1972871863, true, new FloatingActionButtonKt$FloatingActionButton$2(j14, content, i12)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 << 18) & 234881024), 68);
                modifier4 = modifier3;
                shape4 = shape3;
                j15 = j13;
                mutableInteractionSource4 = mutableInteractionSource3;
                floatingActionButtonElevation2 = floatingActionButtonElevationA;
                j16 = j14;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new FloatingActionButtonKt$FloatingActionButton$3(onClick, modifier4, mutableInteractionSource4, shape4, j15, j16, floatingActionButtonElevation2, content, i10, i11));
        }
        i12 |= 48;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 896) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i12 |= i14;
            }
            if ((i10 & 7168) == 0) {
                if ((i11 & 8) == 0) {
                    shape2 = shape;
                    if (composerS.k(shape2)) {
                    }
                    i12 |= i18;
                } else {
                    shape2 = shape;
                }
                i12 |= i18;
            } else {
                shape2 = shape;
            }
            if ((i10 & 57344) == 0) {
                if ((i11 & 16) == 0) {
                    j11 = j6;
                    if (composerS.q(j11)) {
                    }
                    i12 |= i19;
                } else {
                    j11 = j6;
                }
                i12 |= i19;
            } else {
                j11 = j6;
            }
            if ((i10 & 458752) == 0) {
                if ((i11 & 32) == 0) {
                    j12 = j10;
                    if (composerS.q(j12)) {
                    }
                    i12 |= i20;
                } else {
                    j12 = j10;
                }
                i12 |= i20;
            } else {
                j12 = j10;
            }
            if ((i10 & 3670016) == 0) {
                floatingActionButtonElevationA = floatingActionButtonElevation;
                if ((i11 & 64) == 0) {
                    i16 = 524288;
                } else {
                    i16 = 524288;
                }
                i12 |= i16;
            } else {
                floatingActionButtonElevationA = floatingActionButtonElevation;
            }
            if ((i11 & 128) != 0) {
                if ((29360128 & i10) == 0) {
                    if (composerS.k(content)) {
                        i15 = 8388608;
                    } else {
                        i15 = 4194304;
                    }
                }
                if ((23967451 & i12) == 4793490) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 8) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -7169;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 16) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -57345;
                        } else {
                            jL = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if ((i11 & 64) != 0) {
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -3670017;
                        }
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        j13 = jL;
                        j14 = jB;
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 8) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -7169;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 16) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -57345;
                        } else {
                            jL = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if ((i11 & 64) != 0) {
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -3670017;
                        }
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        j13 = jL;
                        j14 = jB;
                    }
                    composerS.A();
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier3, false, shape3, j13, j14, null, floatingActionButtonElevationA.a(mutableInteractionSource3, composerS, ((i12 >> 6) & 14) | ((i12 >> 15) & 112)).getValue().l(), mutableInteractionSource3, ComposableLambdaKt.b(composerS, 1972871863, true, new FloatingActionButtonKt$FloatingActionButton$2(j14, content, i12)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 << 18) & 234881024), 68);
                    modifier4 = modifier3;
                    shape4 = shape3;
                    j15 = j13;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    floatingActionButtonElevation2 = floatingActionButtonElevationA;
                    j16 = j14;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 8) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -7169;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 16) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -57345;
                        } else {
                            jL = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if ((i11 & 64) != 0) {
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -3670017;
                        }
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        j13 = jL;
                        j14 = jB;
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 8) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -7169;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 16) != 0) {
                            jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                            i12 &= -57345;
                        } else {
                            jL = j11;
                        }
                        if ((i11 & 32) != 0) {
                            jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                            i12 &= -458753;
                        } else {
                            jB = j12;
                        }
                        if ((i11 & 64) != 0) {
                            floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -3670017;
                        }
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        j13 = jL;
                        j14 = jB;
                    }
                    composerS.A();
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier3, false, shape3, j13, j14, null, floatingActionButtonElevationA.a(mutableInteractionSource3, composerS, ((i12 >> 6) & 14) | ((i12 >> 15) & 112)).getValue().l(), mutableInteractionSource3, ComposableLambdaKt.b(composerS, 1972871863, true, new FloatingActionButtonKt$FloatingActionButton$2(j14, content, i12)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 << 18) & 234881024), 68);
                    modifier4 = modifier3;
                    shape4 = shape3;
                    j15 = j13;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    floatingActionButtonElevation2 = floatingActionButtonElevationA;
                    j16 = j14;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new FloatingActionButtonKt$FloatingActionButton$3(onClick, modifier4, mutableInteractionSource4, shape4, j15, j16, floatingActionButtonElevation2, content, i10, i11));
            }
            i15 = 12582912;
            i12 |= i15;
            if ((23967451 & i12) == 4793490) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 8) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -7169;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 16) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -57345;
                    } else {
                        jL = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if ((i11 & 64) != 0) {
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -3670017;
                    }
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    j13 = jL;
                    j14 = jB;
                } else {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 8) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -7169;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 16) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -57345;
                    } else {
                        jL = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if ((i11 & 64) != 0) {
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -3670017;
                    }
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    j13 = jL;
                    j14 = jB;
                }
                composerS.A();
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier3, false, shape3, j13, j14, null, floatingActionButtonElevationA.a(mutableInteractionSource3, composerS, ((i12 >> 6) & 14) | ((i12 >> 15) & 112)).getValue().l(), mutableInteractionSource3, ComposableLambdaKt.b(composerS, 1972871863, true, new FloatingActionButtonKt$FloatingActionButton$2(j14, content, i12)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 << 18) & 234881024), 68);
                modifier4 = modifier3;
                shape4 = shape3;
                j15 = j13;
                mutableInteractionSource4 = mutableInteractionSource3;
                floatingActionButtonElevation2 = floatingActionButtonElevationA;
                j16 = j14;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 8) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -7169;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 16) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -57345;
                    } else {
                        jL = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if ((i11 & 64) != 0) {
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -3670017;
                    }
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    j13 = jL;
                    j14 = jB;
                } else {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 8) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -7169;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 16) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -57345;
                    } else {
                        jL = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if ((i11 & 64) != 0) {
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -3670017;
                    }
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    j13 = jL;
                    j14 = jB;
                }
                composerS.A();
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier3, false, shape3, j13, j14, null, floatingActionButtonElevationA.a(mutableInteractionSource3, composerS, ((i12 >> 6) & 14) | ((i12 >> 15) & 112)).getValue().l(), mutableInteractionSource3, ComposableLambdaKt.b(composerS, 1972871863, true, new FloatingActionButtonKt$FloatingActionButton$2(j14, content, i12)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 << 18) & 234881024), 68);
                modifier4 = modifier3;
                shape4 = shape3;
                j15 = j13;
                mutableInteractionSource4 = mutableInteractionSource3;
                floatingActionButtonElevation2 = floatingActionButtonElevationA;
                j16 = j14;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new FloatingActionButtonKt$FloatingActionButton$3(onClick, modifier4, mutableInteractionSource4, shape4, j15, j16, floatingActionButtonElevation2, content, i10, i11));
        }
        i12 |= 384;
        if ((i10 & 7168) == 0) {
            if ((i11 & 8) == 0) {
                shape2 = shape;
                if (composerS.k(shape2)) {
                }
                i12 |= i18;
            } else {
                shape2 = shape;
            }
            i12 |= i18;
        } else {
            shape2 = shape;
        }
        if ((i10 & 57344) == 0) {
            if ((i11 & 16) == 0) {
                j11 = j6;
                if (composerS.q(j11)) {
                }
                i12 |= i19;
            } else {
                j11 = j6;
            }
            i12 |= i19;
        } else {
            j11 = j6;
        }
        if ((i10 & 458752) == 0) {
            if ((i11 & 32) == 0) {
                j12 = j10;
                if (composerS.q(j12)) {
                }
                i12 |= i20;
            } else {
                j12 = j10;
            }
            i12 |= i20;
        } else {
            j12 = j10;
        }
        if ((i10 & 3670016) == 0) {
            floatingActionButtonElevationA = floatingActionButtonElevation;
            if ((i11 & 64) == 0) {
                i16 = 524288;
            } else {
                i16 = 524288;
            }
            i12 |= i16;
        } else {
            floatingActionButtonElevationA = floatingActionButtonElevation;
        }
        if ((i11 & 128) != 0) {
            if ((29360128 & i10) == 0) {
                if (composerS.k(content)) {
                    i15 = 8388608;
                } else {
                    i15 = 4194304;
                }
            }
            if ((23967451 & i12) == 4793490) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 8) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -7169;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 16) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -57345;
                    } else {
                        jL = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if ((i11 & 64) != 0) {
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -3670017;
                    }
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    j13 = jL;
                    j14 = jB;
                } else {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 8) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -7169;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 16) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -57345;
                    } else {
                        jL = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if ((i11 & 64) != 0) {
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -3670017;
                    }
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    j13 = jL;
                    j14 = jB;
                }
                composerS.A();
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier3, false, shape3, j13, j14, null, floatingActionButtonElevationA.a(mutableInteractionSource3, composerS, ((i12 >> 6) & 14) | ((i12 >> 15) & 112)).getValue().l(), mutableInteractionSource3, ComposableLambdaKt.b(composerS, 1972871863, true, new FloatingActionButtonKt$FloatingActionButton$2(j14, content, i12)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 << 18) & 234881024), 68);
                modifier4 = modifier3;
                shape4 = shape3;
                j15 = j13;
                mutableInteractionSource4 = mutableInteractionSource3;
                floatingActionButtonElevation2 = floatingActionButtonElevationA;
                j16 = j14;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 8) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -7169;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 16) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -57345;
                    } else {
                        jL = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if ((i11 & 64) != 0) {
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -3670017;
                    }
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    j13 = jL;
                    j14 = jB;
                } else {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 8) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -7169;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 16) != 0) {
                        jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                        i12 &= -57345;
                    } else {
                        jL = j11;
                    }
                    if ((i11 & 32) != 0) {
                        jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                        i12 &= -458753;
                    } else {
                        jB = j12;
                    }
                    if ((i11 & 64) != 0) {
                        floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -3670017;
                    }
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    j13 = jL;
                    j14 = jB;
                }
                composerS.A();
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier3, false, shape3, j13, j14, null, floatingActionButtonElevationA.a(mutableInteractionSource3, composerS, ((i12 >> 6) & 14) | ((i12 >> 15) & 112)).getValue().l(), mutableInteractionSource3, ComposableLambdaKt.b(composerS, 1972871863, true, new FloatingActionButtonKt$FloatingActionButton$2(j14, content, i12)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 << 18) & 234881024), 68);
                modifier4 = modifier3;
                shape4 = shape3;
                j15 = j13;
                mutableInteractionSource4 = mutableInteractionSource3;
                floatingActionButtonElevation2 = floatingActionButtonElevationA;
                j16 = j14;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new FloatingActionButtonKt$FloatingActionButton$3(onClick, modifier4, mutableInteractionSource4, shape4, j15, j16, floatingActionButtonElevation2, content, i10, i11));
        }
        i15 = 12582912;
        i12 |= i15;
        if ((23967451 & i12) == 4793490) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i17 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i11 & 8) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                    i12 &= -7169;
                } else {
                    shapeB = shape2;
                }
                if ((i11 & 16) != 0) {
                    jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                    i12 &= -57345;
                } else {
                    jL = j11;
                }
                if ((i11 & 32) != 0) {
                    jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                    i12 &= -458753;
                } else {
                    jB = j12;
                }
                if ((i11 & 64) != 0) {
                    floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                    i12 &= -3670017;
                }
                modifier3 = modifier2;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape3 = shapeB;
                j13 = jL;
                j14 = jB;
            } else {
                if (i17 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i11 & 8) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                    i12 &= -7169;
                } else {
                    shapeB = shape2;
                }
                if ((i11 & 16) != 0) {
                    jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                    i12 &= -57345;
                } else {
                    jL = j11;
                }
                if ((i11 & 32) != 0) {
                    jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                    i12 &= -458753;
                } else {
                    jB = j12;
                }
                if ((i11 & 64) != 0) {
                    floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                    i12 &= -3670017;
                }
                modifier3 = modifier2;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape3 = shapeB;
                j13 = jL;
                j14 = jB;
            }
            composerS.A();
            composer2 = composerS;
            SurfaceKt.c(onClick, modifier3, false, shape3, j13, j14, null, floatingActionButtonElevationA.a(mutableInteractionSource3, composerS, ((i12 >> 6) & 14) | ((i12 >> 15) & 112)).getValue().l(), mutableInteractionSource3, ComposableLambdaKt.b(composerS, 1972871863, true, new FloatingActionButtonKt$FloatingActionButton$2(j14, content, i12)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 << 18) & 234881024), 68);
            modifier4 = modifier3;
            shape4 = shape3;
            j15 = j13;
            mutableInteractionSource4 = mutableInteractionSource3;
            floatingActionButtonElevation2 = floatingActionButtonElevationA;
            j16 = j14;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i17 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i11 & 8) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                    i12 &= -7169;
                } else {
                    shapeB = shape2;
                }
                if ((i11 & 16) != 0) {
                    jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                    i12 &= -57345;
                } else {
                    jL = j11;
                }
                if ((i11 & 32) != 0) {
                    jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                    i12 &= -458753;
                } else {
                    jB = j12;
                }
                if ((i11 & 64) != 0) {
                    floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                    i12 &= -3670017;
                }
                modifier3 = modifier2;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape3 = shapeB;
                j13 = jL;
                j14 = jB;
            } else {
                if (i17 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i11 & 8) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                    i12 &= -7169;
                } else {
                    shapeB = shape2;
                }
                if ((i11 & 16) != 0) {
                    jL = MaterialTheme.INSTANCE.a(composerS, 6).l();
                    i12 &= -57345;
                } else {
                    jL = j11;
                }
                if ((i11 & 32) != 0) {
                    jB = ColorsKt.b(jL, composerS, (i12 >> 12) & 14);
                    i12 &= -458753;
                } else {
                    jB = j12;
                }
                if ((i11 & 64) != 0) {
                    floatingActionButtonElevationA = FloatingActionButtonDefaults.INSTANCE.a(0.0f, 0.0f, 0.0f, 0.0f, composerS, CpioConstants.C_ISBLK, 15);
                    i12 &= -3670017;
                }
                modifier3 = modifier2;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape3 = shapeB;
                j13 = jL;
                j14 = jB;
            }
            composerS.A();
            composer2 = composerS;
            SurfaceKt.c(onClick, modifier3, false, shape3, j13, j14, null, floatingActionButtonElevationA.a(mutableInteractionSource3, composerS, ((i12 >> 6) & 14) | ((i12 >> 15) & 112)).getValue().l(), mutableInteractionSource3, ComposableLambdaKt.b(composerS, 1972871863, true, new FloatingActionButtonKt$FloatingActionButton$2(j14, content, i12)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 << 18) & 234881024), 68);
            modifier4 = modifier3;
            shape4 = shape3;
            j15 = j13;
            mutableInteractionSource4 = mutableInteractionSource3;
            floatingActionButtonElevation2 = floatingActionButtonElevationA;
            j16 = j14;
        }
        scopeUpdateScopeU = composer2.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new FloatingActionButtonKt$FloatingActionButton$3(onClick, modifier4, mutableInteractionSource4, shape4, j15, j16, floatingActionButtonElevation2, content, i10, i11));
    }
}
