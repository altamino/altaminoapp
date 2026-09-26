package androidx.compose.material;

import androidx.compose.animation.ColorVectorConverterKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.profileinstaller.ProfileVerifier;
import e8.q;
import e8.t;
import kotlin.jvm.internal.m;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.s;

/* JADX INFO: loaded from: classes4.dex */
final class TextFieldTransitionScope {

    @NotNull
    public static final TextFieldTransitionScope INSTANCE = new TextFieldTransitionScope();

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[InputPhase.values().length];
            iArr[InputPhase.Focused.ordinal()] = 1;
            iArr[InputPhase.UnfocusedEmpty.ordinal()] = 2;
            iArr[InputPhase.UnfocusedNotEmpty.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0246  */
    /* JADX WARN: Code duplicated, block: B:103:0x0249  */
    /* JADX WARN: Code duplicated, block: B:106:0x0263  */
    /* JADX WARN: Code duplicated, block: B:107:0x0266  */
    /* JADX WARN: Code duplicated, block: B:112:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:71:0x0174  */
    /* JADX WARN: Code duplicated, block: B:73:0x0177 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:75:0x017c  */
    /* JADX WARN: Code duplicated, block: B:77:0x0182 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x0185  */
    /* JADX WARN: Code duplicated, block: B:82:0x019f  */
    /* JADX WARN: Code duplicated, block: B:84:0x01a2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:86:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:88:0x01ab A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:90:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:93:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:94:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:99:0x021a  */
    @Composable
    @ComposableInferredTarget
    public final void a(@NotNull InputPhase inputState, long j6, long j10, @NotNull q<? super InputPhase, ? super Composer, ? super Integer, Color> contentColor, boolean z6, @NotNull t<? super Float, ? super Color, ? super Color, ? super Float, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10) {
        int i11;
        float f;
        float f6;
        int i12;
        float f7;
        int i13;
        InputPhase inputPhase;
        long j11;
        ColorSpace colorSpaceQ;
        boolean zK;
        Object objH;
        InputPhase inputPhase2;
        long j12;
        InputPhase inputPhase3;
        long j13;
        ColorSpace colorSpaceQ2;
        boolean zK2;
        Object objH2;
        kotlin.jvm.internal.t.j(inputState, "inputState");
        kotlin.jvm.internal.t.j(contentColor, "contentColor");
        kotlin.jvm.internal.t.j(content, "content");
        Composer composerS = composer.s(1988729962);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(inputState) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.q(j6) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            i11 |= composerS.q(j10) ? 256 : 128;
        }
        if ((i10 & 7168) == 0) {
            i11 |= composerS.k(contentColor) ? 2048 : 1024;
        }
        if ((i10 & 57344) == 0) {
            i11 |= composerS.m(z6) ? 16384 : 8192;
        }
        if ((i10 & 458752) == 0) {
            i11 |= composerS.k(content) ? 131072 : 65536;
        }
        if ((374491 & i11) == 74898 && composerS.b()) {
            composerS.g();
        } else {
            Transition transitionE = TransitionKt.e(inputState, "TextFieldInputState", composerS, (i11 & 14) | 48, 0);
            TextFieldTransitionScope$Transition$labelProgress$2 textFieldTransitionScope$Transition$labelProgress$2 = TextFieldTransitionScope$Transition$labelProgress$2.INSTANCE;
            composerS.G(1399891485);
            m mVar = m.INSTANCE;
            TwoWayConverter<Float, AnimationVector1D> twoWayConverterI = VectorConvertersKt.i(mVar);
            composerS.G(1847725064);
            InputPhase inputPhase4 = (InputPhase) transitionE.g();
            composerS.G(-1158004136);
            int[] iArr = WhenMappings.$EnumSwitchMapping$0;
            int i14 = iArr[inputPhase4.ordinal()];
            float f10 = 0.0f;
            if (i14 == 1) {
                f = 1.0f;
            } else if (i14 != 2) {
                if (i14 != 3) {
                    throw new s();
                }
                f = 1.0f;
            } else {
                f = 0.0f;
            }
            composerS.Q();
            Float fValueOf = Float.valueOf(f);
            InputPhase inputPhase5 = (InputPhase) transitionE.m();
            composerS.G(-1158004136);
            int i15 = iArr[inputPhase5.ordinal()];
            if (i15 != 1) {
                if (i15 == 2) {
                    f6 = 0.0f;
                } else if (i15 != 3) {
                    throw new s();
                }
                composerS.Q();
                State stateC = TransitionKt.c(transitionE, fValueOf, Float.valueOf(f6), textFieldTransitionScope$Transition$labelProgress$2.invoke(transitionE.k(), composerS, 0), twoWayConverterI, "LabelProgress", composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE);
                composerS.Q();
                composerS.Q();
                TextFieldTransitionScope$Transition$placeholderOpacity$2 textFieldTransitionScope$Transition$placeholderOpacity$2 = TextFieldTransitionScope$Transition$placeholderOpacity$2.INSTANCE;
                composerS.G(1399891485);
                TwoWayConverter<Float, AnimationVector1D> twoWayConverterI2 = VectorConvertersKt.i(mVar);
                composerS.G(1847725064);
                InputPhase inputPhase6 = (InputPhase) transitionE.g();
                composerS.G(-1376159017);
                i12 = iArr[inputPhase6.ordinal()];
                if (i12 == 1) {
                    f7 = 1.0f;
                } else {
                    if (i12 != 2) {
                        if (i12 != 3) {
                            throw new s();
                        }
                    } else if (z6) {
                        f7 = 1.0f;
                    }
                    f7 = 0.0f;
                }
                composerS.Q();
                Float fValueOf2 = Float.valueOf(f7);
                InputPhase inputPhase7 = (InputPhase) transitionE.m();
                composerS.G(-1376159017);
                i13 = iArr[inputPhase7.ordinal()];
                if (i13 == 1) {
                    f10 = 1.0f;
                } else if (i13 != 2) {
                    if (i13 != 3) {
                        throw new s();
                    }
                } else if (!z6) {
                    f10 = 1.0f;
                }
                composerS.Q();
                State stateC2 = TransitionKt.c(transitionE, fValueOf2, Float.valueOf(f10), textFieldTransitionScope$Transition$placeholderOpacity$2.invoke(transitionE.k(), composerS, 0), twoWayConverterI2, "PlaceholderOpacity", composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE);
                composerS.Q();
                composerS.Q();
                TextFieldTransitionScope$Transition$labelTextStyleColor$2 textFieldTransitionScope$Transition$labelTextStyleColor$2 = TextFieldTransitionScope$Transition$labelTextStyleColor$2.INSTANCE;
                composerS.G(-1462136984);
                inputPhase = (InputPhase) transitionE.m();
                composerS.G(-1490209928);
                if (iArr[inputPhase.ordinal()] == 1) {
                    j11 = j6;
                } else {
                    j11 = j10;
                }
                composerS.Q();
                colorSpaceQ = Color.q(j11);
                composerS.G(-3686930);
                zK = composerS.k(colorSpaceQ);
                objH = composerS.H();
                if (zK || objH == Composer.Companion.a()) {
                    objH = (TwoWayConverter) ColorVectorConverterKt.d(Color.Companion).invoke(colorSpaceQ);
                    composerS.z(objH);
                }
                composerS.Q();
                TwoWayConverter twoWayConverter = (TwoWayConverter) objH;
                composerS.G(1847725064);
                inputPhase2 = (InputPhase) transitionE.g();
                composerS.G(-1490209928);
                if (iArr[inputPhase2.ordinal()] == 1) {
                    j12 = j6;
                } else {
                    j12 = j10;
                }
                composerS.Q();
                Color colorH = Color.h(j12);
                inputPhase3 = (InputPhase) transitionE.m();
                composerS.G(-1490209928);
                if (iArr[inputPhase3.ordinal()] == 1) {
                    j13 = j6;
                } else {
                    j13 = j10;
                }
                composerS.Q();
                State stateC3 = TransitionKt.c(transitionE, colorH, Color.h(j13), textFieldTransitionScope$Transition$labelTextStyleColor$2.invoke(transitionE.k(), composerS, 0), twoWayConverter, "LabelTextStyleColor", composerS, 229376);
                composerS.Q();
                composerS.Q();
                TextFieldTransitionScope$Transition$labelContentColor$2 textFieldTransitionScope$Transition$labelContentColor$2 = TextFieldTransitionScope$Transition$labelContentColor$2.INSTANCE;
                int i16 = (i11 & 7168) | 384;
                composerS.G(-1462136984);
                colorSpaceQ2 = Color.q(contentColor.invoke(transitionE.m(), composerS, Integer.valueOf((i16 >> 6) & 112)).v());
                composerS.G(-3686930);
                zK2 = composerS.k(colorSpaceQ2);
                objH2 = composerS.H();
                if (zK2 || objH2 == Composer.Companion.a()) {
                    objH2 = (TwoWayConverter) ColorVectorConverterKt.d(Color.Companion).invoke(colorSpaceQ2);
                    composerS.z(objH2);
                }
                composerS.Q();
                int i17 = (i16 & 14) | 64;
                int i18 = i16 << 3;
                int i19 = i17 | (i18 & 896) | (i18 & 7168) | (i18 & 57344);
                composerS.G(1847725064);
                int i20 = (i19 >> 9) & 112;
                State stateC4 = TransitionKt.c(transitionE, contentColor.invoke(transitionE.g(), composerS, Integer.valueOf(i20)), contentColor.invoke(transitionE.m(), composerS, Integer.valueOf(i20)), textFieldTransitionScope$Transition$labelContentColor$2.invoke(transitionE.k(), composerS, Integer.valueOf((i19 >> 3) & 112)), (TwoWayConverter) objH2, "LabelContentColor", composerS, (i19 & 14) | ((i19 << 9) & 57344) | ((i19 << 6) & 458752));
                composerS.Q();
                composerS.Q();
                content.invoke(Float.valueOf(b(stateC)), Color.h(d(stateC3)), Color.h(e(stateC4)), Float.valueOf(c(stateC2)), composerS, Integer.valueOf((i11 >> 3) & 57344));
            }
            f6 = 1.0f;
            composerS.Q();
            State stateC5 = TransitionKt.c(transitionE, fValueOf, Float.valueOf(f6), textFieldTransitionScope$Transition$labelProgress$2.invoke(transitionE.k(), composerS, 0), twoWayConverterI, "LabelProgress", composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE);
            composerS.Q();
            composerS.Q();
            TextFieldTransitionScope$Transition$placeholderOpacity$2 textFieldTransitionScope$Transition$placeholderOpacity$3 = TextFieldTransitionScope$Transition$placeholderOpacity$2.INSTANCE;
            composerS.G(1399891485);
            TwoWayConverter<Float, AnimationVector1D> twoWayConverterI3 = VectorConvertersKt.i(mVar);
            composerS.G(1847725064);
            InputPhase inputPhase8 = (InputPhase) transitionE.g();
            composerS.G(-1376159017);
            i12 = iArr[inputPhase8.ordinal()];
            if (i12 == 1) {
                f7 = 1.0f;
            } else {
                if (i12 != 2) {
                    if (i12 != 3) {
                        throw new s();
                    }
                } else if (z6) {
                    f7 = 1.0f;
                }
                f7 = 0.0f;
            }
            composerS.Q();
            Float fValueOf3 = Float.valueOf(f7);
            InputPhase inputPhase9 = (InputPhase) transitionE.m();
            composerS.G(-1376159017);
            i13 = iArr[inputPhase9.ordinal()];
            if (i13 == 1) {
                f10 = 1.0f;
            } else if (i13 != 2) {
                if (i13 != 3) {
                    throw new s();
                }
            } else if (!z6) {
                f10 = 1.0f;
            }
            composerS.Q();
            State stateC6 = TransitionKt.c(transitionE, fValueOf3, Float.valueOf(f10), textFieldTransitionScope$Transition$placeholderOpacity$3.invoke(transitionE.k(), composerS, 0), twoWayConverterI3, "PlaceholderOpacity", composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE);
            composerS.Q();
            composerS.Q();
            TextFieldTransitionScope$Transition$labelTextStyleColor$2 textFieldTransitionScope$Transition$labelTextStyleColor$3 = TextFieldTransitionScope$Transition$labelTextStyleColor$2.INSTANCE;
            composerS.G(-1462136984);
            inputPhase = (InputPhase) transitionE.m();
            composerS.G(-1490209928);
            if (iArr[inputPhase.ordinal()] == 1) {
                j11 = j6;
            } else {
                j11 = j10;
            }
            composerS.Q();
            colorSpaceQ = Color.q(j11);
            composerS.G(-3686930);
            zK = composerS.k(colorSpaceQ);
            objH = composerS.H();
            if (zK) {
                objH = (TwoWayConverter) ColorVectorConverterKt.d(Color.Companion).invoke(colorSpaceQ);
                composerS.z(objH);
            } else {
                objH = (TwoWayConverter) ColorVectorConverterKt.d(Color.Companion).invoke(colorSpaceQ);
                composerS.z(objH);
            }
            composerS.Q();
            TwoWayConverter twoWayConverter2 = (TwoWayConverter) objH;
            composerS.G(1847725064);
            inputPhase2 = (InputPhase) transitionE.g();
            composerS.G(-1490209928);
            if (iArr[inputPhase2.ordinal()] == 1) {
                j12 = j6;
            } else {
                j12 = j10;
            }
            composerS.Q();
            Color colorH2 = Color.h(j12);
            inputPhase3 = (InputPhase) transitionE.m();
            composerS.G(-1490209928);
            if (iArr[inputPhase3.ordinal()] == 1) {
                j13 = j6;
            } else {
                j13 = j10;
            }
            composerS.Q();
            State stateC7 = TransitionKt.c(transitionE, colorH2, Color.h(j13), textFieldTransitionScope$Transition$labelTextStyleColor$3.invoke(transitionE.k(), composerS, 0), twoWayConverter2, "LabelTextStyleColor", composerS, 229376);
            composerS.Q();
            composerS.Q();
            TextFieldTransitionScope$Transition$labelContentColor$2 textFieldTransitionScope$Transition$labelContentColor$3 = TextFieldTransitionScope$Transition$labelContentColor$2.INSTANCE;
            int i110 = (i11 & 7168) | 384;
            composerS.G(-1462136984);
            colorSpaceQ2 = Color.q(contentColor.invoke(transitionE.m(), composerS, Integer.valueOf((i110 >> 6) & 112)).v());
            composerS.G(-3686930);
            zK2 = composerS.k(colorSpaceQ2);
            objH2 = composerS.H();
            if (zK2) {
                objH2 = (TwoWayConverter) ColorVectorConverterKt.d(Color.Companion).invoke(colorSpaceQ2);
                composerS.z(objH2);
            } else {
                objH2 = (TwoWayConverter) ColorVectorConverterKt.d(Color.Companion).invoke(colorSpaceQ2);
                composerS.z(objH2);
            }
            composerS.Q();
            int i111 = (i110 & 14) | 64;
            int i112 = i110 << 3;
            int i113 = i111 | (i112 & 896) | (i112 & 7168) | (i112 & 57344);
            composerS.G(1847725064);
            int i21 = (i113 >> 9) & 112;
            State stateC8 = TransitionKt.c(transitionE, contentColor.invoke(transitionE.g(), composerS, Integer.valueOf(i21)), contentColor.invoke(transitionE.m(), composerS, Integer.valueOf(i21)), textFieldTransitionScope$Transition$labelContentColor$3.invoke(transitionE.k(), composerS, Integer.valueOf((i113 >> 3) & 112)), (TwoWayConverter) objH2, "LabelContentColor", composerS, (i113 & 14) | ((i113 << 9) & 57344) | ((i113 << 6) & 458752));
            composerS.Q();
            composerS.Q();
            content.invoke(Float.valueOf(b(stateC5)), Color.h(d(stateC7)), Color.h(e(stateC8)), Float.valueOf(c(stateC6)), composerS, Integer.valueOf((i11 >> 3) & 57344));
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new TextFieldTransitionScope$Transition$1(this, inputState, j6, j10, contentColor, z6, content, i10));
    }

    private TextFieldTransitionScope() {
    }

    private static final float b(State<Float> state) {
        return state.getValue().floatValue();
    }

    private static final float c(State<Float> state) {
        return state.getValue().floatValue();
    }

    private static final long d(State<Color> state) {
        return state.getValue().v();
    }

    private static final long e(State<Color> state) {
        return state.getValue().v();
    }
}
