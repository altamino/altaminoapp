package androidx.compose.material;

import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.HoverableKt;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.ProgressSemanticsKt;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.gestures.a;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.ripple.RippleKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ShadowKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.profileinstaller.ProfileVerifier;
import e8.l;
import e8.p;
import e8.q;
import j8.e;
import j8.n;
import j8.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.v;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.b;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.l0;
import w7.u;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
public final class SliderKt {

    @NotNull
    private static final Modifier DefaultSliderConstraints;
    private static final float SliderHeight;
    private static final float SliderMinWidth;

    @NotNull
    private static final TweenSpec<Float> SliderToTickAnimation;
    private static final float ThumbRadius = Dp.f(10);
    private static final float ThumbRippleRadius = Dp.f(24);
    private static final float ThumbDefaultElevation = Dp.f(1);
    private static final float ThumbPressedElevation = Dp.f(6);
    private static final float TrackHeight = Dp.f(4);

    /* JADX INFO: Access modifiers changed from: private */
    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r14v0 ??, still in use, count: 1, list:
          (r14v0 ?? I:java.lang.Object) from 0x00c0: INVOKE (r11v0 ?? I:androidx.compose.runtime.Composer), (r14v0 ?? I:java.lang.Object) INTERFACE call: androidx.compose.runtime.Composer.z(java.lang.Object):void A[MD:(java.lang.Object):void (m)] (LINE:195)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:75)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:42)
        */
    @androidx.compose.runtime.Composable
    public static final void a(
    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r14v0 ??, still in use, count: 1, list:
          (r14v0 ?? I:java.lang.Object) from 0x00c0: INVOKE (r11v0 ?? I:androidx.compose.runtime.Composer), (r14v0 ?? I:java.lang.Object) INTERFACE call: androidx.compose.runtime.Composer.z(java.lang.Object):void A[MD:(java.lang.Object):void (m)] (LINE:195)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:75)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r15v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:215)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:150)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:415)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:299)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object w(DraggableState draggableState, float f, float f6, float f7, d<? super l0> dVar) {
        Object objA = a.a(draggableState, null, new SliderKt$animateToTarget$2(f, f6, f7, null), dVar, 1, null);
        return objA == kotlin.coroutines.intrinsics.d.e() ? objA : l0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float y(float f, float f6, float f7) {
        float f10 = f6 - f;
        return o.m(f10 == 0.0f ? 0.0f : (f7 - f) / f10, 0.0f, 1.0f);
    }

    public static final float z() {
        return ThumbRadius;
    }

    static {
        float f = Dp.f(48);
        SliderHeight = f;
        float f6 = Dp.f(144);
        SliderMinWidth = f6;
        DefaultSliderConstraints = SizeKt.q(SizeKt.F(Modifier.Companion, f6, 0.0f, 2, null), 0.0f, f, 1, null);
        SliderToTickAnimation = new TweenSpec<>(100, 0, null, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier A(Modifier modifier, MutableInteractionSource mutableInteractionSource, MutableInteractionSource mutableInteractionSource2, State<Float> state, State<Float> state2, boolean z6, boolean z10, float f, e<Float> eVar, State<? extends l<? super Boolean, l0>> state3, State<? extends p<? super Boolean, ? super Float, l0>> state4) {
        return z6 ? SuspendingPointerInputFilterKt.d(modifier, new Object[]{mutableInteractionSource, mutableInteractionSource2, Float.valueOf(f), Boolean.valueOf(z10), eVar}, new SliderKt$rangeSliderPressDragModifier$1(mutableInteractionSource, mutableInteractionSource2, state, state2, state4, z10, f, state3, null)) : modifier;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float F(float f, List<Float> list, float f6, float f7) {
        Object obj;
        Iterator<T> it = list.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                float fAbs = Math.abs(MathHelpersKt.a(f6, f7, ((Number) next).floatValue()) - f);
                do {
                    Object next2 = it.next();
                    float fAbs2 = Math.abs(MathHelpersKt.a(f6, f7, ((Number) next2).floatValue()) - f);
                    if (Float.compare(fAbs, fAbs2) > 0) {
                        next = next2;
                        fAbs = fAbs2;
                    }
                } while (it.hasNext());
            }
            obj = next;
        } else {
            obj = null;
        }
        Float f10 = (Float) obj;
        return f10 != null ? MathHelpersKt.a(f6, f7, f10.floatValue()) : f;
    }

    private static final List<Float> G(int i10) {
        if (i10 == 0) {
            return v.m();
        }
        int i11 = i10 + 2;
        ArrayList arrayList = new ArrayList(i11);
        for (int i12 = 0; i12 < i11; i12++) {
            arrayList.add(Float.valueOf(i12 / (i10 + 1)));
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:106:0x0149 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:107:0x014b  */
    /* JADX WARN: Code duplicated, block: B:108:0x014e  */
    /* JADX WARN: Code duplicated, block: B:110:0x0151  */
    /* JADX WARN: Code duplicated, block: B:113:0x0156  */
    /* JADX WARN: Code duplicated, block: B:115:0x0162  */
    /* JADX WARN: Code duplicated, block: B:117:0x0166  */
    /* JADX WARN: Code duplicated, block: B:118:0x0168  */
    /* JADX WARN: Code duplicated, block: B:121:0x016e  */
    /* JADX WARN: Code duplicated, block: B:123:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:126:0x01be  */
    /* JADX WARN: Code duplicated, block: B:129:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:132:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:134:0x0203  */
    /* JADX WARN: Code duplicated, block: B:136:0x0209  */
    /* JADX WARN: Code duplicated, block: B:141:0x027f  */
    /* JADX WARN: Code duplicated, block: B:143:0x0291  */
    /* JADX WARN: Code duplicated, block: B:145:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0069  */
    /* JADX WARN: Code duplicated, block: B:38:0x006e  */
    /* JADX WARN: Code duplicated, block: B:40:0x0072  */
    /* JADX WARN: Code duplicated, block: B:42:0x007a  */
    /* JADX WARN: Code duplicated, block: B:43:0x007d  */
    /* JADX WARN: Code duplicated, block: B:47:0x0086  */
    /* JADX WARN: Code duplicated, block: B:49:0x008a  */
    /* JADX WARN: Code duplicated, block: B:51:0x0092  */
    /* JADX WARN: Code duplicated, block: B:52:0x0095  */
    /* JADX WARN: Code duplicated, block: B:55:0x009b  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:69:0x00be  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:72:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:84:0x00ef A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:87:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:90:0x0102  */
    /* JADX WARN: Code duplicated, block: B:94:0x0117  */
    /* JADX WARN: Code duplicated, block: B:96:0x0122  */
    @ComposableTarget
    @Composable
    @ExperimentalMaterialApi
    public static final void b(@NotNull e<Float> values, @NotNull l<? super e<Float>, l0> onValueChange, @Nullable Modifier modifier, boolean z6, @Nullable e<Float> eVar, int i10, @Nullable e8.a<l0> aVar, @Nullable SliderColors sliderColors, @Nullable Composer composer, int i11, int i12) {
        int i13;
        Modifier modifier2;
        int i14;
        boolean z10;
        int i15;
        e<Float> eVarB;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        Modifier modifier3;
        e8.a<l0> aVar2;
        SliderColors sliderColorsA;
        boolean z11;
        e<Float> eVar2;
        int i21;
        int i22;
        Object objH;
        Composer.Companion companion;
        MutableInteractionSource mutableInteractionSource;
        Object objH2;
        MutableInteractionSource mutableInteractionSource2;
        boolean zK;
        Object objH3;
        Composer composer2;
        Modifier modifier4;
        boolean z12;
        e<Float> eVar3;
        int i23;
        e8.a<l0> aVar3;
        SliderColors sliderColors2;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(values, "values");
        t.j(onValueChange, "onValueChange");
        Composer composerS = composer.s(-1556183027);
        if ((i12 & 1) != 0) {
            i13 = i11 | 6;
        } else if ((i11 & 14) == 0) {
            i13 = (composerS.k(values) ? 4 : 2) | i11;
        } else {
            i13 = i11;
        }
        if ((i12 & 2) != 0) {
            i13 |= 48;
        } else if ((i11 & 112) == 0) {
            i13 |= composerS.k(onValueChange) ? 32 : 16;
        }
        int i24 = i12 & 4;
        if (i24 == 0) {
            if ((i11 & 896) == 0) {
                modifier2 = modifier;
                i13 |= composerS.k(modifier2) ? 256 : 128;
            }
            i14 = i12 & 8;
            if (i14 != 0) {
                if ((i11 & 7168) == 0) {
                    z10 = z6;
                    if (composerS.m(z10)) {
                        i15 = 2048;
                    } else {
                        i15 = 1024;
                    }
                    i13 |= i15;
                }
                if ((57344 & i11) == 0) {
                    if ((i12 & 16) == 0) {
                        eVarB = eVar;
                        int i25 = composerS.k(eVarB) ? 16384 : 8192;
                        i13 |= i25;
                    } else {
                        eVarB = eVar;
                    }
                    i13 |= i25;
                } else {
                    eVarB = eVar;
                }
                i16 = i12 & 32;
                if (i16 != 0) {
                    if ((458752 & i11) == 0) {
                        i17 = i10;
                        if (composerS.p(i17)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i13 |= i18;
                    }
                    i19 = i12 & 64;
                    if (i19 != 0) {
                        i13 |= 1572864;
                    } else if ((i11 & 3670016) == 0) {
                        if (composerS.k(aVar)) {
                            i20 = 1048576;
                        } else {
                            i20 = 524288;
                        }
                        i13 |= i20;
                    }
                    if ((i11 & 29360128) != 0) {
                        i13 |= ((i12 & 128) == 0 || !composerS.k(sliderColors)) ? 4194304 : 8388608;
                    }
                    if ((i13 & 23967451) == 4793490 || !composerS.b()) {
                        composerS.J();
                        if ((i11 & 1) != 0 || composerS.h()) {
                            if (i24 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i14 != 0) {
                                z10 = true;
                            }
                            if ((i12 & 16) != 0) {
                                i13 &= -57345;
                                eVarB = n.b(0.0f, 1.0f);
                            }
                            if (i16 != 0) {
                                i17 = 0;
                            }
                            if (i19 != 0) {
                                aVar2 = null;
                            } else {
                                aVar2 = aVar;
                            }
                            if ((i12 & 128) != 0) {
                                i13 &= -29360129;
                                sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            } else {
                                sliderColorsA = sliderColors;
                            }
                            z11 = z10;
                            eVar2 = eVarB;
                            i21 = i17;
                            i22 = i13;
                        } else {
                            composerS.g();
                            if ((i12 & 16) != 0) {
                                i13 &= -57345;
                            }
                            if ((i12 & 128) != 0) {
                                i13 &= -29360129;
                            }
                            aVar2 = aVar;
                            sliderColorsA = sliderColors;
                            i22 = i13;
                            modifier3 = modifier2;
                            z11 = z10;
                            eVar2 = eVarB;
                            i21 = i17;
                        }
                        composerS.A();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource = (MutableInteractionSource) objH;
                        composerS.G(-492369756);
                        objH2 = composerS.H();
                        if (objH2 == companion.a()) {
                            objH2 = InteractionSourceKt.a();
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH2;
                        if (i21 < 0) {
                            throw new IllegalArgumentException("steps should be >= 0".toString());
                        }
                        State stateN = SnapshotStateKt.n(onValueChange, composerS, (i22 >> 3) & 14);
                        Integer numValueOf = Integer.valueOf(i21);
                        composerS.G(1157296644);
                        zK = composerS.k(numValueOf);
                        objH3 = composerS.H();
                        if (zK || objH3 == companion.a()) {
                            objH3 = G(i21);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        Modifier modifierB = TouchTargetKt.b(modifier3);
                        float f = ThumbRadius;
                        composer2 = composerS;
                        BoxWithConstraintsKt.a(SizeKt.w(modifierB, Dp.f(4 * f), Dp.f(f * 2), 0.0f, 0.0f, 12, null), null, false, ComposableLambdaKt.b(composer2, 652589923, true, new SliderKt$RangeSlider$2(eVar2, values, i22, stateN, mutableInteractionSource, mutableInteractionSource2, z11, (List) objH3, i21, sliderColorsA, aVar2)), composer2, 3072, 6);
                        modifier4 = modifier3;
                        z12 = z11;
                        eVar3 = eVar2;
                        i23 = i21;
                        aVar3 = aVar2;
                        sliderColors2 = sliderColorsA;
                    } else {
                        composerS.g();
                        sliderColors2 = sliderColors;
                        modifier4 = modifier2;
                        z12 = z10;
                        eVar3 = eVarB;
                        i23 = i17;
                        composer2 = composerS;
                        aVar3 = aVar;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new SliderKt$RangeSlider$3(values, onValueChange, modifier4, z12, eVar3, i23, aVar3, sliderColors2, i11, i12));
                }
                i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i17 = i10;
                i19 = i12 & 64;
                if (i19 != 0) {
                    i13 |= 1572864;
                } else if ((i11 & 3670016) == 0) {
                    if (composerS.k(aVar)) {
                        i20 = 1048576;
                    } else {
                        i20 = 524288;
                    }
                    i13 |= i20;
                }
                if ((i11 & 29360128) != 0) {
                    i13 |= ((i12 & 128) == 0 || !composerS.k(sliderColors)) ? 4194304 : 8388608;
                }
                if ((i13 & 23967451) == 4793490) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            i13 &= -57345;
                            eVarB = n.b(0.0f, 1.0f);
                        }
                        if (i16 != 0) {
                            i17 = 0;
                        }
                        if (i19 != 0) {
                            aVar2 = null;
                        } else {
                            aVar2 = aVar;
                        }
                        if ((i12 & 128) != 0) {
                            i13 &= -29360129;
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            sliderColorsA = sliderColors;
                        }
                        z11 = z10;
                        eVar2 = eVarB;
                        i21 = i17;
                        i22 = i13;
                    } else {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            i13 &= -57345;
                            eVarB = n.b(0.0f, 1.0f);
                        }
                        if (i16 != 0) {
                            i17 = 0;
                        }
                        if (i19 != 0) {
                            aVar2 = null;
                        } else {
                            aVar2 = aVar;
                        }
                        if ((i12 & 128) != 0) {
                            i13 &= -29360129;
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            sliderColorsA = sliderColors;
                        }
                        z11 = z10;
                        eVar2 = eVarB;
                        i21 = i17;
                        i22 = i13;
                    }
                    composerS.A();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource = (MutableInteractionSource) objH;
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = InteractionSourceKt.a();
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH2;
                    if (i21 < 0) {
                        throw new IllegalArgumentException("steps should be >= 0".toString());
                    }
                    State stateN2 = SnapshotStateKt.n(onValueChange, composerS, (i22 >> 3) & 14);
                    Integer numValueOf2 = Integer.valueOf(i21);
                    composerS.G(1157296644);
                    zK = composerS.k(numValueOf2);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = G(i21);
                        composerS.z(objH3);
                    } else {
                        objH3 = G(i21);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    Modifier modifierB2 = TouchTargetKt.b(modifier3);
                    float f6 = ThumbRadius;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(SizeKt.w(modifierB2, Dp.f(4 * f6), Dp.f(f6 * 2), 0.0f, 0.0f, 12, null), null, false, ComposableLambdaKt.b(composer2, 652589923, true, new SliderKt$RangeSlider$2(eVar2, values, i22, stateN2, mutableInteractionSource, mutableInteractionSource2, z11, (List) objH3, i21, sliderColorsA, aVar2)), composer2, 3072, 6);
                    modifier4 = modifier3;
                    z12 = z11;
                    eVar3 = eVar2;
                    i23 = i21;
                    aVar3 = aVar2;
                    sliderColors2 = sliderColorsA;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            i13 &= -57345;
                            eVarB = n.b(0.0f, 1.0f);
                        }
                        if (i16 != 0) {
                            i17 = 0;
                        }
                        if (i19 != 0) {
                            aVar2 = null;
                        } else {
                            aVar2 = aVar;
                        }
                        if ((i12 & 128) != 0) {
                            i13 &= -29360129;
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            sliderColorsA = sliderColors;
                        }
                        z11 = z10;
                        eVar2 = eVarB;
                        i21 = i17;
                        i22 = i13;
                    } else {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            i13 &= -57345;
                            eVarB = n.b(0.0f, 1.0f);
                        }
                        if (i16 != 0) {
                            i17 = 0;
                        }
                        if (i19 != 0) {
                            aVar2 = null;
                        } else {
                            aVar2 = aVar;
                        }
                        if ((i12 & 128) != 0) {
                            i13 &= -29360129;
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            sliderColorsA = sliderColors;
                        }
                        z11 = z10;
                        eVar2 = eVarB;
                        i21 = i17;
                        i22 = i13;
                    }
                    composerS.A();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource = (MutableInteractionSource) objH;
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = InteractionSourceKt.a();
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH2;
                    if (i21 < 0) {
                        throw new IllegalArgumentException("steps should be >= 0".toString());
                    }
                    State stateN3 = SnapshotStateKt.n(onValueChange, composerS, (i22 >> 3) & 14);
                    Integer numValueOf3 = Integer.valueOf(i21);
                    composerS.G(1157296644);
                    zK = composerS.k(numValueOf3);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = G(i21);
                        composerS.z(objH3);
                    } else {
                        objH3 = G(i21);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    Modifier modifierB3 = TouchTargetKt.b(modifier3);
                    float f7 = ThumbRadius;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(SizeKt.w(modifierB3, Dp.f(4 * f7), Dp.f(f7 * 2), 0.0f, 0.0f, 12, null), null, false, ComposableLambdaKt.b(composer2, 652589923, true, new SliderKt$RangeSlider$2(eVar2, values, i22, stateN3, mutableInteractionSource, mutableInteractionSource2, z11, (List) objH3, i21, sliderColorsA, aVar2)), composer2, 3072, 6);
                    modifier4 = modifier3;
                    z12 = z11;
                    eVar3 = eVar2;
                    i23 = i21;
                    aVar3 = aVar2;
                    sliderColors2 = sliderColorsA;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new SliderKt$RangeSlider$3(values, onValueChange, modifier4, z12, eVar3, i23, aVar3, sliderColors2, i11, i12));
            }
            i13 |= 3072;
            z10 = z6;
            if ((57344 & i11) == 0) {
                if ((i12 & 16) == 0) {
                    eVarB = eVar;
                    if (composerS.k(eVarB)) {
                    }
                    i13 |= i25;
                } else {
                    eVarB = eVar;
                }
                i13 |= i25;
            } else {
                eVarB = eVar;
            }
            i16 = i12 & 32;
            if (i16 != 0) {
                if ((458752 & i11) == 0) {
                    i17 = i10;
                    if (composerS.p(i17)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i13 |= i18;
                }
                i19 = i12 & 64;
                if (i19 != 0) {
                    i13 |= 1572864;
                } else if ((i11 & 3670016) == 0) {
                    if (composerS.k(aVar)) {
                        i20 = 1048576;
                    } else {
                        i20 = 524288;
                    }
                    i13 |= i20;
                }
                if ((i11 & 29360128) != 0) {
                    i13 |= ((i12 & 128) == 0 || !composerS.k(sliderColors)) ? 4194304 : 8388608;
                }
                if ((i13 & 23967451) == 4793490) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            i13 &= -57345;
                            eVarB = n.b(0.0f, 1.0f);
                        }
                        if (i16 != 0) {
                            i17 = 0;
                        }
                        if (i19 != 0) {
                            aVar2 = null;
                        } else {
                            aVar2 = aVar;
                        }
                        if ((i12 & 128) != 0) {
                            i13 &= -29360129;
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            sliderColorsA = sliderColors;
                        }
                        z11 = z10;
                        eVar2 = eVarB;
                        i21 = i17;
                        i22 = i13;
                    } else {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            i13 &= -57345;
                            eVarB = n.b(0.0f, 1.0f);
                        }
                        if (i16 != 0) {
                            i17 = 0;
                        }
                        if (i19 != 0) {
                            aVar2 = null;
                        } else {
                            aVar2 = aVar;
                        }
                        if ((i12 & 128) != 0) {
                            i13 &= -29360129;
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            sliderColorsA = sliderColors;
                        }
                        z11 = z10;
                        eVar2 = eVarB;
                        i21 = i17;
                        i22 = i13;
                    }
                    composerS.A();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource = (MutableInteractionSource) objH;
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = InteractionSourceKt.a();
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH2;
                    if (i21 < 0) {
                        throw new IllegalArgumentException("steps should be >= 0".toString());
                    }
                    State stateN4 = SnapshotStateKt.n(onValueChange, composerS, (i22 >> 3) & 14);
                    Integer numValueOf4 = Integer.valueOf(i21);
                    composerS.G(1157296644);
                    zK = composerS.k(numValueOf4);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = G(i21);
                        composerS.z(objH3);
                    } else {
                        objH3 = G(i21);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    Modifier modifierB4 = TouchTargetKt.b(modifier3);
                    float f10 = ThumbRadius;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(SizeKt.w(modifierB4, Dp.f(4 * f10), Dp.f(f10 * 2), 0.0f, 0.0f, 12, null), null, false, ComposableLambdaKt.b(composer2, 652589923, true, new SliderKt$RangeSlider$2(eVar2, values, i22, stateN4, mutableInteractionSource, mutableInteractionSource2, z11, (List) objH3, i21, sliderColorsA, aVar2)), composer2, 3072, 6);
                    modifier4 = modifier3;
                    z12 = z11;
                    eVar3 = eVar2;
                    i23 = i21;
                    aVar3 = aVar2;
                    sliderColors2 = sliderColorsA;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            i13 &= -57345;
                            eVarB = n.b(0.0f, 1.0f);
                        }
                        if (i16 != 0) {
                            i17 = 0;
                        }
                        if (i19 != 0) {
                            aVar2 = null;
                        } else {
                            aVar2 = aVar;
                        }
                        if ((i12 & 128) != 0) {
                            i13 &= -29360129;
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            sliderColorsA = sliderColors;
                        }
                        z11 = z10;
                        eVar2 = eVarB;
                        i21 = i17;
                        i22 = i13;
                    } else {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            i13 &= -57345;
                            eVarB = n.b(0.0f, 1.0f);
                        }
                        if (i16 != 0) {
                            i17 = 0;
                        }
                        if (i19 != 0) {
                            aVar2 = null;
                        } else {
                            aVar2 = aVar;
                        }
                        if ((i12 & 128) != 0) {
                            i13 &= -29360129;
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            sliderColorsA = sliderColors;
                        }
                        z11 = z10;
                        eVar2 = eVarB;
                        i21 = i17;
                        i22 = i13;
                    }
                    composerS.A();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource = (MutableInteractionSource) objH;
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = InteractionSourceKt.a();
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH2;
                    if (i21 < 0) {
                        throw new IllegalArgumentException("steps should be >= 0".toString());
                    }
                    State stateN5 = SnapshotStateKt.n(onValueChange, composerS, (i22 >> 3) & 14);
                    Integer numValueOf5 = Integer.valueOf(i21);
                    composerS.G(1157296644);
                    zK = composerS.k(numValueOf5);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = G(i21);
                        composerS.z(objH3);
                    } else {
                        objH3 = G(i21);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    Modifier modifierB5 = TouchTargetKt.b(modifier3);
                    float f11 = ThumbRadius;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(SizeKt.w(modifierB5, Dp.f(4 * f11), Dp.f(f11 * 2), 0.0f, 0.0f, 12, null), null, false, ComposableLambdaKt.b(composer2, 652589923, true, new SliderKt$RangeSlider$2(eVar2, values, i22, stateN5, mutableInteractionSource, mutableInteractionSource2, z11, (List) objH3, i21, sliderColorsA, aVar2)), composer2, 3072, 6);
                    modifier4 = modifier3;
                    z12 = z11;
                    eVar3 = eVar2;
                    i23 = i21;
                    aVar3 = aVar2;
                    sliderColors2 = sliderColorsA;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new SliderKt$RangeSlider$3(values, onValueChange, modifier4, z12, eVar3, i23, aVar3, sliderColors2, i11, i12));
            }
            i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i17 = i10;
            i19 = i12 & 64;
            if (i19 != 0) {
                i13 |= 1572864;
            } else if ((i11 & 3670016) == 0) {
                if (composerS.k(aVar)) {
                    i20 = 1048576;
                } else {
                    i20 = 524288;
                }
                i13 |= i20;
            }
            if ((i11 & 29360128) != 0) {
                i13 |= ((i12 & 128) == 0 || !composerS.k(sliderColors)) ? 4194304 : 8388608;
            }
            if ((i13 & 23967451) == 4793490) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        i13 &= -57345;
                        eVarB = n.b(0.0f, 1.0f);
                    }
                    if (i16 != 0) {
                        i17 = 0;
                    }
                    if (i19 != 0) {
                        aVar2 = null;
                    } else {
                        aVar2 = aVar;
                    }
                    if ((i12 & 128) != 0) {
                        i13 &= -29360129;
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        sliderColorsA = sliderColors;
                    }
                    z11 = z10;
                    eVar2 = eVarB;
                    i21 = i17;
                    i22 = i13;
                } else {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        i13 &= -57345;
                        eVarB = n.b(0.0f, 1.0f);
                    }
                    if (i16 != 0) {
                        i17 = 0;
                    }
                    if (i19 != 0) {
                        aVar2 = null;
                    } else {
                        aVar2 = aVar;
                    }
                    if ((i12 & 128) != 0) {
                        i13 &= -29360129;
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        sliderColorsA = sliderColors;
                    }
                    z11 = z10;
                    eVar2 = eVarB;
                    i21 = i17;
                    i22 = i13;
                }
                composerS.A();
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = InteractionSourceKt.a();
                    composerS.z(objH);
                }
                composerS.Q();
                mutableInteractionSource = (MutableInteractionSource) objH;
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = InteractionSourceKt.a();
                    composerS.z(objH2);
                }
                composerS.Q();
                mutableInteractionSource2 = (MutableInteractionSource) objH2;
                if (i21 < 0) {
                    throw new IllegalArgumentException("steps should be >= 0".toString());
                }
                State stateN6 = SnapshotStateKt.n(onValueChange, composerS, (i22 >> 3) & 14);
                Integer numValueOf6 = Integer.valueOf(i21);
                composerS.G(1157296644);
                zK = composerS.k(numValueOf6);
                objH3 = composerS.H();
                if (zK) {
                    objH3 = G(i21);
                    composerS.z(objH3);
                } else {
                    objH3 = G(i21);
                    composerS.z(objH3);
                }
                composerS.Q();
                Modifier modifierB6 = TouchTargetKt.b(modifier3);
                float f12 = ThumbRadius;
                composer2 = composerS;
                BoxWithConstraintsKt.a(SizeKt.w(modifierB6, Dp.f(4 * f12), Dp.f(f12 * 2), 0.0f, 0.0f, 12, null), null, false, ComposableLambdaKt.b(composer2, 652589923, true, new SliderKt$RangeSlider$2(eVar2, values, i22, stateN6, mutableInteractionSource, mutableInteractionSource2, z11, (List) objH3, i21, sliderColorsA, aVar2)), composer2, 3072, 6);
                modifier4 = modifier3;
                z12 = z11;
                eVar3 = eVar2;
                i23 = i21;
                aVar3 = aVar2;
                sliderColors2 = sliderColorsA;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        i13 &= -57345;
                        eVarB = n.b(0.0f, 1.0f);
                    }
                    if (i16 != 0) {
                        i17 = 0;
                    }
                    if (i19 != 0) {
                        aVar2 = null;
                    } else {
                        aVar2 = aVar;
                    }
                    if ((i12 & 128) != 0) {
                        i13 &= -29360129;
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        sliderColorsA = sliderColors;
                    }
                    z11 = z10;
                    eVar2 = eVarB;
                    i21 = i17;
                    i22 = i13;
                } else {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        i13 &= -57345;
                        eVarB = n.b(0.0f, 1.0f);
                    }
                    if (i16 != 0) {
                        i17 = 0;
                    }
                    if (i19 != 0) {
                        aVar2 = null;
                    } else {
                        aVar2 = aVar;
                    }
                    if ((i12 & 128) != 0) {
                        i13 &= -29360129;
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        sliderColorsA = sliderColors;
                    }
                    z11 = z10;
                    eVar2 = eVarB;
                    i21 = i17;
                    i22 = i13;
                }
                composerS.A();
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = InteractionSourceKt.a();
                    composerS.z(objH);
                }
                composerS.Q();
                mutableInteractionSource = (MutableInteractionSource) objH;
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = InteractionSourceKt.a();
                    composerS.z(objH2);
                }
                composerS.Q();
                mutableInteractionSource2 = (MutableInteractionSource) objH2;
                if (i21 < 0) {
                    throw new IllegalArgumentException("steps should be >= 0".toString());
                }
                State stateN7 = SnapshotStateKt.n(onValueChange, composerS, (i22 >> 3) & 14);
                Integer numValueOf7 = Integer.valueOf(i21);
                composerS.G(1157296644);
                zK = composerS.k(numValueOf7);
                objH3 = composerS.H();
                if (zK) {
                    objH3 = G(i21);
                    composerS.z(objH3);
                } else {
                    objH3 = G(i21);
                    composerS.z(objH3);
                }
                composerS.Q();
                Modifier modifierB7 = TouchTargetKt.b(modifier3);
                float f13 = ThumbRadius;
                composer2 = composerS;
                BoxWithConstraintsKt.a(SizeKt.w(modifierB7, Dp.f(4 * f13), Dp.f(f13 * 2), 0.0f, 0.0f, 12, null), null, false, ComposableLambdaKt.b(composer2, 652589923, true, new SliderKt$RangeSlider$2(eVar2, values, i22, stateN7, mutableInteractionSource, mutableInteractionSource2, z11, (List) objH3, i21, sliderColorsA, aVar2)), composer2, 3072, 6);
                modifier4 = modifier3;
                z12 = z11;
                eVar3 = eVar2;
                i23 = i21;
                aVar3 = aVar2;
                sliderColors2 = sliderColorsA;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new SliderKt$RangeSlider$3(values, onValueChange, modifier4, z12, eVar3, i23, aVar3, sliderColors2, i11, i12));
        }
        i13 |= 384;
        modifier2 = modifier;
        i14 = i12 & 8;
        if (i14 != 0) {
            if ((i11 & 7168) == 0) {
                z10 = z6;
                if (composerS.m(z10)) {
                    i15 = 2048;
                } else {
                    i15 = 1024;
                }
                i13 |= i15;
            }
            if ((57344 & i11) == 0) {
                if ((i12 & 16) == 0) {
                    eVarB = eVar;
                    if (composerS.k(eVarB)) {
                    }
                    i13 |= i25;
                } else {
                    eVarB = eVar;
                }
                i13 |= i25;
            } else {
                eVarB = eVar;
            }
            i16 = i12 & 32;
            if (i16 != 0) {
                if ((458752 & i11) == 0) {
                    i17 = i10;
                    if (composerS.p(i17)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i13 |= i18;
                }
                i19 = i12 & 64;
                if (i19 != 0) {
                    i13 |= 1572864;
                } else if ((i11 & 3670016) == 0) {
                    if (composerS.k(aVar)) {
                        i20 = 1048576;
                    } else {
                        i20 = 524288;
                    }
                    i13 |= i20;
                }
                if ((i11 & 29360128) != 0) {
                    i13 |= ((i12 & 128) == 0 || !composerS.k(sliderColors)) ? 4194304 : 8388608;
                }
                if ((i13 & 23967451) == 4793490) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            i13 &= -57345;
                            eVarB = n.b(0.0f, 1.0f);
                        }
                        if (i16 != 0) {
                            i17 = 0;
                        }
                        if (i19 != 0) {
                            aVar2 = null;
                        } else {
                            aVar2 = aVar;
                        }
                        if ((i12 & 128) != 0) {
                            i13 &= -29360129;
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            sliderColorsA = sliderColors;
                        }
                        z11 = z10;
                        eVar2 = eVarB;
                        i21 = i17;
                        i22 = i13;
                    } else {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            i13 &= -57345;
                            eVarB = n.b(0.0f, 1.0f);
                        }
                        if (i16 != 0) {
                            i17 = 0;
                        }
                        if (i19 != 0) {
                            aVar2 = null;
                        } else {
                            aVar2 = aVar;
                        }
                        if ((i12 & 128) != 0) {
                            i13 &= -29360129;
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            sliderColorsA = sliderColors;
                        }
                        z11 = z10;
                        eVar2 = eVarB;
                        i21 = i17;
                        i22 = i13;
                    }
                    composerS.A();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource = (MutableInteractionSource) objH;
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = InteractionSourceKt.a();
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH2;
                    if (i21 < 0) {
                        throw new IllegalArgumentException("steps should be >= 0".toString());
                    }
                    State stateN8 = SnapshotStateKt.n(onValueChange, composerS, (i22 >> 3) & 14);
                    Integer numValueOf8 = Integer.valueOf(i21);
                    composerS.G(1157296644);
                    zK = composerS.k(numValueOf8);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = G(i21);
                        composerS.z(objH3);
                    } else {
                        objH3 = G(i21);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    Modifier modifierB8 = TouchTargetKt.b(modifier3);
                    float f14 = ThumbRadius;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(SizeKt.w(modifierB8, Dp.f(4 * f14), Dp.f(f14 * 2), 0.0f, 0.0f, 12, null), null, false, ComposableLambdaKt.b(composer2, 652589923, true, new SliderKt$RangeSlider$2(eVar2, values, i22, stateN8, mutableInteractionSource, mutableInteractionSource2, z11, (List) objH3, i21, sliderColorsA, aVar2)), composer2, 3072, 6);
                    modifier4 = modifier3;
                    z12 = z11;
                    eVar3 = eVar2;
                    i23 = i21;
                    aVar3 = aVar2;
                    sliderColors2 = sliderColorsA;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            i13 &= -57345;
                            eVarB = n.b(0.0f, 1.0f);
                        }
                        if (i16 != 0) {
                            i17 = 0;
                        }
                        if (i19 != 0) {
                            aVar2 = null;
                        } else {
                            aVar2 = aVar;
                        }
                        if ((i12 & 128) != 0) {
                            i13 &= -29360129;
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            sliderColorsA = sliderColors;
                        }
                        z11 = z10;
                        eVar2 = eVarB;
                        i21 = i17;
                        i22 = i13;
                    } else {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            i13 &= -57345;
                            eVarB = n.b(0.0f, 1.0f);
                        }
                        if (i16 != 0) {
                            i17 = 0;
                        }
                        if (i19 != 0) {
                            aVar2 = null;
                        } else {
                            aVar2 = aVar;
                        }
                        if ((i12 & 128) != 0) {
                            i13 &= -29360129;
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            sliderColorsA = sliderColors;
                        }
                        z11 = z10;
                        eVar2 = eVarB;
                        i21 = i17;
                        i22 = i13;
                    }
                    composerS.A();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource = (MutableInteractionSource) objH;
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = InteractionSourceKt.a();
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH2;
                    if (i21 < 0) {
                        throw new IllegalArgumentException("steps should be >= 0".toString());
                    }
                    State stateN9 = SnapshotStateKt.n(onValueChange, composerS, (i22 >> 3) & 14);
                    Integer numValueOf9 = Integer.valueOf(i21);
                    composerS.G(1157296644);
                    zK = composerS.k(numValueOf9);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = G(i21);
                        composerS.z(objH3);
                    } else {
                        objH3 = G(i21);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    Modifier modifierB9 = TouchTargetKt.b(modifier3);
                    float f15 = ThumbRadius;
                    composer2 = composerS;
                    BoxWithConstraintsKt.a(SizeKt.w(modifierB9, Dp.f(4 * f15), Dp.f(f15 * 2), 0.0f, 0.0f, 12, null), null, false, ComposableLambdaKt.b(composer2, 652589923, true, new SliderKt$RangeSlider$2(eVar2, values, i22, stateN9, mutableInteractionSource, mutableInteractionSource2, z11, (List) objH3, i21, sliderColorsA, aVar2)), composer2, 3072, 6);
                    modifier4 = modifier3;
                    z12 = z11;
                    eVar3 = eVar2;
                    i23 = i21;
                    aVar3 = aVar2;
                    sliderColors2 = sliderColorsA;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new SliderKt$RangeSlider$3(values, onValueChange, modifier4, z12, eVar3, i23, aVar3, sliderColors2, i11, i12));
            }
            i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i17 = i10;
            i19 = i12 & 64;
            if (i19 != 0) {
                i13 |= 1572864;
            } else if ((i11 & 3670016) == 0) {
                if (composerS.k(aVar)) {
                    i20 = 1048576;
                } else {
                    i20 = 524288;
                }
                i13 |= i20;
            }
            if ((i11 & 29360128) != 0) {
                i13 |= ((i12 & 128) == 0 || !composerS.k(sliderColors)) ? 4194304 : 8388608;
            }
            if ((i13 & 23967451) == 4793490) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        i13 &= -57345;
                        eVarB = n.b(0.0f, 1.0f);
                    }
                    if (i16 != 0) {
                        i17 = 0;
                    }
                    if (i19 != 0) {
                        aVar2 = null;
                    } else {
                        aVar2 = aVar;
                    }
                    if ((i12 & 128) != 0) {
                        i13 &= -29360129;
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        sliderColorsA = sliderColors;
                    }
                    z11 = z10;
                    eVar2 = eVarB;
                    i21 = i17;
                    i22 = i13;
                } else {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        i13 &= -57345;
                        eVarB = n.b(0.0f, 1.0f);
                    }
                    if (i16 != 0) {
                        i17 = 0;
                    }
                    if (i19 != 0) {
                        aVar2 = null;
                    } else {
                        aVar2 = aVar;
                    }
                    if ((i12 & 128) != 0) {
                        i13 &= -29360129;
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        sliderColorsA = sliderColors;
                    }
                    z11 = z10;
                    eVar2 = eVarB;
                    i21 = i17;
                    i22 = i13;
                }
                composerS.A();
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = InteractionSourceKt.a();
                    composerS.z(objH);
                }
                composerS.Q();
                mutableInteractionSource = (MutableInteractionSource) objH;
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = InteractionSourceKt.a();
                    composerS.z(objH2);
                }
                composerS.Q();
                mutableInteractionSource2 = (MutableInteractionSource) objH2;
                if (i21 < 0) {
                    throw new IllegalArgumentException("steps should be >= 0".toString());
                }
                State stateN10 = SnapshotStateKt.n(onValueChange, composerS, (i22 >> 3) & 14);
                Integer numValueOf10 = Integer.valueOf(i21);
                composerS.G(1157296644);
                zK = composerS.k(numValueOf10);
                objH3 = composerS.H();
                if (zK) {
                    objH3 = G(i21);
                    composerS.z(objH3);
                } else {
                    objH3 = G(i21);
                    composerS.z(objH3);
                }
                composerS.Q();
                Modifier modifierB10 = TouchTargetKt.b(modifier3);
                float f16 = ThumbRadius;
                composer2 = composerS;
                BoxWithConstraintsKt.a(SizeKt.w(modifierB10, Dp.f(4 * f16), Dp.f(f16 * 2), 0.0f, 0.0f, 12, null), null, false, ComposableLambdaKt.b(composer2, 652589923, true, new SliderKt$RangeSlider$2(eVar2, values, i22, stateN10, mutableInteractionSource, mutableInteractionSource2, z11, (List) objH3, i21, sliderColorsA, aVar2)), composer2, 3072, 6);
                modifier4 = modifier3;
                z12 = z11;
                eVar3 = eVar2;
                i23 = i21;
                aVar3 = aVar2;
                sliderColors2 = sliderColorsA;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        i13 &= -57345;
                        eVarB = n.b(0.0f, 1.0f);
                    }
                    if (i16 != 0) {
                        i17 = 0;
                    }
                    if (i19 != 0) {
                        aVar2 = null;
                    } else {
                        aVar2 = aVar;
                    }
                    if ((i12 & 128) != 0) {
                        i13 &= -29360129;
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        sliderColorsA = sliderColors;
                    }
                    z11 = z10;
                    eVar2 = eVarB;
                    i21 = i17;
                    i22 = i13;
                } else {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        i13 &= -57345;
                        eVarB = n.b(0.0f, 1.0f);
                    }
                    if (i16 != 0) {
                        i17 = 0;
                    }
                    if (i19 != 0) {
                        aVar2 = null;
                    } else {
                        aVar2 = aVar;
                    }
                    if ((i12 & 128) != 0) {
                        i13 &= -29360129;
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        sliderColorsA = sliderColors;
                    }
                    z11 = z10;
                    eVar2 = eVarB;
                    i21 = i17;
                    i22 = i13;
                }
                composerS.A();
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = InteractionSourceKt.a();
                    composerS.z(objH);
                }
                composerS.Q();
                mutableInteractionSource = (MutableInteractionSource) objH;
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = InteractionSourceKt.a();
                    composerS.z(objH2);
                }
                composerS.Q();
                mutableInteractionSource2 = (MutableInteractionSource) objH2;
                if (i21 < 0) {
                    throw new IllegalArgumentException("steps should be >= 0".toString());
                }
                State stateN11 = SnapshotStateKt.n(onValueChange, composerS, (i22 >> 3) & 14);
                Integer numValueOf11 = Integer.valueOf(i21);
                composerS.G(1157296644);
                zK = composerS.k(numValueOf11);
                objH3 = composerS.H();
                if (zK) {
                    objH3 = G(i21);
                    composerS.z(objH3);
                } else {
                    objH3 = G(i21);
                    composerS.z(objH3);
                }
                composerS.Q();
                Modifier modifierB11 = TouchTargetKt.b(modifier3);
                float f17 = ThumbRadius;
                composer2 = composerS;
                BoxWithConstraintsKt.a(SizeKt.w(modifierB11, Dp.f(4 * f17), Dp.f(f17 * 2), 0.0f, 0.0f, 12, null), null, false, ComposableLambdaKt.b(composer2, 652589923, true, new SliderKt$RangeSlider$2(eVar2, values, i22, stateN11, mutableInteractionSource, mutableInteractionSource2, z11, (List) objH3, i21, sliderColorsA, aVar2)), composer2, 3072, 6);
                modifier4 = modifier3;
                z12 = z11;
                eVar3 = eVar2;
                i23 = i21;
                aVar3 = aVar2;
                sliderColors2 = sliderColorsA;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new SliderKt$RangeSlider$3(values, onValueChange, modifier4, z12, eVar3, i23, aVar3, sliderColors2, i11, i12));
        }
        i13 |= 3072;
        z10 = z6;
        if ((57344 & i11) == 0) {
            if ((i12 & 16) == 0) {
                eVarB = eVar;
                if (composerS.k(eVarB)) {
                }
                i13 |= i25;
            } else {
                eVarB = eVar;
            }
            i13 |= i25;
        } else {
            eVarB = eVar;
        }
        i16 = i12 & 32;
        if (i16 != 0) {
            if ((458752 & i11) == 0) {
                i17 = i10;
                if (composerS.p(i17)) {
                    i18 = 131072;
                } else {
                    i18 = 65536;
                }
                i13 |= i18;
            }
            i19 = i12 & 64;
            if (i19 != 0) {
                i13 |= 1572864;
            } else if ((i11 & 3670016) == 0) {
                if (composerS.k(aVar)) {
                    i20 = 1048576;
                } else {
                    i20 = 524288;
                }
                i13 |= i20;
            }
            if ((i11 & 29360128) != 0) {
                i13 |= ((i12 & 128) == 0 || !composerS.k(sliderColors)) ? 4194304 : 8388608;
            }
            if ((i13 & 23967451) == 4793490) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        i13 &= -57345;
                        eVarB = n.b(0.0f, 1.0f);
                    }
                    if (i16 != 0) {
                        i17 = 0;
                    }
                    if (i19 != 0) {
                        aVar2 = null;
                    } else {
                        aVar2 = aVar;
                    }
                    if ((i12 & 128) != 0) {
                        i13 &= -29360129;
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        sliderColorsA = sliderColors;
                    }
                    z11 = z10;
                    eVar2 = eVarB;
                    i21 = i17;
                    i22 = i13;
                } else {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        i13 &= -57345;
                        eVarB = n.b(0.0f, 1.0f);
                    }
                    if (i16 != 0) {
                        i17 = 0;
                    }
                    if (i19 != 0) {
                        aVar2 = null;
                    } else {
                        aVar2 = aVar;
                    }
                    if ((i12 & 128) != 0) {
                        i13 &= -29360129;
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        sliderColorsA = sliderColors;
                    }
                    z11 = z10;
                    eVar2 = eVarB;
                    i21 = i17;
                    i22 = i13;
                }
                composerS.A();
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = InteractionSourceKt.a();
                    composerS.z(objH);
                }
                composerS.Q();
                mutableInteractionSource = (MutableInteractionSource) objH;
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = InteractionSourceKt.a();
                    composerS.z(objH2);
                }
                composerS.Q();
                mutableInteractionSource2 = (MutableInteractionSource) objH2;
                if (i21 < 0) {
                    throw new IllegalArgumentException("steps should be >= 0".toString());
                }
                State stateN12 = SnapshotStateKt.n(onValueChange, composerS, (i22 >> 3) & 14);
                Integer numValueOf12 = Integer.valueOf(i21);
                composerS.G(1157296644);
                zK = composerS.k(numValueOf12);
                objH3 = composerS.H();
                if (zK) {
                    objH3 = G(i21);
                    composerS.z(objH3);
                } else {
                    objH3 = G(i21);
                    composerS.z(objH3);
                }
                composerS.Q();
                Modifier modifierB12 = TouchTargetKt.b(modifier3);
                float f18 = ThumbRadius;
                composer2 = composerS;
                BoxWithConstraintsKt.a(SizeKt.w(modifierB12, Dp.f(4 * f18), Dp.f(f18 * 2), 0.0f, 0.0f, 12, null), null, false, ComposableLambdaKt.b(composer2, 652589923, true, new SliderKt$RangeSlider$2(eVar2, values, i22, stateN12, mutableInteractionSource, mutableInteractionSource2, z11, (List) objH3, i21, sliderColorsA, aVar2)), composer2, 3072, 6);
                modifier4 = modifier3;
                z12 = z11;
                eVar3 = eVar2;
                i23 = i21;
                aVar3 = aVar2;
                sliderColors2 = sliderColorsA;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        i13 &= -57345;
                        eVarB = n.b(0.0f, 1.0f);
                    }
                    if (i16 != 0) {
                        i17 = 0;
                    }
                    if (i19 != 0) {
                        aVar2 = null;
                    } else {
                        aVar2 = aVar;
                    }
                    if ((i12 & 128) != 0) {
                        i13 &= -29360129;
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        sliderColorsA = sliderColors;
                    }
                    z11 = z10;
                    eVar2 = eVarB;
                    i21 = i17;
                    i22 = i13;
                } else {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        i13 &= -57345;
                        eVarB = n.b(0.0f, 1.0f);
                    }
                    if (i16 != 0) {
                        i17 = 0;
                    }
                    if (i19 != 0) {
                        aVar2 = null;
                    } else {
                        aVar2 = aVar;
                    }
                    if ((i12 & 128) != 0) {
                        i13 &= -29360129;
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        sliderColorsA = sliderColors;
                    }
                    z11 = z10;
                    eVar2 = eVarB;
                    i21 = i17;
                    i22 = i13;
                }
                composerS.A();
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = InteractionSourceKt.a();
                    composerS.z(objH);
                }
                composerS.Q();
                mutableInteractionSource = (MutableInteractionSource) objH;
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = InteractionSourceKt.a();
                    composerS.z(objH2);
                }
                composerS.Q();
                mutableInteractionSource2 = (MutableInteractionSource) objH2;
                if (i21 < 0) {
                    throw new IllegalArgumentException("steps should be >= 0".toString());
                }
                State stateN13 = SnapshotStateKt.n(onValueChange, composerS, (i22 >> 3) & 14);
                Integer numValueOf13 = Integer.valueOf(i21);
                composerS.G(1157296644);
                zK = composerS.k(numValueOf13);
                objH3 = composerS.H();
                if (zK) {
                    objH3 = G(i21);
                    composerS.z(objH3);
                } else {
                    objH3 = G(i21);
                    composerS.z(objH3);
                }
                composerS.Q();
                Modifier modifierB13 = TouchTargetKt.b(modifier3);
                float f19 = ThumbRadius;
                composer2 = composerS;
                BoxWithConstraintsKt.a(SizeKt.w(modifierB13, Dp.f(4 * f19), Dp.f(f19 * 2), 0.0f, 0.0f, 12, null), null, false, ComposableLambdaKt.b(composer2, 652589923, true, new SliderKt$RangeSlider$2(eVar2, values, i22, stateN13, mutableInteractionSource, mutableInteractionSource2, z11, (List) objH3, i21, sliderColorsA, aVar2)), composer2, 3072, 6);
                modifier4 = modifier3;
                z12 = z11;
                eVar3 = eVar2;
                i23 = i21;
                aVar3 = aVar2;
                sliderColors2 = sliderColorsA;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new SliderKt$RangeSlider$3(values, onValueChange, modifier4, z12, eVar3, i23, aVar3, sliderColors2, i11, i12));
        }
        i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i17 = i10;
        i19 = i12 & 64;
        if (i19 != 0) {
            i13 |= 1572864;
        } else if ((i11 & 3670016) == 0) {
            if (composerS.k(aVar)) {
                i20 = 1048576;
            } else {
                i20 = 524288;
            }
            i13 |= i20;
        }
        if ((i11 & 29360128) != 0) {
            i13 |= ((i12 & 128) == 0 || !composerS.k(sliderColors)) ? 4194304 : 8388608;
        }
        if ((i13 & 23967451) == 4793490) {
            composerS.J();
            if ((i11 & 1) != 0) {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i14 != 0) {
                    z10 = true;
                }
                if ((i12 & 16) != 0) {
                    i13 &= -57345;
                    eVarB = n.b(0.0f, 1.0f);
                }
                if (i16 != 0) {
                    i17 = 0;
                }
                if (i19 != 0) {
                    aVar2 = null;
                } else {
                    aVar2 = aVar;
                }
                if ((i12 & 128) != 0) {
                    i13 &= -29360129;
                    sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                } else {
                    sliderColorsA = sliderColors;
                }
                z11 = z10;
                eVar2 = eVarB;
                i21 = i17;
                i22 = i13;
            } else {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i14 != 0) {
                    z10 = true;
                }
                if ((i12 & 16) != 0) {
                    i13 &= -57345;
                    eVarB = n.b(0.0f, 1.0f);
                }
                if (i16 != 0) {
                    i17 = 0;
                }
                if (i19 != 0) {
                    aVar2 = null;
                } else {
                    aVar2 = aVar;
                }
                if ((i12 & 128) != 0) {
                    i13 &= -29360129;
                    sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                } else {
                    sliderColorsA = sliderColors;
                }
                z11 = z10;
                eVar2 = eVarB;
                i21 = i17;
                i22 = i13;
            }
            composerS.A();
            composerS.G(-492369756);
            objH = composerS.H();
            companion = Composer.Companion;
            if (objH == companion.a()) {
                objH = InteractionSourceKt.a();
                composerS.z(objH);
            }
            composerS.Q();
            mutableInteractionSource = (MutableInteractionSource) objH;
            composerS.G(-492369756);
            objH2 = composerS.H();
            if (objH2 == companion.a()) {
                objH2 = InteractionSourceKt.a();
                composerS.z(objH2);
            }
            composerS.Q();
            mutableInteractionSource2 = (MutableInteractionSource) objH2;
            if (i21 < 0) {
                throw new IllegalArgumentException("steps should be >= 0".toString());
            }
            State stateN14 = SnapshotStateKt.n(onValueChange, composerS, (i22 >> 3) & 14);
            Integer numValueOf14 = Integer.valueOf(i21);
            composerS.G(1157296644);
            zK = composerS.k(numValueOf14);
            objH3 = composerS.H();
            if (zK) {
                objH3 = G(i21);
                composerS.z(objH3);
            } else {
                objH3 = G(i21);
                composerS.z(objH3);
            }
            composerS.Q();
            Modifier modifierB14 = TouchTargetKt.b(modifier3);
            float f110 = ThumbRadius;
            composer2 = composerS;
            BoxWithConstraintsKt.a(SizeKt.w(modifierB14, Dp.f(4 * f110), Dp.f(f110 * 2), 0.0f, 0.0f, 12, null), null, false, ComposableLambdaKt.b(composer2, 652589923, true, new SliderKt$RangeSlider$2(eVar2, values, i22, stateN14, mutableInteractionSource, mutableInteractionSource2, z11, (List) objH3, i21, sliderColorsA, aVar2)), composer2, 3072, 6);
            modifier4 = modifier3;
            z12 = z11;
            eVar3 = eVar2;
            i23 = i21;
            aVar3 = aVar2;
            sliderColors2 = sliderColorsA;
        } else {
            composerS.J();
            if ((i11 & 1) != 0) {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i14 != 0) {
                    z10 = true;
                }
                if ((i12 & 16) != 0) {
                    i13 &= -57345;
                    eVarB = n.b(0.0f, 1.0f);
                }
                if (i16 != 0) {
                    i17 = 0;
                }
                if (i19 != 0) {
                    aVar2 = null;
                } else {
                    aVar2 = aVar;
                }
                if ((i12 & 128) != 0) {
                    i13 &= -29360129;
                    sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                } else {
                    sliderColorsA = sliderColors;
                }
                z11 = z10;
                eVar2 = eVarB;
                i21 = i17;
                i22 = i13;
            } else {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i14 != 0) {
                    z10 = true;
                }
                if ((i12 & 16) != 0) {
                    i13 &= -57345;
                    eVarB = n.b(0.0f, 1.0f);
                }
                if (i16 != 0) {
                    i17 = 0;
                }
                if (i19 != 0) {
                    aVar2 = null;
                } else {
                    aVar2 = aVar;
                }
                if ((i12 & 128) != 0) {
                    i13 &= -29360129;
                    sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                } else {
                    sliderColorsA = sliderColors;
                }
                z11 = z10;
                eVar2 = eVarB;
                i21 = i17;
                i22 = i13;
            }
            composerS.A();
            composerS.G(-492369756);
            objH = composerS.H();
            companion = Composer.Companion;
            if (objH == companion.a()) {
                objH = InteractionSourceKt.a();
                composerS.z(objH);
            }
            composerS.Q();
            mutableInteractionSource = (MutableInteractionSource) objH;
            composerS.G(-492369756);
            objH2 = composerS.H();
            if (objH2 == companion.a()) {
                objH2 = InteractionSourceKt.a();
                composerS.z(objH2);
            }
            composerS.Q();
            mutableInteractionSource2 = (MutableInteractionSource) objH2;
            if (i21 < 0) {
                throw new IllegalArgumentException("steps should be >= 0".toString());
            }
            State stateN15 = SnapshotStateKt.n(onValueChange, composerS, (i22 >> 3) & 14);
            Integer numValueOf15 = Integer.valueOf(i21);
            composerS.G(1157296644);
            zK = composerS.k(numValueOf15);
            objH3 = composerS.H();
            if (zK) {
                objH3 = G(i21);
                composerS.z(objH3);
            } else {
                objH3 = G(i21);
                composerS.z(objH3);
            }
            composerS.Q();
            Modifier modifierB15 = TouchTargetKt.b(modifier3);
            float f111 = ThumbRadius;
            composer2 = composerS;
            BoxWithConstraintsKt.a(SizeKt.w(modifierB15, Dp.f(4 * f111), Dp.f(f111 * 2), 0.0f, 0.0f, 12, null), null, false, ComposableLambdaKt.b(composer2, 652589923, true, new SliderKt$RangeSlider$2(eVar2, values, i22, stateN15, mutableInteractionSource, mutableInteractionSource2, z11, (List) objH3, i21, sliderColorsA, aVar2)), composer2, 3072, 6);
            modifier4 = modifier3;
            z12 = z11;
            eVar3 = eVar2;
            i23 = i21;
            aVar3 = aVar2;
            sliderColors2 = sliderColorsA;
        }
        scopeUpdateScopeU = composer2.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new SliderKt$RangeSlider$3(values, onValueChange, modifier4, z12, eVar3, i23, aVar3, sliderColors2, i11, i12));
    }

    /* JADX WARN: Code duplicated, block: B:101:0x011f  */
    /* JADX WARN: Code duplicated, block: B:105:0x0135  */
    /* JADX WARN: Code duplicated, block: B:107:0x0143  */
    /* JADX WARN: Code duplicated, block: B:118:0x0173 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:119:0x0175  */
    /* JADX WARN: Code duplicated, block: B:120:0x0178  */
    /* JADX WARN: Code duplicated, block: B:122:0x017c  */
    /* JADX WARN: Code duplicated, block: B:125:0x0181  */
    /* JADX WARN: Code duplicated, block: B:126:0x018b  */
    /* JADX WARN: Code duplicated, block: B:128:0x018e  */
    /* JADX WARN: Code duplicated, block: B:129:0x0190  */
    /* JADX WARN: Code duplicated, block: B:131:0x0193  */
    /* JADX WARN: Code duplicated, block: B:132:0x0195  */
    /* JADX WARN: Code duplicated, block: B:134:0x0199  */
    /* JADX WARN: Code duplicated, block: B:136:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:138:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:141:0x01be  */
    /* JADX WARN: Code duplicated, block: B:142:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:145:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:147:0x0209  */
    /* JADX WARN: Code duplicated, block: B:149:0x0211  */
    /* JADX WARN: Code duplicated, block: B:154:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:156:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:158:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0068  */
    /* JADX WARN: Code duplicated, block: B:38:0x006d  */
    /* JADX WARN: Code duplicated, block: B:40:0x0071  */
    /* JADX WARN: Code duplicated, block: B:42:0x0079  */
    /* JADX WARN: Code duplicated, block: B:43:0x007c  */
    /* JADX WARN: Code duplicated, block: B:47:0x0085  */
    /* JADX WARN: Code duplicated, block: B:49:0x0089  */
    /* JADX WARN: Code duplicated, block: B:51:0x0091  */
    /* JADX WARN: Code duplicated, block: B:52:0x0094  */
    /* JADX WARN: Code duplicated, block: B:55:0x009a  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:80:0x00db  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:83:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:90:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:92:0x0101  */
    /* JADX WARN: Code duplicated, block: B:95:0x010c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:98:0x0113  */
    @ComposableTarget
    @Composable
    public static final void d(float f, @NotNull l<? super Float, l0> onValueChange, @Nullable Modifier modifier, boolean z6, @Nullable e<Float> eVar, int i10, @Nullable e8.a<l0> aVar, @Nullable MutableInteractionSource mutableInteractionSource, @Nullable SliderColors sliderColors, @Nullable Composer composer, int i11, int i12) {
        int i13;
        int i14;
        boolean z10;
        int i15;
        e<Float> eVar2;
        int i16;
        int i17;
        int i18;
        int i19;
        e8.a<l0> aVar2;
        int i20;
        int i21;
        int i22;
        Modifier modifier2;
        e<Float> eVarB;
        int i23;
        e8.a<l0> aVar3;
        MutableInteractionSource mutableInteractionSource2;
        int i24;
        SliderColors sliderColorsA;
        Object objH;
        boolean zK;
        Object objH2;
        int i25;
        e8.a<l0> aVar4;
        SliderColors sliderColors2;
        boolean z11;
        MutableInteractionSource mutableInteractionSource3;
        Modifier modifier3;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(onValueChange, "onValueChange");
        Composer composerS = composer.s(-1962335196);
        if ((i12 & 1) != 0) {
            i13 = i11 | 6;
        } else if ((i11 & 14) == 0) {
            i13 = (composerS.n(f) ? 4 : 2) | i11;
        } else {
            i13 = i11;
        }
        if ((i12 & 2) != 0) {
            i13 |= 48;
        } else if ((i11 & 112) == 0) {
            i13 |= composerS.k(onValueChange) ? 32 : 16;
        }
        int i26 = i12 & 4;
        if (i26 == 0) {
            if ((i11 & 896) == 0) {
                i13 |= composerS.k(modifier) ? 256 : 128;
            }
            i14 = i12 & 8;
            if (i14 != 0) {
                if ((i11 & 7168) == 0) {
                    z10 = z6;
                    if (composerS.m(z10)) {
                        i15 = 2048;
                    } else {
                        i15 = 1024;
                    }
                    i13 |= i15;
                }
                if ((57344 & i11) == 0) {
                    if ((i12 & 16) == 0) {
                        eVar2 = eVar;
                        int i27 = composerS.k(eVar2) ? 16384 : 8192;
                        i13 |= i27;
                    } else {
                        eVar2 = eVar;
                    }
                    i13 |= i27;
                } else {
                    eVar2 = eVar;
                }
                i16 = i12 & 32;
                if (i16 != 0) {
                    if ((458752 & i11) == 0) {
                        i17 = i10;
                        if (composerS.p(i17)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i13 |= i18;
                    }
                    i19 = i12 & 64;
                    if (i19 != 0) {
                        if ((3670016 & i11) == 0) {
                            aVar2 = aVar;
                            if (composerS.k(aVar2)) {
                                i20 = 1048576;
                            } else {
                                i20 = 524288;
                            }
                            i13 |= i20;
                        }
                        i21 = i12 & 128;
                        if (i21 != 0) {
                            i13 |= 12582912;
                        } else if ((i11 & 29360128) == 0) {
                            if (composerS.k(mutableInteractionSource)) {
                                i22 = 8388608;
                            } else {
                                i22 = 4194304;
                            }
                            i13 |= i22;
                        }
                        if ((i11 & 234881024) != 0) {
                            i13 |= ((i12 & 256) == 0 || !composerS.k(sliderColors)) ? 33554432 : 67108864;
                        }
                        if ((i13 & 191739611) == 38347922 || !composerS.b()) {
                            composerS.J();
                            if ((i11 & 1) != 0 || composerS.h()) {
                                if (i26 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i14 != 0) {
                                    z10 = true;
                                }
                                if ((i12 & 16) != 0) {
                                    eVarB = n.b(0.0f, 1.0f);
                                    i13 &= -57345;
                                } else {
                                    eVarB = eVar2;
                                }
                                if (i16 != 0) {
                                    i23 = 0;
                                } else {
                                    i23 = i17;
                                }
                                if (i19 != 0) {
                                    aVar3 = null;
                                } else {
                                    aVar3 = aVar;
                                }
                                if (i21 != 0) {
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
                                if ((i12 & 256) != 0) {
                                    i24 = i13 & (-234881025);
                                    sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                                } else {
                                    i24 = i13;
                                    sliderColorsA = sliderColors;
                                }
                            } else {
                                composerS.g();
                                if ((i12 & 16) != 0) {
                                    i13 &= -57345;
                                }
                                if ((i12 & 256) != 0) {
                                    int i28 = i13 & (-234881025);
                                    mutableInteractionSource2 = mutableInteractionSource;
                                    sliderColorsA = sliderColors;
                                    i24 = i28;
                                    eVarB = eVar2;
                                    i23 = i17;
                                    modifier2 = modifier;
                                    aVar3 = aVar;
                                } else {
                                    modifier2 = modifier;
                                    mutableInteractionSource2 = mutableInteractionSource;
                                    i24 = i13;
                                    eVarB = eVar2;
                                    i23 = i17;
                                    aVar3 = aVar;
                                    sliderColorsA = sliderColors;
                                }
                            }
                            composerS.A();
                            if (i23 < 0) {
                                throw new IllegalArgumentException("steps should be >= 0".toString());
                            }
                            State stateN = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                            Integer numValueOf = Integer.valueOf(i23);
                            composerS.G(1157296644);
                            zK = composerS.k(numValueOf);
                            objH2 = composerS.H();
                            if (zK || objH2 == Composer.Companion.a()) {
                                objH2 = G(i23);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            List list = (List) objH2;
                            Modifier modifierB = TouchTargetKt.b(modifier2);
                            float f6 = ThumbRadius;
                            float f7 = 2;
                            BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB, Dp.f(f6 * f7), Dp.f(f6 * f7), 0.0f, 0.0f, 12, null), f, list, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list, sliderColorsA, stateN, aVar3)), composerS, 3072, 6);
                            i25 = i23;
                            aVar4 = aVar3;
                            sliderColors2 = sliderColorsA;
                            z11 = z10;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            modifier3 = modifier2;
                        } else {
                            composerS.g();
                            modifier3 = modifier;
                            z11 = z10;
                            eVarB = eVar2;
                            i25 = i17;
                            aVar4 = aVar2;
                            mutableInteractionSource3 = mutableInteractionSource;
                            sliderColors2 = sliderColors;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new SliderKt$Slider$4(f, onValueChange, modifier3, z11, eVarB, i25, aVar4, mutableInteractionSource3, sliderColors2, i11, i12));
                    }
                    i13 |= 1572864;
                    aVar2 = aVar;
                    i21 = i12 & 128;
                    if (i21 != 0) {
                        i13 |= 12582912;
                    } else if ((i11 & 29360128) == 0) {
                        if (composerS.k(mutableInteractionSource)) {
                            i22 = 8388608;
                        } else {
                            i22 = 4194304;
                        }
                        i13 |= i22;
                    }
                    if ((i11 & 234881024) != 0) {
                        i13 |= ((i12 & 256) == 0 || !composerS.k(sliderColors)) ? 33554432 : 67108864;
                    }
                    if ((i13 & 191739611) == 38347922) {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i26 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i14 != 0) {
                                z10 = true;
                            }
                            if ((i12 & 16) != 0) {
                                eVarB = n.b(0.0f, 1.0f);
                                i13 &= -57345;
                            } else {
                                eVarB = eVar2;
                            }
                            if (i16 != 0) {
                                i23 = 0;
                            } else {
                                i23 = i17;
                            }
                            if (i19 != 0) {
                                aVar3 = null;
                            } else {
                                aVar3 = aVar;
                            }
                            if (i21 != 0) {
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
                            if ((i12 & 256) != 0) {
                                i24 = i13 & (-234881025);
                                sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            } else {
                                i24 = i13;
                                sliderColorsA = sliderColors;
                            }
                        } else {
                            if (i26 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i14 != 0) {
                                z10 = true;
                            }
                            if ((i12 & 16) != 0) {
                                eVarB = n.b(0.0f, 1.0f);
                                i13 &= -57345;
                            } else {
                                eVarB = eVar2;
                            }
                            if (i16 != 0) {
                                i23 = 0;
                            } else {
                                i23 = i17;
                            }
                            if (i19 != 0) {
                                aVar3 = null;
                            } else {
                                aVar3 = aVar;
                            }
                            if (i21 != 0) {
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
                            if ((i12 & 256) != 0) {
                                i24 = i13 & (-234881025);
                                sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            } else {
                                i24 = i13;
                                sliderColorsA = sliderColors;
                            }
                        }
                        composerS.A();
                        if (i23 < 0) {
                            throw new IllegalArgumentException("steps should be >= 0".toString());
                        }
                        State stateN2 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                        Integer numValueOf2 = Integer.valueOf(i23);
                        composerS.G(1157296644);
                        zK = composerS.k(numValueOf2);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = G(i23);
                            composerS.z(objH2);
                        } else {
                            objH2 = G(i23);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        List list2 = (List) objH2;
                        Modifier modifierB2 = TouchTargetKt.b(modifier2);
                        float f10 = ThumbRadius;
                        float f11 = 2;
                        BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB2, Dp.f(f10 * f11), Dp.f(f10 * f11), 0.0f, 0.0f, 12, null), f, list2, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list2, sliderColorsA, stateN2, aVar3)), composerS, 3072, 6);
                        i25 = i23;
                        aVar4 = aVar3;
                        sliderColors2 = sliderColorsA;
                        z11 = z10;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier3 = modifier2;
                    } else {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i26 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i14 != 0) {
                                z10 = true;
                            }
                            if ((i12 & 16) != 0) {
                                eVarB = n.b(0.0f, 1.0f);
                                i13 &= -57345;
                            } else {
                                eVarB = eVar2;
                            }
                            if (i16 != 0) {
                                i23 = 0;
                            } else {
                                i23 = i17;
                            }
                            if (i19 != 0) {
                                aVar3 = null;
                            } else {
                                aVar3 = aVar;
                            }
                            if (i21 != 0) {
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
                            if ((i12 & 256) != 0) {
                                i24 = i13 & (-234881025);
                                sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            } else {
                                i24 = i13;
                                sliderColorsA = sliderColors;
                            }
                        } else {
                            if (i26 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i14 != 0) {
                                z10 = true;
                            }
                            if ((i12 & 16) != 0) {
                                eVarB = n.b(0.0f, 1.0f);
                                i13 &= -57345;
                            } else {
                                eVarB = eVar2;
                            }
                            if (i16 != 0) {
                                i23 = 0;
                            } else {
                                i23 = i17;
                            }
                            if (i19 != 0) {
                                aVar3 = null;
                            } else {
                                aVar3 = aVar;
                            }
                            if (i21 != 0) {
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
                            if ((i12 & 256) != 0) {
                                i24 = i13 & (-234881025);
                                sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            } else {
                                i24 = i13;
                                sliderColorsA = sliderColors;
                            }
                        }
                        composerS.A();
                        if (i23 < 0) {
                            throw new IllegalArgumentException("steps should be >= 0".toString());
                        }
                        State stateN3 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                        Integer numValueOf3 = Integer.valueOf(i23);
                        composerS.G(1157296644);
                        zK = composerS.k(numValueOf3);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = G(i23);
                            composerS.z(objH2);
                        } else {
                            objH2 = G(i23);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        List list3 = (List) objH2;
                        Modifier modifierB3 = TouchTargetKt.b(modifier2);
                        float f12 = ThumbRadius;
                        float f13 = 2;
                        BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB3, Dp.f(f12 * f13), Dp.f(f12 * f13), 0.0f, 0.0f, 12, null), f, list3, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list3, sliderColorsA, stateN3, aVar3)), composerS, 3072, 6);
                        i25 = i23;
                        aVar4 = aVar3;
                        sliderColors2 = sliderColorsA;
                        z11 = z10;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier3 = modifier2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new SliderKt$Slider$4(f, onValueChange, modifier3, z11, eVarB, i25, aVar4, mutableInteractionSource3, sliderColors2, i11, i12));
                }
                i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i17 = i10;
                i19 = i12 & 64;
                if (i19 != 0) {
                    if ((3670016 & i11) == 0) {
                        aVar2 = aVar;
                        if (composerS.k(aVar2)) {
                            i20 = 1048576;
                        } else {
                            i20 = 524288;
                        }
                        i13 |= i20;
                    }
                    i21 = i12 & 128;
                    if (i21 != 0) {
                        i13 |= 12582912;
                    } else if ((i11 & 29360128) == 0) {
                        if (composerS.k(mutableInteractionSource)) {
                            i22 = 8388608;
                        } else {
                            i22 = 4194304;
                        }
                        i13 |= i22;
                    }
                    if ((i11 & 234881024) != 0) {
                        i13 |= ((i12 & 256) == 0 || !composerS.k(sliderColors)) ? 33554432 : 67108864;
                    }
                    if ((i13 & 191739611) == 38347922) {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i26 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i14 != 0) {
                                z10 = true;
                            }
                            if ((i12 & 16) != 0) {
                                eVarB = n.b(0.0f, 1.0f);
                                i13 &= -57345;
                            } else {
                                eVarB = eVar2;
                            }
                            if (i16 != 0) {
                                i23 = 0;
                            } else {
                                i23 = i17;
                            }
                            if (i19 != 0) {
                                aVar3 = null;
                            } else {
                                aVar3 = aVar;
                            }
                            if (i21 != 0) {
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
                            if ((i12 & 256) != 0) {
                                i24 = i13 & (-234881025);
                                sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            } else {
                                i24 = i13;
                                sliderColorsA = sliderColors;
                            }
                        } else {
                            if (i26 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i14 != 0) {
                                z10 = true;
                            }
                            if ((i12 & 16) != 0) {
                                eVarB = n.b(0.0f, 1.0f);
                                i13 &= -57345;
                            } else {
                                eVarB = eVar2;
                            }
                            if (i16 != 0) {
                                i23 = 0;
                            } else {
                                i23 = i17;
                            }
                            if (i19 != 0) {
                                aVar3 = null;
                            } else {
                                aVar3 = aVar;
                            }
                            if (i21 != 0) {
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
                            if ((i12 & 256) != 0) {
                                i24 = i13 & (-234881025);
                                sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            } else {
                                i24 = i13;
                                sliderColorsA = sliderColors;
                            }
                        }
                        composerS.A();
                        if (i23 < 0) {
                            throw new IllegalArgumentException("steps should be >= 0".toString());
                        }
                        State stateN4 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                        Integer numValueOf4 = Integer.valueOf(i23);
                        composerS.G(1157296644);
                        zK = composerS.k(numValueOf4);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = G(i23);
                            composerS.z(objH2);
                        } else {
                            objH2 = G(i23);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        List list4 = (List) objH2;
                        Modifier modifierB4 = TouchTargetKt.b(modifier2);
                        float f14 = ThumbRadius;
                        float f15 = 2;
                        BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB4, Dp.f(f14 * f15), Dp.f(f14 * f15), 0.0f, 0.0f, 12, null), f, list4, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list4, sliderColorsA, stateN4, aVar3)), composerS, 3072, 6);
                        i25 = i23;
                        aVar4 = aVar3;
                        sliderColors2 = sliderColorsA;
                        z11 = z10;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier3 = modifier2;
                    } else {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i26 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i14 != 0) {
                                z10 = true;
                            }
                            if ((i12 & 16) != 0) {
                                eVarB = n.b(0.0f, 1.0f);
                                i13 &= -57345;
                            } else {
                                eVarB = eVar2;
                            }
                            if (i16 != 0) {
                                i23 = 0;
                            } else {
                                i23 = i17;
                            }
                            if (i19 != 0) {
                                aVar3 = null;
                            } else {
                                aVar3 = aVar;
                            }
                            if (i21 != 0) {
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
                            if ((i12 & 256) != 0) {
                                i24 = i13 & (-234881025);
                                sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            } else {
                                i24 = i13;
                                sliderColorsA = sliderColors;
                            }
                        } else {
                            if (i26 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i14 != 0) {
                                z10 = true;
                            }
                            if ((i12 & 16) != 0) {
                                eVarB = n.b(0.0f, 1.0f);
                                i13 &= -57345;
                            } else {
                                eVarB = eVar2;
                            }
                            if (i16 != 0) {
                                i23 = 0;
                            } else {
                                i23 = i17;
                            }
                            if (i19 != 0) {
                                aVar3 = null;
                            } else {
                                aVar3 = aVar;
                            }
                            if (i21 != 0) {
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
                            if ((i12 & 256) != 0) {
                                i24 = i13 & (-234881025);
                                sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            } else {
                                i24 = i13;
                                sliderColorsA = sliderColors;
                            }
                        }
                        composerS.A();
                        if (i23 < 0) {
                            throw new IllegalArgumentException("steps should be >= 0".toString());
                        }
                        State stateN5 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                        Integer numValueOf5 = Integer.valueOf(i23);
                        composerS.G(1157296644);
                        zK = composerS.k(numValueOf5);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = G(i23);
                            composerS.z(objH2);
                        } else {
                            objH2 = G(i23);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        List list5 = (List) objH2;
                        Modifier modifierB5 = TouchTargetKt.b(modifier2);
                        float f16 = ThumbRadius;
                        float f17 = 2;
                        BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB5, Dp.f(f16 * f17), Dp.f(f16 * f17), 0.0f, 0.0f, 12, null), f, list5, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list5, sliderColorsA, stateN5, aVar3)), composerS, 3072, 6);
                        i25 = i23;
                        aVar4 = aVar3;
                        sliderColors2 = sliderColorsA;
                        z11 = z10;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier3 = modifier2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new SliderKt$Slider$4(f, onValueChange, modifier3, z11, eVarB, i25, aVar4, mutableInteractionSource3, sliderColors2, i11, i12));
                }
                i13 |= 1572864;
                aVar2 = aVar;
                i21 = i12 & 128;
                if (i21 != 0) {
                    i13 |= 12582912;
                } else if ((i11 & 29360128) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i22 = 8388608;
                    } else {
                        i22 = 4194304;
                    }
                    i13 |= i22;
                }
                if ((i11 & 234881024) != 0) {
                    i13 |= ((i12 & 256) == 0 || !composerS.k(sliderColors)) ? 33554432 : 67108864;
                }
                if ((i13 & 191739611) == 38347922) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    } else {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    }
                    composerS.A();
                    if (i23 < 0) {
                        throw new IllegalArgumentException("steps should be >= 0".toString());
                    }
                    State stateN6 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                    Integer numValueOf6 = Integer.valueOf(i23);
                    composerS.G(1157296644);
                    zK = composerS.k(numValueOf6);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    } else {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    List list6 = (List) objH2;
                    Modifier modifierB6 = TouchTargetKt.b(modifier2);
                    float f18 = ThumbRadius;
                    float f19 = 2;
                    BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB6, Dp.f(f18 * f19), Dp.f(f18 * f19), 0.0f, 0.0f, 12, null), f, list6, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list6, sliderColorsA, stateN6, aVar3)), composerS, 3072, 6);
                    i25 = i23;
                    aVar4 = aVar3;
                    sliderColors2 = sliderColorsA;
                    z11 = z10;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier3 = modifier2;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    } else {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    }
                    composerS.A();
                    if (i23 < 0) {
                        throw new IllegalArgumentException("steps should be >= 0".toString());
                    }
                    State stateN7 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                    Integer numValueOf7 = Integer.valueOf(i23);
                    composerS.G(1157296644);
                    zK = composerS.k(numValueOf7);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    } else {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    List list7 = (List) objH2;
                    Modifier modifierB7 = TouchTargetKt.b(modifier2);
                    float f110 = ThumbRadius;
                    float f111 = 2;
                    BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB7, Dp.f(f110 * f111), Dp.f(f110 * f111), 0.0f, 0.0f, 12, null), f, list7, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list7, sliderColorsA, stateN7, aVar3)), composerS, 3072, 6);
                    i25 = i23;
                    aVar4 = aVar3;
                    sliderColors2 = sliderColorsA;
                    z11 = z10;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier3 = modifier2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new SliderKt$Slider$4(f, onValueChange, modifier3, z11, eVarB, i25, aVar4, mutableInteractionSource3, sliderColors2, i11, i12));
            }
            i13 |= 3072;
            z10 = z6;
            if ((57344 & i11) == 0) {
                if ((i12 & 16) == 0) {
                    eVar2 = eVar;
                    if (composerS.k(eVar2)) {
                    }
                    i13 |= i27;
                } else {
                    eVar2 = eVar;
                }
                i13 |= i27;
            } else {
                eVar2 = eVar;
            }
            i16 = i12 & 32;
            if (i16 != 0) {
                if ((458752 & i11) == 0) {
                    i17 = i10;
                    if (composerS.p(i17)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i13 |= i18;
                }
                i19 = i12 & 64;
                if (i19 != 0) {
                    if ((3670016 & i11) == 0) {
                        aVar2 = aVar;
                        if (composerS.k(aVar2)) {
                            i20 = 1048576;
                        } else {
                            i20 = 524288;
                        }
                        i13 |= i20;
                    }
                    i21 = i12 & 128;
                    if (i21 != 0) {
                        i13 |= 12582912;
                    } else if ((i11 & 29360128) == 0) {
                        if (composerS.k(mutableInteractionSource)) {
                            i22 = 8388608;
                        } else {
                            i22 = 4194304;
                        }
                        i13 |= i22;
                    }
                    if ((i11 & 234881024) != 0) {
                        i13 |= ((i12 & 256) == 0 || !composerS.k(sliderColors)) ? 33554432 : 67108864;
                    }
                    if ((i13 & 191739611) == 38347922) {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i26 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i14 != 0) {
                                z10 = true;
                            }
                            if ((i12 & 16) != 0) {
                                eVarB = n.b(0.0f, 1.0f);
                                i13 &= -57345;
                            } else {
                                eVarB = eVar2;
                            }
                            if (i16 != 0) {
                                i23 = 0;
                            } else {
                                i23 = i17;
                            }
                            if (i19 != 0) {
                                aVar3 = null;
                            } else {
                                aVar3 = aVar;
                            }
                            if (i21 != 0) {
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
                            if ((i12 & 256) != 0) {
                                i24 = i13 & (-234881025);
                                sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            } else {
                                i24 = i13;
                                sliderColorsA = sliderColors;
                            }
                        } else {
                            if (i26 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i14 != 0) {
                                z10 = true;
                            }
                            if ((i12 & 16) != 0) {
                                eVarB = n.b(0.0f, 1.0f);
                                i13 &= -57345;
                            } else {
                                eVarB = eVar2;
                            }
                            if (i16 != 0) {
                                i23 = 0;
                            } else {
                                i23 = i17;
                            }
                            if (i19 != 0) {
                                aVar3 = null;
                            } else {
                                aVar3 = aVar;
                            }
                            if (i21 != 0) {
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
                            if ((i12 & 256) != 0) {
                                i24 = i13 & (-234881025);
                                sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            } else {
                                i24 = i13;
                                sliderColorsA = sliderColors;
                            }
                        }
                        composerS.A();
                        if (i23 < 0) {
                            throw new IllegalArgumentException("steps should be >= 0".toString());
                        }
                        State stateN8 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                        Integer numValueOf8 = Integer.valueOf(i23);
                        composerS.G(1157296644);
                        zK = composerS.k(numValueOf8);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = G(i23);
                            composerS.z(objH2);
                        } else {
                            objH2 = G(i23);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        List list8 = (List) objH2;
                        Modifier modifierB8 = TouchTargetKt.b(modifier2);
                        float f112 = ThumbRadius;
                        float f113 = 2;
                        BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB8, Dp.f(f112 * f113), Dp.f(f112 * f113), 0.0f, 0.0f, 12, null), f, list8, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list8, sliderColorsA, stateN8, aVar3)), composerS, 3072, 6);
                        i25 = i23;
                        aVar4 = aVar3;
                        sliderColors2 = sliderColorsA;
                        z11 = z10;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier3 = modifier2;
                    } else {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i26 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i14 != 0) {
                                z10 = true;
                            }
                            if ((i12 & 16) != 0) {
                                eVarB = n.b(0.0f, 1.0f);
                                i13 &= -57345;
                            } else {
                                eVarB = eVar2;
                            }
                            if (i16 != 0) {
                                i23 = 0;
                            } else {
                                i23 = i17;
                            }
                            if (i19 != 0) {
                                aVar3 = null;
                            } else {
                                aVar3 = aVar;
                            }
                            if (i21 != 0) {
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
                            if ((i12 & 256) != 0) {
                                i24 = i13 & (-234881025);
                                sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            } else {
                                i24 = i13;
                                sliderColorsA = sliderColors;
                            }
                        } else {
                            if (i26 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i14 != 0) {
                                z10 = true;
                            }
                            if ((i12 & 16) != 0) {
                                eVarB = n.b(0.0f, 1.0f);
                                i13 &= -57345;
                            } else {
                                eVarB = eVar2;
                            }
                            if (i16 != 0) {
                                i23 = 0;
                            } else {
                                i23 = i17;
                            }
                            if (i19 != 0) {
                                aVar3 = null;
                            } else {
                                aVar3 = aVar;
                            }
                            if (i21 != 0) {
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
                            if ((i12 & 256) != 0) {
                                i24 = i13 & (-234881025);
                                sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            } else {
                                i24 = i13;
                                sliderColorsA = sliderColors;
                            }
                        }
                        composerS.A();
                        if (i23 < 0) {
                            throw new IllegalArgumentException("steps should be >= 0".toString());
                        }
                        State stateN9 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                        Integer numValueOf9 = Integer.valueOf(i23);
                        composerS.G(1157296644);
                        zK = composerS.k(numValueOf9);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = G(i23);
                            composerS.z(objH2);
                        } else {
                            objH2 = G(i23);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        List list9 = (List) objH2;
                        Modifier modifierB9 = TouchTargetKt.b(modifier2);
                        float f114 = ThumbRadius;
                        float f115 = 2;
                        BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB9, Dp.f(f114 * f115), Dp.f(f114 * f115), 0.0f, 0.0f, 12, null), f, list9, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list9, sliderColorsA, stateN9, aVar3)), composerS, 3072, 6);
                        i25 = i23;
                        aVar4 = aVar3;
                        sliderColors2 = sliderColorsA;
                        z11 = z10;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier3 = modifier2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new SliderKt$Slider$4(f, onValueChange, modifier3, z11, eVarB, i25, aVar4, mutableInteractionSource3, sliderColors2, i11, i12));
                }
                i13 |= 1572864;
                aVar2 = aVar;
                i21 = i12 & 128;
                if (i21 != 0) {
                    i13 |= 12582912;
                } else if ((i11 & 29360128) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i22 = 8388608;
                    } else {
                        i22 = 4194304;
                    }
                    i13 |= i22;
                }
                if ((i11 & 234881024) != 0) {
                    i13 |= ((i12 & 256) == 0 || !composerS.k(sliderColors)) ? 33554432 : 67108864;
                }
                if ((i13 & 191739611) == 38347922) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    } else {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    }
                    composerS.A();
                    if (i23 < 0) {
                        throw new IllegalArgumentException("steps should be >= 0".toString());
                    }
                    State stateN10 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                    Integer numValueOf10 = Integer.valueOf(i23);
                    composerS.G(1157296644);
                    zK = composerS.k(numValueOf10);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    } else {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    List list10 = (List) objH2;
                    Modifier modifierB10 = TouchTargetKt.b(modifier2);
                    float f116 = ThumbRadius;
                    float f117 = 2;
                    BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB10, Dp.f(f116 * f117), Dp.f(f116 * f117), 0.0f, 0.0f, 12, null), f, list10, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list10, sliderColorsA, stateN10, aVar3)), composerS, 3072, 6);
                    i25 = i23;
                    aVar4 = aVar3;
                    sliderColors2 = sliderColorsA;
                    z11 = z10;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier3 = modifier2;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    } else {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    }
                    composerS.A();
                    if (i23 < 0) {
                        throw new IllegalArgumentException("steps should be >= 0".toString());
                    }
                    State stateN11 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                    Integer numValueOf11 = Integer.valueOf(i23);
                    composerS.G(1157296644);
                    zK = composerS.k(numValueOf11);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    } else {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    List list11 = (List) objH2;
                    Modifier modifierB11 = TouchTargetKt.b(modifier2);
                    float f118 = ThumbRadius;
                    float f119 = 2;
                    BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB11, Dp.f(f118 * f119), Dp.f(f118 * f119), 0.0f, 0.0f, 12, null), f, list11, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list11, sliderColorsA, stateN11, aVar3)), composerS, 3072, 6);
                    i25 = i23;
                    aVar4 = aVar3;
                    sliderColors2 = sliderColorsA;
                    z11 = z10;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier3 = modifier2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new SliderKt$Slider$4(f, onValueChange, modifier3, z11, eVarB, i25, aVar4, mutableInteractionSource3, sliderColors2, i11, i12));
            }
            i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i17 = i10;
            i19 = i12 & 64;
            if (i19 != 0) {
                if ((3670016 & i11) == 0) {
                    aVar2 = aVar;
                    if (composerS.k(aVar2)) {
                        i20 = 1048576;
                    } else {
                        i20 = 524288;
                    }
                    i13 |= i20;
                }
                i21 = i12 & 128;
                if (i21 != 0) {
                    i13 |= 12582912;
                } else if ((i11 & 29360128) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i22 = 8388608;
                    } else {
                        i22 = 4194304;
                    }
                    i13 |= i22;
                }
                if ((i11 & 234881024) != 0) {
                    i13 |= ((i12 & 256) == 0 || !composerS.k(sliderColors)) ? 33554432 : 67108864;
                }
                if ((i13 & 191739611) == 38347922) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    } else {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    }
                    composerS.A();
                    if (i23 < 0) {
                        throw new IllegalArgumentException("steps should be >= 0".toString());
                    }
                    State stateN12 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                    Integer numValueOf12 = Integer.valueOf(i23);
                    composerS.G(1157296644);
                    zK = composerS.k(numValueOf12);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    } else {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    List list12 = (List) objH2;
                    Modifier modifierB12 = TouchTargetKt.b(modifier2);
                    float f1110 = ThumbRadius;
                    float f1111 = 2;
                    BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB12, Dp.f(f1110 * f1111), Dp.f(f1110 * f1111), 0.0f, 0.0f, 12, null), f, list12, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list12, sliderColorsA, stateN12, aVar3)), composerS, 3072, 6);
                    i25 = i23;
                    aVar4 = aVar3;
                    sliderColors2 = sliderColorsA;
                    z11 = z10;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier3 = modifier2;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    } else {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    }
                    composerS.A();
                    if (i23 < 0) {
                        throw new IllegalArgumentException("steps should be >= 0".toString());
                    }
                    State stateN13 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                    Integer numValueOf13 = Integer.valueOf(i23);
                    composerS.G(1157296644);
                    zK = composerS.k(numValueOf13);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    } else {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    List list13 = (List) objH2;
                    Modifier modifierB13 = TouchTargetKt.b(modifier2);
                    float f1112 = ThumbRadius;
                    float f1113 = 2;
                    BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB13, Dp.f(f1112 * f1113), Dp.f(f1112 * f1113), 0.0f, 0.0f, 12, null), f, list13, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list13, sliderColorsA, stateN13, aVar3)), composerS, 3072, 6);
                    i25 = i23;
                    aVar4 = aVar3;
                    sliderColors2 = sliderColorsA;
                    z11 = z10;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier3 = modifier2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new SliderKt$Slider$4(f, onValueChange, modifier3, z11, eVarB, i25, aVar4, mutableInteractionSource3, sliderColors2, i11, i12));
            }
            i13 |= 1572864;
            aVar2 = aVar;
            i21 = i12 & 128;
            if (i21 != 0) {
                i13 |= 12582912;
            } else if ((i11 & 29360128) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i22 = 8388608;
                } else {
                    i22 = 4194304;
                }
                i13 |= i22;
            }
            if ((i11 & 234881024) != 0) {
                i13 |= ((i12 & 256) == 0 || !composerS.k(sliderColors)) ? 33554432 : 67108864;
            }
            if ((i13 & 191739611) == 38347922) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i26 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        eVarB = n.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        eVarB = eVar2;
                    }
                    if (i16 != 0) {
                        i23 = 0;
                    } else {
                        i23 = i17;
                    }
                    if (i19 != 0) {
                        aVar3 = null;
                    } else {
                        aVar3 = aVar;
                    }
                    if (i21 != 0) {
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
                    if ((i12 & 256) != 0) {
                        i24 = i13 & (-234881025);
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        i24 = i13;
                        sliderColorsA = sliderColors;
                    }
                } else {
                    if (i26 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        eVarB = n.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        eVarB = eVar2;
                    }
                    if (i16 != 0) {
                        i23 = 0;
                    } else {
                        i23 = i17;
                    }
                    if (i19 != 0) {
                        aVar3 = null;
                    } else {
                        aVar3 = aVar;
                    }
                    if (i21 != 0) {
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
                    if ((i12 & 256) != 0) {
                        i24 = i13 & (-234881025);
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        i24 = i13;
                        sliderColorsA = sliderColors;
                    }
                }
                composerS.A();
                if (i23 < 0) {
                    throw new IllegalArgumentException("steps should be >= 0".toString());
                }
                State stateN14 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                Integer numValueOf14 = Integer.valueOf(i23);
                composerS.G(1157296644);
                zK = composerS.k(numValueOf14);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = G(i23);
                    composerS.z(objH2);
                } else {
                    objH2 = G(i23);
                    composerS.z(objH2);
                }
                composerS.Q();
                List list14 = (List) objH2;
                Modifier modifierB14 = TouchTargetKt.b(modifier2);
                float f1114 = ThumbRadius;
                float f1115 = 2;
                BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB14, Dp.f(f1114 * f1115), Dp.f(f1114 * f1115), 0.0f, 0.0f, 12, null), f, list14, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list14, sliderColorsA, stateN14, aVar3)), composerS, 3072, 6);
                i25 = i23;
                aVar4 = aVar3;
                sliderColors2 = sliderColorsA;
                z11 = z10;
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier3 = modifier2;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i26 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        eVarB = n.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        eVarB = eVar2;
                    }
                    if (i16 != 0) {
                        i23 = 0;
                    } else {
                        i23 = i17;
                    }
                    if (i19 != 0) {
                        aVar3 = null;
                    } else {
                        aVar3 = aVar;
                    }
                    if (i21 != 0) {
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
                    if ((i12 & 256) != 0) {
                        i24 = i13 & (-234881025);
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        i24 = i13;
                        sliderColorsA = sliderColors;
                    }
                } else {
                    if (i26 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        eVarB = n.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        eVarB = eVar2;
                    }
                    if (i16 != 0) {
                        i23 = 0;
                    } else {
                        i23 = i17;
                    }
                    if (i19 != 0) {
                        aVar3 = null;
                    } else {
                        aVar3 = aVar;
                    }
                    if (i21 != 0) {
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
                    if ((i12 & 256) != 0) {
                        i24 = i13 & (-234881025);
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        i24 = i13;
                        sliderColorsA = sliderColors;
                    }
                }
                composerS.A();
                if (i23 < 0) {
                    throw new IllegalArgumentException("steps should be >= 0".toString());
                }
                State stateN15 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                Integer numValueOf15 = Integer.valueOf(i23);
                composerS.G(1157296644);
                zK = composerS.k(numValueOf15);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = G(i23);
                    composerS.z(objH2);
                } else {
                    objH2 = G(i23);
                    composerS.z(objH2);
                }
                composerS.Q();
                List list15 = (List) objH2;
                Modifier modifierB15 = TouchTargetKt.b(modifier2);
                float f1116 = ThumbRadius;
                float f1117 = 2;
                BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB15, Dp.f(f1116 * f1117), Dp.f(f1116 * f1117), 0.0f, 0.0f, 12, null), f, list15, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list15, sliderColorsA, stateN15, aVar3)), composerS, 3072, 6);
                i25 = i23;
                aVar4 = aVar3;
                sliderColors2 = sliderColorsA;
                z11 = z10;
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier3 = modifier2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new SliderKt$Slider$4(f, onValueChange, modifier3, z11, eVarB, i25, aVar4, mutableInteractionSource3, sliderColors2, i11, i12));
        }
        i13 |= 384;
        i14 = i12 & 8;
        if (i14 != 0) {
            if ((i11 & 7168) == 0) {
                z10 = z6;
                if (composerS.m(z10)) {
                    i15 = 2048;
                } else {
                    i15 = 1024;
                }
                i13 |= i15;
            }
            if ((57344 & i11) == 0) {
                if ((i12 & 16) == 0) {
                    eVar2 = eVar;
                    if (composerS.k(eVar2)) {
                    }
                    i13 |= i27;
                } else {
                    eVar2 = eVar;
                }
                i13 |= i27;
            } else {
                eVar2 = eVar;
            }
            i16 = i12 & 32;
            if (i16 != 0) {
                if ((458752 & i11) == 0) {
                    i17 = i10;
                    if (composerS.p(i17)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i13 |= i18;
                }
                i19 = i12 & 64;
                if (i19 != 0) {
                    if ((3670016 & i11) == 0) {
                        aVar2 = aVar;
                        if (composerS.k(aVar2)) {
                            i20 = 1048576;
                        } else {
                            i20 = 524288;
                        }
                        i13 |= i20;
                    }
                    i21 = i12 & 128;
                    if (i21 != 0) {
                        i13 |= 12582912;
                    } else if ((i11 & 29360128) == 0) {
                        if (composerS.k(mutableInteractionSource)) {
                            i22 = 8388608;
                        } else {
                            i22 = 4194304;
                        }
                        i13 |= i22;
                    }
                    if ((i11 & 234881024) != 0) {
                        i13 |= ((i12 & 256) == 0 || !composerS.k(sliderColors)) ? 33554432 : 67108864;
                    }
                    if ((i13 & 191739611) == 38347922) {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i26 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i14 != 0) {
                                z10 = true;
                            }
                            if ((i12 & 16) != 0) {
                                eVarB = n.b(0.0f, 1.0f);
                                i13 &= -57345;
                            } else {
                                eVarB = eVar2;
                            }
                            if (i16 != 0) {
                                i23 = 0;
                            } else {
                                i23 = i17;
                            }
                            if (i19 != 0) {
                                aVar3 = null;
                            } else {
                                aVar3 = aVar;
                            }
                            if (i21 != 0) {
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
                            if ((i12 & 256) != 0) {
                                i24 = i13 & (-234881025);
                                sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            } else {
                                i24 = i13;
                                sliderColorsA = sliderColors;
                            }
                        } else {
                            if (i26 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i14 != 0) {
                                z10 = true;
                            }
                            if ((i12 & 16) != 0) {
                                eVarB = n.b(0.0f, 1.0f);
                                i13 &= -57345;
                            } else {
                                eVarB = eVar2;
                            }
                            if (i16 != 0) {
                                i23 = 0;
                            } else {
                                i23 = i17;
                            }
                            if (i19 != 0) {
                                aVar3 = null;
                            } else {
                                aVar3 = aVar;
                            }
                            if (i21 != 0) {
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
                            if ((i12 & 256) != 0) {
                                i24 = i13 & (-234881025);
                                sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            } else {
                                i24 = i13;
                                sliderColorsA = sliderColors;
                            }
                        }
                        composerS.A();
                        if (i23 < 0) {
                            throw new IllegalArgumentException("steps should be >= 0".toString());
                        }
                        State stateN16 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                        Integer numValueOf16 = Integer.valueOf(i23);
                        composerS.G(1157296644);
                        zK = composerS.k(numValueOf16);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = G(i23);
                            composerS.z(objH2);
                        } else {
                            objH2 = G(i23);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        List list16 = (List) objH2;
                        Modifier modifierB16 = TouchTargetKt.b(modifier2);
                        float f1118 = ThumbRadius;
                        float f1119 = 2;
                        BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB16, Dp.f(f1118 * f1119), Dp.f(f1118 * f1119), 0.0f, 0.0f, 12, null), f, list16, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list16, sliderColorsA, stateN16, aVar3)), composerS, 3072, 6);
                        i25 = i23;
                        aVar4 = aVar3;
                        sliderColors2 = sliderColorsA;
                        z11 = z10;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier3 = modifier2;
                    } else {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i26 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i14 != 0) {
                                z10 = true;
                            }
                            if ((i12 & 16) != 0) {
                                eVarB = n.b(0.0f, 1.0f);
                                i13 &= -57345;
                            } else {
                                eVarB = eVar2;
                            }
                            if (i16 != 0) {
                                i23 = 0;
                            } else {
                                i23 = i17;
                            }
                            if (i19 != 0) {
                                aVar3 = null;
                            } else {
                                aVar3 = aVar;
                            }
                            if (i21 != 0) {
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
                            if ((i12 & 256) != 0) {
                                i24 = i13 & (-234881025);
                                sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            } else {
                                i24 = i13;
                                sliderColorsA = sliderColors;
                            }
                        } else {
                            if (i26 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i14 != 0) {
                                z10 = true;
                            }
                            if ((i12 & 16) != 0) {
                                eVarB = n.b(0.0f, 1.0f);
                                i13 &= -57345;
                            } else {
                                eVarB = eVar2;
                            }
                            if (i16 != 0) {
                                i23 = 0;
                            } else {
                                i23 = i17;
                            }
                            if (i19 != 0) {
                                aVar3 = null;
                            } else {
                                aVar3 = aVar;
                            }
                            if (i21 != 0) {
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
                            if ((i12 & 256) != 0) {
                                i24 = i13 & (-234881025);
                                sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            } else {
                                i24 = i13;
                                sliderColorsA = sliderColors;
                            }
                        }
                        composerS.A();
                        if (i23 < 0) {
                            throw new IllegalArgumentException("steps should be >= 0".toString());
                        }
                        State stateN17 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                        Integer numValueOf17 = Integer.valueOf(i23);
                        composerS.G(1157296644);
                        zK = composerS.k(numValueOf17);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = G(i23);
                            composerS.z(objH2);
                        } else {
                            objH2 = G(i23);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        List list17 = (List) objH2;
                        Modifier modifierB17 = TouchTargetKt.b(modifier2);
                        float f11110 = ThumbRadius;
                        float f11111 = 2;
                        BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB17, Dp.f(f11110 * f11111), Dp.f(f11110 * f11111), 0.0f, 0.0f, 12, null), f, list17, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list17, sliderColorsA, stateN17, aVar3)), composerS, 3072, 6);
                        i25 = i23;
                        aVar4 = aVar3;
                        sliderColors2 = sliderColorsA;
                        z11 = z10;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier3 = modifier2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new SliderKt$Slider$4(f, onValueChange, modifier3, z11, eVarB, i25, aVar4, mutableInteractionSource3, sliderColors2, i11, i12));
                }
                i13 |= 1572864;
                aVar2 = aVar;
                i21 = i12 & 128;
                if (i21 != 0) {
                    i13 |= 12582912;
                } else if ((i11 & 29360128) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i22 = 8388608;
                    } else {
                        i22 = 4194304;
                    }
                    i13 |= i22;
                }
                if ((i11 & 234881024) != 0) {
                    i13 |= ((i12 & 256) == 0 || !composerS.k(sliderColors)) ? 33554432 : 67108864;
                }
                if ((i13 & 191739611) == 38347922) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    } else {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    }
                    composerS.A();
                    if (i23 < 0) {
                        throw new IllegalArgumentException("steps should be >= 0".toString());
                    }
                    State stateN18 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                    Integer numValueOf18 = Integer.valueOf(i23);
                    composerS.G(1157296644);
                    zK = composerS.k(numValueOf18);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    } else {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    List list18 = (List) objH2;
                    Modifier modifierB18 = TouchTargetKt.b(modifier2);
                    float f11112 = ThumbRadius;
                    float f11113 = 2;
                    BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB18, Dp.f(f11112 * f11113), Dp.f(f11112 * f11113), 0.0f, 0.0f, 12, null), f, list18, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list18, sliderColorsA, stateN18, aVar3)), composerS, 3072, 6);
                    i25 = i23;
                    aVar4 = aVar3;
                    sliderColors2 = sliderColorsA;
                    z11 = z10;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier3 = modifier2;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    } else {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    }
                    composerS.A();
                    if (i23 < 0) {
                        throw new IllegalArgumentException("steps should be >= 0".toString());
                    }
                    State stateN19 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                    Integer numValueOf19 = Integer.valueOf(i23);
                    composerS.G(1157296644);
                    zK = composerS.k(numValueOf19);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    } else {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    List list19 = (List) objH2;
                    Modifier modifierB19 = TouchTargetKt.b(modifier2);
                    float f11114 = ThumbRadius;
                    float f11115 = 2;
                    BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB19, Dp.f(f11114 * f11115), Dp.f(f11114 * f11115), 0.0f, 0.0f, 12, null), f, list19, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list19, sliderColorsA, stateN19, aVar3)), composerS, 3072, 6);
                    i25 = i23;
                    aVar4 = aVar3;
                    sliderColors2 = sliderColorsA;
                    z11 = z10;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier3 = modifier2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new SliderKt$Slider$4(f, onValueChange, modifier3, z11, eVarB, i25, aVar4, mutableInteractionSource3, sliderColors2, i11, i12));
            }
            i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i17 = i10;
            i19 = i12 & 64;
            if (i19 != 0) {
                if ((3670016 & i11) == 0) {
                    aVar2 = aVar;
                    if (composerS.k(aVar2)) {
                        i20 = 1048576;
                    } else {
                        i20 = 524288;
                    }
                    i13 |= i20;
                }
                i21 = i12 & 128;
                if (i21 != 0) {
                    i13 |= 12582912;
                } else if ((i11 & 29360128) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i22 = 8388608;
                    } else {
                        i22 = 4194304;
                    }
                    i13 |= i22;
                }
                if ((i11 & 234881024) != 0) {
                    i13 |= ((i12 & 256) == 0 || !composerS.k(sliderColors)) ? 33554432 : 67108864;
                }
                if ((i13 & 191739611) == 38347922) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    } else {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    }
                    composerS.A();
                    if (i23 < 0) {
                        throw new IllegalArgumentException("steps should be >= 0".toString());
                    }
                    State stateN110 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                    Integer numValueOf110 = Integer.valueOf(i23);
                    composerS.G(1157296644);
                    zK = composerS.k(numValueOf110);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    } else {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    List list110 = (List) objH2;
                    Modifier modifierB110 = TouchTargetKt.b(modifier2);
                    float f11116 = ThumbRadius;
                    float f11117 = 2;
                    BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB110, Dp.f(f11116 * f11117), Dp.f(f11116 * f11117), 0.0f, 0.0f, 12, null), f, list110, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list110, sliderColorsA, stateN110, aVar3)), composerS, 3072, 6);
                    i25 = i23;
                    aVar4 = aVar3;
                    sliderColors2 = sliderColorsA;
                    z11 = z10;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier3 = modifier2;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    } else {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    }
                    composerS.A();
                    if (i23 < 0) {
                        throw new IllegalArgumentException("steps should be >= 0".toString());
                    }
                    State stateN111 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                    Integer numValueOf111 = Integer.valueOf(i23);
                    composerS.G(1157296644);
                    zK = composerS.k(numValueOf111);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    } else {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    List list111 = (List) objH2;
                    Modifier modifierB111 = TouchTargetKt.b(modifier2);
                    float f11118 = ThumbRadius;
                    float f11119 = 2;
                    BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB111, Dp.f(f11118 * f11119), Dp.f(f11118 * f11119), 0.0f, 0.0f, 12, null), f, list111, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list111, sliderColorsA, stateN111, aVar3)), composerS, 3072, 6);
                    i25 = i23;
                    aVar4 = aVar3;
                    sliderColors2 = sliderColorsA;
                    z11 = z10;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier3 = modifier2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new SliderKt$Slider$4(f, onValueChange, modifier3, z11, eVarB, i25, aVar4, mutableInteractionSource3, sliderColors2, i11, i12));
            }
            i13 |= 1572864;
            aVar2 = aVar;
            i21 = i12 & 128;
            if (i21 != 0) {
                i13 |= 12582912;
            } else if ((i11 & 29360128) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i22 = 8388608;
                } else {
                    i22 = 4194304;
                }
                i13 |= i22;
            }
            if ((i11 & 234881024) != 0) {
                i13 |= ((i12 & 256) == 0 || !composerS.k(sliderColors)) ? 33554432 : 67108864;
            }
            if ((i13 & 191739611) == 38347922) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i26 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        eVarB = n.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        eVarB = eVar2;
                    }
                    if (i16 != 0) {
                        i23 = 0;
                    } else {
                        i23 = i17;
                    }
                    if (i19 != 0) {
                        aVar3 = null;
                    } else {
                        aVar3 = aVar;
                    }
                    if (i21 != 0) {
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
                    if ((i12 & 256) != 0) {
                        i24 = i13 & (-234881025);
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        i24 = i13;
                        sliderColorsA = sliderColors;
                    }
                } else {
                    if (i26 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        eVarB = n.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        eVarB = eVar2;
                    }
                    if (i16 != 0) {
                        i23 = 0;
                    } else {
                        i23 = i17;
                    }
                    if (i19 != 0) {
                        aVar3 = null;
                    } else {
                        aVar3 = aVar;
                    }
                    if (i21 != 0) {
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
                    if ((i12 & 256) != 0) {
                        i24 = i13 & (-234881025);
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        i24 = i13;
                        sliderColorsA = sliderColors;
                    }
                }
                composerS.A();
                if (i23 < 0) {
                    throw new IllegalArgumentException("steps should be >= 0".toString());
                }
                State stateN112 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                Integer numValueOf112 = Integer.valueOf(i23);
                composerS.G(1157296644);
                zK = composerS.k(numValueOf112);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = G(i23);
                    composerS.z(objH2);
                } else {
                    objH2 = G(i23);
                    composerS.z(objH2);
                }
                composerS.Q();
                List list112 = (List) objH2;
                Modifier modifierB112 = TouchTargetKt.b(modifier2);
                float f111110 = ThumbRadius;
                float f111111 = 2;
                BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB112, Dp.f(f111110 * f111111), Dp.f(f111110 * f111111), 0.0f, 0.0f, 12, null), f, list112, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list112, sliderColorsA, stateN112, aVar3)), composerS, 3072, 6);
                i25 = i23;
                aVar4 = aVar3;
                sliderColors2 = sliderColorsA;
                z11 = z10;
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier3 = modifier2;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i26 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        eVarB = n.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        eVarB = eVar2;
                    }
                    if (i16 != 0) {
                        i23 = 0;
                    } else {
                        i23 = i17;
                    }
                    if (i19 != 0) {
                        aVar3 = null;
                    } else {
                        aVar3 = aVar;
                    }
                    if (i21 != 0) {
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
                    if ((i12 & 256) != 0) {
                        i24 = i13 & (-234881025);
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        i24 = i13;
                        sliderColorsA = sliderColors;
                    }
                } else {
                    if (i26 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        eVarB = n.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        eVarB = eVar2;
                    }
                    if (i16 != 0) {
                        i23 = 0;
                    } else {
                        i23 = i17;
                    }
                    if (i19 != 0) {
                        aVar3 = null;
                    } else {
                        aVar3 = aVar;
                    }
                    if (i21 != 0) {
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
                    if ((i12 & 256) != 0) {
                        i24 = i13 & (-234881025);
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        i24 = i13;
                        sliderColorsA = sliderColors;
                    }
                }
                composerS.A();
                if (i23 < 0) {
                    throw new IllegalArgumentException("steps should be >= 0".toString());
                }
                State stateN113 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                Integer numValueOf113 = Integer.valueOf(i23);
                composerS.G(1157296644);
                zK = composerS.k(numValueOf113);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = G(i23);
                    composerS.z(objH2);
                } else {
                    objH2 = G(i23);
                    composerS.z(objH2);
                }
                composerS.Q();
                List list113 = (List) objH2;
                Modifier modifierB113 = TouchTargetKt.b(modifier2);
                float f111112 = ThumbRadius;
                float f111113 = 2;
                BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB113, Dp.f(f111112 * f111113), Dp.f(f111112 * f111113), 0.0f, 0.0f, 12, null), f, list113, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list113, sliderColorsA, stateN113, aVar3)), composerS, 3072, 6);
                i25 = i23;
                aVar4 = aVar3;
                sliderColors2 = sliderColorsA;
                z11 = z10;
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier3 = modifier2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new SliderKt$Slider$4(f, onValueChange, modifier3, z11, eVarB, i25, aVar4, mutableInteractionSource3, sliderColors2, i11, i12));
        }
        i13 |= 3072;
        z10 = z6;
        if ((57344 & i11) == 0) {
            if ((i12 & 16) == 0) {
                eVar2 = eVar;
                if (composerS.k(eVar2)) {
                }
                i13 |= i27;
            } else {
                eVar2 = eVar;
            }
            i13 |= i27;
        } else {
            eVar2 = eVar;
        }
        i16 = i12 & 32;
        if (i16 != 0) {
            if ((458752 & i11) == 0) {
                i17 = i10;
                if (composerS.p(i17)) {
                    i18 = 131072;
                } else {
                    i18 = 65536;
                }
                i13 |= i18;
            }
            i19 = i12 & 64;
            if (i19 != 0) {
                if ((3670016 & i11) == 0) {
                    aVar2 = aVar;
                    if (composerS.k(aVar2)) {
                        i20 = 1048576;
                    } else {
                        i20 = 524288;
                    }
                    i13 |= i20;
                }
                i21 = i12 & 128;
                if (i21 != 0) {
                    i13 |= 12582912;
                } else if ((i11 & 29360128) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i22 = 8388608;
                    } else {
                        i22 = 4194304;
                    }
                    i13 |= i22;
                }
                if ((i11 & 234881024) != 0) {
                    i13 |= ((i12 & 256) == 0 || !composerS.k(sliderColors)) ? 33554432 : 67108864;
                }
                if ((i13 & 191739611) == 38347922) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    } else {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    }
                    composerS.A();
                    if (i23 < 0) {
                        throw new IllegalArgumentException("steps should be >= 0".toString());
                    }
                    State stateN114 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                    Integer numValueOf114 = Integer.valueOf(i23);
                    composerS.G(1157296644);
                    zK = composerS.k(numValueOf114);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    } else {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    List list114 = (List) objH2;
                    Modifier modifierB114 = TouchTargetKt.b(modifier2);
                    float f111114 = ThumbRadius;
                    float f111115 = 2;
                    BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB114, Dp.f(f111114 * f111115), Dp.f(f111114 * f111115), 0.0f, 0.0f, 12, null), f, list114, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list114, sliderColorsA, stateN114, aVar3)), composerS, 3072, 6);
                    i25 = i23;
                    aVar4 = aVar3;
                    sliderColors2 = sliderColorsA;
                    z11 = z10;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier3 = modifier2;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    } else {
                        if (i26 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        }
                        if ((i12 & 16) != 0) {
                            eVarB = n.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            eVarB = eVar2;
                        }
                        if (i16 != 0) {
                            i23 = 0;
                        } else {
                            i23 = i17;
                        }
                        if (i19 != 0) {
                            aVar3 = null;
                        } else {
                            aVar3 = aVar;
                        }
                        if (i21 != 0) {
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
                        if ((i12 & 256) != 0) {
                            i24 = i13 & (-234881025);
                            sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        } else {
                            i24 = i13;
                            sliderColorsA = sliderColors;
                        }
                    }
                    composerS.A();
                    if (i23 < 0) {
                        throw new IllegalArgumentException("steps should be >= 0".toString());
                    }
                    State stateN115 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                    Integer numValueOf115 = Integer.valueOf(i23);
                    composerS.G(1157296644);
                    zK = composerS.k(numValueOf115);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    } else {
                        objH2 = G(i23);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    List list115 = (List) objH2;
                    Modifier modifierB115 = TouchTargetKt.b(modifier2);
                    float f111116 = ThumbRadius;
                    float f111117 = 2;
                    BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB115, Dp.f(f111116 * f111117), Dp.f(f111116 * f111117), 0.0f, 0.0f, 12, null), f, list115, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list115, sliderColorsA, stateN115, aVar3)), composerS, 3072, 6);
                    i25 = i23;
                    aVar4 = aVar3;
                    sliderColors2 = sliderColorsA;
                    z11 = z10;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier3 = modifier2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new SliderKt$Slider$4(f, onValueChange, modifier3, z11, eVarB, i25, aVar4, mutableInteractionSource3, sliderColors2, i11, i12));
            }
            i13 |= 1572864;
            aVar2 = aVar;
            i21 = i12 & 128;
            if (i21 != 0) {
                i13 |= 12582912;
            } else if ((i11 & 29360128) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i22 = 8388608;
                } else {
                    i22 = 4194304;
                }
                i13 |= i22;
            }
            if ((i11 & 234881024) != 0) {
                i13 |= ((i12 & 256) == 0 || !composerS.k(sliderColors)) ? 33554432 : 67108864;
            }
            if ((i13 & 191739611) == 38347922) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i26 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        eVarB = n.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        eVarB = eVar2;
                    }
                    if (i16 != 0) {
                        i23 = 0;
                    } else {
                        i23 = i17;
                    }
                    if (i19 != 0) {
                        aVar3 = null;
                    } else {
                        aVar3 = aVar;
                    }
                    if (i21 != 0) {
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
                    if ((i12 & 256) != 0) {
                        i24 = i13 & (-234881025);
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        i24 = i13;
                        sliderColorsA = sliderColors;
                    }
                } else {
                    if (i26 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        eVarB = n.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        eVarB = eVar2;
                    }
                    if (i16 != 0) {
                        i23 = 0;
                    } else {
                        i23 = i17;
                    }
                    if (i19 != 0) {
                        aVar3 = null;
                    } else {
                        aVar3 = aVar;
                    }
                    if (i21 != 0) {
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
                    if ((i12 & 256) != 0) {
                        i24 = i13 & (-234881025);
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        i24 = i13;
                        sliderColorsA = sliderColors;
                    }
                }
                composerS.A();
                if (i23 < 0) {
                    throw new IllegalArgumentException("steps should be >= 0".toString());
                }
                State stateN116 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                Integer numValueOf116 = Integer.valueOf(i23);
                composerS.G(1157296644);
                zK = composerS.k(numValueOf116);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = G(i23);
                    composerS.z(objH2);
                } else {
                    objH2 = G(i23);
                    composerS.z(objH2);
                }
                composerS.Q();
                List list116 = (List) objH2;
                Modifier modifierB116 = TouchTargetKt.b(modifier2);
                float f111118 = ThumbRadius;
                float f111119 = 2;
                BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB116, Dp.f(f111118 * f111119), Dp.f(f111118 * f111119), 0.0f, 0.0f, 12, null), f, list116, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list116, sliderColorsA, stateN116, aVar3)), composerS, 3072, 6);
                i25 = i23;
                aVar4 = aVar3;
                sliderColors2 = sliderColorsA;
                z11 = z10;
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier3 = modifier2;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i26 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        eVarB = n.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        eVarB = eVar2;
                    }
                    if (i16 != 0) {
                        i23 = 0;
                    } else {
                        i23 = i17;
                    }
                    if (i19 != 0) {
                        aVar3 = null;
                    } else {
                        aVar3 = aVar;
                    }
                    if (i21 != 0) {
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
                    if ((i12 & 256) != 0) {
                        i24 = i13 & (-234881025);
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        i24 = i13;
                        sliderColorsA = sliderColors;
                    }
                } else {
                    if (i26 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        eVarB = n.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        eVarB = eVar2;
                    }
                    if (i16 != 0) {
                        i23 = 0;
                    } else {
                        i23 = i17;
                    }
                    if (i19 != 0) {
                        aVar3 = null;
                    } else {
                        aVar3 = aVar;
                    }
                    if (i21 != 0) {
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
                    if ((i12 & 256) != 0) {
                        i24 = i13 & (-234881025);
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        i24 = i13;
                        sliderColorsA = sliderColors;
                    }
                }
                composerS.A();
                if (i23 < 0) {
                    throw new IllegalArgumentException("steps should be >= 0".toString());
                }
                State stateN117 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                Integer numValueOf117 = Integer.valueOf(i23);
                composerS.G(1157296644);
                zK = composerS.k(numValueOf117);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = G(i23);
                    composerS.z(objH2);
                } else {
                    objH2 = G(i23);
                    composerS.z(objH2);
                }
                composerS.Q();
                List list117 = (List) objH2;
                Modifier modifierB117 = TouchTargetKt.b(modifier2);
                float f1111110 = ThumbRadius;
                float f1111111 = 2;
                BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB117, Dp.f(f1111110 * f1111111), Dp.f(f1111110 * f1111111), 0.0f, 0.0f, 12, null), f, list117, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list117, sliderColorsA, stateN117, aVar3)), composerS, 3072, 6);
                i25 = i23;
                aVar4 = aVar3;
                sliderColors2 = sliderColorsA;
                z11 = z10;
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier3 = modifier2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new SliderKt$Slider$4(f, onValueChange, modifier3, z11, eVarB, i25, aVar4, mutableInteractionSource3, sliderColors2, i11, i12));
        }
        i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i17 = i10;
        i19 = i12 & 64;
        if (i19 != 0) {
            if ((3670016 & i11) == 0) {
                aVar2 = aVar;
                if (composerS.k(aVar2)) {
                    i20 = 1048576;
                } else {
                    i20 = 524288;
                }
                i13 |= i20;
            }
            i21 = i12 & 128;
            if (i21 != 0) {
                i13 |= 12582912;
            } else if ((i11 & 29360128) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i22 = 8388608;
                } else {
                    i22 = 4194304;
                }
                i13 |= i22;
            }
            if ((i11 & 234881024) != 0) {
                i13 |= ((i12 & 256) == 0 || !composerS.k(sliderColors)) ? 33554432 : 67108864;
            }
            if ((i13 & 191739611) == 38347922) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i26 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        eVarB = n.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        eVarB = eVar2;
                    }
                    if (i16 != 0) {
                        i23 = 0;
                    } else {
                        i23 = i17;
                    }
                    if (i19 != 0) {
                        aVar3 = null;
                    } else {
                        aVar3 = aVar;
                    }
                    if (i21 != 0) {
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
                    if ((i12 & 256) != 0) {
                        i24 = i13 & (-234881025);
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        i24 = i13;
                        sliderColorsA = sliderColors;
                    }
                } else {
                    if (i26 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        eVarB = n.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        eVarB = eVar2;
                    }
                    if (i16 != 0) {
                        i23 = 0;
                    } else {
                        i23 = i17;
                    }
                    if (i19 != 0) {
                        aVar3 = null;
                    } else {
                        aVar3 = aVar;
                    }
                    if (i21 != 0) {
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
                    if ((i12 & 256) != 0) {
                        i24 = i13 & (-234881025);
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        i24 = i13;
                        sliderColorsA = sliderColors;
                    }
                }
                composerS.A();
                if (i23 < 0) {
                    throw new IllegalArgumentException("steps should be >= 0".toString());
                }
                State stateN118 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                Integer numValueOf118 = Integer.valueOf(i23);
                composerS.G(1157296644);
                zK = composerS.k(numValueOf118);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = G(i23);
                    composerS.z(objH2);
                } else {
                    objH2 = G(i23);
                    composerS.z(objH2);
                }
                composerS.Q();
                List list118 = (List) objH2;
                Modifier modifierB118 = TouchTargetKt.b(modifier2);
                float f1111112 = ThumbRadius;
                float f1111113 = 2;
                BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB118, Dp.f(f1111112 * f1111113), Dp.f(f1111112 * f1111113), 0.0f, 0.0f, 12, null), f, list118, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list118, sliderColorsA, stateN118, aVar3)), composerS, 3072, 6);
                i25 = i23;
                aVar4 = aVar3;
                sliderColors2 = sliderColorsA;
                z11 = z10;
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier3 = modifier2;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i26 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        eVarB = n.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        eVarB = eVar2;
                    }
                    if (i16 != 0) {
                        i23 = 0;
                    } else {
                        i23 = i17;
                    }
                    if (i19 != 0) {
                        aVar3 = null;
                    } else {
                        aVar3 = aVar;
                    }
                    if (i21 != 0) {
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
                    if ((i12 & 256) != 0) {
                        i24 = i13 & (-234881025);
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        i24 = i13;
                        sliderColorsA = sliderColors;
                    }
                } else {
                    if (i26 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    }
                    if ((i12 & 16) != 0) {
                        eVarB = n.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        eVarB = eVar2;
                    }
                    if (i16 != 0) {
                        i23 = 0;
                    } else {
                        i23 = i17;
                    }
                    if (i19 != 0) {
                        aVar3 = null;
                    } else {
                        aVar3 = aVar;
                    }
                    if (i21 != 0) {
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
                    if ((i12 & 256) != 0) {
                        i24 = i13 & (-234881025);
                        sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    } else {
                        i24 = i13;
                        sliderColorsA = sliderColors;
                    }
                }
                composerS.A();
                if (i23 < 0) {
                    throw new IllegalArgumentException("steps should be >= 0".toString());
                }
                State stateN119 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
                Integer numValueOf119 = Integer.valueOf(i23);
                composerS.G(1157296644);
                zK = composerS.k(numValueOf119);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = G(i23);
                    composerS.z(objH2);
                } else {
                    objH2 = G(i23);
                    composerS.z(objH2);
                }
                composerS.Q();
                List list119 = (List) objH2;
                Modifier modifierB119 = TouchTargetKt.b(modifier2);
                float f1111114 = ThumbRadius;
                float f1111115 = 2;
                BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB119, Dp.f(f1111114 * f1111115), Dp.f(f1111114 * f1111115), 0.0f, 0.0f, 12, null), f, list119, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list119, sliderColorsA, stateN119, aVar3)), composerS, 3072, 6);
                i25 = i23;
                aVar4 = aVar3;
                sliderColors2 = sliderColorsA;
                z11 = z10;
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier3 = modifier2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new SliderKt$Slider$4(f, onValueChange, modifier3, z11, eVarB, i25, aVar4, mutableInteractionSource3, sliderColors2, i11, i12));
        }
        i13 |= 1572864;
        aVar2 = aVar;
        i21 = i12 & 128;
        if (i21 != 0) {
            i13 |= 12582912;
        } else if ((i11 & 29360128) == 0) {
            if (composerS.k(mutableInteractionSource)) {
                i22 = 8388608;
            } else {
                i22 = 4194304;
            }
            i13 |= i22;
        }
        if ((i11 & 234881024) != 0) {
            i13 |= ((i12 & 256) == 0 || !composerS.k(sliderColors)) ? 33554432 : 67108864;
        }
        if ((i13 & 191739611) == 38347922) {
            composerS.J();
            if ((i11 & 1) != 0) {
                if (i26 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i14 != 0) {
                    z10 = true;
                }
                if ((i12 & 16) != 0) {
                    eVarB = n.b(0.0f, 1.0f);
                    i13 &= -57345;
                } else {
                    eVarB = eVar2;
                }
                if (i16 != 0) {
                    i23 = 0;
                } else {
                    i23 = i17;
                }
                if (i19 != 0) {
                    aVar3 = null;
                } else {
                    aVar3 = aVar;
                }
                if (i21 != 0) {
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
                if ((i12 & 256) != 0) {
                    i24 = i13 & (-234881025);
                    sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                } else {
                    i24 = i13;
                    sliderColorsA = sliderColors;
                }
            } else {
                if (i26 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i14 != 0) {
                    z10 = true;
                }
                if ((i12 & 16) != 0) {
                    eVarB = n.b(0.0f, 1.0f);
                    i13 &= -57345;
                } else {
                    eVarB = eVar2;
                }
                if (i16 != 0) {
                    i23 = 0;
                } else {
                    i23 = i17;
                }
                if (i19 != 0) {
                    aVar3 = null;
                } else {
                    aVar3 = aVar;
                }
                if (i21 != 0) {
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
                if ((i12 & 256) != 0) {
                    i24 = i13 & (-234881025);
                    sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                } else {
                    i24 = i13;
                    sliderColorsA = sliderColors;
                }
            }
            composerS.A();
            if (i23 < 0) {
                throw new IllegalArgumentException("steps should be >= 0".toString());
            }
            State stateN1110 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
            Integer numValueOf1110 = Integer.valueOf(i23);
            composerS.G(1157296644);
            zK = composerS.k(numValueOf1110);
            objH2 = composerS.H();
            if (zK) {
                objH2 = G(i23);
                composerS.z(objH2);
            } else {
                objH2 = G(i23);
                composerS.z(objH2);
            }
            composerS.Q();
            List list1110 = (List) objH2;
            Modifier modifierB1110 = TouchTargetKt.b(modifier2);
            float f1111116 = ThumbRadius;
            float f1111117 = 2;
            BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB1110, Dp.f(f1111116 * f1111117), Dp.f(f1111116 * f1111117), 0.0f, 0.0f, 12, null), f, list1110, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list1110, sliderColorsA, stateN1110, aVar3)), composerS, 3072, 6);
            i25 = i23;
            aVar4 = aVar3;
            sliderColors2 = sliderColorsA;
            z11 = z10;
            mutableInteractionSource3 = mutableInteractionSource2;
            modifier3 = modifier2;
        } else {
            composerS.J();
            if ((i11 & 1) != 0) {
                if (i26 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i14 != 0) {
                    z10 = true;
                }
                if ((i12 & 16) != 0) {
                    eVarB = n.b(0.0f, 1.0f);
                    i13 &= -57345;
                } else {
                    eVarB = eVar2;
                }
                if (i16 != 0) {
                    i23 = 0;
                } else {
                    i23 = i17;
                }
                if (i19 != 0) {
                    aVar3 = null;
                } else {
                    aVar3 = aVar;
                }
                if (i21 != 0) {
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
                if ((i12 & 256) != 0) {
                    i24 = i13 & (-234881025);
                    sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                } else {
                    i24 = i13;
                    sliderColorsA = sliderColors;
                }
            } else {
                if (i26 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i14 != 0) {
                    z10 = true;
                }
                if ((i12 & 16) != 0) {
                    eVarB = n.b(0.0f, 1.0f);
                    i13 &= -57345;
                } else {
                    eVarB = eVar2;
                }
                if (i16 != 0) {
                    i23 = 0;
                } else {
                    i23 = i17;
                }
                if (i19 != 0) {
                    aVar3 = null;
                } else {
                    aVar3 = aVar;
                }
                if (i21 != 0) {
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
                if ((i12 & 256) != 0) {
                    i24 = i13 & (-234881025);
                    sliderColorsA = SliderDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                } else {
                    i24 = i13;
                    sliderColorsA = sliderColors;
                }
            }
            composerS.A();
            if (i23 < 0) {
                throw new IllegalArgumentException("steps should be >= 0".toString());
            }
            State stateN1111 = SnapshotStateKt.n(onValueChange, composerS, (i24 >> 3) & 14);
            Integer numValueOf1111 = Integer.valueOf(i23);
            composerS.G(1157296644);
            zK = composerS.k(numValueOf1111);
            objH2 = composerS.H();
            if (zK) {
                objH2 = G(i23);
                composerS.z(objH2);
            } else {
                objH2 = G(i23);
                composerS.z(objH2);
            }
            composerS.Q();
            List list1111 = (List) objH2;
            Modifier modifierB1111 = TouchTargetKt.b(modifier2);
            float f1111118 = ThumbRadius;
            float f1111119 = 2;
            BoxWithConstraintsKt.a(FocusableKt.c(D(SizeKt.w(modifierB1111, Dp.f(f1111118 * f1111119), Dp.f(f1111118 * f1111119), 0.0f, 0.0f, 12, null), f, list1111, z10, onValueChange, eVarB, i23), z10, mutableInteractionSource2), null, false, ComposableLambdaKt.b(composerS, 2085116814, true, new SliderKt$Slider$3(eVarB, i24, f, mutableInteractionSource2, z10, list1111, sliderColorsA, stateN1111, aVar3)), composerS, 3072, 6);
            i25 = i23;
            aVar4 = aVar3;
            sliderColors2 = sliderColorsA;
            z11 = z10;
            mutableInteractionSource3 = mutableInteractionSource2;
            modifier3 = modifier2;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new SliderKt$Slider$4(f, onValueChange, modifier3, z11, eVarB, i25, aVar4, mutableInteractionSource3, sliderColors2, i11, i12));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ComposableTarget
    @Composable
    public static final void f(BoxScope boxScope, Modifier modifier, float f, MutableInteractionSource mutableInteractionSource, SliderColors sliderColors, boolean z6, float f6, Composer composer, int i10) {
        int i11;
        Composer composerS = composer.s(428907178);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(boxScope) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.k(modifier) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            i11 |= composerS.n(f) ? 256 : 128;
        }
        if ((i10 & 7168) == 0) {
            i11 |= composerS.k(mutableInteractionSource) ? 2048 : 1024;
        }
        if ((57344 & i10) == 0) {
            i11 |= composerS.k(sliderColors) ? 16384 : 8192;
        }
        if ((458752 & i10) == 0) {
            i11 |= composerS.m(z6) ? 131072 : 65536;
        }
        if ((3670016 & i10) == 0) {
            i11 |= composerS.n(f6) ? 1048576 : 524288;
        }
        if ((2995931 & i11) == 599186 && composerS.b()) {
            composerS.g();
        } else {
            Modifier modifierM = PaddingKt.m(Modifier.Companion, f, 0.0f, 0.0f, 0.0f, 14, null);
            Alignment.Companion companion = Alignment.Companion;
            Modifier modifierA = boxScope.a(modifierM, companion.h());
            composerS.G(733328855);
            MeasurePolicy measurePolicyH = BoxKt.h(companion.o(), false, composerS, 0);
            composerS.G(-1323940314);
            Density density = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            e8.a<ComposeUiNode> aVarA = companion2.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierA);
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
            Updater.e(composerA, measurePolicyH, companion2.d());
            Updater.e(composerA, density, companion2.b());
            Updater.e(composerA, layoutDirection, companion2.c());
            Updater.e(composerA, viewConfiguration, companion2.f());
            composerS.o();
            qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-2137368960);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            composerS.G(-587645648);
            composerS.G(-492369756);
            Object objH = composerS.H();
            Composer.Companion companion3 = Composer.Companion;
            if (objH == companion3.a()) {
                objH = SnapshotStateKt.d();
                composerS.z(objH);
            }
            composerS.Q();
            SnapshotStateList snapshotStateList = (SnapshotStateList) objH;
            int i12 = i11 >> 9;
            int i13 = i12 & 14;
            composerS.G(511388516);
            boolean zK = composerS.k(mutableInteractionSource) | composerS.k(snapshotStateList);
            Object objH2 = composerS.H();
            if (zK || objH2 == companion3.a()) {
                objH2 = new SliderKt$SliderThumb$1$1$1(mutableInteractionSource, snapshotStateList, null);
                composerS.z(objH2);
            }
            composerS.Q();
            EffectsKt.d(mutableInteractionSource, (p) objH2, composerS, i13);
            SpacerKt.a(BackgroundKt.a(ShadowKt.b(HoverableKt.b(IndicationKt.b(SizeKt.A(modifier, f6, f6), mutableInteractionSource, RippleKt.e(false, ThumbRippleRadius, 0L, composerS, 54, 4)), mutableInteractionSource, false, 2, null), z6 ? snapshotStateList.isEmpty() ^ true ? ThumbPressedElevation : ThumbDefaultElevation : Dp.f(0), RoundedCornerShapeKt.d(), false, 0L, 0L, 24, null), sliderColors.c(z6, composerS, ((i11 >> 15) & 14) | (i12 & 112)).getValue().v(), RoundedCornerShapeKt.d()), composerS, 0);
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new SliderKt$SliderThumb$2(boxScope, modifier, f, mutableInteractionSource, sliderColors, z6, f6, i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ComposableTarget
    @Composable
    public static final void g(Modifier modifier, SliderColors sliderColors, boolean z6, float f, float f6, List<Float> list, float f7, float f10, Composer composer, int i10) {
        Composer composerS = composer.s(1833126050);
        int i11 = ((i10 >> 6) & 14) | 48 | ((i10 << 3) & 896);
        CanvasKt.a(modifier, new SliderKt$Track$1(f7, sliderColors.a(z6, false, composerS, i11), f10, f6, f, sliderColors.a(z6, true, composerS, i11), list, sliderColors.b(z6, false, composerS, i11), sliderColors.b(z6, true, composerS, i11)), composerS, i10 & 14);
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new SliderKt$Track$2(modifier, sliderColors, z6, f, f6, list, f7, f10, i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static final Object x(AwaitPointerEventScope awaitPointerEventScope, long j6, int i10, d<? super u<PointerInputChange, Float>> dVar) {
        SliderKt$awaitSlop$1 sliderKt$awaitSlop$1;
        m0 m0Var;
        if (dVar instanceof SliderKt$awaitSlop$1) {
            sliderKt$awaitSlop$1 = (SliderKt$awaitSlop$1) dVar;
            int i11 = sliderKt$awaitSlop$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                sliderKt$awaitSlop$1.label = i11 - Integer.MIN_VALUE;
            } else {
                sliderKt$awaitSlop$1 = new SliderKt$awaitSlop$1(dVar);
            }
        } else {
            sliderKt$awaitSlop$1 = new SliderKt$awaitSlop$1(dVar);
        }
        SliderKt$awaitSlop$1 sliderKt$awaitSlop$2 = sliderKt$awaitSlop$1;
        Object obj = sliderKt$awaitSlop$2.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i12 = sliderKt$awaitSlop$2.label;
        if (i12 == 0) {
            w.b(obj);
            m0 m0Var2 = new m0();
            SliderKt$awaitSlop$postPointerSlop$1 sliderKt$awaitSlop$postPointerSlop$1 = new SliderKt$awaitSlop$postPointerSlop$1(m0Var2);
            sliderKt$awaitSlop$2.L$0 = m0Var2;
            sliderKt$awaitSlop$2.label = 1;
            Object objA = DragGestureDetectorCopyKt.a(awaitPointerEventScope, j6, i10, sliderKt$awaitSlop$postPointerSlop$1, sliderKt$awaitSlop$2);
            if (objA == objE) {
                return objE;
            }
            obj = objA;
            m0Var = m0Var2;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            m0Var = (m0) sliderKt$awaitSlop$2.L$0;
            w.b(obj);
        }
        PointerInputChange pointerInputChange = (PointerInputChange) obj;
        if (pointerInputChange != null) {
            return a0.a(pointerInputChange, b.c(m0Var.element));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float B(float f, float f6, float f7, float f10, float f11) {
        return MathHelpersKt.a(f10, f11, y(f, f6, f7));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final e<Float> C(float f, float f6, e<Float> eVar, float f7, float f10) {
        return n.b(B(f, f6, eVar.getStart().floatValue(), f7, f10), B(f, f6, eVar.c().floatValue(), f7, f10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier D(Modifier modifier, float f, List<Float> list, boolean z6, l<? super Float, l0> lVar, e<Float> eVar, int i10) {
        return ProgressSemanticsKt.b(SemanticsModifierKt.c(modifier, false, new SliderKt$sliderSemantics$1(z6, eVar, i10, list, o.m(f, eVar.getStart().floatValue(), eVar.c().floatValue()), lVar), 1, null), f, eVar, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier E(Modifier modifier, DraggableState draggableState, MutableInteractionSource mutableInteractionSource, float f, boolean z6, State<Float> state, State<? extends l<? super Float, l0>> state2, MutableState<Float> mutableState, boolean z10) {
        l lVarA;
        if (InspectableValueKt.c()) {
            lVarA = new SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1(draggableState, mutableInteractionSource, f, z6, state, state2, mutableState, z10);
        } else {
            lVarA = InspectableValueKt.a();
        }
        return ComposedModifierKt.c(modifier, lVarA, new SliderKt$sliderTapModifier$2(z10, draggableState, mutableInteractionSource, f, z6, mutableState, state, state2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ComposableTarget
    @Composable
    public static final void c(boolean z6, float f, float f6, List<Float> list, SliderColors sliderColors, float f7, MutableInteractionSource mutableInteractionSource, MutableInteractionSource mutableInteractionSource2, Modifier modifier, Modifier modifier2, Modifier modifier3, Composer composer, int i10, int i11) {
        Composer composerS = composer.s(-278895713);
        Strings.Companion companion = Strings.Companion;
        String strA = Strings_androidKt.a(companion.g(), composerS, 6);
        String strA2 = Strings_androidKt.a(companion.f(), composerS, 6);
        Modifier modifierB = modifier.B(DefaultSliderConstraints);
        composerS.G(733328855);
        Alignment.Companion companion2 = Alignment.Companion;
        MeasurePolicy measurePolicyH = BoxKt.h(companion2.o(), false, composerS, 0);
        composerS.G(-1323940314);
        Density density = (Density) composerS.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
        e8.a<ComposeUiNode> aVarA = companion3.a();
        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierB);
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
        Updater.e(composerA, measurePolicyH, companion3.d());
        Updater.e(composerA, density, companion3.b());
        Updater.e(composerA, layoutDirection, companion3.c());
        Updater.e(composerA, viewConfiguration, companion3.f());
        composerS.o();
        qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
        composerS.G(2058660585);
        composerS.G(-2137368960);
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
        composerS.G(2044256857);
        Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
        float fH0 = density2.H0(TrackHeight);
        float f10 = ThumbRadius;
        float fH1 = density2.H0(f10);
        float fP = density2.P(f7);
        l0 l0Var = l0.INSTANCE;
        float f11 = Dp.f(f10 * 2);
        float f12 = Dp.f(fP * f);
        float f13 = Dp.f(fP * f6);
        Modifier.Companion companion4 = Modifier.Companion;
        int i12 = i10 >> 9;
        int i13 = i10 << 6;
        g(SizeKt.l(boxScopeInstance.a(companion4, companion2.h()), 0.0f, 1, null), sliderColors, z6, f, f6, list, fH1, fH0, composerS, (i12 & 112) | 262144 | (i13 & 896) | (i13 & 7168) | (i13 & 57344));
        composerS.G(1157296644);
        boolean zK = composerS.k(strA);
        Object objH = composerS.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new SliderKt$RangeSliderImpl$1$2$1(strA);
            composerS.z(objH);
        }
        composerS.Q();
        int i14 = i10 & 57344;
        int i15 = (i10 << 15) & 458752;
        f(boxScopeInstance, FocusableKt.c(SemanticsModifierKt.b(companion4, true, (l) objH), true, mutableInteractionSource).B(modifier2), f12, mutableInteractionSource, sliderColors, z6, f11, composerS, (i12 & 7168) | 1572870 | i14 | i15);
        composerS.G(1157296644);
        boolean zK2 = composerS.k(strA2);
        Object objH2 = composerS.H();
        if (zK2 || objH2 == Composer.Companion.a()) {
            objH2 = new SliderKt$RangeSliderImpl$1$3$1(strA2);
            composerS.z(objH2);
        }
        composerS.Q();
        f(boxScopeInstance, FocusableKt.c(SemanticsModifierKt.b(companion4, true, (l) objH2), true, mutableInteractionSource2).B(modifier3), f13, mutableInteractionSource2, sliderColors, z6, f11, composerS, ((i10 >> 12) & 7168) | 1572870 | i14 | i15);
        composerS.Q();
        composerS.Q();
        composerS.Q();
        composerS.d();
        composerS.Q();
        composerS.Q();
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new SliderKt$RangeSliderImpl$2(z6, f, f6, list, sliderColors, f7, mutableInteractionSource, mutableInteractionSource2, modifier, modifier2, modifier3, i10, i11));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ComposableTarget
    @Composable
    public static final void e(boolean z6, float f, List<Float> list, SliderColors sliderColors, float f6, MutableInteractionSource mutableInteractionSource, Modifier modifier, Composer composer, int i10) {
        Composer composerS = composer.s(1679682785);
        Modifier modifierB = modifier.B(DefaultSliderConstraints);
        composerS.G(733328855);
        MeasurePolicy measurePolicyH = BoxKt.h(Alignment.Companion.o(), false, composerS, 0);
        composerS.G(-1323940314);
        Density density = (Density) composerS.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        e8.a<ComposeUiNode> aVarA = companion.a();
        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierB);
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
        Updater.e(composerA, measurePolicyH, companion.d());
        Updater.e(composerA, density, companion.b());
        Updater.e(composerA, layoutDirection, companion.c());
        Updater.e(composerA, viewConfiguration, companion.f());
        composerS.o();
        qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
        composerS.G(2058660585);
        composerS.G(-2137368960);
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
        composerS.G(231316251);
        Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
        float fH0 = density2.H0(TrackHeight);
        float f7 = ThumbRadius;
        float fH1 = density2.H0(f7);
        float fP = density2.P(f6);
        float f10 = Dp.f(f7 * 2);
        float f11 = Dp.f(fP * f);
        Modifier.Companion companion2 = Modifier.Companion;
        int i11 = i10 >> 6;
        g(SizeKt.l(companion2, 0.0f, 1, null), sliderColors, z6, 0.0f, f, list, fH1, fH0, composerS, (i11 & 112) | 265222 | ((i10 << 6) & 896) | ((i10 << 9) & 57344));
        f(boxScopeInstance, companion2, f11, mutableInteractionSource, sliderColors, z6, f10, composerS, (i11 & 7168) | 1572918 | ((i10 << 3) & 57344) | ((i10 << 15) & 458752));
        composerS.Q();
        composerS.Q();
        composerS.Q();
        composerS.d();
        composerS.Q();
        composerS.Q();
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new SliderKt$SliderImpl$2(z6, f, list, sliderColors, f6, mutableInteractionSource, modifier, i10));
        }
    }
}
