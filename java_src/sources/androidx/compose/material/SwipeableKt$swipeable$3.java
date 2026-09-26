package androidx.compose.material;

import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableKt$draggable$1;
import androidx.compose.foundation.gestures.DraggableKt$draggable$2;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import e8.p;
import e8.q;
import java.util.Map;
import kotlin.collections.d0;
import kotlin.collections.s0;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes5.dex */
final class SwipeableKt$swipeable$3 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ Map<Float, T> $anchors;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ Orientation $orientation;
    final /* synthetic */ ResistanceConfig $resistance;
    final /* synthetic */ boolean $reverseDirection;
    final /* synthetic */ SwipeableState<T> $state;
    final /* synthetic */ p<T, T, ThresholdConfig> $thresholds;
    final /* synthetic */ float $velocityThreshold;

    /* JADX INFO: renamed from: androidx.compose.material.SwipeableKt$swipeable$3$3, reason: invalid class name */
    @f(c = "androidx.compose.material.SwipeableKt$swipeable$3$3", f = "Swipeable.kt", l = {TypedValues.MotionType.TYPE_PATHMOTION_ARC}, m = "invokeSuspend")
    static final class AnonymousClass3 extends l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ Map<Float, T> $anchors;
        final /* synthetic */ Density $density;
        final /* synthetic */ ResistanceConfig $resistance;
        final /* synthetic */ SwipeableState<T> $state;
        final /* synthetic */ p<T, T, ThresholdConfig> $thresholds;
        final /* synthetic */ float $velocityThreshold;
        int label;

        /* JADX INFO: renamed from: androidx.compose.material.SwipeableKt$swipeable$3$3$1, reason: invalid class name */
        static final class AnonymousClass1 extends v implements p<Float, Float, Float> {
            final /* synthetic */ Map<Float, T> $anchors;
            final /* synthetic */ Density $density;
            final /* synthetic */ p<T, T, ThresholdConfig> $thresholds;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass1(Map<Float, ? extends T> map, p<? super T, ? super T, ? extends ThresholdConfig> pVar, Density density) {
                super(2);
                this.$anchors = map;
                this.$thresholds = pVar;
                this.$density = density;
            }

            /* JADX WARN: Type inference incomplete: some casts might be missing */
            @NotNull
            public final Float a(float f, float f6) {
                return Float.valueOf(this.$thresholds.invoke((T) s0.i(this.$anchors, Float.valueOf(f)), (T) s0.i(this.$anchors, Float.valueOf(f6))).a(this.$density, f, f6));
            }

            @Override // e8.p
            public /* bridge */ /* synthetic */ Float invoke(Float f, Float f6) {
                return a(f.floatValue(), f6.floatValue());
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass3(SwipeableState<T> swipeableState, Map<Float, ? extends T> map, ResistanceConfig resistanceConfig, Density density, p<? super T, ? super T, ? extends ThresholdConfig> pVar, float f, d<? super AnonymousClass3> dVar) {
            super(2, dVar);
            this.$state = swipeableState;
            this.$anchors = map;
            this.$resistance = resistanceConfig;
            this.$density = density;
            this.$thresholds = pVar;
            this.$velocityThreshold = f;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return new AnonymousClass3(this.$state, this.$anchors, this.$resistance, this.$density, this.$thresholds, this.$velocityThreshold, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass3) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w.b(obj);
                Map mapM = this.$state.m();
                this.$state.C(this.$anchors);
                this.$state.F(this.$resistance);
                this.$state.G(new AnonymousClass1(this.$anchors, this.$thresholds, this.$density));
                this.$state.H(this.$density.H0(this.$velocityThreshold));
                SwipeableState<T> swipeableState = this.$state;
                Object obj2 = this.$anchors;
                this.label = 1;
                if (swipeableState.B(mapM, obj2, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SwipeableKt$swipeable$3(Map<Float, ? extends T> map, SwipeableState<T> swipeableState, Orientation orientation, boolean z6, MutableInteractionSource mutableInteractionSource, boolean z10, ResistanceConfig resistanceConfig, p<? super T, ? super T, ? extends ThresholdConfig> pVar, float f) {
        super(3);
        this.$anchors = map;
        this.$state = swipeableState;
        this.$orientation = orientation;
        this.$enabled = z6;
        this.$interactionSource = mutableInteractionSource;
        this.$reverseDirection = z10;
        this.$resistance = resistanceConfig;
        this.$thresholds = pVar;
        this.$velocityThreshold = f;
    }

    /* JADX INFO: renamed from: androidx.compose.material.SwipeableKt$swipeable$3$4, reason: invalid class name */
    @f(c = "androidx.compose.material.SwipeableKt$swipeable$3$4", f = "Swipeable.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass4 extends l implements q<o0, Float, d<? super l0>, Object> {
        final /* synthetic */ SwipeableState<T> $state;
        /* synthetic */ float F$0;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.material.SwipeableKt$swipeable$3$4$1, reason: invalid class name */
        @f(c = "androidx.compose.material.SwipeableKt$swipeable$3$4$1", f = "Swipeable.kt", l = {616}, m = "invokeSuspend")
        static final class AnonymousClass1 extends l implements p<o0, d<? super l0>, Object> {
            final /* synthetic */ SwipeableState<T> $state;
            final /* synthetic */ float $velocity;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(SwipeableState<T> swipeableState, float f, d<? super AnonymousClass1> dVar) {
                super(2, dVar);
                this.$state = swipeableState;
                this.$velocity = f;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                return new AnonymousClass1(this.$state, this.$velocity, dVar);
            }

            @Override // e8.p
            @Nullable
            public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 == 1) {
                        w.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    w.b(obj);
                    SwipeableState<T> swipeableState = this.$state;
                    float f = this.$velocity;
                    this.label = 1;
                    if (swipeableState.A(f, this) == objE) {
                        return objE;
                    }
                }
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(SwipeableState<T> swipeableState, d<? super AnonymousClass4> dVar) {
            super(3, dVar);
            this.$state = swipeableState;
        }

        @Nullable
        public final Object f(@NotNull o0 o0Var, float f, @Nullable d<? super l0> dVar) {
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.$state, dVar);
            anonymousClass4.L$0 = o0Var;
            anonymousClass4.F$0 = f;
            return anonymousClass4.invokeSuspend(l0.INSTANCE);
        }

        @Override // e8.q
        public /* bridge */ /* synthetic */ Object invoke(o0 o0Var, Float f, d<? super l0> dVar) {
            return f(o0Var, f.floatValue(), dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.d.e();
            if (this.label == 0) {
                w.b(obj);
                k.d((o0) this.L$0, null, null, new AnonymousClass1(this.$state, this.F$0, null), 3, null);
                return l0.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(43594985);
        if (!(!this.$anchors.isEmpty())) {
            throw new IllegalArgumentException("You must have at least one anchor.".toString());
        }
        if (d0.a0(this.$anchors.values()).size() != this.$anchors.size()) {
            throw new IllegalArgumentException("You cannot have two anchors mapped to the same state.".toString());
        }
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        this.$state.l(this.$anchors);
        Map<Float, T> map = this.$anchors;
        SwipeableState<T> swipeableState = this.$state;
        EffectsKt.e(map, swipeableState, new AnonymousClass3(swipeableState, map, this.$resistance, density, this.$thresholds, this.$velocityThreshold, null), composer, 8);
        Modifier modifierH = DraggableKt.h(Modifier.Companion, this.$state.q(), this.$orientation, (32 & 4) != 0 ? true : this.$enabled, (32 & 8) != 0 ? null : this.$interactionSource, (32 & 16) != 0 ? false : this.$state.y(), (32 & 32) != 0 ? new DraggableKt$draggable$1(null) : null, (32 & 64) != 0 ? new DraggableKt$draggable$2(null) : new AnonymousClass4(this.$state, null), (32 & 128) != 0 ? false : this.$reverseDirection);
        composer.Q();
        return modifierH;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
