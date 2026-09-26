package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import e8.l;
import e8.p;
import e8.q;
import e8.r;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class AnimatedContentKt$AnimatedContent$5$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ r<AnimatedVisibilityScope, S, Composer, Integer, l0> $content;
    final /* synthetic */ SnapshotStateList<S> $currentlyVisible;
    final /* synthetic */ AnimatedContentScope<S> $rootScope;
    final /* synthetic */ S $stateForContent;
    final /* synthetic */ Transition<S> $this_AnimatedContent;
    final /* synthetic */ l<AnimatedContentScope<S>, ContentTransform> $transitionSpec;

    /* JADX INFO: renamed from: androidx.compose.animation.AnimatedContentKt$AnimatedContent$5$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements q<MeasureScope, Measurable, Constraints, MeasureResult> {
        final /* synthetic */ ContentTransform $specOnEnter;

        /* JADX INFO: renamed from: androidx.compose.animation.AnimatedContentKt$AnimatedContent$5$1$1$1, reason: invalid class name and collision with other inner class name */
        static final class C00241 extends v implements l<Placeable.PlacementScope, l0> {
            final /* synthetic */ Placeable $placeable;
            final /* synthetic */ ContentTransform $specOnEnter;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00241(Placeable placeable, ContentTransform contentTransform) {
                super(1);
                this.$placeable = placeable;
                this.$specOnEnter = contentTransform;
            }

            public final void a(@NotNull Placeable.PlacementScope layout) {
                t.j(layout, "$this$layout");
                layout.i(this.$placeable, 0, 0, this.$specOnEnter.d());
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
                a(placementScope);
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ContentTransform contentTransform) {
            super(3);
            this.$specOnEnter = contentTransform;
        }

        @NotNull
        public final MeasureResult a(@NotNull MeasureScope layout, @NotNull Measurable measurable, long j6) {
            t.j(layout, "$this$layout");
            t.j(measurable, "measurable");
            Placeable placeableB0 = measurable.b0(j6);
            return MeasureScope.CC.b(layout, placeableB0.Q0(), placeableB0.B0(), null, new C00241(placeableB0, this.$specOnEnter), 4, null);
        }

        @Override // e8.q
        public /* bridge */ /* synthetic */ MeasureResult invoke(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
            return a(measureScope, measurable, constraints.t());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [S] */
    /* JADX INFO: renamed from: androidx.compose.animation.AnimatedContentKt$AnimatedContent$5$1$3, reason: invalid class name */
    static final class AnonymousClass3<S> extends v implements l<S, Boolean> {
        final /* synthetic */ S $stateForContent;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(S s) {
            super(1);
            this.$stateForContent = s;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(S s) {
            return Boolean.valueOf(t.e(s, this.$stateForContent));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.AnimatedContentKt$AnimatedContent$5$1$4, reason: invalid class name */
    static final class AnonymousClass4 extends v implements q<AnimatedVisibilityScope, Composer, Integer, l0> {
        final /* synthetic */ int $$dirty;
        final /* synthetic */ r<AnimatedVisibilityScope, S, Composer, Integer, l0> $content;
        final /* synthetic */ SnapshotStateList<S> $currentlyVisible;
        final /* synthetic */ AnimatedContentScope<S> $rootScope;
        final /* synthetic */ S $stateForContent;

        /* JADX INFO: renamed from: androidx.compose.animation.AnimatedContentKt$AnimatedContent$5$1$4$1, reason: invalid class name */
        static final class AnonymousClass1 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
            final /* synthetic */ SnapshotStateList<S> $currentlyVisible;
            final /* synthetic */ AnimatedContentScope<S> $rootScope;
            final /* synthetic */ S $stateForContent;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(SnapshotStateList<S> snapshotStateList, S s, AnimatedContentScope<S> animatedContentScope) {
                super(1);
                this.$currentlyVisible = snapshotStateList;
                this.$stateForContent = s;
                this.$rootScope = animatedContentScope;
            }

            @Override // e8.l
            @NotNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
                t.j(DisposableEffect, "$this$DisposableEffect");
                final SnapshotStateList<S> snapshotStateList = this.$currentlyVisible;
                final S s = this.$stateForContent;
                final AnimatedContentScope<S> animatedContentScope = this.$rootScope;
                return new DisposableEffectResult() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$5$1$4$1$invoke$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public void t() {
                        snapshotStateList.remove(s);
                        animatedContentScope.m().remove(s);
                    }
                };
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass4(AnimatedContentScope<S> animatedContentScope, S s, r<? super AnimatedVisibilityScope, ? super S, ? super Composer, ? super Integer, l0> rVar, int i10, SnapshotStateList<S> snapshotStateList) {
            super(3);
            this.$rootScope = animatedContentScope;
            this.$stateForContent = s;
            this.$content = rVar;
            this.$$dirty = i10;
            this.$currentlyVisible = snapshotStateList;
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
        @ComposableTarget
        @Composable
        public final void a(@NotNull AnimatedVisibilityScope AnimatedVisibility, @Nullable Composer composer, int i10) {
            t.j(AnimatedVisibility, "$this$AnimatedVisibility");
            if ((i10 & 14) == 0) {
                i10 |= composer.k(AnimatedVisibility) ? 4 : 2;
            }
            if ((i10 & 91) == 18 && composer.b()) {
                composer.g();
                return;
            }
            int i11 = i10 & 14;
            EffectsKt.a(AnimatedVisibility, new AnonymousClass1(this.$currentlyVisible, this.$stateForContent, this.$rootScope), composer, i11);
            this.$rootScope.m().put(this.$stateForContent, ((AnimatedVisibilityScopeImpl) AnimatedVisibility).b());
            this.$content.invoke(AnimatedVisibility, this.$stateForContent, composer, Integer.valueOf(i11 | ((this.$$dirty >> 9) & 896)));
        }

        @Override // e8.q
        public /* bridge */ /* synthetic */ l0 invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer, Integer num) {
            a(animatedVisibilityScope, composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AnimatedContentKt$AnimatedContent$5$1(Transition<S> transition, S s, int i10, l<? super AnimatedContentScope<S>, ContentTransform> lVar, AnimatedContentScope<S> animatedContentScope, r<? super AnimatedVisibilityScope, ? super S, ? super Composer, ? super Integer, l0> rVar, SnapshotStateList<S> snapshotStateList) {
        super(2);
        this.$this_AnimatedContent = transition;
        this.$stateForContent = s;
        this.$$dirty = i10;
        this.$transitionSpec = lVar;
        this.$rootScope = animatedContentScope;
        this.$content = rVar;
        this.$currentlyVisible = snapshotStateList;
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
    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        l<AnimatedContentScope<S>, ContentTransform> lVar = this.$transitionSpec;
        Object obj = this.$rootScope;
        composer.G(-492369756);
        ContentTransform contentTransformH = composer.H();
        Composer.Companion companion = Composer.Companion;
        if (contentTransformH == companion.a()) {
            contentTransformH = lVar.invoke(obj);
            composer.z(contentTransformH);
        }
        composer.Q();
        ContentTransform contentTransform = (ContentTransform) contentTransformH;
        Boolean boolValueOf = Boolean.valueOf(t.e(this.$this_AnimatedContent.k().b(), this.$stateForContent));
        l<AnimatedContentScope<S>, ContentTransform> lVar2 = this.$transitionSpec;
        Object obj2 = this.$rootScope;
        composer.G(1157296644);
        boolean zK = composer.k(boolValueOf);
        Object objH = composer.H();
        if (zK || objH == companion.a()) {
            objH = lVar2.invoke(obj2).a();
            composer.z(objH);
        }
        composer.Q();
        ExitTransition exitTransition = (ExitTransition) objH;
        S s = this.$stateForContent;
        Transition<S> transition = this.$this_AnimatedContent;
        composer.G(-492369756);
        Object objH2 = composer.H();
        if (objH2 == companion.a()) {
            objH2 = new AnimatedContentScope.ChildData(t.e(s, transition.m()));
            composer.z(objH2);
        }
        composer.Q();
        AnimatedContentScope.ChildData childData = (AnimatedContentScope.ChildData) objH2;
        EnterTransition enterTransitionC = contentTransform.c();
        Modifier modifierA = LayoutModifierKt.a(Modifier.Companion, new AnonymousClass1(contentTransform));
        childData.b(t.e(this.$stateForContent, this.$this_AnimatedContent.m()));
        AnimatedVisibilityKt.c(this.$this_AnimatedContent, new AnonymousClass3(this.$stateForContent), modifierA.B(childData), enterTransitionC, exitTransition, ComposableLambdaKt.b(composer, -1816907410, true, new AnonymousClass4(this.$rootScope, this.$stateForContent, this.$content, this.$$dirty, this.$currentlyVisible)), composer, 196608 | (this.$$dirty & 14), 0);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
