package androidx.compose.material;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.gestures.Orientation;
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
import e8.a;
import e8.l;
import e8.p;
import e8.q;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.coroutines.h;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class ModalBottomSheetKt {
    /* JADX WARN: Code duplicated, block: B:102:0x0127  */
    /* JADX WARN: Code duplicated, block: B:104:0x0137  */
    /* JADX WARN: Code duplicated, block: B:123:0x0170 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:124:0x0172  */
    /* JADX WARN: Code duplicated, block: B:125:0x0177  */
    /* JADX WARN: Code duplicated, block: B:128:0x017d  */
    /* JADX WARN: Code duplicated, block: B:129:0x0191  */
    /* JADX WARN: Code duplicated, block: B:132:0x0197  */
    /* JADX WARN: Code duplicated, block: B:133:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:135:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:136:0x01af  */
    /* JADX WARN: Code duplicated, block: B:139:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:140:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:143:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:144:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:147:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:148:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:151:0x0217  */
    /* JADX WARN: Code duplicated, block: B:156:0x0285  */
    /* JADX WARN: Code duplicated, block: B:158:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0052  */
    /* JADX WARN: Code duplicated, block: B:28:0x0056  */
    /* JADX WARN: Code duplicated, block: B:30:0x005e  */
    /* JADX WARN: Code duplicated, block: B:31:0x0061  */
    /* JADX WARN: Code duplicated, block: B:34:0x0067  */
    /* JADX WARN: Code duplicated, block: B:37:0x006d  */
    /* JADX WARN: Code duplicated, block: B:42:0x007c  */
    /* JADX WARN: Code duplicated, block: B:44:0x0080  */
    /* JADX WARN: Code duplicated, block: B:47:0x0086  */
    /* JADX WARN: Code duplicated, block: B:48:0x008b  */
    /* JADX WARN: Code duplicated, block: B:50:0x0093  */
    /* JADX WARN: Code duplicated, block: B:52:0x0099  */
    /* JADX WARN: Code duplicated, block: B:53:0x009c  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:67:0x00be  */
    /* JADX WARN: Code duplicated, block: B:72:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:79:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:85:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:88:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:90:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:92:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:94:0x0102  */
    /* JADX WARN: Code duplicated, block: B:95:0x0105  */
    /* JADX WARN: Code duplicated, block: B:98:0x0111  */
    @Composable
    @ExperimentalMaterialApi
    @ComposableInferredTarget
    public static final void a(@NotNull q<? super ColumnScope, ? super Composer, ? super Integer, l0> sheetContent, @Nullable Modifier modifier, @Nullable ModalBottomSheetState modalBottomSheetState, @Nullable Shape shape, float f, long j6, long j10, long j11, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        ModalBottomSheetState modalBottomSheetState2;
        int i13;
        float f6;
        int i14;
        long j12;
        long j13;
        int i15;
        Modifier modifier2;
        ModalBottomSheetState modalBottomSheetStateH;
        Shape shapeA;
        float fA;
        long jN;
        long jB;
        long jB2;
        int i16;
        ModalBottomSheetState modalBottomSheetState3;
        Shape shape2;
        float f7;
        long j14;
        long j15;
        Object objH;
        Composer composer2;
        long j16;
        Shape shape3;
        Modifier modifier3;
        float f10;
        long j17;
        long j18;
        ScopeUpdateScope scopeUpdateScopeU;
        int i17;
        int i18;
        int i19;
        t.j(sheetContent, "sheetContent");
        t.j(content, "content");
        Composer composerS = composer.s(-1633763156);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(sheetContent) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i20 = i11 & 2;
        if (i20 == 0) {
            if ((i10 & 112) == 0) {
                i12 |= composerS.k(modifier) ? 32 : 16;
            }
            if ((i10 & 896) == 0) {
                if ((i11 & 4) == 0) {
                    modalBottomSheetState2 = modalBottomSheetState;
                    int i21 = composerS.k(modalBottomSheetState2) ? 256 : 128;
                    i12 |= i21;
                } else {
                    modalBottomSheetState2 = modalBottomSheetState;
                }
                i12 |= i21;
            } else {
                modalBottomSheetState2 = modalBottomSheetState;
            }
            if ((i10 & 7168) != 0) {
                if ((i11 & 8) == 0 || !composerS.k(shape)) {
                    i19 = 1024;
                } else {
                    i19 = 2048;
                }
                i12 |= i19;
            }
            i13 = i11 & 16;
            if (i13 != 0) {
                i12 |= CpioConstants.C_ISBLK;
                f6 = f;
            } else {
                f6 = f;
                if ((57344 & i10) == 0) {
                    if (composerS.n(f6)) {
                        i14 = 16384;
                    } else {
                        i14 = 8192;
                    }
                    i12 |= i14;
                }
            }
            if ((458752 & i10) != 0) {
                if ((i11 & 32) == 0 || !composerS.q(j6)) {
                    i18 = 65536;
                } else {
                    i18 = 131072;
                }
                i12 |= i18;
            }
            if ((3670016 & i10) == 0) {
                j12 = j10;
                if ((i11 & 64) == 0 || !composerS.q(j12)) {
                    i17 = 524288;
                } else {
                    i17 = 1048576;
                }
                i12 |= i17;
            } else {
                j12 = j10;
            }
            if ((29360128 & i10) == 0) {
                if ((i11 & 128) == 0) {
                    j13 = j11;
                    int i22 = composerS.q(j13) ? 8388608 : 4194304;
                    i12 |= i22;
                } else {
                    j13 = j11;
                }
                i12 |= i22;
            } else {
                j13 = j11;
            }
            if ((i11 & 256) != 0) {
                if ((234881024 & i10) == 0) {
                    if (composerS.k(content)) {
                        i15 = 67108864;
                    } else {
                        i15 = 33554432;
                    }
                }
                if ((191739611 & i12) == 38347922 || !composerS.b()) {
                    composerS.J();
                    if ((i10 & 1) != 0 || composerS.h()) {
                        if (i20 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            modalBottomSheetStateH = h(ModalBottomSheetValue.Hidden, null, null, composerS, 6, 6);
                            i12 &= -897;
                        } else {
                            modalBottomSheetStateH = modalBottomSheetState2;
                        }
                        if ((i11 & 8) != 0) {
                            shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                            i12 &= -7169;
                        } else {
                            shapeA = shape;
                        }
                        if (i13 != 0) {
                            fA = ModalBottomSheetDefaults.INSTANCE.a();
                        } else {
                            fA = f6;
                        }
                        if ((i11 & 32) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -458753;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 64) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                            i12 &= -3670017;
                        } else {
                            jB = j10;
                        }
                        if ((i11 & 128) != 0) {
                            i16 = i12 & (-29360129);
                            f7 = fA;
                            j14 = jN;
                            j15 = jB;
                            jB2 = ModalBottomSheetDefaults.INSTANCE.b(composerS, 6);
                            modalBottomSheetState3 = modalBottomSheetStateH;
                            shape2 = shapeA;
                        } else {
                            jB2 = j11;
                            i16 = i12;
                            modalBottomSheetState3 = modalBottomSheetStateH;
                            shape2 = shapeA;
                            f7 = fA;
                            j14 = jN;
                            j15 = jB;
                        }
                    } else {
                        composerS.g();
                        if ((i11 & 4) != 0) {
                            i12 &= -897;
                        }
                        if ((i11 & 8) != 0) {
                            i12 &= -7169;
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                        }
                        if ((i11 & 64) != 0) {
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            i12 &= -29360129;
                        }
                        modifier2 = modifier;
                        shape2 = shape;
                        j14 = j6;
                        i16 = i12;
                        modalBottomSheetState3 = modalBottomSheetState2;
                        jB2 = j13;
                        j15 = j12;
                        f7 = f6;
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
                    composer2 = composerS;
                    j16 = jB2;
                    BoxWithConstraintsKt.a(modifier2, null, false, ComposableLambdaKt.b(composer2, 1607356310, true, new ModalBottomSheetKt$ModalBottomSheetLayout$1(modalBottomSheetState3, i16, shape2, j14, j15, f7, content, j16, o0VarA, sheetContent)), composer2, ((i16 >> 3) & 14) | 3072, 6);
                    modalBottomSheetState2 = modalBottomSheetState3;
                    shape3 = shape2;
                    modifier3 = modifier2;
                    f10 = f7;
                    j17 = j14;
                    j18 = j15;
                } else {
                    composerS.g();
                    modifier3 = modifier;
                    composer2 = composerS;
                    j16 = j13;
                    f10 = f6;
                    shape3 = shape;
                    j18 = j12;
                    j17 = j6;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ModalBottomSheetKt$ModalBottomSheetLayout$2(sheetContent, modifier3, modalBottomSheetState2, shape3, f10, j17, j18, j16, content, i10, i11));
            }
            i15 = 100663296;
            i12 |= i15;
            if ((191739611 & i12) == 38347922) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        modalBottomSheetStateH = h(ModalBottomSheetValue.Hidden, null, null, composerS, 6, 6);
                        i12 &= -897;
                    } else {
                        modalBottomSheetStateH = modalBottomSheetState2;
                    }
                    if ((i11 & 8) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -7169;
                    } else {
                        shapeA = shape;
                    }
                    if (i13 != 0) {
                        fA = ModalBottomSheetDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 64) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                        i12 &= -3670017;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 128) != 0) {
                        i16 = i12 & (-29360129);
                        f7 = fA;
                        j14 = jN;
                        j15 = jB;
                        jB2 = ModalBottomSheetDefaults.INSTANCE.b(composerS, 6);
                        modalBottomSheetState3 = modalBottomSheetStateH;
                        shape2 = shapeA;
                    } else {
                        jB2 = j11;
                        i16 = i12;
                        modalBottomSheetState3 = modalBottomSheetStateH;
                        shape2 = shapeA;
                        f7 = fA;
                        j14 = jN;
                        j15 = jB;
                    }
                } else {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        modalBottomSheetStateH = h(ModalBottomSheetValue.Hidden, null, null, composerS, 6, 6);
                        i12 &= -897;
                    } else {
                        modalBottomSheetStateH = modalBottomSheetState2;
                    }
                    if ((i11 & 8) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -7169;
                    } else {
                        shapeA = shape;
                    }
                    if (i13 != 0) {
                        fA = ModalBottomSheetDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 64) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                        i12 &= -3670017;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 128) != 0) {
                        i16 = i12 & (-29360129);
                        f7 = fA;
                        j14 = jN;
                        j15 = jB;
                        jB2 = ModalBottomSheetDefaults.INSTANCE.b(composerS, 6);
                        modalBottomSheetState3 = modalBottomSheetStateH;
                        shape2 = shapeA;
                    } else {
                        jB2 = j11;
                        i16 = i12;
                        modalBottomSheetState3 = modalBottomSheetStateH;
                        shape2 = shapeA;
                        f7 = fA;
                        j14 = jN;
                        j15 = jB;
                    }
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
                composer2 = composerS;
                j16 = jB2;
                BoxWithConstraintsKt.a(modifier2, null, false, ComposableLambdaKt.b(composer2, 1607356310, true, new ModalBottomSheetKt$ModalBottomSheetLayout$1(modalBottomSheetState3, i16, shape2, j14, j15, f7, content, j16, o0VarA2, sheetContent)), composer2, ((i16 >> 3) & 14) | 3072, 6);
                modalBottomSheetState2 = modalBottomSheetState3;
                shape3 = shape2;
                modifier3 = modifier2;
                f10 = f7;
                j17 = j14;
                j18 = j15;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        modalBottomSheetStateH = h(ModalBottomSheetValue.Hidden, null, null, composerS, 6, 6);
                        i12 &= -897;
                    } else {
                        modalBottomSheetStateH = modalBottomSheetState2;
                    }
                    if ((i11 & 8) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -7169;
                    } else {
                        shapeA = shape;
                    }
                    if (i13 != 0) {
                        fA = ModalBottomSheetDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 64) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                        i12 &= -3670017;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 128) != 0) {
                        i16 = i12 & (-29360129);
                        f7 = fA;
                        j14 = jN;
                        j15 = jB;
                        jB2 = ModalBottomSheetDefaults.INSTANCE.b(composerS, 6);
                        modalBottomSheetState3 = modalBottomSheetStateH;
                        shape2 = shapeA;
                    } else {
                        jB2 = j11;
                        i16 = i12;
                        modalBottomSheetState3 = modalBottomSheetStateH;
                        shape2 = shapeA;
                        f7 = fA;
                        j14 = jN;
                        j15 = jB;
                    }
                } else {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        modalBottomSheetStateH = h(ModalBottomSheetValue.Hidden, null, null, composerS, 6, 6);
                        i12 &= -897;
                    } else {
                        modalBottomSheetStateH = modalBottomSheetState2;
                    }
                    if ((i11 & 8) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -7169;
                    } else {
                        shapeA = shape;
                    }
                    if (i13 != 0) {
                        fA = ModalBottomSheetDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 64) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                        i12 &= -3670017;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 128) != 0) {
                        i16 = i12 & (-29360129);
                        f7 = fA;
                        j14 = jN;
                        j15 = jB;
                        jB2 = ModalBottomSheetDefaults.INSTANCE.b(composerS, 6);
                        modalBottomSheetState3 = modalBottomSheetStateH;
                        shape2 = shapeA;
                    } else {
                        jB2 = j11;
                        i16 = i12;
                        modalBottomSheetState3 = modalBottomSheetStateH;
                        shape2 = shapeA;
                        f7 = fA;
                        j14 = jN;
                        j15 = jB;
                    }
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
                composer2 = composerS;
                j16 = jB2;
                BoxWithConstraintsKt.a(modifier2, null, false, ComposableLambdaKt.b(composer2, 1607356310, true, new ModalBottomSheetKt$ModalBottomSheetLayout$1(modalBottomSheetState3, i16, shape2, j14, j15, f7, content, j16, o0VarA3, sheetContent)), composer2, ((i16 >> 3) & 14) | 3072, 6);
                modalBottomSheetState2 = modalBottomSheetState3;
                shape3 = shape2;
                modifier3 = modifier2;
                f10 = f7;
                j17 = j14;
                j18 = j15;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ModalBottomSheetKt$ModalBottomSheetLayout$2(sheetContent, modifier3, modalBottomSheetState2, shape3, f10, j17, j18, j16, content, i10, i11));
        }
        i12 |= 48;
        if ((i10 & 896) == 0) {
            if ((i11 & 4) == 0) {
                modalBottomSheetState2 = modalBottomSheetState;
                if (composerS.k(modalBottomSheetState2)) {
                }
                i12 |= i21;
            } else {
                modalBottomSheetState2 = modalBottomSheetState;
            }
            i12 |= i21;
        } else {
            modalBottomSheetState2 = modalBottomSheetState;
        }
        if ((i10 & 7168) != 0) {
            if ((i11 & 8) == 0) {
                i19 = 1024;
            } else {
                i19 = 1024;
            }
            i12 |= i19;
        }
        i13 = i11 & 16;
        if (i13 != 0) {
            i12 |= CpioConstants.C_ISBLK;
            f6 = f;
        } else {
            f6 = f;
            if ((57344 & i10) == 0) {
                if (composerS.n(f6)) {
                    i14 = 16384;
                } else {
                    i14 = 8192;
                }
                i12 |= i14;
            }
        }
        if ((458752 & i10) != 0) {
            if ((i11 & 32) == 0) {
                i18 = 65536;
            } else {
                i18 = 65536;
            }
            i12 |= i18;
        }
        if ((3670016 & i10) == 0) {
            j12 = j10;
            if ((i11 & 64) == 0) {
                i17 = 524288;
            } else {
                i17 = 524288;
            }
            i12 |= i17;
        } else {
            j12 = j10;
        }
        if ((29360128 & i10) == 0) {
            if ((i11 & 128) == 0) {
                j13 = j11;
                if (composerS.q(j13)) {
                }
                i12 |= i22;
            } else {
                j13 = j11;
            }
            i12 |= i22;
        } else {
            j13 = j11;
        }
        if ((i11 & 256) != 0) {
            if ((234881024 & i10) == 0) {
                if (composerS.k(content)) {
                    i15 = 67108864;
                } else {
                    i15 = 33554432;
                }
            }
            if ((191739611 & i12) == 38347922) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        modalBottomSheetStateH = h(ModalBottomSheetValue.Hidden, null, null, composerS, 6, 6);
                        i12 &= -897;
                    } else {
                        modalBottomSheetStateH = modalBottomSheetState2;
                    }
                    if ((i11 & 8) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -7169;
                    } else {
                        shapeA = shape;
                    }
                    if (i13 != 0) {
                        fA = ModalBottomSheetDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 64) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                        i12 &= -3670017;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 128) != 0) {
                        i16 = i12 & (-29360129);
                        f7 = fA;
                        j14 = jN;
                        j15 = jB;
                        jB2 = ModalBottomSheetDefaults.INSTANCE.b(composerS, 6);
                        modalBottomSheetState3 = modalBottomSheetStateH;
                        shape2 = shapeA;
                    } else {
                        jB2 = j11;
                        i16 = i12;
                        modalBottomSheetState3 = modalBottomSheetStateH;
                        shape2 = shapeA;
                        f7 = fA;
                        j14 = jN;
                        j15 = jB;
                    }
                } else {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        modalBottomSheetStateH = h(ModalBottomSheetValue.Hidden, null, null, composerS, 6, 6);
                        i12 &= -897;
                    } else {
                        modalBottomSheetStateH = modalBottomSheetState2;
                    }
                    if ((i11 & 8) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -7169;
                    } else {
                        shapeA = shape;
                    }
                    if (i13 != 0) {
                        fA = ModalBottomSheetDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 64) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                        i12 &= -3670017;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 128) != 0) {
                        i16 = i12 & (-29360129);
                        f7 = fA;
                        j14 = jN;
                        j15 = jB;
                        jB2 = ModalBottomSheetDefaults.INSTANCE.b(composerS, 6);
                        modalBottomSheetState3 = modalBottomSheetStateH;
                        shape2 = shapeA;
                    } else {
                        jB2 = j11;
                        i16 = i12;
                        modalBottomSheetState3 = modalBottomSheetStateH;
                        shape2 = shapeA;
                        f7 = fA;
                        j14 = jN;
                        j15 = jB;
                    }
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
                composer2 = composerS;
                j16 = jB2;
                BoxWithConstraintsKt.a(modifier2, null, false, ComposableLambdaKt.b(composer2, 1607356310, true, new ModalBottomSheetKt$ModalBottomSheetLayout$1(modalBottomSheetState3, i16, shape2, j14, j15, f7, content, j16, o0VarA4, sheetContent)), composer2, ((i16 >> 3) & 14) | 3072, 6);
                modalBottomSheetState2 = modalBottomSheetState3;
                shape3 = shape2;
                modifier3 = modifier2;
                f10 = f7;
                j17 = j14;
                j18 = j15;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        modalBottomSheetStateH = h(ModalBottomSheetValue.Hidden, null, null, composerS, 6, 6);
                        i12 &= -897;
                    } else {
                        modalBottomSheetStateH = modalBottomSheetState2;
                    }
                    if ((i11 & 8) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -7169;
                    } else {
                        shapeA = shape;
                    }
                    if (i13 != 0) {
                        fA = ModalBottomSheetDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 64) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                        i12 &= -3670017;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 128) != 0) {
                        i16 = i12 & (-29360129);
                        f7 = fA;
                        j14 = jN;
                        j15 = jB;
                        jB2 = ModalBottomSheetDefaults.INSTANCE.b(composerS, 6);
                        modalBottomSheetState3 = modalBottomSheetStateH;
                        shape2 = shapeA;
                    } else {
                        jB2 = j11;
                        i16 = i12;
                        modalBottomSheetState3 = modalBottomSheetStateH;
                        shape2 = shapeA;
                        f7 = fA;
                        j14 = jN;
                        j15 = jB;
                    }
                } else {
                    if (i20 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        modalBottomSheetStateH = h(ModalBottomSheetValue.Hidden, null, null, composerS, 6, 6);
                        i12 &= -897;
                    } else {
                        modalBottomSheetStateH = modalBottomSheetState2;
                    }
                    if ((i11 & 8) != 0) {
                        shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                        i12 &= -7169;
                    } else {
                        shapeA = shape;
                    }
                    if (i13 != 0) {
                        fA = ModalBottomSheetDefaults.INSTANCE.a();
                    } else {
                        fA = f6;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 64) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                        i12 &= -3670017;
                    } else {
                        jB = j10;
                    }
                    if ((i11 & 128) != 0) {
                        i16 = i12 & (-29360129);
                        f7 = fA;
                        j14 = jN;
                        j15 = jB;
                        jB2 = ModalBottomSheetDefaults.INSTANCE.b(composerS, 6);
                        modalBottomSheetState3 = modalBottomSheetStateH;
                        shape2 = shapeA;
                    } else {
                        jB2 = j11;
                        i16 = i12;
                        modalBottomSheetState3 = modalBottomSheetStateH;
                        shape2 = shapeA;
                        f7 = fA;
                        j14 = jN;
                        j15 = jB;
                    }
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
                composer2 = composerS;
                j16 = jB2;
                BoxWithConstraintsKt.a(modifier2, null, false, ComposableLambdaKt.b(composer2, 1607356310, true, new ModalBottomSheetKt$ModalBottomSheetLayout$1(modalBottomSheetState3, i16, shape2, j14, j15, f7, content, j16, o0VarA5, sheetContent)), composer2, ((i16 >> 3) & 14) | 3072, 6);
                modalBottomSheetState2 = modalBottomSheetState3;
                shape3 = shape2;
                modifier3 = modifier2;
                f10 = f7;
                j17 = j14;
                j18 = j15;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ModalBottomSheetKt$ModalBottomSheetLayout$2(sheetContent, modifier3, modalBottomSheetState2, shape3, f10, j17, j18, j16, content, i10, i11));
        }
        i15 = 100663296;
        i12 |= i15;
        if ((191739611 & i12) == 38347922) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i20 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 4) != 0) {
                    modalBottomSheetStateH = h(ModalBottomSheetValue.Hidden, null, null, composerS, 6, 6);
                    i12 &= -897;
                } else {
                    modalBottomSheetStateH = modalBottomSheetState2;
                }
                if ((i11 & 8) != 0) {
                    shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                    i12 &= -7169;
                } else {
                    shapeA = shape;
                }
                if (i13 != 0) {
                    fA = ModalBottomSheetDefaults.INSTANCE.a();
                } else {
                    fA = f6;
                }
                if ((i11 & 32) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -458753;
                } else {
                    jN = j6;
                }
                if ((i11 & 64) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                    i12 &= -3670017;
                } else {
                    jB = j10;
                }
                if ((i11 & 128) != 0) {
                    i16 = i12 & (-29360129);
                    f7 = fA;
                    j14 = jN;
                    j15 = jB;
                    jB2 = ModalBottomSheetDefaults.INSTANCE.b(composerS, 6);
                    modalBottomSheetState3 = modalBottomSheetStateH;
                    shape2 = shapeA;
                } else {
                    jB2 = j11;
                    i16 = i12;
                    modalBottomSheetState3 = modalBottomSheetStateH;
                    shape2 = shapeA;
                    f7 = fA;
                    j14 = jN;
                    j15 = jB;
                }
            } else {
                if (i20 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 4) != 0) {
                    modalBottomSheetStateH = h(ModalBottomSheetValue.Hidden, null, null, composerS, 6, 6);
                    i12 &= -897;
                } else {
                    modalBottomSheetStateH = modalBottomSheetState2;
                }
                if ((i11 & 8) != 0) {
                    shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                    i12 &= -7169;
                } else {
                    shapeA = shape;
                }
                if (i13 != 0) {
                    fA = ModalBottomSheetDefaults.INSTANCE.a();
                } else {
                    fA = f6;
                }
                if ((i11 & 32) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -458753;
                } else {
                    jN = j6;
                }
                if ((i11 & 64) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                    i12 &= -3670017;
                } else {
                    jB = j10;
                }
                if ((i11 & 128) != 0) {
                    i16 = i12 & (-29360129);
                    f7 = fA;
                    j14 = jN;
                    j15 = jB;
                    jB2 = ModalBottomSheetDefaults.INSTANCE.b(composerS, 6);
                    modalBottomSheetState3 = modalBottomSheetStateH;
                    shape2 = shapeA;
                } else {
                    jB2 = j11;
                    i16 = i12;
                    modalBottomSheetState3 = modalBottomSheetStateH;
                    shape2 = shapeA;
                    f7 = fA;
                    j14 = jN;
                    j15 = jB;
                }
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
            composer2 = composerS;
            j16 = jB2;
            BoxWithConstraintsKt.a(modifier2, null, false, ComposableLambdaKt.b(composer2, 1607356310, true, new ModalBottomSheetKt$ModalBottomSheetLayout$1(modalBottomSheetState3, i16, shape2, j14, j15, f7, content, j16, o0VarA6, sheetContent)), composer2, ((i16 >> 3) & 14) | 3072, 6);
            modalBottomSheetState2 = modalBottomSheetState3;
            shape3 = shape2;
            modifier3 = modifier2;
            f10 = f7;
            j17 = j14;
            j18 = j15;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i20 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 4) != 0) {
                    modalBottomSheetStateH = h(ModalBottomSheetValue.Hidden, null, null, composerS, 6, 6);
                    i12 &= -897;
                } else {
                    modalBottomSheetStateH = modalBottomSheetState2;
                }
                if ((i11 & 8) != 0) {
                    shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                    i12 &= -7169;
                } else {
                    shapeA = shape;
                }
                if (i13 != 0) {
                    fA = ModalBottomSheetDefaults.INSTANCE.a();
                } else {
                    fA = f6;
                }
                if ((i11 & 32) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -458753;
                } else {
                    jN = j6;
                }
                if ((i11 & 64) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                    i12 &= -3670017;
                } else {
                    jB = j10;
                }
                if ((i11 & 128) != 0) {
                    i16 = i12 & (-29360129);
                    f7 = fA;
                    j14 = jN;
                    j15 = jB;
                    jB2 = ModalBottomSheetDefaults.INSTANCE.b(composerS, 6);
                    modalBottomSheetState3 = modalBottomSheetStateH;
                    shape2 = shapeA;
                } else {
                    jB2 = j11;
                    i16 = i12;
                    modalBottomSheetState3 = modalBottomSheetStateH;
                    shape2 = shapeA;
                    f7 = fA;
                    j14 = jN;
                    j15 = jB;
                }
            } else {
                if (i20 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 4) != 0) {
                    modalBottomSheetStateH = h(ModalBottomSheetValue.Hidden, null, null, composerS, 6, 6);
                    i12 &= -897;
                } else {
                    modalBottomSheetStateH = modalBottomSheetState2;
                }
                if ((i11 & 8) != 0) {
                    shapeA = MaterialTheme.INSTANCE.b(composerS, 6).a();
                    i12 &= -7169;
                } else {
                    shapeA = shape;
                }
                if (i13 != 0) {
                    fA = ModalBottomSheetDefaults.INSTANCE.a();
                } else {
                    fA = f6;
                }
                if ((i11 & 32) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -458753;
                } else {
                    jN = j6;
                }
                if ((i11 & 64) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                    i12 &= -3670017;
                } else {
                    jB = j10;
                }
                if ((i11 & 128) != 0) {
                    i16 = i12 & (-29360129);
                    f7 = fA;
                    j14 = jN;
                    j15 = jB;
                    jB2 = ModalBottomSheetDefaults.INSTANCE.b(composerS, 6);
                    modalBottomSheetState3 = modalBottomSheetStateH;
                    shape2 = shapeA;
                } else {
                    jB2 = j11;
                    i16 = i12;
                    modalBottomSheetState3 = modalBottomSheetStateH;
                    shape2 = shapeA;
                    f7 = fA;
                    j14 = jN;
                    j15 = jB;
                }
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
            composer2 = composerS;
            j16 = jB2;
            BoxWithConstraintsKt.a(modifier2, null, false, ComposableLambdaKt.b(composer2, 1607356310, true, new ModalBottomSheetKt$ModalBottomSheetLayout$1(modalBottomSheetState3, i16, shape2, j14, j15, f7, content, j16, o0VarA7, sheetContent)), composer2, ((i16 >> 3) & 14) | 3072, 6);
            modalBottomSheetState2 = modalBottomSheetState3;
            shape3 = shape2;
            modifier3 = modifier2;
            f10 = f7;
            j17 = j14;
            j18 = j15;
        }
        scopeUpdateScopeU = composer2.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new ModalBottomSheetKt$ModalBottomSheetLayout$2(sheetContent, modifier3, modalBottomSheetState2, shape3, f10, j17, j18, j16, content, i10, i11));
    }

    @Composable
    @ExperimentalMaterialApi
    @NotNull
    public static final ModalBottomSheetState h(@NotNull ModalBottomSheetValue initialValue, @Nullable AnimationSpec<Float> animationSpec, @Nullable l<? super ModalBottomSheetValue, Boolean> lVar, @Nullable Composer composer, int i10, int i11) {
        t.j(initialValue, "initialValue");
        composer.G(-1928569212);
        if ((i11 & 2) != 0) {
            animationSpec = SwipeableDefaults.INSTANCE.a();
        }
        AnimationSpec<Float> animationSpec2 = animationSpec;
        if ((i11 & 4) != 0) {
            lVar = ModalBottomSheetKt$rememberModalBottomSheetState$3.INSTANCE;
        }
        ModalBottomSheetState modalBottomSheetStateI = i(initialValue, animationSpec2, false, lVar, composer, (i10 & 14) | 448 | ((i10 << 3) & 7168), 0);
        composer.Q();
        return modalBottomSheetStateI;
    }

    @Composable
    @ExperimentalMaterialApi
    @NotNull
    public static final ModalBottomSheetState i(@NotNull ModalBottomSheetValue initialValue, @Nullable AnimationSpec<Float> animationSpec, boolean z6, @Nullable l<? super ModalBottomSheetValue, Boolean> lVar, @Nullable Composer composer, int i10, int i11) {
        t.j(initialValue, "initialValue");
        composer.G(-409288536);
        if ((i11 & 2) != 0) {
            animationSpec = SwipeableDefaults.INSTANCE.a();
        }
        if ((i11 & 8) != 0) {
            lVar = ModalBottomSheetKt$rememberModalBottomSheetState$1.INSTANCE;
        }
        ModalBottomSheetState modalBottomSheetState = (ModalBottomSheetState) RememberSaveableKt.b(new Object[]{initialValue, animationSpec, Boolean.valueOf(z6), lVar}, ModalBottomSheetState.Companion.a(animationSpec, z6, lVar), null, new ModalBottomSheetKt$rememberModalBottomSheetState$2(initialValue, animationSpec, z6, lVar), composer, 72, 4);
        composer.Q();
        return modalBottomSheetState;
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
        Composer composerS = composer.s(-526532668);
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
            String strA = Strings_androidKt.a(Strings.Companion.b(), composerS, 6);
            composerS.G(1010547488);
            if (z6) {
                Modifier.Companion companion = Modifier.Companion;
                composerS.G(1157296644);
                boolean zK = composerS.k(aVar);
                Object objH = composerS.H();
                if (zK || objH == Composer.Companion.a()) {
                    objH = new ModalBottomSheetKt$Scrim$dismissModifier$1$1(aVar, null);
                    composerS.z(objH);
                }
                composerS.Q();
                Modifier modifierB2 = SuspendingPointerInputFilterKt.b(companion, aVar, (p) objH);
                composerS.G(511388516);
                boolean zK2 = composerS.k(strA) | composerS.k(aVar);
                Object objH2 = composerS.H();
                if (zK2 || objH2 == Composer.Companion.a()) {
                    objH2 = new ModalBottomSheetKt$Scrim$dismissModifier$2$1(strA, aVar);
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
                objH3 = new ModalBottomSheetKt$Scrim$1$1(j6, stateD);
                composerS.z(objH3);
            }
            composerS.Q();
            CanvasKt.a(modifierB3, (l) objH3, composerS, 0);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new ModalBottomSheetKt$Scrim$2(j6, aVar, z6, i10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float c(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier g(Modifier modifier, ModalBottomSheetState modalBottomSheetState, float f, State<Float> state) {
        Modifier modifierH;
        boolean z6;
        Float value = state.getValue();
        if (value != null) {
            float f6 = f / 2;
            Map mapL = (value.floatValue() < f6 || modalBottomSheetState.O()) ? s0.l(a0.a(Float.valueOf(f), ModalBottomSheetValue.Hidden), a0.a(Float.valueOf(f - value.floatValue()), ModalBottomSheetValue.Expanded)) : s0.l(a0.a(Float.valueOf(f), ModalBottomSheetValue.Hidden), a0.a(Float.valueOf(f6), ModalBottomSheetValue.HalfExpanded), a0.a(Float.valueOf(Math.max(0.0f, f - value.floatValue())), ModalBottomSheetValue.Expanded));
            Modifier.Companion companion = Modifier.Companion;
            Orientation orientation = Orientation.Vertical;
            if (modalBottomSheetState.p() != ModalBottomSheetValue.Hidden) {
                z6 = true;
            } else {
                z6 = false;
            }
            modifierH = SwipeableKt.h(companion, modalBottomSheetState, mapL, orientation, (288 & 8) != 0 ? true : z6, (288 & 16) != 0 ? false : false, (288 & 32) != 0 ? null : null, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : null, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapL.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f);
        } else {
            modifierH = Modifier.Companion;
        }
        return modifier.B(modifierH);
    }
}
