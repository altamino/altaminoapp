package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import e8.l;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.s;

/* JADX INFO: loaded from: classes.dex */
public final class EnterExitTransitionKt {

    @NotNull
    private static final TwoWayConverter<TransformOrigin, AnimationVector2D> TransformOriginVectorConverter = VectorConvertersKt.a(EnterExitTransitionKt$TransformOriginVectorConverter$1.INSTANCE, EnterExitTransitionKt$TransformOriginVectorConverter$2.INSTANCE);

    @NotNull
    private static final MutableState<Float> DefaultAlpha = SnapshotStateKt__SnapshotStateKt.e(Float.valueOf(1.0f), null, 2, null);

    @NotNull
    private static final SpringSpec<Float> DefaultAlphaAndScaleSpring = AnimationSpecKt.i(0.0f, 400.0f, null, 5, null);

    @NotNull
    private static final SpringSpec<IntOffset> DefaultOffsetAnimationSpec = AnimationSpecKt.i(0.0f, 400.0f, IntOffset.b(VisibilityThresholdsKt.e(IntOffset.Companion)), 1, null);

    @NotNull
    private static final SpringSpec<IntSize> DefaultSizeAnimationSpec = AnimationSpecKt.i(0.0f, 400.0f, IntSize.b(VisibilityThresholdsKt.f(IntSize.Companion)), 1, null);

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EnterExitState.values().length];
            iArr[EnterExitState.Visible.ordinal()] = 1;
            iArr[EnterExitState.PreEnter.ordinal()] = 2;
            iArr[EnterExitState.PostExit.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:107:0x036d  */
    /* JADX WARN: Code duplicated, block: B:126:0x03d2  */
    /* JADX WARN: Code duplicated, block: B:151:0x0443  */
    /* JADX WARN: Code duplicated, block: B:41:0x0185  */
    /* JADX WARN: Code duplicated, block: B:56:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:79:0x02b7  */
    @Composable
    @NotNull
    public static final Modifier g(@NotNull Transition<EnterExitState> transition, @NotNull EnterTransition enter, @NotNull ExitTransition exit, @NotNull String label, @Nullable Composer composer, int i10) {
        int i11;
        TransformOrigin transformOrigin;
        State stateC;
        float fB;
        TransformOrigin transformOriginB;
        TransformOrigin transformOriginB2;
        float fA;
        float fA2;
        t.j(transition, "<this>");
        t.j(enter, "enter");
        t.j(exit, "exit");
        t.j(label, "label");
        composer.G(914000546);
        Modifier modifierA = A(H(Modifier.Companion, transition, SnapshotStateKt.n(enter.a().d(), composer, 0), SnapshotStateKt.n(exit.a().d(), composer, 0), label), transition, SnapshotStateKt.n(enter.a().a(), composer, 0), SnapshotStateKt.n(exit.a().a(), composer, 0), label);
        int i12 = i10 & 14;
        composer.G(1157296644);
        boolean zK = composer.k(transition);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);
            composer.z(objH);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH;
        composer.G(1157296644);
        boolean zK2 = composer.k(transition);
        Object objH2 = composer.H();
        if (zK2 || objH2 == Composer.Companion.a()) {
            objH2 = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);
            composer.z(objH2);
        }
        composer.Q();
        MutableState mutableState2 = (MutableState) objH2;
        if (transition.g() != transition.m() || transition.q()) {
            if (enter.a().b() != null || exit.a().b() != null) {
                k(mutableState, true);
            }
            if (enter.a().c() != null || exit.a().c() != null) {
                m(mutableState2, true);
            }
        } else {
            k(mutableState, false);
            m(mutableState2, false);
        }
        composer.G(1657240548);
        float fB2 = 1.0f;
        if (h(mutableState)) {
            EnterExitTransitionKt$createModifier$alpha$2 enterExitTransitionKt$createModifier$alpha$2 = new EnterExitTransitionKt$createModifier$alpha$2(enter, exit);
            composer.G(-492369756);
            Object objH3 = composer.H();
            if (objH3 == Composer.Companion.a()) {
                objH3 = label + " alpha";
                composer.z(objH3);
            }
            composer.Q();
            String str = (String) objH3;
            int i13 = i12 | 384;
            composer.G(-1338768149);
            TwoWayConverter<Float, AnimationVector1D> twoWayConverterI = VectorConvertersKt.i(m.INSTANCE);
            int i14 = i13 & 14;
            int i15 = i13 << 3;
            int i16 = (i15 & 57344) | i14 | (i15 & 896) | (i15 & 7168);
            composer.G(-142660079);
            EnterExitState enterExitStateG = transition.g();
            composer.G(755689166);
            int[] iArr = WhenMappings.$EnumSwitchMapping$0;
            int i17 = iArr[enterExitStateG.ordinal()];
            if (i17 == 1) {
                fA = 1.0f;
            } else if (i17 == 2) {
                Fade fadeB = enter.a().b();
                if (fadeB != null) {
                    fA = fadeB.a();
                } else {
                    fA = 1.0f;
                }
            } else {
                if (i17 != 3) {
                    throw new s();
                }
                Fade fadeB2 = exit.a().b();
                if (fadeB2 != null) {
                    fA = fadeB2.a();
                } else {
                    fA = 1.0f;
                }
            }
            composer.Q();
            Float fValueOf = Float.valueOf(fA);
            EnterExitState enterExitStateM = transition.m();
            composer.G(755689166);
            int i18 = iArr[enterExitStateM.ordinal()];
            if (i18 == 1) {
                fA2 = 1.0f;
            } else if (i18 == 2) {
                Fade fadeB3 = enter.a().b();
                if (fadeB3 != null) {
                    fA2 = fadeB3.a();
                } else {
                    fA2 = 1.0f;
                }
            } else {
                if (i18 != 3) {
                    throw new s();
                }
                Fade fadeB4 = exit.a().b();
                if (fadeB4 != null) {
                    fA2 = fadeB4.a();
                } else {
                    fA2 = 1.0f;
                }
            }
            composer.Q();
            i11 = -492369756;
            transformOrigin = null;
            stateC = androidx.compose.animation.core.TransitionKt.c(transition, fValueOf, Float.valueOf(fA2), enterExitTransitionKt$createModifier$alpha$2.invoke(transition.k(), composer, Integer.valueOf((i16 >> 3) & 112)), twoWayConverterI, str, composer, (i16 & 14) | ((i16 << 9) & 57344) | ((i16 << 6) & 458752));
            composer.Q();
            composer.Q();
        } else {
            i11 = -492369756;
            transformOrigin = null;
            stateC = DefaultAlpha;
        }
        State state = stateC;
        composer.Q();
        if (l(mutableState2)) {
            EnterExitTransitionKt$createModifier$scale$2 enterExitTransitionKt$createModifier$scale$2 = new EnterExitTransitionKt$createModifier$scale$2(enter, exit);
            composer.G(i11);
            Object objH4 = composer.H();
            if (objH4 == Composer.Companion.a()) {
                objH4 = label + " scale";
                composer.z(objH4);
            }
            composer.Q();
            String str2 = (String) objH4;
            int i19 = i12 | 384;
            composer.G(-1338768149);
            TwoWayConverter<Float, AnimationVector1D> twoWayConverterI2 = VectorConvertersKt.i(m.INSTANCE);
            int i20 = i19 & 14;
            int i21 = i19 << 3;
            int i22 = (i21 & 57344) | i20 | (i21 & 896) | (i21 & 7168);
            composer.G(-142660079);
            EnterExitState enterExitStateG2 = transition.g();
            composer.G(-596129937);
            int[] iArr2 = WhenMappings.$EnumSwitchMapping$0;
            int i23 = iArr2[enterExitStateG2.ordinal()];
            if (i23 == 1) {
                fB = 1.0f;
            } else if (i23 == 2) {
                Scale scaleC = enter.a().c();
                if (scaleC != null) {
                    fB = scaleC.b();
                } else {
                    fB = 1.0f;
                }
            } else {
                if (i23 != 3) {
                    throw new s();
                }
                Scale scaleC2 = exit.a().c();
                if (scaleC2 != null) {
                    fB = scaleC2.b();
                } else {
                    fB = 1.0f;
                }
            }
            composer.Q();
            Float fValueOf2 = Float.valueOf(fB);
            EnterExitState enterExitStateM2 = transition.m();
            composer.G(-596129937);
            int i24 = iArr2[enterExitStateM2.ordinal()];
            if (i24 != 1) {
                if (i24 == 2) {
                    Scale scaleC3 = enter.a().c();
                    if (scaleC3 != null) {
                        fB2 = scaleC3.b();
                    }
                } else {
                    if (i24 != 3) {
                        throw new s();
                    }
                    Scale scaleC4 = exit.a().c();
                    if (scaleC4 != null) {
                        fB2 = scaleC4.b();
                    }
                }
            }
            composer.Q();
            State stateC2 = androidx.compose.animation.core.TransitionKt.c(transition, fValueOf2, Float.valueOf(fB2), enterExitTransitionKt$createModifier$scale$2.invoke(transition.k(), composer, Integer.valueOf((i22 >> 3) & 112)), twoWayConverterI2, str2, composer, (i22 & 14) | ((i22 << 9) & 57344) | ((i22 << 6) & 458752));
            composer.Q();
            composer.Q();
            if (transition.g() == EnterExitState.PreEnter) {
                Scale scaleC5 = enter.a().c();
                if (scaleC5 == null && (scaleC5 = exit.a().c()) == null) {
                    transformOriginB = transformOrigin;
                } else {
                    transformOriginB = TransformOrigin.b(scaleC5.c());
                }
            } else {
                Scale scaleC6 = exit.a().c();
                if (scaleC6 == null && (scaleC6 = enter.a().c()) == null) {
                    transformOriginB = transformOrigin;
                } else {
                    transformOriginB = TransformOrigin.b(scaleC6.c());
                }
            }
            TwoWayConverter<TransformOrigin, AnimationVector2D> twoWayConverter = TransformOriginVectorConverter;
            int i25 = i12 | 3136;
            composer.G(-142660079);
            EnterExitTransitionKt$createModifier$$inlined$animateValue$1 enterExitTransitionKt$createModifier$$inlined$animateValue$1 = EnterExitTransitionKt$createModifier$$inlined$animateValue$1.INSTANCE;
            EnterExitState enterExitStateG3 = transition.g();
            composer.G(-288165413);
            int i26 = iArr2[enterExitStateG3.ordinal()];
            if (i26 == 1) {
                transformOriginB2 = transformOriginB;
            } else if (i26 == 2) {
                Scale scaleC7 = enter.a().c();
                if (scaleC7 == null && (scaleC7 = exit.a().c()) == null) {
                    transformOriginB2 = transformOrigin;
                } else {
                    transformOriginB2 = TransformOrigin.b(scaleC7.c());
                }
            } else {
                if (i26 != 3) {
                    throw new s();
                }
                Scale scaleC8 = exit.a().c();
                if (scaleC8 == null && (scaleC8 = enter.a().c()) == null) {
                    transformOriginB2 = transformOrigin;
                } else {
                    transformOriginB2 = TransformOrigin.b(scaleC8.c());
                }
            }
            long j6 = transformOriginB2 != null ? transformOriginB2.j() : TransformOrigin.Companion.a();
            composer.Q();
            TransformOrigin transformOriginB3 = TransformOrigin.b(j6);
            EnterExitState enterExitStateM3 = transition.m();
            composer.G(-288165413);
            int i27 = iArr2[enterExitStateM3.ordinal()];
            if (i27 != 1) {
                if (i27 == 2) {
                    Scale scaleC9 = enter.a().c();
                    if (scaleC9 == null && (scaleC9 = exit.a().c()) == null) {
                        transformOriginB = transformOrigin;
                    } else {
                        transformOriginB = TransformOrigin.b(scaleC9.c());
                    }
                } else {
                    if (i27 != 3) {
                        throw new s();
                    }
                    Scale scaleC10 = exit.a().c();
                    if (scaleC10 == null && (scaleC10 = enter.a().c()) == null) {
                        transformOriginB = transformOrigin;
                    } else {
                        transformOriginB = TransformOrigin.b(scaleC10.c());
                    }
                }
            }
            long j10 = transformOriginB != null ? transformOriginB.j() : TransformOrigin.Companion.a();
            composer.Q();
            State stateC3 = androidx.compose.animation.core.TransitionKt.c(transition, transformOriginB3, TransformOrigin.b(j10), enterExitTransitionKt$createModifier$$inlined$animateValue$1.invoke(transition.k(), composer, Integer.valueOf((i25 >> 3) & 112)), twoWayConverter, "TransformOriginInterruptionHandling", composer, (i25 & 14) | ((i25 << 9) & 57344) | ((i25 << 6) & 458752));
            composer.Q();
            modifierA = GraphicsLayerModifierKt.a(modifierA, new EnterExitTransitionKt$createModifier$1(state, stateC2, stateC3));
        } else if (h(mutableState)) {
            modifierA = GraphicsLayerModifierKt.a(modifierA, new EnterExitTransitionKt$createModifier$2(state));
        }
        composer.Q();
        return modifierA;
    }

    private static final Modifier A(Modifier modifier, Transition<EnterExitState> transition, State<ChangeSize> state, State<ChangeSize> state2, String str) {
        return ComposedModifierKt.d(modifier, null, new EnterExitTransitionKt$shrinkExpand$1(transition, state, state2, str), 1, null);
    }

    @Stable
    @NotNull
    public static final ExitTransition B(@NotNull FiniteAnimationSpec<IntSize> animationSpec, @NotNull Alignment.Horizontal shrinkTowards, boolean z6, @NotNull l<? super Integer, Integer> targetWidth) {
        t.j(animationSpec, "animationSpec");
        t.j(shrinkTowards, "shrinkTowards");
        t.j(targetWidth, "targetWidth");
        return D(animationSpec, I(shrinkTowards), z6, new EnterExitTransitionKt$shrinkHorizontally$2(targetWidth));
    }

    public static /* synthetic */ ExitTransition C(FiniteAnimationSpec finiteAnimationSpec, Alignment.Horizontal horizontal, boolean z6, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.i(0.0f, 400.0f, IntSize.b(VisibilityThresholdsKt.f(IntSize.Companion)), 1, null);
        }
        if ((i10 & 2) != 0) {
            horizontal = Alignment.Companion.j();
        }
        if ((i10 & 4) != 0) {
            z6 = true;
        }
        if ((i10 & 8) != 0) {
            lVar = EnterExitTransitionKt$shrinkHorizontally$1.INSTANCE;
        }
        return B(finiteAnimationSpec, horizontal, z6, lVar);
    }

    @Stable
    @NotNull
    public static final ExitTransition D(@NotNull FiniteAnimationSpec<IntSize> animationSpec, @NotNull Alignment shrinkTowards, boolean z6, @NotNull l<? super IntSize, IntSize> targetSize) {
        t.j(animationSpec, "animationSpec");
        t.j(shrinkTowards, "shrinkTowards");
        t.j(targetSize, "targetSize");
        return new ExitTransitionImpl(new TransitionData(null, null, new ChangeSize(shrinkTowards, targetSize, animationSpec, z6), null, 11, null));
    }

    public static /* synthetic */ ExitTransition E(FiniteAnimationSpec finiteAnimationSpec, Alignment alignment, boolean z6, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.i(0.0f, 400.0f, IntSize.b(VisibilityThresholdsKt.f(IntSize.Companion)), 1, null);
        }
        if ((i10 & 2) != 0) {
            alignment = Alignment.Companion.c();
        }
        if ((i10 & 4) != 0) {
            z6 = true;
        }
        if ((i10 & 8) != 0) {
            lVar = EnterExitTransitionKt$shrinkOut$1.INSTANCE;
        }
        return D(finiteAnimationSpec, alignment, z6, lVar);
    }

    @Stable
    @NotNull
    public static final ExitTransition F(@NotNull FiniteAnimationSpec<IntSize> animationSpec, @NotNull Alignment.Vertical shrinkTowards, boolean z6, @NotNull l<? super Integer, Integer> targetHeight) {
        t.j(animationSpec, "animationSpec");
        t.j(shrinkTowards, "shrinkTowards");
        t.j(targetHeight, "targetHeight");
        return D(animationSpec, J(shrinkTowards), z6, new EnterExitTransitionKt$shrinkVertically$2(targetHeight));
    }

    public static /* synthetic */ ExitTransition G(FiniteAnimationSpec finiteAnimationSpec, Alignment.Vertical vertical, boolean z6, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.i(0.0f, 400.0f, IntSize.b(VisibilityThresholdsKt.f(IntSize.Companion)), 1, null);
        }
        if ((i10 & 2) != 0) {
            vertical = Alignment.Companion.a();
        }
        if ((i10 & 4) != 0) {
            z6 = true;
        }
        if ((i10 & 8) != 0) {
            lVar = EnterExitTransitionKt$shrinkVertically$1.INSTANCE;
        }
        return F(finiteAnimationSpec, vertical, z6, lVar);
    }

    private static final Modifier H(Modifier modifier, Transition<EnterExitState> transition, State<Slide> state, State<Slide> state2, String str) {
        return ComposedModifierKt.d(modifier, null, new EnterExitTransitionKt$slideInOut$1(transition, state, state2, str), 1, null);
    }

    private static final Alignment I(Alignment.Horizontal horizontal) {
        Alignment.Companion companion = Alignment.Companion;
        if (t.e(horizontal, companion.k())) {
            return companion.h();
        }
        return t.e(horizontal, companion.j()) ? companion.f() : companion.e();
    }

    private static final Alignment J(Alignment.Vertical vertical) {
        Alignment.Companion companion = Alignment.Companion;
        if (t.e(vertical, companion.l())) {
            return companion.m();
        }
        return t.e(vertical, companion.a()) ? companion.b() : companion.e();
    }

    @Stable
    @NotNull
    public static final EnterTransition o(@NotNull FiniteAnimationSpec<IntSize> animationSpec, @NotNull Alignment.Horizontal expandFrom, boolean z6, @NotNull l<? super Integer, Integer> initialWidth) {
        t.j(animationSpec, "animationSpec");
        t.j(expandFrom, "expandFrom");
        t.j(initialWidth, "initialWidth");
        return q(animationSpec, I(expandFrom), z6, new EnterExitTransitionKt$expandHorizontally$2(initialWidth));
    }

    public static /* synthetic */ EnterTransition p(FiniteAnimationSpec finiteAnimationSpec, Alignment.Horizontal horizontal, boolean z6, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.i(0.0f, 400.0f, IntSize.b(VisibilityThresholdsKt.f(IntSize.Companion)), 1, null);
        }
        if ((i10 & 2) != 0) {
            horizontal = Alignment.Companion.j();
        }
        if ((i10 & 4) != 0) {
            z6 = true;
        }
        if ((i10 & 8) != 0) {
            lVar = EnterExitTransitionKt$expandHorizontally$1.INSTANCE;
        }
        return o(finiteAnimationSpec, horizontal, z6, lVar);
    }

    @Stable
    @NotNull
    public static final EnterTransition q(@NotNull FiniteAnimationSpec<IntSize> animationSpec, @NotNull Alignment expandFrom, boolean z6, @NotNull l<? super IntSize, IntSize> initialSize) {
        t.j(animationSpec, "animationSpec");
        t.j(expandFrom, "expandFrom");
        t.j(initialSize, "initialSize");
        return new EnterTransitionImpl(new TransitionData(null, null, new ChangeSize(expandFrom, initialSize, animationSpec, z6), null, 11, null));
    }

    public static /* synthetic */ EnterTransition r(FiniteAnimationSpec finiteAnimationSpec, Alignment alignment, boolean z6, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.i(0.0f, 400.0f, IntSize.b(VisibilityThresholdsKt.f(IntSize.Companion)), 1, null);
        }
        if ((i10 & 2) != 0) {
            alignment = Alignment.Companion.c();
        }
        if ((i10 & 4) != 0) {
            z6 = true;
        }
        if ((i10 & 8) != 0) {
            lVar = EnterExitTransitionKt$expandIn$1.INSTANCE;
        }
        return q(finiteAnimationSpec, alignment, z6, lVar);
    }

    @Stable
    @NotNull
    public static final EnterTransition s(@NotNull FiniteAnimationSpec<IntSize> animationSpec, @NotNull Alignment.Vertical expandFrom, boolean z6, @NotNull l<? super Integer, Integer> initialHeight) {
        t.j(animationSpec, "animationSpec");
        t.j(expandFrom, "expandFrom");
        t.j(initialHeight, "initialHeight");
        return q(animationSpec, J(expandFrom), z6, new EnterExitTransitionKt$expandVertically$2(initialHeight));
    }

    public static /* synthetic */ EnterTransition t(FiniteAnimationSpec finiteAnimationSpec, Alignment.Vertical vertical, boolean z6, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.i(0.0f, 400.0f, IntSize.b(VisibilityThresholdsKt.f(IntSize.Companion)), 1, null);
        }
        if ((i10 & 2) != 0) {
            vertical = Alignment.Companion.a();
        }
        if ((i10 & 4) != 0) {
            z6 = true;
        }
        if ((i10 & 8) != 0) {
            lVar = EnterExitTransitionKt$expandVertically$1.INSTANCE;
        }
        return s(finiteAnimationSpec, vertical, z6, lVar);
    }

    @Stable
    @NotNull
    public static final EnterTransition u(@NotNull FiniteAnimationSpec<Float> animationSpec, float f) {
        t.j(animationSpec, "animationSpec");
        return new EnterTransitionImpl(new TransitionData(new Fade(f, animationSpec), null, null, null, 14, null));
    }

    public static /* synthetic */ EnterTransition v(FiniteAnimationSpec finiteAnimationSpec, float f, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.i(0.0f, 400.0f, null, 5, null);
        }
        if ((i10 & 2) != 0) {
            f = 0.0f;
        }
        return u(finiteAnimationSpec, f);
    }

    @Stable
    @NotNull
    public static final ExitTransition w(@NotNull FiniteAnimationSpec<Float> animationSpec, float f) {
        t.j(animationSpec, "animationSpec");
        return new ExitTransitionImpl(new TransitionData(new Fade(f, animationSpec), null, null, null, 14, null));
    }

    public static /* synthetic */ ExitTransition x(FiniteAnimationSpec finiteAnimationSpec, float f, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.i(0.0f, 400.0f, null, 5, null);
        }
        if ((i10 & 2) != 0) {
            f = 0.0f;
        }
        return w(finiteAnimationSpec, f);
    }

    @Stable
    @ExperimentalAnimationApi
    @NotNull
    public static final EnterTransition y(@NotNull FiniteAnimationSpec<Float> animationSpec, float f, long j6) {
        t.j(animationSpec, "animationSpec");
        return new EnterTransitionImpl(new TransitionData(null, null, null, new Scale(f, j6, animationSpec, null), 7, null));
    }

    public static /* synthetic */ EnterTransition z(FiniteAnimationSpec finiteAnimationSpec, float f, long j6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.i(0.0f, 400.0f, null, 5, null);
        }
        if ((i10 & 2) != 0) {
            f = 0.0f;
        }
        if ((i10 & 4) != 0) {
            j6 = TransformOrigin.Companion.a();
        }
        return y(finiteAnimationSpec, f, j6);
    }

    private static final boolean h(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float i(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long j(State<TransformOrigin> state) {
        return state.getValue().j();
    }

    private static final void k(MutableState<Boolean> mutableState, boolean z6) {
        mutableState.setValue(Boolean.valueOf(z6));
    }

    private static final boolean l(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void m(MutableState<Boolean> mutableState, boolean z6) {
        mutableState.setValue(Boolean.valueOf(z6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float n(State<Float> state) {
        return state.getValue().floatValue();
    }
}
