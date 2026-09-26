package androidx.compose.material;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
import androidx.profileinstaller.ProfileVerifier;
import com.narvii.util.ws.WsMessage;
import e8.a;
import e8.l;
import e8.p;
import e8.q;
import j8.o;
import kotlin.coroutines.h;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class DrawerKt {
    private static final float BottomDrawerOpenFraction = 0.5f;
    private static final float EndDrawerPadding = Dp.f(56);
    private static final float DrawerVelocityThreshold = Dp.f(WsMessage.LIVE_LAYER_USER_JOINED_EVENT);

    @NotNull
    private static final TweenSpec<Float> AnimationSpec = new TweenSpec<>(256, 0, null, 6, null);

    /* JADX INFO: Access modifiers changed from: private */
    public static final float m(float f, float f6, float f7) {
        return o.m((f7 - f) / (f6 - f), 0.0f, 1.0f);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0117  */
    /* JADX WARN: Code duplicated, block: B:103:0x011d  */
    /* JADX WARN: Code duplicated, block: B:105:0x0121  */
    /* JADX WARN: Code duplicated, block: B:107:0x0126  */
    /* JADX WARN: Code duplicated, block: B:109:0x012c  */
    /* JADX WARN: Code duplicated, block: B:110:0x012f  */
    /* JADX WARN: Code duplicated, block: B:113:0x013b  */
    /* JADX WARN: Code duplicated, block: B:117:0x0153  */
    /* JADX WARN: Code duplicated, block: B:119:0x0166  */
    /* JADX WARN: Code duplicated, block: B:139:0x01a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:140:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:141:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:144:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:145:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:147:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:150:0x01be  */
    /* JADX WARN: Code duplicated, block: B:151:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:153:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:154:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:157:0x01da  */
    /* JADX WARN: Code duplicated, block: B:158:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:161:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:162:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:165:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:166:0x0216  */
    /* JADX WARN: Code duplicated, block: B:169:0x0242  */
    /* JADX WARN: Code duplicated, block: B:174:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:176:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0051  */
    /* JADX WARN: Code duplicated, block: B:28:0x0055  */
    /* JADX WARN: Code duplicated, block: B:30:0x005d  */
    /* JADX WARN: Code duplicated, block: B:31:0x0060  */
    /* JADX WARN: Code duplicated, block: B:34:0x0066  */
    /* JADX WARN: Code duplicated, block: B:37:0x006c  */
    /* JADX WARN: Code duplicated, block: B:39:0x0071  */
    /* JADX WARN: Code duplicated, block: B:41:0x0075  */
    /* JADX WARN: Code duplicated, block: B:43:0x007d  */
    /* JADX WARN: Code duplicated, block: B:44:0x0080  */
    /* JADX WARN: Code duplicated, block: B:48:0x0089  */
    /* JADX WARN: Code duplicated, block: B:50:0x008d  */
    /* JADX WARN: Code duplicated, block: B:52:0x0095  */
    /* JADX WARN: Code duplicated, block: B:53:0x0098  */
    /* JADX WARN: Code duplicated, block: B:56:0x009e  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:61:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:63:0x00af  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:74:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:78:0x00da  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f2 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:89:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:92:0x0101  */
    /* JADX WARN: Code duplicated, block: B:94:0x0105  */
    /* JADX WARN: Code duplicated, block: B:97:0x0110 A[ADDED_TO_REGION] */
    @Composable
    @ExperimentalMaterialApi
    @ComposableInferredTarget
    public static final void a(@NotNull q<? super ColumnScope, ? super Composer, ? super Integer, l0> drawerContent, @Nullable Modifier modifier, @Nullable BottomDrawerState bottomDrawerState, boolean z6, @Nullable Shape shape, float f, long j6, long j10, long j11, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        BottomDrawerState bottomDrawerState2;
        int i13;
        boolean z10;
        int i14;
        Shape shape2;
        int i15;
        float f6;
        int i16;
        int i17;
        int i18;
        Modifier modifier3;
        BottomDrawerState bottomDrawerStateN;
        Shape shapeA;
        float fA;
        long jN;
        long jB;
        long jB2;
        Modifier modifier4;
        BottomDrawerState bottomDrawerState3;
        boolean z11;
        long j12;
        long j13;
        Shape shape3;
        float f7;
        Object objH;
        Composer composer2;
        BottomDrawerState bottomDrawerState4;
        boolean z12;
        Shape shape4;
        float f10;
        long j14;
        long j15;
        long j16;
        Modifier modifier5;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(drawerContent, "drawerContent");
        t.j(content, "content");
        Composer composerS = composer.s(625649286);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(drawerContent) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i19 = i11 & 2;
        if (i19 == 0) {
            if ((i10 & 112) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 32 : 16;
            }
            if ((i10 & 896) == 0) {
                if ((i11 & 4) == 0) {
                    bottomDrawerState2 = bottomDrawerState;
                    int i20 = composerS.k(bottomDrawerState2) ? 256 : 128;
                    i12 |= i20;
                } else {
                    bottomDrawerState2 = bottomDrawerState;
                }
                i12 |= i20;
            } else {
                bottomDrawerState2 = bottomDrawerState;
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
                if ((57344 & i10) == 0) {
                    if ((i11 & 16) == 0) {
                        shape2 = shape;
                        int i21 = composerS.k(shape2) ? 16384 : 8192;
                        i12 |= i21;
                    } else {
                        shape2 = shape;
                    }
                    i12 |= i21;
                } else {
                    shape2 = shape;
                }
                i15 = i11 & 32;
                if (i15 != 0) {
                    if ((458752 & i10) == 0) {
                        f6 = f;
                        if (composerS.n(f6)) {
                            i16 = 131072;
                        } else {
                            i16 = 65536;
                        }
                        i12 |= i16;
                    }
                    if ((3670016 & i10) == 0) {
                        if ((i11 & 64) == 0) {
                            i17 = i19;
                            int i22 = composerS.q(j6) ? 1048576 : 524288;
                            i12 |= i22;
                        } else {
                            i17 = i19;
                        }
                        i12 |= i22;
                    } else {
                        i17 = i19;
                    }
                    if ((i10 & 29360128) != 0) {
                        i12 |= ((i11 & 128) == 0 || !composerS.q(j10)) ? 4194304 : 8388608;
                    }
                    if ((i10 & 234881024) != 0) {
                        i12 |= ((i11 & 256) == 0 || !composerS.q(j11)) ? 33554432 : 67108864;
                    }
                    if ((i11 & 512) != 0) {
                        if ((1879048192 & i10) == 0) {
                            if (composerS.k(content)) {
                                i18 = 536870912;
                            } else {
                                i18 = 268435456;
                            }
                        }
                        if ((1533916891 & i12) == 306783378 || !composerS.b()) {
                            composerS.J();
                            if ((i10 & 1) != 0 || composerS.h()) {
                                if (i17 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier2;
                                }
                                if ((i11 & 4) != 0) {
                                    bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                                    i12 &= -897;
                                } else {
                                    bottomDrawerStateN = bottomDrawerState2;
                                }
                                if (i13 != 0) {
                                    z10 = true;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                    i12 &= -57345;
                                } else {
                                    shapeA = shape2;
                                }
                                if (i15 != 0) {
                                    fA = DrawerDefaults.INSTANCE.a();
                                } else {
                                    fA = f6;
                                }
                                if ((i11 & 64) != 0) {
                                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                    i12 &= -3670017;
                                } else {
                                    jN = j6;
                                }
                                if ((i11 & 128) != 0) {
                                    jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                    i12 &= -29360129;
                                } else {
                                    jB = j10;
                                }
                                if ((i11 & 256) != 0) {
                                    i12 &= -234881025;
                                    modifier4 = modifier3;
                                    bottomDrawerState3 = bottomDrawerStateN;
                                    z11 = z10;
                                    j13 = jB;
                                    jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                    shape3 = shapeA;
                                    f7 = fA;
                                    j12 = jN;
                                } else {
                                    jB2 = j11;
                                    modifier4 = modifier3;
                                    bottomDrawerState3 = bottomDrawerStateN;
                                    z11 = z10;
                                    j12 = jN;
                                    j13 = jB;
                                    shape3 = shapeA;
                                    f7 = fA;
                                }
                            } else {
                                composerS.g();
                                if ((i11 & 4) != 0) {
                                    i12 &= -897;
                                }
                                if ((i11 & 16) != 0) {
                                    i12 &= -57345;
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
                                j12 = j6;
                                j13 = j10;
                                jB2 = j11;
                                modifier4 = modifier2;
                                bottomDrawerState3 = bottomDrawerState2;
                                z11 = z10;
                                shape3 = shape2;
                                f7 = f6;
                            }
                            int i23 = i12;
                            composerS.A();
                            composerS.G(773894976);
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                                composerS.z(compositionScopedCoroutineScopeCanceller);
                                objH = compositionScopedCoroutineScopeCanceller;
                            }
                            composerS.Q();
                            o0 o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                            composerS.Q();
                            Modifier modifier6 = modifier4;
                            composer2 = composerS;
                            BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i23, jB2, shape3, j12, j13, f7, o0VarA, drawerContent)), composer2, 3072, 6);
                            bottomDrawerState4 = bottomDrawerState3;
                            z12 = z11;
                            shape4 = shape3;
                            f10 = f7;
                            j14 = j12;
                            j15 = j13;
                            j16 = jB2;
                            modifier5 = modifier6;
                        } else {
                            composerS.g();
                            j16 = j11;
                            modifier5 = modifier2;
                            bottomDrawerState4 = bottomDrawerState2;
                            z12 = z10;
                            shape4 = shape2;
                            f10 = f6;
                            composer2 = composerS;
                            j14 = j6;
                            j15 = j10;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new DrawerKt$BottomDrawer$2(drawerContent, modifier5, bottomDrawerState4, z12, shape4, f10, j14, j15, j16, content, i10, i11));
                    }
                    i18 = 805306368;
                    i12 |= i18;
                    if ((1533916891 & i12) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                bottomDrawerStateN = bottomDrawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                i12 &= -234881025;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j13 = jB;
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                shape3 = shapeA;
                                f7 = fA;
                                j12 = jN;
                            } else {
                                jB2 = j11;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j12 = jN;
                                j13 = jB;
                                shape3 = shapeA;
                                f7 = fA;
                            }
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                bottomDrawerStateN = bottomDrawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                i12 &= -234881025;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j13 = jB;
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                shape3 = shapeA;
                                f7 = fA;
                                j12 = jN;
                            } else {
                                jB2 = j11;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j12 = jN;
                                j13 = jB;
                                shape3 = shapeA;
                                f7 = fA;
                            }
                        }
                        int i24 = i12;
                        composerS.A();
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller2 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller2);
                            objH = compositionScopedCoroutineScopeCanceller2;
                        }
                        composerS.Q();
                        o0 o0VarA2 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Modifier modifier7 = modifier4;
                        composer2 = composerS;
                        BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i24, jB2, shape3, j12, j13, f7, o0VarA2, drawerContent)), composer2, 3072, 6);
                        bottomDrawerState4 = bottomDrawerState3;
                        z12 = z11;
                        shape4 = shape3;
                        f10 = f7;
                        j14 = j12;
                        j15 = j13;
                        j16 = jB2;
                        modifier5 = modifier7;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                bottomDrawerStateN = bottomDrawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                i12 &= -234881025;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j13 = jB;
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                shape3 = shapeA;
                                f7 = fA;
                                j12 = jN;
                            } else {
                                jB2 = j11;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j12 = jN;
                                j13 = jB;
                                shape3 = shapeA;
                                f7 = fA;
                            }
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                bottomDrawerStateN = bottomDrawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                i12 &= -234881025;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j13 = jB;
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                shape3 = shapeA;
                                f7 = fA;
                                j12 = jN;
                            } else {
                                jB2 = j11;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j12 = jN;
                                j13 = jB;
                                shape3 = shapeA;
                                f7 = fA;
                            }
                        }
                        int i25 = i12;
                        composerS.A();
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller3 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller3);
                            objH = compositionScopedCoroutineScopeCanceller3;
                        }
                        composerS.Q();
                        o0 o0VarA3 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Modifier modifier8 = modifier4;
                        composer2 = composerS;
                        BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i25, jB2, shape3, j12, j13, f7, o0VarA3, drawerContent)), composer2, 3072, 6);
                        bottomDrawerState4 = bottomDrawerState3;
                        z12 = z11;
                        shape4 = shape3;
                        f10 = f7;
                        j14 = j12;
                        j15 = j13;
                        j16 = jB2;
                        modifier5 = modifier8;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new DrawerKt$BottomDrawer$2(drawerContent, modifier5, bottomDrawerState4, z12, shape4, f10, j14, j15, j16, content, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                f6 = f;
                if ((3670016 & i10) == 0) {
                    if ((i11 & 64) == 0) {
                        i17 = i19;
                        if (composerS.q(j6)) {
                        }
                        i12 |= i22;
                    } else {
                        i17 = i19;
                    }
                    i12 |= i22;
                } else {
                    i17 = i19;
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j10)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) != 0) {
                    i12 |= ((i11 & 256) == 0 || !composerS.q(j11)) ? 33554432 : 67108864;
                }
                if ((i11 & 512) != 0) {
                    if ((1879048192 & i10) == 0) {
                        if (composerS.k(content)) {
                            i18 = 536870912;
                        } else {
                            i18 = 268435456;
                        }
                    }
                    if ((1533916891 & i12) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                bottomDrawerStateN = bottomDrawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                i12 &= -234881025;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j13 = jB;
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                shape3 = shapeA;
                                f7 = fA;
                                j12 = jN;
                            } else {
                                jB2 = j11;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j12 = jN;
                                j13 = jB;
                                shape3 = shapeA;
                                f7 = fA;
                            }
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                bottomDrawerStateN = bottomDrawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                i12 &= -234881025;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j13 = jB;
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                shape3 = shapeA;
                                f7 = fA;
                                j12 = jN;
                            } else {
                                jB2 = j11;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j12 = jN;
                                j13 = jB;
                                shape3 = shapeA;
                                f7 = fA;
                            }
                        }
                        int i26 = i12;
                        composerS.A();
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller4 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller4);
                            objH = compositionScopedCoroutineScopeCanceller4;
                        }
                        composerS.Q();
                        o0 o0VarA4 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Modifier modifier9 = modifier4;
                        composer2 = composerS;
                        BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i26, jB2, shape3, j12, j13, f7, o0VarA4, drawerContent)), composer2, 3072, 6);
                        bottomDrawerState4 = bottomDrawerState3;
                        z12 = z11;
                        shape4 = shape3;
                        f10 = f7;
                        j14 = j12;
                        j15 = j13;
                        j16 = jB2;
                        modifier5 = modifier9;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                bottomDrawerStateN = bottomDrawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                i12 &= -234881025;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j13 = jB;
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                shape3 = shapeA;
                                f7 = fA;
                                j12 = jN;
                            } else {
                                jB2 = j11;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j12 = jN;
                                j13 = jB;
                                shape3 = shapeA;
                                f7 = fA;
                            }
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                bottomDrawerStateN = bottomDrawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                i12 &= -234881025;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j13 = jB;
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                shape3 = shapeA;
                                f7 = fA;
                                j12 = jN;
                            } else {
                                jB2 = j11;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j12 = jN;
                                j13 = jB;
                                shape3 = shapeA;
                                f7 = fA;
                            }
                        }
                        int i27 = i12;
                        composerS.A();
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller5 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller5);
                            objH = compositionScopedCoroutineScopeCanceller5;
                        }
                        composerS.Q();
                        o0 o0VarA5 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Modifier modifier10 = modifier4;
                        composer2 = composerS;
                        BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i27, jB2, shape3, j12, j13, f7, o0VarA5, drawerContent)), composer2, 3072, 6);
                        bottomDrawerState4 = bottomDrawerState3;
                        z12 = z11;
                        shape4 = shape3;
                        f10 = f7;
                        j14 = j12;
                        j15 = j13;
                        j16 = jB2;
                        modifier5 = modifier10;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new DrawerKt$BottomDrawer$2(drawerContent, modifier5, bottomDrawerState4, z12, shape4, f10, j14, j15, j16, content, i10, i11));
                }
                i18 = 805306368;
                i12 |= i18;
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    }
                    int i28 = i12;
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller6 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller6);
                        objH = compositionScopedCoroutineScopeCanceller6;
                    }
                    composerS.Q();
                    o0 o0VarA6 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifier11 = modifier4;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i28, jB2, shape3, j12, j13, f7, o0VarA6, drawerContent)), composer2, 3072, 6);
                    bottomDrawerState4 = bottomDrawerState3;
                    z12 = z11;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = j12;
                    j15 = j13;
                    j16 = jB2;
                    modifier5 = modifier11;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    }
                    int i29 = i12;
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller7 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller7);
                        objH = compositionScopedCoroutineScopeCanceller7;
                    }
                    composerS.Q();
                    o0 o0VarA7 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifier12 = modifier4;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i29, jB2, shape3, j12, j13, f7, o0VarA7, drawerContent)), composer2, 3072, 6);
                    bottomDrawerState4 = bottomDrawerState3;
                    z12 = z11;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = j12;
                    j15 = j13;
                    j16 = jB2;
                    modifier5 = modifier12;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new DrawerKt$BottomDrawer$2(drawerContent, modifier5, bottomDrawerState4, z12, shape4, f10, j14, j15, j16, content, i10, i11));
            }
            i12 |= 3072;
            z10 = z6;
            if ((57344 & i10) == 0) {
                if ((i11 & 16) == 0) {
                    shape2 = shape;
                    if (composerS.k(shape2)) {
                    }
                    i12 |= i21;
                } else {
                    shape2 = shape;
                }
                i12 |= i21;
            } else {
                shape2 = shape;
            }
            i15 = i11 & 32;
            if (i15 != 0) {
                if ((458752 & i10) == 0) {
                    f6 = f;
                    if (composerS.n(f6)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                    i12 |= i16;
                }
                if ((3670016 & i10) == 0) {
                    if ((i11 & 64) == 0) {
                        i17 = i19;
                        if (composerS.q(j6)) {
                        }
                        i12 |= i22;
                    } else {
                        i17 = i19;
                    }
                    i12 |= i22;
                } else {
                    i17 = i19;
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j10)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) != 0) {
                    i12 |= ((i11 & 256) == 0 || !composerS.q(j11)) ? 33554432 : 67108864;
                }
                if ((i11 & 512) != 0) {
                    if ((1879048192 & i10) == 0) {
                        if (composerS.k(content)) {
                            i18 = 536870912;
                        } else {
                            i18 = 268435456;
                        }
                    }
                    if ((1533916891 & i12) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                bottomDrawerStateN = bottomDrawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                i12 &= -234881025;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j13 = jB;
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                shape3 = shapeA;
                                f7 = fA;
                                j12 = jN;
                            } else {
                                jB2 = j11;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j12 = jN;
                                j13 = jB;
                                shape3 = shapeA;
                                f7 = fA;
                            }
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                bottomDrawerStateN = bottomDrawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                i12 &= -234881025;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j13 = jB;
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                shape3 = shapeA;
                                f7 = fA;
                                j12 = jN;
                            } else {
                                jB2 = j11;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j12 = jN;
                                j13 = jB;
                                shape3 = shapeA;
                                f7 = fA;
                            }
                        }
                        int i210 = i12;
                        composerS.A();
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller8 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller8);
                            objH = compositionScopedCoroutineScopeCanceller8;
                        }
                        composerS.Q();
                        o0 o0VarA8 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Modifier modifier13 = modifier4;
                        composer2 = composerS;
                        BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i210, jB2, shape3, j12, j13, f7, o0VarA8, drawerContent)), composer2, 3072, 6);
                        bottomDrawerState4 = bottomDrawerState3;
                        z12 = z11;
                        shape4 = shape3;
                        f10 = f7;
                        j14 = j12;
                        j15 = j13;
                        j16 = jB2;
                        modifier5 = modifier13;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                bottomDrawerStateN = bottomDrawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                i12 &= -234881025;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j13 = jB;
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                shape3 = shapeA;
                                f7 = fA;
                                j12 = jN;
                            } else {
                                jB2 = j11;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j12 = jN;
                                j13 = jB;
                                shape3 = shapeA;
                                f7 = fA;
                            }
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                bottomDrawerStateN = bottomDrawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                i12 &= -234881025;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j13 = jB;
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                shape3 = shapeA;
                                f7 = fA;
                                j12 = jN;
                            } else {
                                jB2 = j11;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j12 = jN;
                                j13 = jB;
                                shape3 = shapeA;
                                f7 = fA;
                            }
                        }
                        int i211 = i12;
                        composerS.A();
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller9 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller9);
                            objH = compositionScopedCoroutineScopeCanceller9;
                        }
                        composerS.Q();
                        o0 o0VarA9 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Modifier modifier14 = modifier4;
                        composer2 = composerS;
                        BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i211, jB2, shape3, j12, j13, f7, o0VarA9, drawerContent)), composer2, 3072, 6);
                        bottomDrawerState4 = bottomDrawerState3;
                        z12 = z11;
                        shape4 = shape3;
                        f10 = f7;
                        j14 = j12;
                        j15 = j13;
                        j16 = jB2;
                        modifier5 = modifier14;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new DrawerKt$BottomDrawer$2(drawerContent, modifier5, bottomDrawerState4, z12, shape4, f10, j14, j15, j16, content, i10, i11));
                }
                i18 = 805306368;
                i12 |= i18;
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    }
                    int i212 = i12;
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller10 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller10);
                        objH = compositionScopedCoroutineScopeCanceller10;
                    }
                    composerS.Q();
                    o0 o0VarA10 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifier15 = modifier4;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i212, jB2, shape3, j12, j13, f7, o0VarA10, drawerContent)), composer2, 3072, 6);
                    bottomDrawerState4 = bottomDrawerState3;
                    z12 = z11;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = j12;
                    j15 = j13;
                    j16 = jB2;
                    modifier5 = modifier15;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    }
                    int i213 = i12;
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller11 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller11);
                        objH = compositionScopedCoroutineScopeCanceller11;
                    }
                    composerS.Q();
                    o0 o0VarA11 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifier16 = modifier4;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i213, jB2, shape3, j12, j13, f7, o0VarA11, drawerContent)), composer2, 3072, 6);
                    bottomDrawerState4 = bottomDrawerState3;
                    z12 = z11;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = j12;
                    j15 = j13;
                    j16 = jB2;
                    modifier5 = modifier16;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new DrawerKt$BottomDrawer$2(drawerContent, modifier5, bottomDrawerState4, z12, shape4, f10, j14, j15, j16, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            f6 = f;
            if ((3670016 & i10) == 0) {
                if ((i11 & 64) == 0) {
                    i17 = i19;
                    if (composerS.q(j6)) {
                    }
                    i12 |= i22;
                } else {
                    i17 = i19;
                }
                i12 |= i22;
            } else {
                i17 = i19;
            }
            if ((i10 & 29360128) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.q(j10)) ? 4194304 : 8388608;
            }
            if ((i10 & 234881024) != 0) {
                i12 |= ((i11 & 256) == 0 || !composerS.q(j11)) ? 33554432 : 67108864;
            }
            if ((i11 & 512) != 0) {
                if ((1879048192 & i10) == 0) {
                    if (composerS.k(content)) {
                        i18 = 536870912;
                    } else {
                        i18 = 268435456;
                    }
                }
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    }
                    int i214 = i12;
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller12 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller12);
                        objH = compositionScopedCoroutineScopeCanceller12;
                    }
                    composerS.Q();
                    o0 o0VarA12 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifier17 = modifier4;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i214, jB2, shape3, j12, j13, f7, o0VarA12, drawerContent)), composer2, 3072, 6);
                    bottomDrawerState4 = bottomDrawerState3;
                    z12 = z11;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = j12;
                    j15 = j13;
                    j16 = jB2;
                    modifier5 = modifier17;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    }
                    int i215 = i12;
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller13 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller13);
                        objH = compositionScopedCoroutineScopeCanceller13;
                    }
                    composerS.Q();
                    o0 o0VarA13 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifier18 = modifier4;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i215, jB2, shape3, j12, j13, f7, o0VarA13, drawerContent)), composer2, 3072, 6);
                    bottomDrawerState4 = bottomDrawerState3;
                    z12 = z11;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = j12;
                    j15 = j13;
                    j16 = jB2;
                    modifier5 = modifier18;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new DrawerKt$BottomDrawer$2(drawerContent, modifier5, bottomDrawerState4, z12, shape4, f10, j14, j15, j16, content, i10, i11));
            }
            i18 = 805306368;
            i12 |= i18;
            if ((1533916891 & i12) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        bottomDrawerStateN = bottomDrawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j13 = jB;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        shape3 = shapeA;
                        f7 = fA;
                        j12 = jN;
                    } else {
                        jB2 = j11;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j12 = jN;
                        j13 = jB;
                        shape3 = shapeA;
                        f7 = fA;
                    }
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        bottomDrawerStateN = bottomDrawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j13 = jB;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        shape3 = shapeA;
                        f7 = fA;
                        j12 = jN;
                    } else {
                        jB2 = j11;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j12 = jN;
                        j13 = jB;
                        shape3 = shapeA;
                        f7 = fA;
                    }
                }
                int i216 = i12;
                composerS.A();
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller14 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller14);
                    objH = compositionScopedCoroutineScopeCanceller14;
                }
                composerS.Q();
                o0 o0VarA14 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Modifier modifier19 = modifier4;
                composer2 = composerS;
                BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i216, jB2, shape3, j12, j13, f7, o0VarA14, drawerContent)), composer2, 3072, 6);
                bottomDrawerState4 = bottomDrawerState3;
                z12 = z11;
                shape4 = shape3;
                f10 = f7;
                j14 = j12;
                j15 = j13;
                j16 = jB2;
                modifier5 = modifier19;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        bottomDrawerStateN = bottomDrawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j13 = jB;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        shape3 = shapeA;
                        f7 = fA;
                        j12 = jN;
                    } else {
                        jB2 = j11;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j12 = jN;
                        j13 = jB;
                        shape3 = shapeA;
                        f7 = fA;
                    }
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        bottomDrawerStateN = bottomDrawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j13 = jB;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        shape3 = shapeA;
                        f7 = fA;
                        j12 = jN;
                    } else {
                        jB2 = j11;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j12 = jN;
                        j13 = jB;
                        shape3 = shapeA;
                        f7 = fA;
                    }
                }
                int i217 = i12;
                composerS.A();
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller15 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller15);
                    objH = compositionScopedCoroutineScopeCanceller15;
                }
                composerS.Q();
                o0 o0VarA15 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Modifier modifier110 = modifier4;
                composer2 = composerS;
                BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i217, jB2, shape3, j12, j13, f7, o0VarA15, drawerContent)), composer2, 3072, 6);
                bottomDrawerState4 = bottomDrawerState3;
                z12 = z11;
                shape4 = shape3;
                f10 = f7;
                j14 = j12;
                j15 = j13;
                j16 = jB2;
                modifier5 = modifier110;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new DrawerKt$BottomDrawer$2(drawerContent, modifier5, bottomDrawerState4, z12, shape4, f10, j14, j15, j16, content, i10, i11));
        }
        i12 |= 48;
        modifier2 = modifier;
        if ((i10 & 896) == 0) {
            if ((i11 & 4) == 0) {
                bottomDrawerState2 = bottomDrawerState;
                if (composerS.k(bottomDrawerState2)) {
                }
                i12 |= i20;
            } else {
                bottomDrawerState2 = bottomDrawerState;
            }
            i12 |= i20;
        } else {
            bottomDrawerState2 = bottomDrawerState;
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
            if ((57344 & i10) == 0) {
                if ((i11 & 16) == 0) {
                    shape2 = shape;
                    if (composerS.k(shape2)) {
                    }
                    i12 |= i21;
                } else {
                    shape2 = shape;
                }
                i12 |= i21;
            } else {
                shape2 = shape;
            }
            i15 = i11 & 32;
            if (i15 != 0) {
                if ((458752 & i10) == 0) {
                    f6 = f;
                    if (composerS.n(f6)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                    i12 |= i16;
                }
                if ((3670016 & i10) == 0) {
                    if ((i11 & 64) == 0) {
                        i17 = i19;
                        if (composerS.q(j6)) {
                        }
                        i12 |= i22;
                    } else {
                        i17 = i19;
                    }
                    i12 |= i22;
                } else {
                    i17 = i19;
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j10)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) != 0) {
                    i12 |= ((i11 & 256) == 0 || !composerS.q(j11)) ? 33554432 : 67108864;
                }
                if ((i11 & 512) != 0) {
                    if ((1879048192 & i10) == 0) {
                        if (composerS.k(content)) {
                            i18 = 536870912;
                        } else {
                            i18 = 268435456;
                        }
                    }
                    if ((1533916891 & i12) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                bottomDrawerStateN = bottomDrawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                i12 &= -234881025;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j13 = jB;
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                shape3 = shapeA;
                                f7 = fA;
                                j12 = jN;
                            } else {
                                jB2 = j11;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j12 = jN;
                                j13 = jB;
                                shape3 = shapeA;
                                f7 = fA;
                            }
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                bottomDrawerStateN = bottomDrawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                i12 &= -234881025;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j13 = jB;
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                shape3 = shapeA;
                                f7 = fA;
                                j12 = jN;
                            } else {
                                jB2 = j11;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j12 = jN;
                                j13 = jB;
                                shape3 = shapeA;
                                f7 = fA;
                            }
                        }
                        int i218 = i12;
                        composerS.A();
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller16 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller16);
                            objH = compositionScopedCoroutineScopeCanceller16;
                        }
                        composerS.Q();
                        o0 o0VarA16 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Modifier modifier111 = modifier4;
                        composer2 = composerS;
                        BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i218, jB2, shape3, j12, j13, f7, o0VarA16, drawerContent)), composer2, 3072, 6);
                        bottomDrawerState4 = bottomDrawerState3;
                        z12 = z11;
                        shape4 = shape3;
                        f10 = f7;
                        j14 = j12;
                        j15 = j13;
                        j16 = jB2;
                        modifier5 = modifier111;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                bottomDrawerStateN = bottomDrawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                i12 &= -234881025;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j13 = jB;
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                shape3 = shapeA;
                                f7 = fA;
                                j12 = jN;
                            } else {
                                jB2 = j11;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j12 = jN;
                                j13 = jB;
                                shape3 = shapeA;
                                f7 = fA;
                            }
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                bottomDrawerStateN = bottomDrawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                i12 &= -234881025;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j13 = jB;
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                shape3 = shapeA;
                                f7 = fA;
                                j12 = jN;
                            } else {
                                jB2 = j11;
                                modifier4 = modifier3;
                                bottomDrawerState3 = bottomDrawerStateN;
                                z11 = z10;
                                j12 = jN;
                                j13 = jB;
                                shape3 = shapeA;
                                f7 = fA;
                            }
                        }
                        int i219 = i12;
                        composerS.A();
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller17 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller17);
                            objH = compositionScopedCoroutineScopeCanceller17;
                        }
                        composerS.Q();
                        o0 o0VarA17 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Modifier modifier112 = modifier4;
                        composer2 = composerS;
                        BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i219, jB2, shape3, j12, j13, f7, o0VarA17, drawerContent)), composer2, 3072, 6);
                        bottomDrawerState4 = bottomDrawerState3;
                        z12 = z11;
                        shape4 = shape3;
                        f10 = f7;
                        j14 = j12;
                        j15 = j13;
                        j16 = jB2;
                        modifier5 = modifier112;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new DrawerKt$BottomDrawer$2(drawerContent, modifier5, bottomDrawerState4, z12, shape4, f10, j14, j15, j16, content, i10, i11));
                }
                i18 = 805306368;
                i12 |= i18;
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    }
                    int i2110 = i12;
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller18 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller18);
                        objH = compositionScopedCoroutineScopeCanceller18;
                    }
                    composerS.Q();
                    o0 o0VarA18 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifier113 = modifier4;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i2110, jB2, shape3, j12, j13, f7, o0VarA18, drawerContent)), composer2, 3072, 6);
                    bottomDrawerState4 = bottomDrawerState3;
                    z12 = z11;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = j12;
                    j15 = j13;
                    j16 = jB2;
                    modifier5 = modifier113;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    }
                    int i2111 = i12;
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller19 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller19);
                        objH = compositionScopedCoroutineScopeCanceller19;
                    }
                    composerS.Q();
                    o0 o0VarA19 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifier114 = modifier4;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i2111, jB2, shape3, j12, j13, f7, o0VarA19, drawerContent)), composer2, 3072, 6);
                    bottomDrawerState4 = bottomDrawerState3;
                    z12 = z11;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = j12;
                    j15 = j13;
                    j16 = jB2;
                    modifier5 = modifier114;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new DrawerKt$BottomDrawer$2(drawerContent, modifier5, bottomDrawerState4, z12, shape4, f10, j14, j15, j16, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            f6 = f;
            if ((3670016 & i10) == 0) {
                if ((i11 & 64) == 0) {
                    i17 = i19;
                    if (composerS.q(j6)) {
                    }
                    i12 |= i22;
                } else {
                    i17 = i19;
                }
                i12 |= i22;
            } else {
                i17 = i19;
            }
            if ((i10 & 29360128) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.q(j10)) ? 4194304 : 8388608;
            }
            if ((i10 & 234881024) != 0) {
                i12 |= ((i11 & 256) == 0 || !composerS.q(j11)) ? 33554432 : 67108864;
            }
            if ((i11 & 512) != 0) {
                if ((1879048192 & i10) == 0) {
                    if (composerS.k(content)) {
                        i18 = 536870912;
                    } else {
                        i18 = 268435456;
                    }
                }
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    }
                    int i2112 = i12;
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller110 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller110);
                        objH = compositionScopedCoroutineScopeCanceller110;
                    }
                    composerS.Q();
                    o0 o0VarA110 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifier115 = modifier4;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i2112, jB2, shape3, j12, j13, f7, o0VarA110, drawerContent)), composer2, 3072, 6);
                    bottomDrawerState4 = bottomDrawerState3;
                    z12 = z11;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = j12;
                    j15 = j13;
                    j16 = jB2;
                    modifier5 = modifier115;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    }
                    int i2113 = i12;
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller111 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller111);
                        objH = compositionScopedCoroutineScopeCanceller111;
                    }
                    composerS.Q();
                    o0 o0VarA111 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifier116 = modifier4;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i2113, jB2, shape3, j12, j13, f7, o0VarA111, drawerContent)), composer2, 3072, 6);
                    bottomDrawerState4 = bottomDrawerState3;
                    z12 = z11;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = j12;
                    j15 = j13;
                    j16 = jB2;
                    modifier5 = modifier116;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new DrawerKt$BottomDrawer$2(drawerContent, modifier5, bottomDrawerState4, z12, shape4, f10, j14, j15, j16, content, i10, i11));
            }
            i18 = 805306368;
            i12 |= i18;
            if ((1533916891 & i12) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        bottomDrawerStateN = bottomDrawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j13 = jB;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        shape3 = shapeA;
                        f7 = fA;
                        j12 = jN;
                    } else {
                        jB2 = j11;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j12 = jN;
                        j13 = jB;
                        shape3 = shapeA;
                        f7 = fA;
                    }
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        bottomDrawerStateN = bottomDrawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j13 = jB;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        shape3 = shapeA;
                        f7 = fA;
                        j12 = jN;
                    } else {
                        jB2 = j11;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j12 = jN;
                        j13 = jB;
                        shape3 = shapeA;
                        f7 = fA;
                    }
                }
                int i2114 = i12;
                composerS.A();
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller112 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller112);
                    objH = compositionScopedCoroutineScopeCanceller112;
                }
                composerS.Q();
                o0 o0VarA112 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Modifier modifier117 = modifier4;
                composer2 = composerS;
                BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i2114, jB2, shape3, j12, j13, f7, o0VarA112, drawerContent)), composer2, 3072, 6);
                bottomDrawerState4 = bottomDrawerState3;
                z12 = z11;
                shape4 = shape3;
                f10 = f7;
                j14 = j12;
                j15 = j13;
                j16 = jB2;
                modifier5 = modifier117;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        bottomDrawerStateN = bottomDrawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j13 = jB;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        shape3 = shapeA;
                        f7 = fA;
                        j12 = jN;
                    } else {
                        jB2 = j11;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j12 = jN;
                        j13 = jB;
                        shape3 = shapeA;
                        f7 = fA;
                    }
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        bottomDrawerStateN = bottomDrawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j13 = jB;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        shape3 = shapeA;
                        f7 = fA;
                        j12 = jN;
                    } else {
                        jB2 = j11;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j12 = jN;
                        j13 = jB;
                        shape3 = shapeA;
                        f7 = fA;
                    }
                }
                int i2115 = i12;
                composerS.A();
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller113 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller113);
                    objH = compositionScopedCoroutineScopeCanceller113;
                }
                composerS.Q();
                o0 o0VarA113 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Modifier modifier118 = modifier4;
                composer2 = composerS;
                BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i2115, jB2, shape3, j12, j13, f7, o0VarA113, drawerContent)), composer2, 3072, 6);
                bottomDrawerState4 = bottomDrawerState3;
                z12 = z11;
                shape4 = shape3;
                f10 = f7;
                j14 = j12;
                j15 = j13;
                j16 = jB2;
                modifier5 = modifier118;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new DrawerKt$BottomDrawer$2(drawerContent, modifier5, bottomDrawerState4, z12, shape4, f10, j14, j15, j16, content, i10, i11));
        }
        i12 |= 3072;
        z10 = z6;
        if ((57344 & i10) == 0) {
            if ((i11 & 16) == 0) {
                shape2 = shape;
                if (composerS.k(shape2)) {
                }
                i12 |= i21;
            } else {
                shape2 = shape;
            }
            i12 |= i21;
        } else {
            shape2 = shape;
        }
        i15 = i11 & 32;
        if (i15 != 0) {
            if ((458752 & i10) == 0) {
                f6 = f;
                if (composerS.n(f6)) {
                    i16 = 131072;
                } else {
                    i16 = 65536;
                }
                i12 |= i16;
            }
            if ((3670016 & i10) == 0) {
                if ((i11 & 64) == 0) {
                    i17 = i19;
                    if (composerS.q(j6)) {
                    }
                    i12 |= i22;
                } else {
                    i17 = i19;
                }
                i12 |= i22;
            } else {
                i17 = i19;
            }
            if ((i10 & 29360128) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.q(j10)) ? 4194304 : 8388608;
            }
            if ((i10 & 234881024) != 0) {
                i12 |= ((i11 & 256) == 0 || !composerS.q(j11)) ? 33554432 : 67108864;
            }
            if ((i11 & 512) != 0) {
                if ((1879048192 & i10) == 0) {
                    if (composerS.k(content)) {
                        i18 = 536870912;
                    } else {
                        i18 = 268435456;
                    }
                }
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    }
                    int i2116 = i12;
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller114 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller114);
                        objH = compositionScopedCoroutineScopeCanceller114;
                    }
                    composerS.Q();
                    o0 o0VarA114 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifier119 = modifier4;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i2116, jB2, shape3, j12, j13, f7, o0VarA114, drawerContent)), composer2, 3072, 6);
                    bottomDrawerState4 = bottomDrawerState3;
                    z12 = z11;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = j12;
                    j15 = j13;
                    j16 = jB2;
                    modifier5 = modifier119;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            bottomDrawerStateN = bottomDrawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            i12 &= -234881025;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j13 = jB;
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            shape3 = shapeA;
                            f7 = fA;
                            j12 = jN;
                        } else {
                            jB2 = j11;
                            modifier4 = modifier3;
                            bottomDrawerState3 = bottomDrawerStateN;
                            z11 = z10;
                            j12 = jN;
                            j13 = jB;
                            shape3 = shapeA;
                            f7 = fA;
                        }
                    }
                    int i2117 = i12;
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller115 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller115);
                        objH = compositionScopedCoroutineScopeCanceller115;
                    }
                    composerS.Q();
                    o0 o0VarA115 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifier1110 = modifier4;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i2117, jB2, shape3, j12, j13, f7, o0VarA115, drawerContent)), composer2, 3072, 6);
                    bottomDrawerState4 = bottomDrawerState3;
                    z12 = z11;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = j12;
                    j15 = j13;
                    j16 = jB2;
                    modifier5 = modifier1110;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new DrawerKt$BottomDrawer$2(drawerContent, modifier5, bottomDrawerState4, z12, shape4, f10, j14, j15, j16, content, i10, i11));
            }
            i18 = 805306368;
            i12 |= i18;
            if ((1533916891 & i12) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        bottomDrawerStateN = bottomDrawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j13 = jB;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        shape3 = shapeA;
                        f7 = fA;
                        j12 = jN;
                    } else {
                        jB2 = j11;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j12 = jN;
                        j13 = jB;
                        shape3 = shapeA;
                        f7 = fA;
                    }
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        bottomDrawerStateN = bottomDrawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j13 = jB;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        shape3 = shapeA;
                        f7 = fA;
                        j12 = jN;
                    } else {
                        jB2 = j11;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j12 = jN;
                        j13 = jB;
                        shape3 = shapeA;
                        f7 = fA;
                    }
                }
                int i2118 = i12;
                composerS.A();
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller116 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller116);
                    objH = compositionScopedCoroutineScopeCanceller116;
                }
                composerS.Q();
                o0 o0VarA116 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Modifier modifier1111 = modifier4;
                composer2 = composerS;
                BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i2118, jB2, shape3, j12, j13, f7, o0VarA116, drawerContent)), composer2, 3072, 6);
                bottomDrawerState4 = bottomDrawerState3;
                z12 = z11;
                shape4 = shape3;
                f10 = f7;
                j14 = j12;
                j15 = j13;
                j16 = jB2;
                modifier5 = modifier1111;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        bottomDrawerStateN = bottomDrawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j13 = jB;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        shape3 = shapeA;
                        f7 = fA;
                        j12 = jN;
                    } else {
                        jB2 = j11;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j12 = jN;
                        j13 = jB;
                        shape3 = shapeA;
                        f7 = fA;
                    }
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        bottomDrawerStateN = bottomDrawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j13 = jB;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        shape3 = shapeA;
                        f7 = fA;
                        j12 = jN;
                    } else {
                        jB2 = j11;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j12 = jN;
                        j13 = jB;
                        shape3 = shapeA;
                        f7 = fA;
                    }
                }
                int i2119 = i12;
                composerS.A();
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller117 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller117);
                    objH = compositionScopedCoroutineScopeCanceller117;
                }
                composerS.Q();
                o0 o0VarA117 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Modifier modifier1112 = modifier4;
                composer2 = composerS;
                BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i2119, jB2, shape3, j12, j13, f7, o0VarA117, drawerContent)), composer2, 3072, 6);
                bottomDrawerState4 = bottomDrawerState3;
                z12 = z11;
                shape4 = shape3;
                f10 = f7;
                j14 = j12;
                j15 = j13;
                j16 = jB2;
                modifier5 = modifier1112;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new DrawerKt$BottomDrawer$2(drawerContent, modifier5, bottomDrawerState4, z12, shape4, f10, j14, j15, j16, content, i10, i11));
        }
        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        f6 = f;
        if ((3670016 & i10) == 0) {
            if ((i11 & 64) == 0) {
                i17 = i19;
                if (composerS.q(j6)) {
                }
                i12 |= i22;
            } else {
                i17 = i19;
            }
            i12 |= i22;
        } else {
            i17 = i19;
        }
        if ((i10 & 29360128) != 0) {
            i12 |= ((i11 & 128) == 0 || !composerS.q(j10)) ? 4194304 : 8388608;
        }
        if ((i10 & 234881024) != 0) {
            i12 |= ((i11 & 256) == 0 || !composerS.q(j11)) ? 33554432 : 67108864;
        }
        if ((i11 & 512) != 0) {
            if ((1879048192 & i10) == 0) {
                if (composerS.k(content)) {
                    i18 = 536870912;
                } else {
                    i18 = 268435456;
                }
            }
            if ((1533916891 & i12) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        bottomDrawerStateN = bottomDrawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j13 = jB;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        shape3 = shapeA;
                        f7 = fA;
                        j12 = jN;
                    } else {
                        jB2 = j11;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j12 = jN;
                        j13 = jB;
                        shape3 = shapeA;
                        f7 = fA;
                    }
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        bottomDrawerStateN = bottomDrawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j13 = jB;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        shape3 = shapeA;
                        f7 = fA;
                        j12 = jN;
                    } else {
                        jB2 = j11;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j12 = jN;
                        j13 = jB;
                        shape3 = shapeA;
                        f7 = fA;
                    }
                }
                int i21110 = i12;
                composerS.A();
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller118 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller118);
                    objH = compositionScopedCoroutineScopeCanceller118;
                }
                composerS.Q();
                o0 o0VarA118 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Modifier modifier1113 = modifier4;
                composer2 = composerS;
                BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i21110, jB2, shape3, j12, j13, f7, o0VarA118, drawerContent)), composer2, 3072, 6);
                bottomDrawerState4 = bottomDrawerState3;
                z12 = z11;
                shape4 = shape3;
                f10 = f7;
                j14 = j12;
                j15 = j13;
                j16 = jB2;
                modifier5 = modifier1113;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        bottomDrawerStateN = bottomDrawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j13 = jB;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        shape3 = shapeA;
                        f7 = fA;
                        j12 = jN;
                    } else {
                        jB2 = j11;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j12 = jN;
                        j13 = jB;
                        shape3 = shapeA;
                        f7 = fA;
                    }
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        bottomDrawerStateN = bottomDrawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        i12 &= -234881025;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j13 = jB;
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        shape3 = shapeA;
                        f7 = fA;
                        j12 = jN;
                    } else {
                        jB2 = j11;
                        modifier4 = modifier3;
                        bottomDrawerState3 = bottomDrawerStateN;
                        z11 = z10;
                        j12 = jN;
                        j13 = jB;
                        shape3 = shapeA;
                        f7 = fA;
                    }
                }
                int i21111 = i12;
                composerS.A();
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller119 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller119);
                    objH = compositionScopedCoroutineScopeCanceller119;
                }
                composerS.Q();
                o0 o0VarA119 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Modifier modifier1114 = modifier4;
                composer2 = composerS;
                BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i21111, jB2, shape3, j12, j13, f7, o0VarA119, drawerContent)), composer2, 3072, 6);
                bottomDrawerState4 = bottomDrawerState3;
                z12 = z11;
                shape4 = shape3;
                f10 = f7;
                j14 = j12;
                j15 = j13;
                j16 = jB2;
                modifier5 = modifier1114;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new DrawerKt$BottomDrawer$2(drawerContent, modifier5, bottomDrawerState4, z12, shape4, f10, j14, j15, j16, content, i10, i11));
        }
        i18 = 805306368;
        i12 |= i18;
        if ((1533916891 & i12) == 306783378) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 4) != 0) {
                    bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                    i12 &= -897;
                } else {
                    bottomDrawerStateN = bottomDrawerState2;
                }
                if (i13 != 0) {
                    z10 = true;
                }
                if ((i11 & 16) != 0) {
                    shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                    i12 &= -57345;
                } else {
                    shapeA = shape2;
                }
                if (i15 != 0) {
                    fA = DrawerDefaults.INSTANCE.a();
                } else {
                    fA = f6;
                }
                if ((i11 & 64) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -3670017;
                } else {
                    jN = j6;
                }
                if ((i11 & 128) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                    i12 &= -29360129;
                } else {
                    jB = j10;
                }
                if ((i11 & 256) != 0) {
                    i12 &= -234881025;
                    modifier4 = modifier3;
                    bottomDrawerState3 = bottomDrawerStateN;
                    z11 = z10;
                    j13 = jB;
                    jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                    shape3 = shapeA;
                    f7 = fA;
                    j12 = jN;
                } else {
                    jB2 = j11;
                    modifier4 = modifier3;
                    bottomDrawerState3 = bottomDrawerStateN;
                    z11 = z10;
                    j12 = jN;
                    j13 = jB;
                    shape3 = shapeA;
                    f7 = fA;
                }
            } else {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 4) != 0) {
                    bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                    i12 &= -897;
                } else {
                    bottomDrawerStateN = bottomDrawerState2;
                }
                if (i13 != 0) {
                    z10 = true;
                }
                if ((i11 & 16) != 0) {
                    shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                    i12 &= -57345;
                } else {
                    shapeA = shape2;
                }
                if (i15 != 0) {
                    fA = DrawerDefaults.INSTANCE.a();
                } else {
                    fA = f6;
                }
                if ((i11 & 64) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -3670017;
                } else {
                    jN = j6;
                }
                if ((i11 & 128) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                    i12 &= -29360129;
                } else {
                    jB = j10;
                }
                if ((i11 & 256) != 0) {
                    i12 &= -234881025;
                    modifier4 = modifier3;
                    bottomDrawerState3 = bottomDrawerStateN;
                    z11 = z10;
                    j13 = jB;
                    jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                    shape3 = shapeA;
                    f7 = fA;
                    j12 = jN;
                } else {
                    jB2 = j11;
                    modifier4 = modifier3;
                    bottomDrawerState3 = bottomDrawerStateN;
                    z11 = z10;
                    j12 = jN;
                    j13 = jB;
                    shape3 = shapeA;
                    f7 = fA;
                }
            }
            int i21112 = i12;
            composerS.A();
            composerS.G(773894976);
            composerS.G(-492369756);
            objH = composerS.H();
            if (objH == Composer.Companion.a()) {
                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller1110 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                composerS.z(compositionScopedCoroutineScopeCanceller1110);
                objH = compositionScopedCoroutineScopeCanceller1110;
            }
            composerS.Q();
            o0 o0VarA1110 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
            composerS.Q();
            Modifier modifier1115 = modifier4;
            composer2 = composerS;
            BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i21112, jB2, shape3, j12, j13, f7, o0VarA1110, drawerContent)), composer2, 3072, 6);
            bottomDrawerState4 = bottomDrawerState3;
            z12 = z11;
            shape4 = shape3;
            f10 = f7;
            j14 = j12;
            j15 = j13;
            j16 = jB2;
            modifier5 = modifier1115;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 4) != 0) {
                    bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                    i12 &= -897;
                } else {
                    bottomDrawerStateN = bottomDrawerState2;
                }
                if (i13 != 0) {
                    z10 = true;
                }
                if ((i11 & 16) != 0) {
                    shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                    i12 &= -57345;
                } else {
                    shapeA = shape2;
                }
                if (i15 != 0) {
                    fA = DrawerDefaults.INSTANCE.a();
                } else {
                    fA = f6;
                }
                if ((i11 & 64) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -3670017;
                } else {
                    jN = j6;
                }
                if ((i11 & 128) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                    i12 &= -29360129;
                } else {
                    jB = j10;
                }
                if ((i11 & 256) != 0) {
                    i12 &= -234881025;
                    modifier4 = modifier3;
                    bottomDrawerState3 = bottomDrawerStateN;
                    z11 = z10;
                    j13 = jB;
                    jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                    shape3 = shapeA;
                    f7 = fA;
                    j12 = jN;
                } else {
                    jB2 = j11;
                    modifier4 = modifier3;
                    bottomDrawerState3 = bottomDrawerStateN;
                    z11 = z10;
                    j12 = jN;
                    j13 = jB;
                    shape3 = shapeA;
                    f7 = fA;
                }
            } else {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 4) != 0) {
                    bottomDrawerStateN = n(BottomDrawerValue.Closed, null, composerS, 6, 2);
                    i12 &= -897;
                } else {
                    bottomDrawerStateN = bottomDrawerState2;
                }
                if (i13 != 0) {
                    z10 = true;
                }
                if ((i11 & 16) != 0) {
                    shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                    i12 &= -57345;
                } else {
                    shapeA = shape2;
                }
                if (i15 != 0) {
                    fA = DrawerDefaults.INSTANCE.a();
                } else {
                    fA = f6;
                }
                if ((i11 & 64) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -3670017;
                } else {
                    jN = j6;
                }
                if ((i11 & 128) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                    i12 &= -29360129;
                } else {
                    jB = j10;
                }
                if ((i11 & 256) != 0) {
                    i12 &= -234881025;
                    modifier4 = modifier3;
                    bottomDrawerState3 = bottomDrawerStateN;
                    z11 = z10;
                    j13 = jB;
                    jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                    shape3 = shapeA;
                    f7 = fA;
                    j12 = jN;
                } else {
                    jB2 = j11;
                    modifier4 = modifier3;
                    bottomDrawerState3 = bottomDrawerStateN;
                    z11 = z10;
                    j12 = jN;
                    j13 = jB;
                    shape3 = shapeA;
                    f7 = fA;
                }
            }
            int i21113 = i12;
            composerS.A();
            composerS.G(773894976);
            composerS.G(-492369756);
            objH = composerS.H();
            if (objH == Composer.Companion.a()) {
                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller1111 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                composerS.z(compositionScopedCoroutineScopeCanceller1111);
                objH = compositionScopedCoroutineScopeCanceller1111;
            }
            composerS.Q();
            o0 o0VarA1111 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
            composerS.Q();
            Modifier modifier1116 = modifier4;
            composer2 = composerS;
            BoxWithConstraintsKt.a(SizeKt.l(modifier4, 0.0f, 1, null), null, false, ComposableLambdaKt.b(composer2, 1220102512, true, new DrawerKt$BottomDrawer$1(z11, bottomDrawerState3, content, i21113, jB2, shape3, j12, j13, f7, o0VarA1111, drawerContent)), composer2, 3072, 6);
            bottomDrawerState4 = bottomDrawerState3;
            z12 = z11;
            shape4 = shape3;
            f10 = f7;
            j14 = j12;
            j15 = j13;
            j16 = jB2;
            modifier5 = modifier1116;
        }
        scopeUpdateScopeU = composer2.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new DrawerKt$BottomDrawer$2(drawerContent, modifier5, bottomDrawerState4, z12, shape4, f10, j14, j15, j16, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0117  */
    /* JADX WARN: Code duplicated, block: B:103:0x011d  */
    /* JADX WARN: Code duplicated, block: B:105:0x0121  */
    /* JADX WARN: Code duplicated, block: B:107:0x0126  */
    /* JADX WARN: Code duplicated, block: B:109:0x012c  */
    /* JADX WARN: Code duplicated, block: B:110:0x012f  */
    /* JADX WARN: Code duplicated, block: B:113:0x013b  */
    /* JADX WARN: Code duplicated, block: B:117:0x0153  */
    /* JADX WARN: Code duplicated, block: B:119:0x0166  */
    /* JADX WARN: Code duplicated, block: B:138:0x01a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:139:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:140:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:143:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:144:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:146:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:149:0x01be  */
    /* JADX WARN: Code duplicated, block: B:150:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:152:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:153:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:156:0x01da  */
    /* JADX WARN: Code duplicated, block: B:157:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:160:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:161:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:164:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:166:0x0217  */
    /* JADX WARN: Code duplicated, block: B:169:0x023f  */
    /* JADX WARN: Code duplicated, block: B:174:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:176:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0051  */
    /* JADX WARN: Code duplicated, block: B:28:0x0055  */
    /* JADX WARN: Code duplicated, block: B:30:0x005d  */
    /* JADX WARN: Code duplicated, block: B:31:0x0060  */
    /* JADX WARN: Code duplicated, block: B:34:0x0066  */
    /* JADX WARN: Code duplicated, block: B:37:0x006c  */
    /* JADX WARN: Code duplicated, block: B:39:0x0071  */
    /* JADX WARN: Code duplicated, block: B:41:0x0075  */
    /* JADX WARN: Code duplicated, block: B:43:0x007d  */
    /* JADX WARN: Code duplicated, block: B:44:0x0080  */
    /* JADX WARN: Code duplicated, block: B:48:0x0089  */
    /* JADX WARN: Code duplicated, block: B:50:0x008d  */
    /* JADX WARN: Code duplicated, block: B:52:0x0095  */
    /* JADX WARN: Code duplicated, block: B:53:0x0098  */
    /* JADX WARN: Code duplicated, block: B:56:0x009e  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:61:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:63:0x00af  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:74:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:78:0x00da  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f2 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:89:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:92:0x0101  */
    /* JADX WARN: Code duplicated, block: B:94:0x0105  */
    /* JADX WARN: Code duplicated, block: B:97:0x0110 A[ADDED_TO_REGION] */
    @Composable
    @ComposableInferredTarget
    public static final void d(@NotNull q<? super ColumnScope, ? super Composer, ? super Integer, l0> drawerContent, @Nullable Modifier modifier, @Nullable DrawerState drawerState, boolean z6, @Nullable Shape shape, float f, long j6, long j10, long j11, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        DrawerState drawerState2;
        int i13;
        boolean z10;
        int i14;
        Shape shape2;
        int i15;
        float f6;
        int i16;
        int i17;
        int i18;
        Modifier modifier3;
        DrawerState drawerStateO;
        Shape shapeA;
        float fA;
        long jN;
        long jB;
        long jB2;
        int i19;
        Shape shape3;
        float f7;
        Object objH;
        long j12;
        long j13;
        Composer composer2;
        DrawerState drawerState3;
        boolean z11;
        Shape shape4;
        float f10;
        long j14;
        Modifier modifier4;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(drawerContent, "drawerContent");
        t.j(content, "content");
        Composer composerS = composer.s(1305806945);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(drawerContent) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i20 = i11 & 2;
        if (i20 == 0) {
            if ((i10 & 112) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 32 : 16;
            }
            if ((i10 & 896) == 0) {
                if ((i11 & 4) == 0) {
                    drawerState2 = drawerState;
                    int i21 = composerS.k(drawerState2) ? 256 : 128;
                    i12 |= i21;
                } else {
                    drawerState2 = drawerState;
                }
                i12 |= i21;
            } else {
                drawerState2 = drawerState;
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
                if ((57344 & i10) == 0) {
                    if ((i11 & 16) == 0) {
                        shape2 = shape;
                        int i22 = composerS.k(shape2) ? 16384 : 8192;
                        i12 |= i22;
                    } else {
                        shape2 = shape;
                    }
                    i12 |= i22;
                } else {
                    shape2 = shape;
                }
                i15 = i11 & 32;
                if (i15 != 0) {
                    if ((458752 & i10) == 0) {
                        f6 = f;
                        if (composerS.n(f6)) {
                            i16 = 131072;
                        } else {
                            i16 = 65536;
                        }
                        i12 |= i16;
                    }
                    if ((3670016 & i10) == 0) {
                        if ((i11 & 64) == 0) {
                            i17 = i20;
                            int i23 = composerS.q(j6) ? 1048576 : 524288;
                            i12 |= i23;
                        } else {
                            i17 = i20;
                        }
                        i12 |= i23;
                    } else {
                        i17 = i20;
                    }
                    if ((i10 & 29360128) != 0) {
                        i12 |= ((i11 & 128) == 0 || !composerS.q(j10)) ? 4194304 : 8388608;
                    }
                    if ((i10 & 234881024) != 0) {
                        i12 |= ((i11 & 256) == 0 || !composerS.q(j11)) ? 33554432 : 67108864;
                    }
                    if ((i11 & 512) != 0) {
                        if ((1879048192 & i10) == 0) {
                            if (composerS.k(content)) {
                                i18 = 536870912;
                            } else {
                                i18 = 268435456;
                            }
                        }
                        if ((1533916891 & i12) == 306783378 || !composerS.b()) {
                            composerS.J();
                            if ((i10 & 1) != 0 || composerS.h()) {
                                if (i17 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier2;
                                }
                                if ((i11 & 4) != 0) {
                                    drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                                    i12 &= -897;
                                } else {
                                    drawerStateO = drawerState2;
                                }
                                if (i13 != 0) {
                                    z10 = true;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                    i12 &= -57345;
                                } else {
                                    shapeA = shape2;
                                }
                                if (i15 != 0) {
                                    fA = DrawerDefaults.INSTANCE.a();
                                } else {
                                    fA = f6;
                                }
                                if ((i11 & 64) != 0) {
                                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                    i12 &= -3670017;
                                } else {
                                    jN = j6;
                                }
                                if ((i11 & 128) != 0) {
                                    jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                    i12 &= -29360129;
                                } else {
                                    jB = j10;
                                }
                                if ((i11 & 256) != 0) {
                                    jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                    i19 = i12 & (-234881025);
                                } else {
                                    jB2 = j11;
                                    i19 = i12;
                                }
                                shape3 = shapeA;
                                f7 = fA;
                            } else {
                                composerS.g();
                                if ((i11 & 4) != 0) {
                                    i12 &= -897;
                                }
                                if ((i11 & 16) != 0) {
                                    i12 &= -57345;
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
                                jN = j6;
                                jB = j10;
                                jB2 = j11;
                                drawerStateO = drawerState2;
                                z10 = z10;
                                shape3 = shape2;
                                f7 = f6;
                                modifier3 = modifier2;
                                i19 = i12;
                            }
                            composerS.A();
                            composerS.G(773894976);
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                                composerS.z(compositionScopedCoroutineScopeCanceller);
                                objH = compositionScopedCoroutineScopeCanceller;
                            }
                            composerS.Q();
                            o0 o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                            composerS.Q();
                            Modifier modifierL = SizeKt.l(modifier3, 0.0f, 1, null);
                            j12 = jN;
                            Modifier modifier5 = modifier3;
                            j13 = jB;
                            composer2 = composerS;
                            BoxWithConstraintsKt.a(modifierL, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA, drawerContent)), composer2, 3072, 6);
                            drawerState3 = drawerStateO;
                            z11 = z10;
                            shape4 = shape3;
                            f10 = f7;
                            j14 = jB2;
                            modifier4 = modifier5;
                        } else {
                            composerS.g();
                            modifier4 = modifier2;
                            drawerState3 = drawerState2;
                            z11 = z10;
                            shape4 = shape2;
                            f10 = f6;
                            composer2 = composerS;
                            j12 = j6;
                            j13 = j10;
                            j14 = j11;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new DrawerKt$ModalDrawer$2(drawerContent, modifier4, drawerState3, z11, shape4, f10, j12, j13, j14, content, i10, i11));
                    }
                    i18 = 805306368;
                    i12 |= i18;
                    if ((1533916891 & i12) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                drawerStateO = drawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                i19 = i12 & (-234881025);
                            } else {
                                jB2 = j11;
                                i19 = i12;
                            }
                            shape3 = shapeA;
                            f7 = fA;
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                drawerStateO = drawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                i19 = i12 & (-234881025);
                            } else {
                                jB2 = j11;
                                i19 = i12;
                            }
                            shape3 = shapeA;
                            f7 = fA;
                        }
                        composerS.A();
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller2 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller2);
                            objH = compositionScopedCoroutineScopeCanceller2;
                        }
                        composerS.Q();
                        o0 o0VarA2 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Modifier modifierL2 = SizeKt.l(modifier3, 0.0f, 1, null);
                        j12 = jN;
                        Modifier modifier6 = modifier3;
                        j13 = jB;
                        composer2 = composerS;
                        BoxWithConstraintsKt.a(modifierL2, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA2, drawerContent)), composer2, 3072, 6);
                        drawerState3 = drawerStateO;
                        z11 = z10;
                        shape4 = shape3;
                        f10 = f7;
                        j14 = jB2;
                        modifier4 = modifier6;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                drawerStateO = drawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                i19 = i12 & (-234881025);
                            } else {
                                jB2 = j11;
                                i19 = i12;
                            }
                            shape3 = shapeA;
                            f7 = fA;
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                drawerStateO = drawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                i19 = i12 & (-234881025);
                            } else {
                                jB2 = j11;
                                i19 = i12;
                            }
                            shape3 = shapeA;
                            f7 = fA;
                        }
                        composerS.A();
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller3 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller3);
                            objH = compositionScopedCoroutineScopeCanceller3;
                        }
                        composerS.Q();
                        o0 o0VarA3 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Modifier modifierL3 = SizeKt.l(modifier3, 0.0f, 1, null);
                        j12 = jN;
                        Modifier modifier7 = modifier3;
                        j13 = jB;
                        composer2 = composerS;
                        BoxWithConstraintsKt.a(modifierL3, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA3, drawerContent)), composer2, 3072, 6);
                        drawerState3 = drawerStateO;
                        z11 = z10;
                        shape4 = shape3;
                        f10 = f7;
                        j14 = jB2;
                        modifier4 = modifier7;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new DrawerKt$ModalDrawer$2(drawerContent, modifier4, drawerState3, z11, shape4, f10, j12, j13, j14, content, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                f6 = f;
                if ((3670016 & i10) == 0) {
                    if ((i11 & 64) == 0) {
                        i17 = i20;
                        if (composerS.q(j6)) {
                        }
                        i12 |= i23;
                    } else {
                        i17 = i20;
                    }
                    i12 |= i23;
                } else {
                    i17 = i20;
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j10)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) != 0) {
                    i12 |= ((i11 & 256) == 0 || !composerS.q(j11)) ? 33554432 : 67108864;
                }
                if ((i11 & 512) != 0) {
                    if ((1879048192 & i10) == 0) {
                        if (composerS.k(content)) {
                            i18 = 536870912;
                        } else {
                            i18 = 268435456;
                        }
                    }
                    if ((1533916891 & i12) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                drawerStateO = drawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                i19 = i12 & (-234881025);
                            } else {
                                jB2 = j11;
                                i19 = i12;
                            }
                            shape3 = shapeA;
                            f7 = fA;
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                drawerStateO = drawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                i19 = i12 & (-234881025);
                            } else {
                                jB2 = j11;
                                i19 = i12;
                            }
                            shape3 = shapeA;
                            f7 = fA;
                        }
                        composerS.A();
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller4 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller4);
                            objH = compositionScopedCoroutineScopeCanceller4;
                        }
                        composerS.Q();
                        o0 o0VarA4 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Modifier modifierL4 = SizeKt.l(modifier3, 0.0f, 1, null);
                        j12 = jN;
                        Modifier modifier8 = modifier3;
                        j13 = jB;
                        composer2 = composerS;
                        BoxWithConstraintsKt.a(modifierL4, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA4, drawerContent)), composer2, 3072, 6);
                        drawerState3 = drawerStateO;
                        z11 = z10;
                        shape4 = shape3;
                        f10 = f7;
                        j14 = jB2;
                        modifier4 = modifier8;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                drawerStateO = drawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                i19 = i12 & (-234881025);
                            } else {
                                jB2 = j11;
                                i19 = i12;
                            }
                            shape3 = shapeA;
                            f7 = fA;
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                drawerStateO = drawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                i19 = i12 & (-234881025);
                            } else {
                                jB2 = j11;
                                i19 = i12;
                            }
                            shape3 = shapeA;
                            f7 = fA;
                        }
                        composerS.A();
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller5 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller5);
                            objH = compositionScopedCoroutineScopeCanceller5;
                        }
                        composerS.Q();
                        o0 o0VarA5 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Modifier modifierL5 = SizeKt.l(modifier3, 0.0f, 1, null);
                        j12 = jN;
                        Modifier modifier9 = modifier3;
                        j13 = jB;
                        composer2 = composerS;
                        BoxWithConstraintsKt.a(modifierL5, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA5, drawerContent)), composer2, 3072, 6);
                        drawerState3 = drawerStateO;
                        z11 = z10;
                        shape4 = shape3;
                        f10 = f7;
                        j14 = jB2;
                        modifier4 = modifier9;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new DrawerKt$ModalDrawer$2(drawerContent, modifier4, drawerState3, z11, shape4, f10, j12, j13, j14, content, i10, i11));
                }
                i18 = 805306368;
                i12 |= i18;
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    }
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller6 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller6);
                        objH = compositionScopedCoroutineScopeCanceller6;
                    }
                    composerS.Q();
                    o0 o0VarA6 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifierL6 = SizeKt.l(modifier3, 0.0f, 1, null);
                    j12 = jN;
                    Modifier modifier10 = modifier3;
                    j13 = jB;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(modifierL6, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA6, drawerContent)), composer2, 3072, 6);
                    drawerState3 = drawerStateO;
                    z11 = z10;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = jB2;
                    modifier4 = modifier10;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    }
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller7 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller7);
                        objH = compositionScopedCoroutineScopeCanceller7;
                    }
                    composerS.Q();
                    o0 o0VarA7 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifierL7 = SizeKt.l(modifier3, 0.0f, 1, null);
                    j12 = jN;
                    Modifier modifier11 = modifier3;
                    j13 = jB;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(modifierL7, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA7, drawerContent)), composer2, 3072, 6);
                    drawerState3 = drawerStateO;
                    z11 = z10;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = jB2;
                    modifier4 = modifier11;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new DrawerKt$ModalDrawer$2(drawerContent, modifier4, drawerState3, z11, shape4, f10, j12, j13, j14, content, i10, i11));
            }
            i12 |= 3072;
            z10 = z6;
            if ((57344 & i10) == 0) {
                if ((i11 & 16) == 0) {
                    shape2 = shape;
                    if (composerS.k(shape2)) {
                    }
                    i12 |= i22;
                } else {
                    shape2 = shape;
                }
                i12 |= i22;
            } else {
                shape2 = shape;
            }
            i15 = i11 & 32;
            if (i15 != 0) {
                if ((458752 & i10) == 0) {
                    f6 = f;
                    if (composerS.n(f6)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                    i12 |= i16;
                }
                if ((3670016 & i10) == 0) {
                    if ((i11 & 64) == 0) {
                        i17 = i20;
                        if (composerS.q(j6)) {
                        }
                        i12 |= i23;
                    } else {
                        i17 = i20;
                    }
                    i12 |= i23;
                } else {
                    i17 = i20;
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j10)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) != 0) {
                    i12 |= ((i11 & 256) == 0 || !composerS.q(j11)) ? 33554432 : 67108864;
                }
                if ((i11 & 512) != 0) {
                    if ((1879048192 & i10) == 0) {
                        if (composerS.k(content)) {
                            i18 = 536870912;
                        } else {
                            i18 = 268435456;
                        }
                    }
                    if ((1533916891 & i12) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                drawerStateO = drawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                i19 = i12 & (-234881025);
                            } else {
                                jB2 = j11;
                                i19 = i12;
                            }
                            shape3 = shapeA;
                            f7 = fA;
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                drawerStateO = drawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                i19 = i12 & (-234881025);
                            } else {
                                jB2 = j11;
                                i19 = i12;
                            }
                            shape3 = shapeA;
                            f7 = fA;
                        }
                        composerS.A();
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller8 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller8);
                            objH = compositionScopedCoroutineScopeCanceller8;
                        }
                        composerS.Q();
                        o0 o0VarA8 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Modifier modifierL8 = SizeKt.l(modifier3, 0.0f, 1, null);
                        j12 = jN;
                        Modifier modifier12 = modifier3;
                        j13 = jB;
                        composer2 = composerS;
                        BoxWithConstraintsKt.a(modifierL8, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA8, drawerContent)), composer2, 3072, 6);
                        drawerState3 = drawerStateO;
                        z11 = z10;
                        shape4 = shape3;
                        f10 = f7;
                        j14 = jB2;
                        modifier4 = modifier12;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                drawerStateO = drawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                i19 = i12 & (-234881025);
                            } else {
                                jB2 = j11;
                                i19 = i12;
                            }
                            shape3 = shapeA;
                            f7 = fA;
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                drawerStateO = drawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                i19 = i12 & (-234881025);
                            } else {
                                jB2 = j11;
                                i19 = i12;
                            }
                            shape3 = shapeA;
                            f7 = fA;
                        }
                        composerS.A();
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller9 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller9);
                            objH = compositionScopedCoroutineScopeCanceller9;
                        }
                        composerS.Q();
                        o0 o0VarA9 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Modifier modifierL9 = SizeKt.l(modifier3, 0.0f, 1, null);
                        j12 = jN;
                        Modifier modifier13 = modifier3;
                        j13 = jB;
                        composer2 = composerS;
                        BoxWithConstraintsKt.a(modifierL9, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA9, drawerContent)), composer2, 3072, 6);
                        drawerState3 = drawerStateO;
                        z11 = z10;
                        shape4 = shape3;
                        f10 = f7;
                        j14 = jB2;
                        modifier4 = modifier13;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new DrawerKt$ModalDrawer$2(drawerContent, modifier4, drawerState3, z11, shape4, f10, j12, j13, j14, content, i10, i11));
                }
                i18 = 805306368;
                i12 |= i18;
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    }
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller10 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller10);
                        objH = compositionScopedCoroutineScopeCanceller10;
                    }
                    composerS.Q();
                    o0 o0VarA10 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifierL10 = SizeKt.l(modifier3, 0.0f, 1, null);
                    j12 = jN;
                    Modifier modifier14 = modifier3;
                    j13 = jB;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(modifierL10, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA10, drawerContent)), composer2, 3072, 6);
                    drawerState3 = drawerStateO;
                    z11 = z10;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = jB2;
                    modifier4 = modifier14;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    }
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller11 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller11);
                        objH = compositionScopedCoroutineScopeCanceller11;
                    }
                    composerS.Q();
                    o0 o0VarA11 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifierL11 = SizeKt.l(modifier3, 0.0f, 1, null);
                    j12 = jN;
                    Modifier modifier15 = modifier3;
                    j13 = jB;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(modifierL11, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA11, drawerContent)), composer2, 3072, 6);
                    drawerState3 = drawerStateO;
                    z11 = z10;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = jB2;
                    modifier4 = modifier15;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new DrawerKt$ModalDrawer$2(drawerContent, modifier4, drawerState3, z11, shape4, f10, j12, j13, j14, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            f6 = f;
            if ((3670016 & i10) == 0) {
                if ((i11 & 64) == 0) {
                    i17 = i20;
                    if (composerS.q(j6)) {
                    }
                    i12 |= i23;
                } else {
                    i17 = i20;
                }
                i12 |= i23;
            } else {
                i17 = i20;
            }
            if ((i10 & 29360128) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.q(j10)) ? 4194304 : 8388608;
            }
            if ((i10 & 234881024) != 0) {
                i12 |= ((i11 & 256) == 0 || !composerS.q(j11)) ? 33554432 : 67108864;
            }
            if ((i11 & 512) != 0) {
                if ((1879048192 & i10) == 0) {
                    if (composerS.k(content)) {
                        i18 = 536870912;
                    } else {
                        i18 = 268435456;
                    }
                }
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    }
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller12 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller12);
                        objH = compositionScopedCoroutineScopeCanceller12;
                    }
                    composerS.Q();
                    o0 o0VarA12 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifierL12 = SizeKt.l(modifier3, 0.0f, 1, null);
                    j12 = jN;
                    Modifier modifier16 = modifier3;
                    j13 = jB;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(modifierL12, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA12, drawerContent)), composer2, 3072, 6);
                    drawerState3 = drawerStateO;
                    z11 = z10;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = jB2;
                    modifier4 = modifier16;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    }
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller13 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller13);
                        objH = compositionScopedCoroutineScopeCanceller13;
                    }
                    composerS.Q();
                    o0 o0VarA13 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifierL13 = SizeKt.l(modifier3, 0.0f, 1, null);
                    j12 = jN;
                    Modifier modifier17 = modifier3;
                    j13 = jB;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(modifierL13, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA13, drawerContent)), composer2, 3072, 6);
                    drawerState3 = drawerStateO;
                    z11 = z10;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = jB2;
                    modifier4 = modifier17;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new DrawerKt$ModalDrawer$2(drawerContent, modifier4, drawerState3, z11, shape4, f10, j12, j13, j14, content, i10, i11));
            }
            i18 = 805306368;
            i12 |= i18;
            if ((1533916891 & i12) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        drawerStateO = drawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i19 = i12 & (-234881025);
                    } else {
                        jB2 = j11;
                        i19 = i12;
                    }
                    shape3 = shapeA;
                    f7 = fA;
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        drawerStateO = drawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i19 = i12 & (-234881025);
                    } else {
                        jB2 = j11;
                        i19 = i12;
                    }
                    shape3 = shapeA;
                    f7 = fA;
                }
                composerS.A();
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller14 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller14);
                    objH = compositionScopedCoroutineScopeCanceller14;
                }
                composerS.Q();
                o0 o0VarA14 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Modifier modifierL14 = SizeKt.l(modifier3, 0.0f, 1, null);
                j12 = jN;
                Modifier modifier18 = modifier3;
                j13 = jB;
                composer2 = composerS;
                BoxWithConstraintsKt.a(modifierL14, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA14, drawerContent)), composer2, 3072, 6);
                drawerState3 = drawerStateO;
                z11 = z10;
                shape4 = shape3;
                f10 = f7;
                j14 = jB2;
                modifier4 = modifier18;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        drawerStateO = drawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i19 = i12 & (-234881025);
                    } else {
                        jB2 = j11;
                        i19 = i12;
                    }
                    shape3 = shapeA;
                    f7 = fA;
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        drawerStateO = drawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i19 = i12 & (-234881025);
                    } else {
                        jB2 = j11;
                        i19 = i12;
                    }
                    shape3 = shapeA;
                    f7 = fA;
                }
                composerS.A();
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller15 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller15);
                    objH = compositionScopedCoroutineScopeCanceller15;
                }
                composerS.Q();
                o0 o0VarA15 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Modifier modifierL15 = SizeKt.l(modifier3, 0.0f, 1, null);
                j12 = jN;
                Modifier modifier19 = modifier3;
                j13 = jB;
                composer2 = composerS;
                BoxWithConstraintsKt.a(modifierL15, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA15, drawerContent)), composer2, 3072, 6);
                drawerState3 = drawerStateO;
                z11 = z10;
                shape4 = shape3;
                f10 = f7;
                j14 = jB2;
                modifier4 = modifier19;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new DrawerKt$ModalDrawer$2(drawerContent, modifier4, drawerState3, z11, shape4, f10, j12, j13, j14, content, i10, i11));
        }
        i12 |= 48;
        modifier2 = modifier;
        if ((i10 & 896) == 0) {
            if ((i11 & 4) == 0) {
                drawerState2 = drawerState;
                if (composerS.k(drawerState2)) {
                }
                i12 |= i21;
            } else {
                drawerState2 = drawerState;
            }
            i12 |= i21;
        } else {
            drawerState2 = drawerState;
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
            if ((57344 & i10) == 0) {
                if ((i11 & 16) == 0) {
                    shape2 = shape;
                    if (composerS.k(shape2)) {
                    }
                    i12 |= i22;
                } else {
                    shape2 = shape;
                }
                i12 |= i22;
            } else {
                shape2 = shape;
            }
            i15 = i11 & 32;
            if (i15 != 0) {
                if ((458752 & i10) == 0) {
                    f6 = f;
                    if (composerS.n(f6)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                    i12 |= i16;
                }
                if ((3670016 & i10) == 0) {
                    if ((i11 & 64) == 0) {
                        i17 = i20;
                        if (composerS.q(j6)) {
                        }
                        i12 |= i23;
                    } else {
                        i17 = i20;
                    }
                    i12 |= i23;
                } else {
                    i17 = i20;
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j10)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) != 0) {
                    i12 |= ((i11 & 256) == 0 || !composerS.q(j11)) ? 33554432 : 67108864;
                }
                if ((i11 & 512) != 0) {
                    if ((1879048192 & i10) == 0) {
                        if (composerS.k(content)) {
                            i18 = 536870912;
                        } else {
                            i18 = 268435456;
                        }
                    }
                    if ((1533916891 & i12) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                drawerStateO = drawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                i19 = i12 & (-234881025);
                            } else {
                                jB2 = j11;
                                i19 = i12;
                            }
                            shape3 = shapeA;
                            f7 = fA;
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                drawerStateO = drawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                i19 = i12 & (-234881025);
                            } else {
                                jB2 = j11;
                                i19 = i12;
                            }
                            shape3 = shapeA;
                            f7 = fA;
                        }
                        composerS.A();
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller16 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller16);
                            objH = compositionScopedCoroutineScopeCanceller16;
                        }
                        composerS.Q();
                        o0 o0VarA16 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Modifier modifierL16 = SizeKt.l(modifier3, 0.0f, 1, null);
                        j12 = jN;
                        Modifier modifier110 = modifier3;
                        j13 = jB;
                        composer2 = composerS;
                        BoxWithConstraintsKt.a(modifierL16, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA16, drawerContent)), composer2, 3072, 6);
                        drawerState3 = drawerStateO;
                        z11 = z10;
                        shape4 = shape3;
                        f10 = f7;
                        j14 = jB2;
                        modifier4 = modifier110;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                drawerStateO = drawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                i19 = i12 & (-234881025);
                            } else {
                                jB2 = j11;
                                i19 = i12;
                            }
                            shape3 = shapeA;
                            f7 = fA;
                        } else {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if ((i11 & 4) != 0) {
                                drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                                i12 &= -897;
                            } else {
                                drawerStateO = drawerState2;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            }
                            if ((i11 & 16) != 0) {
                                shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                                i12 &= -57345;
                            } else {
                                shapeA = shape2;
                            }
                            if (i15 != 0) {
                                fA = DrawerDefaults.INSTANCE.a();
                            } else {
                                fA = f6;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j10;
                            }
                            if ((i11 & 256) != 0) {
                                jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                                i19 = i12 & (-234881025);
                            } else {
                                jB2 = j11;
                                i19 = i12;
                            }
                            shape3 = shapeA;
                            f7 = fA;
                        }
                        composerS.A();
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller17 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller17);
                            objH = compositionScopedCoroutineScopeCanceller17;
                        }
                        composerS.Q();
                        o0 o0VarA17 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Modifier modifierL17 = SizeKt.l(modifier3, 0.0f, 1, null);
                        j12 = jN;
                        Modifier modifier111 = modifier3;
                        j13 = jB;
                        composer2 = composerS;
                        BoxWithConstraintsKt.a(modifierL17, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA17, drawerContent)), composer2, 3072, 6);
                        drawerState3 = drawerStateO;
                        z11 = z10;
                        shape4 = shape3;
                        f10 = f7;
                        j14 = jB2;
                        modifier4 = modifier111;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new DrawerKt$ModalDrawer$2(drawerContent, modifier4, drawerState3, z11, shape4, f10, j12, j13, j14, content, i10, i11));
                }
                i18 = 805306368;
                i12 |= i18;
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    }
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller18 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller18);
                        objH = compositionScopedCoroutineScopeCanceller18;
                    }
                    composerS.Q();
                    o0 o0VarA18 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifierL18 = SizeKt.l(modifier3, 0.0f, 1, null);
                    j12 = jN;
                    Modifier modifier112 = modifier3;
                    j13 = jB;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(modifierL18, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA18, drawerContent)), composer2, 3072, 6);
                    drawerState3 = drawerStateO;
                    z11 = z10;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = jB2;
                    modifier4 = modifier112;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    }
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller19 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller19);
                        objH = compositionScopedCoroutineScopeCanceller19;
                    }
                    composerS.Q();
                    o0 o0VarA19 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifierL19 = SizeKt.l(modifier3, 0.0f, 1, null);
                    j12 = jN;
                    Modifier modifier113 = modifier3;
                    j13 = jB;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(modifierL19, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA19, drawerContent)), composer2, 3072, 6);
                    drawerState3 = drawerStateO;
                    z11 = z10;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = jB2;
                    modifier4 = modifier113;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new DrawerKt$ModalDrawer$2(drawerContent, modifier4, drawerState3, z11, shape4, f10, j12, j13, j14, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            f6 = f;
            if ((3670016 & i10) == 0) {
                if ((i11 & 64) == 0) {
                    i17 = i20;
                    if (composerS.q(j6)) {
                    }
                    i12 |= i23;
                } else {
                    i17 = i20;
                }
                i12 |= i23;
            } else {
                i17 = i20;
            }
            if ((i10 & 29360128) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.q(j10)) ? 4194304 : 8388608;
            }
            if ((i10 & 234881024) != 0) {
                i12 |= ((i11 & 256) == 0 || !composerS.q(j11)) ? 33554432 : 67108864;
            }
            if ((i11 & 512) != 0) {
                if ((1879048192 & i10) == 0) {
                    if (composerS.k(content)) {
                        i18 = 536870912;
                    } else {
                        i18 = 268435456;
                    }
                }
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    }
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller110 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller110);
                        objH = compositionScopedCoroutineScopeCanceller110;
                    }
                    composerS.Q();
                    o0 o0VarA110 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifierL110 = SizeKt.l(modifier3, 0.0f, 1, null);
                    j12 = jN;
                    Modifier modifier114 = modifier3;
                    j13 = jB;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(modifierL110, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA110, drawerContent)), composer2, 3072, 6);
                    drawerState3 = drawerStateO;
                    z11 = z10;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = jB2;
                    modifier4 = modifier114;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    }
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller111 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller111);
                        objH = compositionScopedCoroutineScopeCanceller111;
                    }
                    composerS.Q();
                    o0 o0VarA111 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifierL111 = SizeKt.l(modifier3, 0.0f, 1, null);
                    j12 = jN;
                    Modifier modifier115 = modifier3;
                    j13 = jB;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(modifierL111, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA111, drawerContent)), composer2, 3072, 6);
                    drawerState3 = drawerStateO;
                    z11 = z10;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = jB2;
                    modifier4 = modifier115;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new DrawerKt$ModalDrawer$2(drawerContent, modifier4, drawerState3, z11, shape4, f10, j12, j13, j14, content, i10, i11));
            }
            i18 = 805306368;
            i12 |= i18;
            if ((1533916891 & i12) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        drawerStateO = drawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i19 = i12 & (-234881025);
                    } else {
                        jB2 = j11;
                        i19 = i12;
                    }
                    shape3 = shapeA;
                    f7 = fA;
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        drawerStateO = drawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i19 = i12 & (-234881025);
                    } else {
                        jB2 = j11;
                        i19 = i12;
                    }
                    shape3 = shapeA;
                    f7 = fA;
                }
                composerS.A();
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller112 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller112);
                    objH = compositionScopedCoroutineScopeCanceller112;
                }
                composerS.Q();
                o0 o0VarA112 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Modifier modifierL112 = SizeKt.l(modifier3, 0.0f, 1, null);
                j12 = jN;
                Modifier modifier116 = modifier3;
                j13 = jB;
                composer2 = composerS;
                BoxWithConstraintsKt.a(modifierL112, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA112, drawerContent)), composer2, 3072, 6);
                drawerState3 = drawerStateO;
                z11 = z10;
                shape4 = shape3;
                f10 = f7;
                j14 = jB2;
                modifier4 = modifier116;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        drawerStateO = drawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i19 = i12 & (-234881025);
                    } else {
                        jB2 = j11;
                        i19 = i12;
                    }
                    shape3 = shapeA;
                    f7 = fA;
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        drawerStateO = drawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i19 = i12 & (-234881025);
                    } else {
                        jB2 = j11;
                        i19 = i12;
                    }
                    shape3 = shapeA;
                    f7 = fA;
                }
                composerS.A();
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller113 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller113);
                    objH = compositionScopedCoroutineScopeCanceller113;
                }
                composerS.Q();
                o0 o0VarA113 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Modifier modifierL113 = SizeKt.l(modifier3, 0.0f, 1, null);
                j12 = jN;
                Modifier modifier117 = modifier3;
                j13 = jB;
                composer2 = composerS;
                BoxWithConstraintsKt.a(modifierL113, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA113, drawerContent)), composer2, 3072, 6);
                drawerState3 = drawerStateO;
                z11 = z10;
                shape4 = shape3;
                f10 = f7;
                j14 = jB2;
                modifier4 = modifier117;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new DrawerKt$ModalDrawer$2(drawerContent, modifier4, drawerState3, z11, shape4, f10, j12, j13, j14, content, i10, i11));
        }
        i12 |= 3072;
        z10 = z6;
        if ((57344 & i10) == 0) {
            if ((i11 & 16) == 0) {
                shape2 = shape;
                if (composerS.k(shape2)) {
                }
                i12 |= i22;
            } else {
                shape2 = shape;
            }
            i12 |= i22;
        } else {
            shape2 = shape;
        }
        i15 = i11 & 32;
        if (i15 != 0) {
            if ((458752 & i10) == 0) {
                f6 = f;
                if (composerS.n(f6)) {
                    i16 = 131072;
                } else {
                    i16 = 65536;
                }
                i12 |= i16;
            }
            if ((3670016 & i10) == 0) {
                if ((i11 & 64) == 0) {
                    i17 = i20;
                    if (composerS.q(j6)) {
                    }
                    i12 |= i23;
                } else {
                    i17 = i20;
                }
                i12 |= i23;
            } else {
                i17 = i20;
            }
            if ((i10 & 29360128) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.q(j10)) ? 4194304 : 8388608;
            }
            if ((i10 & 234881024) != 0) {
                i12 |= ((i11 & 256) == 0 || !composerS.q(j11)) ? 33554432 : 67108864;
            }
            if ((i11 & 512) != 0) {
                if ((1879048192 & i10) == 0) {
                    if (composerS.k(content)) {
                        i18 = 536870912;
                    } else {
                        i18 = 268435456;
                    }
                }
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    }
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller114 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller114);
                        objH = compositionScopedCoroutineScopeCanceller114;
                    }
                    composerS.Q();
                    o0 o0VarA114 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifierL114 = SizeKt.l(modifier3, 0.0f, 1, null);
                    j12 = jN;
                    Modifier modifier118 = modifier3;
                    j13 = jB;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(modifierL114, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA114, drawerContent)), composer2, 3072, 6);
                    drawerState3 = drawerStateO;
                    z11 = z10;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = jB2;
                    modifier4 = modifier118;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if ((i11 & 4) != 0) {
                            drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                            i12 &= -897;
                        } else {
                            drawerStateO = drawerState2;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        }
                        if ((i11 & 16) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -57345;
                        } else {
                            shapeA = shape2;
                        }
                        if (i15 != 0) {
                            fA = DrawerDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 256) != 0) {
                            jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                            i19 = i12 & (-234881025);
                        } else {
                            jB2 = j11;
                            i19 = i12;
                        }
                        shape3 = shapeA;
                        f7 = fA;
                    }
                    composerS.A();
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller115 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller115);
                        objH = compositionScopedCoroutineScopeCanceller115;
                    }
                    composerS.Q();
                    o0 o0VarA115 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Modifier modifierL115 = SizeKt.l(modifier3, 0.0f, 1, null);
                    j12 = jN;
                    Modifier modifier119 = modifier3;
                    j13 = jB;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(modifierL115, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA115, drawerContent)), composer2, 3072, 6);
                    drawerState3 = drawerStateO;
                    z11 = z10;
                    shape4 = shape3;
                    f10 = f7;
                    j14 = jB2;
                    modifier4 = modifier119;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new DrawerKt$ModalDrawer$2(drawerContent, modifier4, drawerState3, z11, shape4, f10, j12, j13, j14, content, i10, i11));
            }
            i18 = 805306368;
            i12 |= i18;
            if ((1533916891 & i12) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        drawerStateO = drawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i19 = i12 & (-234881025);
                    } else {
                        jB2 = j11;
                        i19 = i12;
                    }
                    shape3 = shapeA;
                    f7 = fA;
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        drawerStateO = drawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i19 = i12 & (-234881025);
                    } else {
                        jB2 = j11;
                        i19 = i12;
                    }
                    shape3 = shapeA;
                    f7 = fA;
                }
                composerS.A();
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller116 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller116);
                    objH = compositionScopedCoroutineScopeCanceller116;
                }
                composerS.Q();
                o0 o0VarA116 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Modifier modifierL116 = SizeKt.l(modifier3, 0.0f, 1, null);
                j12 = jN;
                Modifier modifier1110 = modifier3;
                j13 = jB;
                composer2 = composerS;
                BoxWithConstraintsKt.a(modifierL116, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA116, drawerContent)), composer2, 3072, 6);
                drawerState3 = drawerStateO;
                z11 = z10;
                shape4 = shape3;
                f10 = f7;
                j14 = jB2;
                modifier4 = modifier1110;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        drawerStateO = drawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i19 = i12 & (-234881025);
                    } else {
                        jB2 = j11;
                        i19 = i12;
                    }
                    shape3 = shapeA;
                    f7 = fA;
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        drawerStateO = drawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i19 = i12 & (-234881025);
                    } else {
                        jB2 = j11;
                        i19 = i12;
                    }
                    shape3 = shapeA;
                    f7 = fA;
                }
                composerS.A();
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller117 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller117);
                    objH = compositionScopedCoroutineScopeCanceller117;
                }
                composerS.Q();
                o0 o0VarA117 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Modifier modifierL117 = SizeKt.l(modifier3, 0.0f, 1, null);
                j12 = jN;
                Modifier modifier1111 = modifier3;
                j13 = jB;
                composer2 = composerS;
                BoxWithConstraintsKt.a(modifierL117, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA117, drawerContent)), composer2, 3072, 6);
                drawerState3 = drawerStateO;
                z11 = z10;
                shape4 = shape3;
                f10 = f7;
                j14 = jB2;
                modifier4 = modifier1111;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new DrawerKt$ModalDrawer$2(drawerContent, modifier4, drawerState3, z11, shape4, f10, j12, j13, j14, content, i10, i11));
        }
        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        f6 = f;
        if ((3670016 & i10) == 0) {
            if ((i11 & 64) == 0) {
                i17 = i20;
                if (composerS.q(j6)) {
                }
                i12 |= i23;
            } else {
                i17 = i20;
            }
            i12 |= i23;
        } else {
            i17 = i20;
        }
        if ((i10 & 29360128) != 0) {
            i12 |= ((i11 & 128) == 0 || !composerS.q(j10)) ? 4194304 : 8388608;
        }
        if ((i10 & 234881024) != 0) {
            i12 |= ((i11 & 256) == 0 || !composerS.q(j11)) ? 33554432 : 67108864;
        }
        if ((i11 & 512) != 0) {
            if ((1879048192 & i10) == 0) {
                if (composerS.k(content)) {
                    i18 = 536870912;
                } else {
                    i18 = 268435456;
                }
            }
            if ((1533916891 & i12) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        drawerStateO = drawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i19 = i12 & (-234881025);
                    } else {
                        jB2 = j11;
                        i19 = i12;
                    }
                    shape3 = shapeA;
                    f7 = fA;
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        drawerStateO = drawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i19 = i12 & (-234881025);
                    } else {
                        jB2 = j11;
                        i19 = i12;
                    }
                    shape3 = shapeA;
                    f7 = fA;
                }
                composerS.A();
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller118 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller118);
                    objH = compositionScopedCoroutineScopeCanceller118;
                }
                composerS.Q();
                o0 o0VarA118 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Modifier modifierL118 = SizeKt.l(modifier3, 0.0f, 1, null);
                j12 = jN;
                Modifier modifier1112 = modifier3;
                j13 = jB;
                composer2 = composerS;
                BoxWithConstraintsKt.a(modifierL118, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA118, drawerContent)), composer2, 3072, 6);
                drawerState3 = drawerStateO;
                z11 = z10;
                shape4 = shape3;
                f10 = f7;
                j14 = jB2;
                modifier4 = modifier1112;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        drawerStateO = drawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i19 = i12 & (-234881025);
                    } else {
                        jB2 = j11;
                        i19 = i12;
                    }
                    shape3 = shapeA;
                    f7 = fA;
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 4) != 0) {
                        drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                        i12 &= -897;
                    } else {
                        drawerStateO = drawerState2;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    }
                    if ((i11 & 16) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -57345;
                    } else {
                        shapeA = shape2;
                    }
                    if (i15 != 0) {
                        fA = DrawerDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 256) != 0) {
                        jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                        i19 = i12 & (-234881025);
                    } else {
                        jB2 = j11;
                        i19 = i12;
                    }
                    shape3 = shapeA;
                    f7 = fA;
                }
                composerS.A();
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller119 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller119);
                    objH = compositionScopedCoroutineScopeCanceller119;
                }
                composerS.Q();
                o0 o0VarA119 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Modifier modifierL119 = SizeKt.l(modifier3, 0.0f, 1, null);
                j12 = jN;
                Modifier modifier1113 = modifier3;
                j13 = jB;
                composer2 = composerS;
                BoxWithConstraintsKt.a(modifierL119, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA119, drawerContent)), composer2, 3072, 6);
                drawerState3 = drawerStateO;
                z11 = z10;
                shape4 = shape3;
                f10 = f7;
                j14 = jB2;
                modifier4 = modifier1113;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new DrawerKt$ModalDrawer$2(drawerContent, modifier4, drawerState3, z11, shape4, f10, j12, j13, j14, content, i10, i11));
        }
        i18 = 805306368;
        i12 |= i18;
        if ((1533916891 & i12) == 306783378) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 4) != 0) {
                    drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                    i12 &= -897;
                } else {
                    drawerStateO = drawerState2;
                }
                if (i13 != 0) {
                    z10 = true;
                }
                if ((i11 & 16) != 0) {
                    shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                    i12 &= -57345;
                } else {
                    shapeA = shape2;
                }
                if (i15 != 0) {
                    fA = DrawerDefaults.INSTANCE.a();
                } else {
                    fA = f6;
                }
                if ((i11 & 64) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -3670017;
                } else {
                    jN = j6;
                }
                if ((i11 & 128) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                    i12 &= -29360129;
                } else {
                    jB = j10;
                }
                if ((i11 & 256) != 0) {
                    jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                    i19 = i12 & (-234881025);
                } else {
                    jB2 = j11;
                    i19 = i12;
                }
                shape3 = shapeA;
                f7 = fA;
            } else {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 4) != 0) {
                    drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                    i12 &= -897;
                } else {
                    drawerStateO = drawerState2;
                }
                if (i13 != 0) {
                    z10 = true;
                }
                if ((i11 & 16) != 0) {
                    shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                    i12 &= -57345;
                } else {
                    shapeA = shape2;
                }
                if (i15 != 0) {
                    fA = DrawerDefaults.INSTANCE.a();
                } else {
                    fA = f6;
                }
                if ((i11 & 64) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -3670017;
                } else {
                    jN = j6;
                }
                if ((i11 & 128) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                    i12 &= -29360129;
                } else {
                    jB = j10;
                }
                if ((i11 & 256) != 0) {
                    jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                    i19 = i12 & (-234881025);
                } else {
                    jB2 = j11;
                    i19 = i12;
                }
                shape3 = shapeA;
                f7 = fA;
            }
            composerS.A();
            composerS.G(773894976);
            composerS.G(-492369756);
            objH = composerS.H();
            if (objH == Composer.Companion.a()) {
                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller1110 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                composerS.z(compositionScopedCoroutineScopeCanceller1110);
                objH = compositionScopedCoroutineScopeCanceller1110;
            }
            composerS.Q();
            o0 o0VarA1110 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
            composerS.Q();
            Modifier modifierL1110 = SizeKt.l(modifier3, 0.0f, 1, null);
            j12 = jN;
            Modifier modifier1114 = modifier3;
            j13 = jB;
            composer2 = composerS;
            BoxWithConstraintsKt.a(modifierL1110, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA1110, drawerContent)), composer2, 3072, 6);
            drawerState3 = drawerStateO;
            z11 = z10;
            shape4 = shape3;
            f10 = f7;
            j14 = jB2;
            modifier4 = modifier1114;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 4) != 0) {
                    drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                    i12 &= -897;
                } else {
                    drawerStateO = drawerState2;
                }
                if (i13 != 0) {
                    z10 = true;
                }
                if ((i11 & 16) != 0) {
                    shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                    i12 &= -57345;
                } else {
                    shapeA = shape2;
                }
                if (i15 != 0) {
                    fA = DrawerDefaults.INSTANCE.a();
                } else {
                    fA = f6;
                }
                if ((i11 & 64) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -3670017;
                } else {
                    jN = j6;
                }
                if ((i11 & 128) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                    i12 &= -29360129;
                } else {
                    jB = j10;
                }
                if ((i11 & 256) != 0) {
                    jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                    i19 = i12 & (-234881025);
                } else {
                    jB2 = j11;
                    i19 = i12;
                }
                shape3 = shapeA;
                f7 = fA;
            } else {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 4) != 0) {
                    drawerStateO = o(DrawerValue.Closed, null, composerS, 6, 2);
                    i12 &= -897;
                } else {
                    drawerStateO = drawerState2;
                }
                if (i13 != 0) {
                    z10 = true;
                }
                if ((i11 & 16) != 0) {
                    shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                    i12 &= -57345;
                } else {
                    shapeA = shape2;
                }
                if (i15 != 0) {
                    fA = DrawerDefaults.INSTANCE.a();
                } else {
                    fA = f6;
                }
                if ((i11 & 64) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -3670017;
                } else {
                    jN = j6;
                }
                if ((i11 & 128) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                    i12 &= -29360129;
                } else {
                    jB = j10;
                }
                if ((i11 & 256) != 0) {
                    jB2 = DrawerDefaults.INSTANCE.b(composerS, 6);
                    i19 = i12 & (-234881025);
                } else {
                    jB2 = j11;
                    i19 = i12;
                }
                shape3 = shapeA;
                f7 = fA;
            }
            composerS.A();
            composerS.G(773894976);
            composerS.G(-492369756);
            objH = composerS.H();
            if (objH == Composer.Companion.a()) {
                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller1111 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                composerS.z(compositionScopedCoroutineScopeCanceller1111);
                objH = compositionScopedCoroutineScopeCanceller1111;
            }
            composerS.Q();
            o0 o0VarA1111 = ((CompositionScopedCoroutineScopeCanceller) objH).a();
            composerS.Q();
            Modifier modifierL1111 = SizeKt.l(modifier3, 0.0f, 1, null);
            j12 = jN;
            Modifier modifier1115 = modifier3;
            j13 = jB;
            composer2 = composerS;
            BoxWithConstraintsKt.a(modifierL1111, null, false, ComposableLambdaKt.b(composer2, 816674999, true, new DrawerKt$ModalDrawer$1(drawerStateO, z10, i19, jB2, shape3, j12, j13, f7, content, o0VarA1111, drawerContent)), composer2, 3072, 6);
            drawerState3 = drawerStateO;
            z11 = z10;
            shape4 = shape3;
            f10 = f7;
            j14 = jB2;
            modifier4 = modifier1115;
        }
        scopeUpdateScopeU = composer2.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new DrawerKt$ModalDrawer$2(drawerContent, modifier4, drawerState3, z11, shape4, f10, j12, j13, j14, content, i10, i11));
    }

    @Composable
    @ExperimentalMaterialApi
    @NotNull
    public static final BottomDrawerState n(@NotNull BottomDrawerValue initialValue, @Nullable l<? super BottomDrawerValue, Boolean> lVar, @Nullable Composer composer, int i10, int i11) {
        t.j(initialValue, "initialValue");
        composer.G(-598115156);
        if ((i11 & 2) != 0) {
            lVar = DrawerKt$rememberBottomDrawerState$1.INSTANCE;
        }
        BottomDrawerState bottomDrawerState = (BottomDrawerState) RememberSaveableKt.b(new Object[0], BottomDrawerState.Companion.a(lVar), null, new DrawerKt$rememberBottomDrawerState$2(initialValue, lVar), composer, 72, 4);
        composer.Q();
        return bottomDrawerState;
    }

    @Composable
    @NotNull
    public static final DrawerState o(@NotNull DrawerValue initialValue, @Nullable l<? super DrawerValue, Boolean> lVar, @Nullable Composer composer, int i10, int i11) {
        t.j(initialValue, "initialValue");
        composer.G(-1435874229);
        if ((i11 & 2) != 0) {
            lVar = DrawerKt$rememberDrawerState$1.INSTANCE;
        }
        DrawerState drawerState = (DrawerState) RememberSaveableKt.b(new Object[0], DrawerState.Companion.a(lVar), null, new DrawerKt$rememberDrawerState$2(initialValue, lVar), composer, 72, 4);
        composer.Q();
        return drawerState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ComposableTarget
    @Composable
    public static final void b(long j6, a<l0> aVar, boolean z6, Composer composer, int i10) {
        int i11;
        float f;
        Modifier modifierB;
        int i12;
        int i13;
        int i14;
        Composer composerS = composer.s(-513067266);
        if ((i10 & 14) == 0) {
            if (composerS.q(j6)) {
                i14 = 4;
            } else {
                i14 = 2;
            }
            i11 = i14 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (composerS.k(aVar)) {
                i13 = 32;
            } else {
                i13 = 16;
            }
            i11 |= i13;
        }
        if ((i10 & 896) == 0) {
            if (composerS.m(z6)) {
                i12 = 256;
            } else {
                i12 = 128;
            }
            i11 |= i12;
        }
        if ((i11 & 731) == 146 && composerS.b()) {
            composerS.g();
        } else if (j6 != Color.Companion.f()) {
            if (z6) {
                f = 1.0f;
            } else {
                f = 0.0f;
            }
            State<Float> stateD = AnimateAsStateKt.d(f, new TweenSpec(0, 0, null, 7, null), 0.0f, null, composerS, 0, 12);
            String strA = Strings_androidKt.a(Strings.Companion.a(), composerS, 6);
            composerS.G(-1298949409);
            if (z6) {
                Modifier.Companion companion = Modifier.Companion;
                composerS.G(1157296644);
                boolean zK = composerS.k(aVar);
                Object objH = composerS.H();
                if (zK || objH == Composer.Companion.a()) {
                    objH = new DrawerKt$BottomDrawerScrim$dismissModifier$1$1(aVar, null);
                    composerS.z(objH);
                }
                composerS.Q();
                Modifier modifierB2 = SuspendingPointerInputFilterKt.b(companion, aVar, (p) objH);
                composerS.G(511388516);
                boolean zK2 = composerS.k(strA) | composerS.k(aVar);
                Object objH2 = composerS.H();
                if (zK2 || objH2 == Composer.Companion.a()) {
                    objH2 = new DrawerKt$BottomDrawerScrim$dismissModifier$2$1(strA, aVar);
                    composerS.z(objH2);
                }
                composerS.Q();
                modifierB = SemanticsModifierKt.b(modifierB2, true, (l) objH2);
            } else {
                modifierB = Modifier.Companion;
            }
            composerS.Q();
            Modifier modifierB3 = SizeKt.l(Modifier.Companion, 0.0f, 1, null).B(modifierB);
            Color colorH = Color.h(j6);
            composerS.G(511388516);
            boolean zK3 = composerS.k(colorH) | composerS.k(stateD);
            Object objH3 = composerS.H();
            if (zK3 || objH3 == Composer.Companion.a()) {
                objH3 = new DrawerKt$BottomDrawerScrim$1$1(j6, stateD);
                composerS.z(objH3);
            }
            composerS.Q();
            CanvasKt.a(modifierB3, (l) objH3, composerS, 0);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new DrawerKt$BottomDrawerScrim$2(j6, aVar, z6, i10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float c(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ComposableTarget
    @Composable
    public static final void e(boolean z6, a<l0> aVar, a<Float> aVar2, long j6, Composer composer, int i10) {
        int i11;
        Modifier modifierB;
        int i12;
        int i13;
        int i14;
        int i15;
        Composer composerS = composer.s(1983403750);
        if ((i10 & 14) == 0) {
            if (composerS.m(z6)) {
                i15 = 4;
            } else {
                i15 = 2;
            }
            i11 = i15 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (composerS.k(aVar)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i11 |= i14;
        }
        if ((i10 & 896) == 0) {
            if (composerS.k(aVar2)) {
                i13 = 256;
            } else {
                i13 = 128;
            }
            i11 |= i13;
        }
        if ((i10 & 7168) == 0) {
            if (composerS.q(j6)) {
                i12 = 2048;
            } else {
                i12 = 1024;
            }
            i11 |= i12;
        }
        if ((i11 & 5851) == 1170 && composerS.b()) {
            composerS.g();
        } else {
            String strA = Strings_androidKt.a(Strings.Companion.a(), composerS, 6);
            composerS.G(1010554047);
            if (z6) {
                Modifier.Companion companion = Modifier.Companion;
                composerS.G(1157296644);
                boolean zK = composerS.k(aVar);
                Object objH = composerS.H();
                if (zK || objH == Composer.Companion.a()) {
                    objH = new DrawerKt$Scrim$dismissDrawer$1$1(aVar, null);
                    composerS.z(objH);
                }
                composerS.Q();
                Modifier modifierB2 = SuspendingPointerInputFilterKt.b(companion, aVar, (p) objH);
                composerS.G(511388516);
                boolean zK2 = composerS.k(strA) | composerS.k(aVar);
                Object objH2 = composerS.H();
                if (zK2 || objH2 == Composer.Companion.a()) {
                    objH2 = new DrawerKt$Scrim$dismissDrawer$2$1(strA, aVar);
                    composerS.z(objH2);
                }
                composerS.Q();
                modifierB = SemanticsModifierKt.b(modifierB2, true, (l) objH2);
            } else {
                modifierB = Modifier.Companion;
            }
            composerS.Q();
            Modifier modifierB3 = SizeKt.l(Modifier.Companion, 0.0f, 1, null).B(modifierB);
            Color colorH = Color.h(j6);
            composerS.G(511388516);
            boolean zK3 = composerS.k(colorH) | composerS.k(aVar2);
            Object objH3 = composerS.H();
            if (zK3 || objH3 == Composer.Companion.a()) {
                objH3 = new DrawerKt$Scrim$1$1(j6, aVar2);
                composerS.z(objH3);
            }
            composerS.Q();
            CanvasKt.a(modifierB3, (l) objH3, composerS, 0);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new DrawerKt$Scrim$2(z6, aVar, aVar2, j6, i10));
        }
    }
}
