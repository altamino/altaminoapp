package androidx.compose.animation.core;

import androidx.compose.runtime.collection.MutableVector;
import e8.p;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.compose.animation.core.InfiniteTransition$run$1", f = "InfiniteTransition.kt", l = {147, 169}, m = "invokeSuspend")
final class InfiniteTransition$run$1 extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ InfiniteTransition this$0;

    /* JADX INFO: renamed from: androidx.compose.animation.core.InfiniteTransition$run$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.l<Long, l0> {
        final /* synthetic */ o0 $$this$LaunchedEffect;
        final /* synthetic */ m0 $durationScale;
        final /* synthetic */ InfiniteTransition this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(InfiniteTransition infiniteTransition, m0 m0Var, o0 o0Var) {
            super(1);
            this.this$0 = infiniteTransition;
            this.$durationScale = m0Var;
            this.$$this$LaunchedEffect = o0Var;
        }

        public final void a(long j6) {
            int i10 = 0;
            if (this.this$0.startTimeNanos == Long.MIN_VALUE || this.$durationScale.element != SuspendAnimationKt.o(this.$$this$LaunchedEffect.getCoroutineContext())) {
                this.this$0.startTimeNanos = j6;
                MutableVector<InfiniteTransition.TransitionAnimationState<?, ?>> mutableVectorF = this.this$0.f();
                int iN = mutableVectorF.n();
                if (iN > 0) {
                    InfiniteTransition.TransitionAnimationState<?, ?>[] transitionAnimationStateArrM = mutableVectorF.m();
                    int i11 = 0;
                    do {
                        transitionAnimationStateArrM[i11].f();
                        i11++;
                    } while (i11 < iN);
                }
                this.$durationScale.element = SuspendAnimationKt.o(this.$$this$LaunchedEffect.getCoroutineContext());
            }
            if (this.$durationScale.element != 0.0f) {
                this.this$0.i((long) ((j6 - this.this$0.startTimeNanos) / this.$durationScale.element));
                return;
            }
            MutableVector<InfiniteTransition.TransitionAnimationState<?, ?>> mutableVectorF2 = this.this$0.f();
            int iN2 = mutableVectorF2.n();
            if (iN2 > 0) {
                InfiniteTransition.TransitionAnimationState<?, ?>[] transitionAnimationStateArrM2 = mutableVectorF2.m();
                do {
                    transitionAnimationStateArrM2[i10].k();
                    i10++;
                } while (i10 < iN2);
            }
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Long l) {
            a(l.longValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.core.InfiniteTransition$run$1$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements e8.a<Float> {
        final /* synthetic */ o0 $$this$LaunchedEffect;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(o0 o0Var) {
            super(0);
            this.$$this$LaunchedEffect = o0Var;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Float invoke() {
            return Float.valueOf(SuspendAnimationKt.o(this.$$this$LaunchedEffect.getCoroutineContext()));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InfiniteTransition$run$1(InfiniteTransition infiniteTransition, kotlin.coroutines.d<? super InfiniteTransition$run$1> dVar) {
        super(2, dVar);
        this.this$0 = infiniteTransition;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        InfiniteTransition$run$1 infiniteTransition$run$1 = new InfiniteTransition$run$1(this.this$0, dVar);
        infiniteTransition$run$1.L$0 = obj;
        return infiniteTransition$run$1;
    }

    /* JADX INFO: renamed from: androidx.compose.animation.core.InfiniteTransition$run$1$3, reason: invalid class name */
    @kotlin.coroutines.jvm.internal.f(c = "androidx.compose.animation.core.InfiniteTransition$run$1$3", f = "InfiniteTransition.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass3 extends l implements p<Float, kotlin.coroutines.d<? super Boolean>, Object> {
        /* synthetic */ float F$0;
        int label;

        AnonymousClass3(kotlin.coroutines.d<? super AnonymousClass3> dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(dVar);
            anonymousClass3.F$0 = ((Number) obj).floatValue();
            return anonymousClass3;
        }

        @Nullable
        public final Object f(float f, @Nullable kotlin.coroutines.d<? super Boolean> dVar) {
            return ((AnonymousClass3) create(Float.valueOf(f), dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ Object invoke(Float f, kotlin.coroutines.d<? super Boolean> dVar) {
            return f(f.floatValue(), dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            boolean z6;
            kotlin.coroutines.intrinsics.d.e();
            if (this.label == 0) {
                w.b(obj);
                if (this.F$0 > 0.0f) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                return kotlin.coroutines.jvm.internal.b.a(z6);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
        return ((InfiniteTransition$run$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0055 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:17:0x005d  */
    /* JADX WARN: Code duplicated, block: B:19:0x0078 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x005b -> B:12:0x0042). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0076 -> B:12:0x0042). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:17:0x005d
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.a
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.b.e()
            int r1 = r8.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L31
            if (r1 == r3) goto L23
            if (r1 != r2) goto L1b
            java.lang.Object r1 = r8.L$1
            kotlin.jvm.internal.m0 r1 = (kotlin.jvm.internal.m0) r1
            java.lang.Object r4 = r8.L$0
            kotlinx.coroutines.o0 r4 = (kotlinx.coroutines.o0) r4
            w7.w.b(r9)
            r9 = r4
            goto L41
        L1b:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L23:
            java.lang.Object r1 = r8.L$1
            kotlin.jvm.internal.m0 r1 = (kotlin.jvm.internal.m0) r1
            java.lang.Object r4 = r8.L$0
            kotlinx.coroutines.o0 r4 = (kotlinx.coroutines.o0) r4
            w7.w.b(r9)
            r9 = r4
            r4 = r8
            goto L56
        L31:
            w7.w.b(r9)
            java.lang.Object r9 = r8.L$0
            kotlinx.coroutines.o0 r9 = (kotlinx.coroutines.o0) r9
            kotlin.jvm.internal.m0 r1 = new kotlin.jvm.internal.m0
            r1.<init>()
            r4 = 1065353216(0x3f800000, float:1.0)
            r1.element = r4
        L41:
            r4 = r8
        L42:
            androidx.compose.animation.core.InfiniteTransition$run$1$1 r5 = new androidx.compose.animation.core.InfiniteTransition$run$1$1
            androidx.compose.animation.core.InfiniteTransition r6 = r4.this$0
            r5.<init>(r6, r1, r9)
            r4.L$0 = r9
            r4.L$1 = r1
            r4.label = r3
            java.lang.Object r5 = androidx.compose.animation.core.InfiniteAnimationPolicyKt.a(r5, r4)
            if (r5 != r0) goto L56
            return r0
        L56:
            float r5 = r1.element
            r6 = 0
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 != 0) goto L42
            androidx.compose.animation.core.InfiniteTransition$run$1$2 r5 = new androidx.compose.animation.core.InfiniteTransition$run$1$2
            r5.<init>(r9)
            kotlinx.coroutines.flow.g r5 = androidx.compose.runtime.SnapshotStateKt.o(r5)
            androidx.compose.animation.core.InfiniteTransition$run$1$3 r6 = new androidx.compose.animation.core.InfiniteTransition$run$1$3
            r7 = 0
            r6.<init>(r7)
            r4.L$0 = r9
            r4.L$1 = r1
            r4.label = r2
            java.lang.Object r5 = kotlinx.coroutines.flow.i.u(r5, r6, r4)
            if (r5 != r0) goto L42
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.InfiniteTransition$run$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
