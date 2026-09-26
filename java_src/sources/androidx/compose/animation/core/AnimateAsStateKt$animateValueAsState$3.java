package androidx.compose.animation.core;

import androidx.compose.runtime.State;
import e8.p;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes7.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3", f = "AnimateAsState.kt", l = {368}, m = "invokeSuspend")
final class AnimateAsStateKt$animateValueAsState$3 extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
    final /* synthetic */ State<AnimationSpec<T>> $animSpec$delegate;
    final /* synthetic */ Animatable<T, V> $animatable;
    final /* synthetic */ kotlinx.coroutines.channels.d<T> $channel;
    final /* synthetic */ State<e8.l<T, l0>> $listener$delegate;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: renamed from: androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1, reason: invalid class name */
    @kotlin.coroutines.jvm.internal.f(c = "androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1", f = "AnimateAsState.kt", l = {377}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ State<AnimationSpec<T>> $animSpec$delegate;
        final /* synthetic */ Animatable<T, V> $animatable;
        final /* synthetic */ State<e8.l<T, l0>> $listener$delegate;
        final /* synthetic */ T $newTarget;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(T t5, Animatable<T, V> animatable, State<? extends AnimationSpec<T>> state, State<? extends e8.l<? super T, l0>> state2, kotlin.coroutines.d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$newTarget = t5;
            this.$animatable = animatable;
            this.$animSpec$delegate = state;
            this.$listener$delegate = state2;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return new AnonymousClass1(this.$newTarget, this.$animatable, this.$animSpec$delegate, this.$listener$delegate, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

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
                if (!t.e(this.$newTarget, this.$animatable.l())) {
                    Animatable<T, V> animatable = this.$animatable;
                    T t5 = this.$newTarget;
                    AnimationSpec animationSpecG = AnimateAsStateKt.g(this.$animSpec$delegate);
                    this.label = 1;
                    if (Animatable.f(animatable, t5, animationSpecG, null, null, this, 12, null) == objE) {
                        return objE;
                    }
                }
                return l0.INSTANCE;
            }
            e8.l lVarF = AnimateAsStateKt.f(this.$listener$delegate);
            if (lVarF != null) {
                lVarF.invoke(this.$animatable.n());
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AnimateAsStateKt$animateValueAsState$3(kotlinx.coroutines.channels.d<T> dVar, Animatable<T, V> animatable, State<? extends AnimationSpec<T>> state, State<? extends e8.l<? super T, l0>> state2, kotlin.coroutines.d<? super AnimateAsStateKt$animateValueAsState$3> dVar2) {
        super(2, dVar2);
        this.$channel = dVar;
        this.$animatable = animatable;
        this.$animSpec$delegate = state;
        this.$listener$delegate = state2;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        AnimateAsStateKt$animateValueAsState$3 animateAsStateKt$animateValueAsState$3 = new AnimateAsStateKt$animateValueAsState$3(this.$channel, this.$animatable, this.$animSpec$delegate, this.$listener$delegate, dVar);
        animateAsStateKt$animateValueAsState$3.L$0 = obj;
        return animateAsStateKt$animateValueAsState$3;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
        return ((AnimateAsStateKt$animateValueAsState$3) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0043 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:14:0x004c  */
    /* JADX WARN: Code duplicated, block: B:16:0x005c  */
    /* JADX WARN: Code duplicated, block: B:17:0x005e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0041 -> B:12:0x0044). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:11:0x0043
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.a
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r18) {
        /*
            r17 = this;
            r0 = r17
            java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L24
            if (r2 != r3) goto L1c
            java.lang.Object r2 = r0.L$1
            kotlinx.coroutines.channels.f r2 = (kotlinx.coroutines.channels.f) r2
            java.lang.Object r4 = r0.L$0
            kotlinx.coroutines.o0 r4 = (kotlinx.coroutines.o0) r4
            w7.w.b(r18)
            r6 = r18
            r5 = r0
            goto L44
        L1c:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L24:
            w7.w.b(r18)
            java.lang.Object r2 = r0.L$0
            kotlinx.coroutines.o0 r2 = (kotlinx.coroutines.o0) r2
            kotlinx.coroutines.channels.d<T> r4 = r0.$channel
            kotlinx.coroutines.channels.f r4 = r4.iterator()
            r5 = r0
            r16 = r4
            r4 = r2
            r2 = r16
        L37:
            r5.L$0 = r4
            r5.L$1 = r2
            r5.label = r3
            java.lang.Object r6 = r2.b(r5)
            if (r6 != r1) goto L44
            return r1
        L44:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L78
            java.lang.Object r6 = r2.next()
            kotlinx.coroutines.channels.d<T> r7 = r5.$channel
            java.lang.Object r7 = r7.q()
            java.lang.Object r7 = kotlinx.coroutines.channels.h.f(r7)
            if (r7 != 0) goto L5e
            r9 = r6
            goto L5f
        L5e:
            r9 = r7
        L5f:
            r6 = 0
            r14 = 0
            androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1 r15 = new androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1
            androidx.compose.animation.core.Animatable<T, V> r10 = r5.$animatable
            androidx.compose.runtime.State<androidx.compose.animation.core.AnimationSpec<T>> r11 = r5.$animSpec$delegate
            androidx.compose.runtime.State<e8.l<T, w7.l0>> r12 = r5.$listener$delegate
            r13 = 0
            r8 = r15
            r8.<init>(r9, r10, r11, r12, r13)
            r11 = 3
            r12 = 0
            r7 = r4
            r8 = r6
            r9 = r14
            r10 = r15
            kotlinx.coroutines.i.d(r7, r8, r9, r10, r11, r12)
            goto L37
        L78:
            w7.l0 r1 = w7.l0.INSTANCE
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
