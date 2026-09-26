package androidx.lifecycle;

import e8.p;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n2;
import kotlinx.coroutines.o;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes7.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3", f = "RepeatOnLifecycle.kt", l = {84}, m = "invokeSuspend")
final class RepeatOnLifecycleKt$repeatOnLifecycle$3 extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
    final /* synthetic */ p<o0, kotlin.coroutines.d<? super l0>, Object> $block;
    final /* synthetic */ Lifecycle.State $state;
    final /* synthetic */ Lifecycle $this_repeatOnLifecycle;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1, reason: invalid class name */
    @kotlin.coroutines.jvm.internal.f(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1", f = "RepeatOnLifecycle.kt", l = {166}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ o0 $$this$coroutineScope;
        final /* synthetic */ p<o0, kotlin.coroutines.d<? super l0>, Object> $block;
        final /* synthetic */ Lifecycle.State $state;
        final /* synthetic */ Lifecycle $this_repeatOnLifecycle;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Lifecycle lifecycle, Lifecycle.State state, o0 o0Var, p<? super o0, ? super kotlin.coroutines.d<? super l0>, ? extends Object> pVar, kotlin.coroutines.d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$this_repeatOnLifecycle = lifecycle;
            this.$state = state;
            this.$$this$coroutineScope = o0Var;
            this.$block = pVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return new AnonymousClass1(this.$this_repeatOnLifecycle, this.$state, this.$$this$coroutineScope, this.$block, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:28:0x00b7  */
        /* JADX WARN: Code duplicated, block: B:31:0x00c1  */
        /* JADX WARN: Code duplicated, block: B:36:0x00cf  */
        /* JADX WARN: Code duplicated, block: B:39:0x00d9  */
        /* JADX WARN: Type inference failed for: r10v0, types: [T, androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1, java.lang.Object] */
        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            p0 p0Var;
            p0 p0Var2;
            b2 b2Var;
            LifecycleEventObserver lifecycleEventObserver;
            b2 b2Var2;
            LifecycleEventObserver lifecycleEventObserver2;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p0Var2 = (p0) this.L$1;
                p0Var = (p0) this.L$0;
                try {
                    w.b(obj);
                    b2Var2 = (b2) p0Var.element;
                    if (b2Var2 != null) {
                        b2.a.a(b2Var2, null, 1, null);
                    }
                    lifecycleEventObserver2 = (LifecycleEventObserver) p0Var2.element;
                    if (lifecycleEventObserver2 != null) {
                        this.$this_repeatOnLifecycle.d(lifecycleEventObserver2);
                    }
                    return l0.INSTANCE;
                } catch (Throwable th) {
                    th = th;
                    b2Var = (b2) p0Var.element;
                    if (b2Var != null) {
                        b2.a.a(b2Var, null, 1, null);
                    }
                    lifecycleEventObserver = (LifecycleEventObserver) p0Var2.element;
                    if (lifecycleEventObserver != null) {
                        this.$this_repeatOnLifecycle.d(lifecycleEventObserver);
                    }
                    throw th;
                }
            }
            w.b(obj);
            if (this.$this_repeatOnLifecycle.b() == Lifecycle.State.DESTROYED) {
                return l0.INSTANCE;
            }
            final p0 p0Var3 = new p0();
            p0 p0Var4 = new p0();
            try {
                Lifecycle.State state = this.$state;
                Lifecycle lifecycle = this.$this_repeatOnLifecycle;
                final o0 o0Var = this.$$this$coroutineScope;
                final p<o0, kotlin.coroutines.d<? super l0>, Object> pVar = this.$block;
                this.L$0 = p0Var3;
                this.L$1 = p0Var4;
                this.L$2 = state;
                this.L$3 = lifecycle;
                this.L$4 = o0Var;
                this.L$5 = pVar;
                this.label = 1;
                final kotlinx.coroutines.p pVar2 = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(this), 1);
                pVar2.x();
                Lifecycle.Event.Companion companion = Lifecycle.Event.Companion;
                final Lifecycle.Event eventC = companion.c(state);
                final Lifecycle.Event eventA = companion.a(state);
                final kotlinx.coroutines.sync.a aVarB = kotlinx.coroutines.sync.c.b(false, 1, null);
                ?? r10 = new LifecycleEventObserver() { // from class: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1

                    /* JADX INFO: renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1, reason: invalid class name */
                    @kotlin.coroutines.jvm.internal.f(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1", f = "RepeatOnLifecycle.kt", l = {171, 110}, m = "invokeSuspend")
                    static final class AnonymousClass1 extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
                        final /* synthetic */ p<o0, kotlin.coroutines.d<? super l0>, Object> $block;
                        final /* synthetic */ kotlinx.coroutines.sync.a $mutex;
                        Object L$0;
                        Object L$1;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        AnonymousClass1(kotlinx.coroutines.sync.a aVar, p<? super o0, ? super kotlin.coroutines.d<? super l0>, ? extends Object> pVar, kotlin.coroutines.d<? super AnonymousClass1> dVar) {
                            super(2, dVar);
                            this.$mutex = aVar;
                            this.$block = pVar;
                        }

                        @Override // kotlin.coroutines.jvm.internal.a
                        @NotNull
                        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                            return new AnonymousClass1(this.$mutex, this.$block, dVar);
                        }

                        @Override // e8.p
                        @Nullable
                        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
                            return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
                        }

                        @Override // kotlin.coroutines.jvm.internal.a
                        @Nullable
                        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
                            kotlinx.coroutines.sync.a aVar;
                            p<o0, kotlin.coroutines.d<? super l0>, Object> pVar;
                            kotlinx.coroutines.sync.a aVar2;
                            Throwable th;
                            Object objE = kotlin.coroutines.intrinsics.d.e();
                            int i10 = this.label;
                            try {
                                if (i10 != 0) {
                                    if (i10 != 1) {
                                        if (i10 == 2) {
                                            aVar2 = (kotlinx.coroutines.sync.a) this.L$0;
                                            try {
                                                w.b(obj);
                                                l0 l0Var = l0.INSTANCE;
                                                aVar2.e(null);
                                                return l0.INSTANCE;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                aVar2.e(null);
                                                throw th;
                                            }
                                        }
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                    pVar = (p) this.L$1;
                                    kotlinx.coroutines.sync.a aVar3 = (kotlinx.coroutines.sync.a) this.L$0;
                                    w.b(obj);
                                    aVar = aVar3;
                                } else {
                                    w.b(obj);
                                    aVar = this.$mutex;
                                    pVar = this.$block;
                                    this.L$0 = aVar;
                                    this.L$1 = pVar;
                                    this.label = 1;
                                    if (aVar.d(null, this) == objE) {
                                        return objE;
                                    }
                                }
                                RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 = new RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1(pVar, null);
                                this.L$0 = aVar;
                                this.L$1 = null;
                                this.label = 2;
                                if (kotlinx.coroutines.p0.f(repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1, this) == objE) {
                                    return objE;
                                }
                                aVar2 = aVar;
                                l0 l0Var2 = l0.INSTANCE;
                                aVar2.e(null);
                                return l0.INSTANCE;
                            } catch (Throwable th3) {
                                aVar2 = aVar;
                                th = th3;
                                aVar2.e(null);
                                throw th;
                            }
                        }
                    }

                    /* JADX WARN: Type inference failed for: r9v5, types: [T, kotlinx.coroutines.b2] */
                    @Override // androidx.lifecycle.LifecycleEventObserver
                    public final void onStateChanged(@NotNull LifecycleOwner lifecycleOwner, @NotNull Lifecycle.Event event) {
                        t.j(lifecycleOwner, "<anonymous parameter 0>");
                        t.j(event, "event");
                        if (event == eventC) {
                            p0Var3.element = k.d(o0Var, null, null, new AnonymousClass1(aVarB, pVar, null), 3, null);
                            return;
                        }
                        if (event == eventA) {
                            b2 b2Var3 = p0Var3.element;
                            if (b2Var3 != null) {
                                b2.a.a(b2Var3, null, 1, null);
                            }
                            p0Var3.element = null;
                        }
                        if (event == Lifecycle.Event.ON_DESTROY) {
                            o<l0> oVar = pVar2;
                            v.a aVar = v.Companion;
                            oVar.resumeWith(v.b(l0.INSTANCE));
                        }
                    }
                };
                p0Var4.element = r10;
                t.h(r10, "null cannot be cast to non-null type androidx.lifecycle.LifecycleEventObserver");
                lifecycle.a((LifecycleEventObserver) r10);
                Object objU = pVar2.u();
                if (objU == kotlin.coroutines.intrinsics.d.e()) {
                    kotlin.coroutines.jvm.internal.h.c(this);
                }
                if (objU == objE) {
                    return objE;
                }
                p0Var = p0Var3;
                p0Var2 = p0Var4;
                b2Var2 = (b2) p0Var.element;
                if (b2Var2 != null) {
                    b2.a.a(b2Var2, null, 1, null);
                }
                lifecycleEventObserver2 = (LifecycleEventObserver) p0Var2.element;
                if (lifecycleEventObserver2 != null) {
                    this.$this_repeatOnLifecycle.d(lifecycleEventObserver2);
                }
                return l0.INSTANCE;
            } catch (Throwable th2) {
                th = th2;
                p0Var = p0Var3;
                p0Var2 = p0Var4;
                b2Var = (b2) p0Var.element;
                if (b2Var != null) {
                    b2.a.a(b2Var, null, 1, null);
                }
                lifecycleEventObserver = (LifecycleEventObserver) p0Var2.element;
                if (lifecycleEventObserver != null) {
                    this.$this_repeatOnLifecycle.d(lifecycleEventObserver);
                }
                throw th;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    RepeatOnLifecycleKt$repeatOnLifecycle$3(Lifecycle lifecycle, Lifecycle.State state, p<? super o0, ? super kotlin.coroutines.d<? super l0>, ? extends Object> pVar, kotlin.coroutines.d<? super RepeatOnLifecycleKt$repeatOnLifecycle$3> dVar) {
        super(2, dVar);
        this.$this_repeatOnLifecycle = lifecycle;
        this.$state = state;
        this.$block = pVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        RepeatOnLifecycleKt$repeatOnLifecycle$3 repeatOnLifecycleKt$repeatOnLifecycle$3 = new RepeatOnLifecycleKt$repeatOnLifecycle$3(this.$this_repeatOnLifecycle, this.$state, this.$block, dVar);
        repeatOnLifecycleKt$repeatOnLifecycle$3.L$0 = obj;
        return repeatOnLifecycleKt$repeatOnLifecycle$3;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
        return ((RepeatOnLifecycleKt$repeatOnLifecycle$3) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            o0 o0Var = (o0) this.L$0;
            n2 immediate = e1.c().getImmediate();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_repeatOnLifecycle, this.$state, o0Var, this.$block, null);
            this.label = 1;
            if (kotlinx.coroutines.i.g(immediate, anonymousClass1, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
