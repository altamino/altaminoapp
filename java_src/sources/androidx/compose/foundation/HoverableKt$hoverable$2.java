package androidx.compose.foundation;

import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import e8.l;
import e8.p;
import e8.q;
import kotlin.coroutines.d;
import kotlin.coroutines.g;
import kotlin.coroutines.h;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes3.dex */
final class HoverableKt$hoverable$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $interactionSource;

    /* JADX INFO: renamed from: androidx.compose.foundation.HoverableKt$hoverable$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
        final /* synthetic */ MutableState<HoverInteraction.Enter> $hoverInteraction$delegate;
        final /* synthetic */ MutableInteractionSource $interactionSource;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(MutableState<HoverInteraction.Enter> mutableState, MutableInteractionSource mutableInteractionSource) {
            super(1);
            this.$hoverInteraction$delegate = mutableState;
            this.$interactionSource = mutableInteractionSource;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
            t.j(DisposableEffect, "$this$DisposableEffect");
            final MutableState<HoverInteraction.Enter> mutableState = this.$hoverInteraction$delegate;
            final MutableInteractionSource mutableInteractionSource = this.$interactionSource;
            return new DisposableEffectResult() { // from class: androidx.compose.foundation.HoverableKt$hoverable$2$1$invoke$$inlined$onDispose$1
                @Override // androidx.compose.runtime.DisposableEffectResult
                public void t() {
                    HoverableKt$hoverable$2.i(mutableState, mutableInteractionSource);
                }
            };
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.HoverableKt$hoverable$2$2, reason: invalid class name */
    @f(c = "androidx.compose.foundation.HoverableKt$hoverable$2$2", f = "Hoverable.kt", l = {88}, m = "invokeSuspend")
    static final class AnonymousClass2 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ boolean $enabled;
        final /* synthetic */ MutableState<HoverInteraction.Enter> $hoverInteraction$delegate;
        final /* synthetic */ MutableInteractionSource $interactionSource;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(boolean z6, MutableState<HoverInteraction.Enter> mutableState, MutableInteractionSource mutableInteractionSource, d<? super AnonymousClass2> dVar) {
            super(2, dVar);
            this.$enabled = z6;
            this.$hoverInteraction$delegate = mutableState;
            this.$interactionSource = mutableInteractionSource;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return new AnonymousClass2(this.$enabled, this.$hoverInteraction$delegate, this.$interactionSource, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
                if (!this.$enabled) {
                    MutableState<HoverInteraction.Enter> mutableState = this.$hoverInteraction$delegate;
                    MutableInteractionSource mutableInteractionSource = this.$interactionSource;
                    this.label = 1;
                    if (HoverableKt$hoverable$2.f(mutableState, mutableInteractionSource, this) == objE) {
                        return objE;
                    }
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.HoverableKt$hoverable$2$3, reason: invalid class name */
    @f(c = "androidx.compose.foundation.HoverableKt$hoverable$2$3", f = "Hoverable.kt", l = {102}, m = "invokeSuspend")
    static final class AnonymousClass3 extends kotlin.coroutines.jvm.internal.l implements p<PointerInputScope, d<? super l0>, Object> {
        final /* synthetic */ MutableState<HoverInteraction.Enter> $hoverInteraction$delegate;
        final /* synthetic */ MutableInteractionSource $interactionSource;
        final /* synthetic */ o0 $scope;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(o0 o0Var, MutableInteractionSource mutableInteractionSource, MutableState<HoverInteraction.Enter> mutableState, d<? super AnonymousClass3> dVar) {
            super(2, dVar);
            this.$scope = o0Var;
            this.$interactionSource = mutableInteractionSource;
            this.$hoverInteraction$delegate = mutableState;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$scope, this.$interactionSource, this.$hoverInteraction$delegate, dVar);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass3) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.HoverableKt$hoverable$2$3$1, reason: invalid class name */
        @f(c = "androidx.compose.foundation.HoverableKt$hoverable$2$3$1", f = "Hoverable.kt", l = {104}, m = "invokeSuspend")
        static final class AnonymousClass1 extends k implements p<AwaitPointerEventScope, d<? super l0>, Object> {
            final /* synthetic */ g $currentContext;
            final /* synthetic */ MutableState<HoverInteraction.Enter> $hoverInteraction$delegate;
            final /* synthetic */ MutableInteractionSource $interactionSource;
            final /* synthetic */ o0 $scope;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX INFO: renamed from: androidx.compose.foundation.HoverableKt$hoverable$2$3$1$1, reason: invalid class name and collision with other inner class name */
            @f(c = "androidx.compose.foundation.HoverableKt$hoverable$2$3$1$1", f = "Hoverable.kt", l = {106}, m = "invokeSuspend")
            static final class C00251 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
                final /* synthetic */ MutableState<HoverInteraction.Enter> $hoverInteraction$delegate;
                final /* synthetic */ MutableInteractionSource $interactionSource;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C00251(MutableInteractionSource mutableInteractionSource, MutableState<HoverInteraction.Enter> mutableState, d<? super C00251> dVar) {
                    super(2, dVar);
                    this.$interactionSource = mutableInteractionSource;
                    this.$hoverInteraction$delegate = mutableState;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @NotNull
                public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                    return new C00251(this.$interactionSource, this.$hoverInteraction$delegate, dVar);
                }

                @Override // e8.p
                @Nullable
                public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                    return ((C00251) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
                        MutableInteractionSource mutableInteractionSource = this.$interactionSource;
                        MutableState<HoverInteraction.Enter> mutableState = this.$hoverInteraction$delegate;
                        this.label = 1;
                        if (HoverableKt$hoverable$2.e(mutableInteractionSource, mutableState, this) == objE) {
                            return objE;
                        }
                    }
                    return l0.INSTANCE;
                }
            }

            /* JADX INFO: renamed from: androidx.compose.foundation.HoverableKt$hoverable$2$3$1$2, reason: invalid class name */
            @f(c = "androidx.compose.foundation.HoverableKt$hoverable$2$3$1$2", f = "Hoverable.kt", l = {107}, m = "invokeSuspend")
            static final class AnonymousClass2 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
                final /* synthetic */ MutableState<HoverInteraction.Enter> $hoverInteraction$delegate;
                final /* synthetic */ MutableInteractionSource $interactionSource;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass2(MutableState<HoverInteraction.Enter> mutableState, MutableInteractionSource mutableInteractionSource, d<? super AnonymousClass2> dVar) {
                    super(2, dVar);
                    this.$hoverInteraction$delegate = mutableState;
                    this.$interactionSource = mutableInteractionSource;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @NotNull
                public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                    return new AnonymousClass2(this.$hoverInteraction$delegate, this.$interactionSource, dVar);
                }

                @Override // e8.p
                @Nullable
                public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                    return ((AnonymousClass2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
                        MutableState<HoverInteraction.Enter> mutableState = this.$hoverInteraction$delegate;
                        MutableInteractionSource mutableInteractionSource = this.$interactionSource;
                        this.label = 1;
                        if (HoverableKt$hoverable$2.f(mutableState, mutableInteractionSource, this) == objE) {
                            return objE;
                        }
                    }
                    return l0.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(g gVar, o0 o0Var, MutableInteractionSource mutableInteractionSource, MutableState<HoverInteraction.Enter> mutableState, d<? super AnonymousClass1> dVar) {
                super(2, dVar);
                this.$currentContext = gVar;
                this.$scope = o0Var;
                this.$interactionSource = mutableInteractionSource;
                this.$hoverInteraction$delegate = mutableState;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$currentContext, this.$scope, this.$interactionSource, this.$hoverInteraction$delegate, dVar);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // e8.p
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable d<? super l0> dVar) {
                return ((AnonymousClass1) create(awaitPointerEventScope, dVar)).invokeSuspend(l0.INSTANCE);
            }

            /* JADX WARN: Code duplicated, block: B:11:0x0030  */
            /* JADX WARN: Code duplicated, block: B:13:0x003a A[RETURN] */
            /* JADX WARN: Code duplicated, block: B:14:0x003b  */
            /* JADX WARN: Code duplicated, block: B:17:0x0052  */
            /* JADX WARN: Code duplicated, block: B:18:0x0065  */
            /* JADX WARN: Code duplicated, block: B:20:0x006f  */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x003b -> B:15:0x0040). Please report as a decompilation issue!!! */
            /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
                	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                */
            @Override // kotlin.coroutines.jvm.internal.a
            @org.jetbrains.annotations.Nullable
            public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r15) {
                /*
                    r14 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.b.e()
                    int r1 = r14.label
                    r2 = 1
                    r3 = 0
                    if (r1 == 0) goto L1f
                    if (r1 != r2) goto L17
                    java.lang.Object r1 = r14.L$0
                    androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                    w7.w.b(r15)
                    r4 = r1
                    r1 = r0
                    r0 = r14
                    goto L40
                L17:
                    java.lang.IllegalStateException r15 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r15.<init>(r0)
                    throw r15
                L1f:
                    w7.w.b(r15)
                    java.lang.Object r15 = r14.L$0
                    androidx.compose.ui.input.pointer.AwaitPointerEventScope r15 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r15
                    r1 = r15
                    r15 = r14
                L28:
                    kotlin.coroutines.g r4 = r15.$currentContext
                    boolean r4 = kotlinx.coroutines.f2.m(r4)
                    if (r4 == 0) goto L85
                    r15.L$0 = r1
                    r15.label = r2
                    java.lang.Object r4 = androidx.compose.ui.input.pointer.b.a(r1, r3, r15, r2, r3)
                    if (r4 != r0) goto L3b
                    return r0
                L3b:
                    r13 = r0
                    r0 = r15
                    r15 = r4
                    r4 = r1
                    r1 = r13
                L40:
                    androidx.compose.ui.input.pointer.PointerEvent r15 = (androidx.compose.ui.input.pointer.PointerEvent) r15
                    int r15 = r15.f()
                    androidx.compose.ui.input.pointer.PointerEventType$Companion r5 = androidx.compose.ui.input.pointer.PointerEventType.Companion
                    int r6 = r5.a()
                    boolean r6 = androidx.compose.ui.input.pointer.PointerEventType.j(r15, r6)
                    if (r6 == 0) goto L65
                    kotlinx.coroutines.o0 r7 = r0.$scope
                    r8 = 0
                    r9 = 0
                    androidx.compose.foundation.HoverableKt$hoverable$2$3$1$1 r10 = new androidx.compose.foundation.HoverableKt$hoverable$2$3$1$1
                    androidx.compose.foundation.interaction.MutableInteractionSource r15 = r0.$interactionSource
                    androidx.compose.runtime.MutableState<androidx.compose.foundation.interaction.HoverInteraction$Enter> r5 = r0.$hoverInteraction$delegate
                    r10.<init>(r15, r5, r3)
                    r11 = 3
                    r12 = 0
                    kotlinx.coroutines.i.d(r7, r8, r9, r10, r11, r12)
                    goto L81
                L65:
                    int r5 = r5.b()
                    boolean r15 = androidx.compose.ui.input.pointer.PointerEventType.j(r15, r5)
                    if (r15 == 0) goto L81
                    kotlinx.coroutines.o0 r5 = r0.$scope
                    r6 = 0
                    r7 = 0
                    androidx.compose.foundation.HoverableKt$hoverable$2$3$1$2 r8 = new androidx.compose.foundation.HoverableKt$hoverable$2$3$1$2
                    androidx.compose.runtime.MutableState<androidx.compose.foundation.interaction.HoverInteraction$Enter> r15 = r0.$hoverInteraction$delegate
                    androidx.compose.foundation.interaction.MutableInteractionSource r9 = r0.$interactionSource
                    r8.<init>(r15, r9, r3)
                    r9 = 3
                    r10 = 0
                    kotlinx.coroutines.i.d(r5, r6, r7, r8, r9, r10)
                L81:
                    r15 = r0
                    r0 = r1
                    r1 = r4
                    goto L28
                L85:
                    w7.l0 r15 = w7.l0.INSTANCE
                    return r15
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.HoverableKt$hoverable$2.AnonymousClass3.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
            }
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
                PointerInputScope pointerInputScope = (PointerInputScope) this.L$0;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(getContext(), this.$scope, this.$interactionSource, this.$hoverInteraction$delegate, null);
                this.label = 1;
                if (pointerInputScope.J(anonymousClass1, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HoverableKt$hoverable$2(MutableInteractionSource mutableInteractionSource, boolean z6) {
        super(3);
        this.$interactionSource = mutableInteractionSource;
        this.$enabled = z6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object e(MutableInteractionSource mutableInteractionSource, MutableState<HoverInteraction.Enter> mutableState, d<? super l0> dVar) {
        HoverableKt$hoverable$2$invoke$emitEnter$1 hoverableKt$hoverable$2$invoke$emitEnter$1;
        HoverInteraction.Enter enter;
        if (dVar instanceof HoverableKt$hoverable$2$invoke$emitEnter$1) {
            hoverableKt$hoverable$2$invoke$emitEnter$1 = (HoverableKt$hoverable$2$invoke$emitEnter$1) dVar;
            int i10 = hoverableKt$hoverable$2$invoke$emitEnter$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                hoverableKt$hoverable$2$invoke$emitEnter$1.label = i10 - Integer.MIN_VALUE;
            } else {
                hoverableKt$hoverable$2$invoke$emitEnter$1 = new HoverableKt$hoverable$2$invoke$emitEnter$1(dVar);
            }
        } else {
            hoverableKt$hoverable$2$invoke$emitEnter$1 = new HoverableKt$hoverable$2$invoke$emitEnter$1(dVar);
        }
        Object obj = hoverableKt$hoverable$2$invoke$emitEnter$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = hoverableKt$hoverable$2$invoke$emitEnter$1.label;
        if (i11 == 0) {
            w.b(obj);
            if (g(mutableState) == null) {
                HoverInteraction.Enter enter2 = new HoverInteraction.Enter();
                hoverableKt$hoverable$2$invoke$emitEnter$1.L$0 = mutableState;
                hoverableKt$hoverable$2$invoke$emitEnter$1.L$1 = enter2;
                hoverableKt$hoverable$2$invoke$emitEnter$1.label = 1;
                if (mutableInteractionSource.b(enter2, hoverableKt$hoverable$2$invoke$emitEnter$1) == objE) {
                    return objE;
                }
                enter = enter2;
            }
            return l0.INSTANCE;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        enter = (HoverInteraction.Enter) hoverableKt$hoverable$2$invoke$emitEnter$1.L$1;
        mutableState = (MutableState) hoverableKt$hoverable$2$invoke$emitEnter$1.L$0;
        w.b(obj);
        h(mutableState, enter);
        return l0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object f(MutableState<HoverInteraction.Enter> mutableState, MutableInteractionSource mutableInteractionSource, d<? super l0> dVar) {
        HoverableKt$hoverable$2$invoke$emitExit$1 hoverableKt$hoverable$2$invoke$emitExit$1;
        if (dVar instanceof HoverableKt$hoverable$2$invoke$emitExit$1) {
            hoverableKt$hoverable$2$invoke$emitExit$1 = (HoverableKt$hoverable$2$invoke$emitExit$1) dVar;
            int i10 = hoverableKt$hoverable$2$invoke$emitExit$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                hoverableKt$hoverable$2$invoke$emitExit$1.label = i10 - Integer.MIN_VALUE;
            } else {
                hoverableKt$hoverable$2$invoke$emitExit$1 = new HoverableKt$hoverable$2$invoke$emitExit$1(dVar);
            }
        } else {
            hoverableKt$hoverable$2$invoke$emitExit$1 = new HoverableKt$hoverable$2$invoke$emitExit$1(dVar);
        }
        Object obj = hoverableKt$hoverable$2$invoke$emitExit$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = hoverableKt$hoverable$2$invoke$emitExit$1.label;
        if (i11 == 0) {
            w.b(obj);
            HoverInteraction.Enter enterG = g(mutableState);
            if (enterG != null) {
                Interaction exit = new HoverInteraction.Exit(enterG);
                hoverableKt$hoverable$2$invoke$emitExit$1.L$0 = mutableState;
                hoverableKt$hoverable$2$invoke$emitExit$1.label = 1;
                if (mutableInteractionSource.b(exit, hoverableKt$hoverable$2$invoke$emitExit$1) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        mutableState = (MutableState) hoverableKt$hoverable$2$invoke$emitExit$1.L$0;
        w.b(obj);
        h(mutableState, null);
        return l0.INSTANCE;
    }

    @Composable
    @NotNull
    public final Modifier d(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        Modifier modifierB;
        t.j(composed, "$this$composed");
        composer.G(1294013553);
        composer.G(773894976);
        composer.G(-492369756);
        Object objH = composer.H();
        Composer.Companion companion = Composer.Companion;
        if (objH == companion.a()) {
            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composer));
            composer.z(compositionScopedCoroutineScopeCanceller);
            objH = compositionScopedCoroutineScopeCanceller;
        }
        composer.Q();
        o0 o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
        composer.Q();
        composer.G(-492369756);
        Object objH2 = composer.H();
        if (objH2 == companion.a()) {
            objH2 = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
            composer.z(objH2);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH2;
        MutableInteractionSource mutableInteractionSource = this.$interactionSource;
        EffectsKt.a(mutableInteractionSource, new AnonymousClass1(mutableState, mutableInteractionSource), composer, 0);
        EffectsKt.d(Boolean.valueOf(this.$enabled), new AnonymousClass2(this.$enabled, mutableState, this.$interactionSource, null), composer, 0);
        if (this.$enabled) {
            Modifier.Companion companion2 = Modifier.Companion;
            MutableInteractionSource mutableInteractionSource2 = this.$interactionSource;
            modifierB = SuspendingPointerInputFilterKt.b(companion2, mutableInteractionSource2, new AnonymousClass3(o0VarA, mutableInteractionSource2, mutableState, null));
        } else {
            modifierB = Modifier.Companion;
        }
        composer.Q();
        return modifierB;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return d(modifier, composer, num.intValue());
    }

    private static final HoverInteraction.Enter g(MutableState<HoverInteraction.Enter> mutableState) {
        return mutableState.getValue();
    }

    private static final void h(MutableState<HoverInteraction.Enter> mutableState, HoverInteraction.Enter enter) {
        mutableState.setValue(enter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(MutableState<HoverInteraction.Enter> mutableState, MutableInteractionSource mutableInteractionSource) {
        HoverInteraction.Enter enterG = g(mutableState);
        if (enterG != null) {
            mutableInteractionSource.a(new HoverInteraction.Exit(enterG));
            h(mutableState, null);
        }
    }
}
