package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.renderscript.ScriptIntrinsicBLAS;
import e8.p;
import e8.q;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.k;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.p0;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2", f = "TapGestureDetector.kt", l = {92}, m = "invokeSuspend")
final class TapGestureDetectorKt$detectTapGestures$2 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ e8.l<Offset, l0> $onDoubleTap;
    final /* synthetic */ e8.l<Offset, l0> $onLongPress;
    final /* synthetic */ q<PressGestureScope, Offset, d<? super l0>, Object> $onPress;
    final /* synthetic */ e8.l<Offset, l0> $onTap;
    final /* synthetic */ PointerInputScope $this_detectTapGestures;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TapGestureDetectorKt$detectTapGestures$2(PointerInputScope pointerInputScope, q<? super PressGestureScope, ? super Offset, ? super d<? super l0>, ? extends Object> qVar, e8.l<? super Offset, l0> lVar, e8.l<? super Offset, l0> lVar2, e8.l<? super Offset, l0> lVar3, d<? super TapGestureDetectorKt$detectTapGestures$2> dVar) {
        super(2, dVar);
        this.$this_detectTapGestures = pointerInputScope;
        this.$onPress = qVar;
        this.$onLongPress = lVar;
        this.$onDoubleTap = lVar2;
        this.$onTap = lVar3;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        TapGestureDetectorKt$detectTapGestures$2 tapGestureDetectorKt$detectTapGestures$2 = new TapGestureDetectorKt$detectTapGestures$2(this.$this_detectTapGestures, this.$onPress, this.$onLongPress, this.$onDoubleTap, this.$onTap, dVar);
        tapGestureDetectorKt$detectTapGestures$2.L$0 = obj;
        return tapGestureDetectorKt$detectTapGestures$2;
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1, reason: invalid class name */
    @f(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1", f = "TapGestureDetector.kt", l = {93}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<PointerInputScope, d<? super l0>, Object> {
        final /* synthetic */ o0 $$this$coroutineScope;
        final /* synthetic */ e8.l<Offset, l0> $onDoubleTap;
        final /* synthetic */ e8.l<Offset, l0> $onLongPress;
        final /* synthetic */ q<PressGestureScope, Offset, d<? super l0>, Object> $onPress;
        final /* synthetic */ e8.l<Offset, l0> $onTap;
        final /* synthetic */ PressGestureScopeImpl $pressScope;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1, reason: invalid class name and collision with other inner class name */
        @f(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1", f = "TapGestureDetector.kt", l = {94, 106, 117, 127, 140, 158}, m = "invokeSuspend")
        static final class C00361 extends k implements p<AwaitPointerEventScope, d<? super l0>, Object> {
            final /* synthetic */ o0 $$this$coroutineScope;
            final /* synthetic */ e8.l<Offset, l0> $onDoubleTap;
            final /* synthetic */ e8.l<Offset, l0> $onLongPress;
            final /* synthetic */ q<PressGestureScope, Offset, d<? super l0>, Object> $onPress;
            final /* synthetic */ e8.l<Offset, l0> $onTap;
            final /* synthetic */ PressGestureScopeImpl $pressScope;
            long J$0;
            private /* synthetic */ Object L$0;
            Object L$1;
            Object L$2;
            Object L$3;
            int label;

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1$1, reason: invalid class name and collision with other inner class name */
            @f(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1$1", f = "TapGestureDetector.kt", l = {98}, m = "invokeSuspend")
            static final class C00371 extends l implements p<o0, d<? super l0>, Object> {
                final /* synthetic */ PointerInputChange $down;
                final /* synthetic */ q<PressGestureScope, Offset, d<? super l0>, Object> $onPress;
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                C00371(q<? super PressGestureScope, ? super Offset, ? super d<? super l0>, ? extends Object> qVar, PressGestureScopeImpl pressGestureScopeImpl, PointerInputChange pointerInputChange, d<? super C00371> dVar) {
                    super(2, dVar);
                    this.$onPress = qVar;
                    this.$pressScope = pressGestureScopeImpl;
                    this.$down = pointerInputChange;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @NotNull
                public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                    return new C00371(this.$onPress, this.$pressScope, this.$down, dVar);
                }

                @Override // e8.p
                @Nullable
                public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                    return ((C00371) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
                        q<PressGestureScope, Offset, d<? super l0>, Object> qVar = this.$onPress;
                        PressGestureScopeImpl pressGestureScopeImpl = this.$pressScope;
                        Offset offsetD = Offset.d(this.$down.f());
                        this.label = 1;
                        if (qVar.invoke(pressGestureScopeImpl, offsetD, this) == objE) {
                            return objE;
                        }
                    }
                    return l0.INSTANCE;
                }
            }

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1$3, reason: invalid class name */
            @f(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1$3", f = "TapGestureDetector.kt", l = {135}, m = "invokeSuspend")
            static final class AnonymousClass3 extends l implements p<o0, d<? super l0>, Object> {
                final /* synthetic */ q<PressGestureScope, Offset, d<? super l0>, Object> $onPress;
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                final /* synthetic */ PointerInputChange $secondDown;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                AnonymousClass3(q<? super PressGestureScope, ? super Offset, ? super d<? super l0>, ? extends Object> qVar, PressGestureScopeImpl pressGestureScopeImpl, PointerInputChange pointerInputChange, d<? super AnonymousClass3> dVar) {
                    super(2, dVar);
                    this.$onPress = qVar;
                    this.$pressScope = pressGestureScopeImpl;
                    this.$secondDown = pointerInputChange;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @NotNull
                public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                    return new AnonymousClass3(this.$onPress, this.$pressScope, this.$secondDown, dVar);
                }

                @Override // e8.p
                @Nullable
                public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                    return ((AnonymousClass3) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
                        q<PressGestureScope, Offset, d<? super l0>, Object> qVar = this.$onPress;
                        PressGestureScopeImpl pressGestureScopeImpl = this.$pressScope;
                        Offset offsetD = Offset.d(this.$secondDown.f());
                        this.label = 1;
                        if (qVar.invoke(pressGestureScopeImpl, offsetD, this) == objE) {
                            return objE;
                        }
                    }
                    return l0.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C00361(PressGestureScopeImpl pressGestureScopeImpl, q<? super PressGestureScope, ? super Offset, ? super d<? super l0>, ? extends Object> qVar, o0 o0Var, e8.l<? super Offset, l0> lVar, e8.l<? super Offset, l0> lVar2, e8.l<? super Offset, l0> lVar3, d<? super C00361> dVar) {
                super(2, dVar);
                this.$pressScope = pressGestureScopeImpl;
                this.$onPress = qVar;
                this.$$this$coroutineScope = o0Var;
                this.$onLongPress = lVar;
                this.$onDoubleTap = lVar2;
                this.$onTap = lVar3;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                C00361 c00361 = new C00361(this.$pressScope, this.$onPress, this.$$this$coroutineScope, this.$onLongPress, this.$onDoubleTap, this.$onTap, dVar);
                c00361.L$0 = obj;
                return c00361;
            }

            @Override // e8.p
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable d<? super l0> dVar) {
                return ((C00361) create(awaitPointerEventScope, dVar)).invokeSuspend(l0.INSTANCE);
            }

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1$2, reason: invalid class name */
            @f(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1$2", f = "TapGestureDetector.kt", l = {107}, m = "invokeSuspend")
            static final class AnonymousClass2 extends k implements p<AwaitPointerEventScope, d<? super PointerInputChange>, Object> {
                private /* synthetic */ Object L$0;
                int label;

                AnonymousClass2(d<? super AnonymousClass2> dVar) {
                    super(2, dVar);
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @NotNull
                public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(dVar);
                    anonymousClass2.L$0 = obj;
                    return anonymousClass2;
                }

                @Override // e8.p
                @Nullable
                /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
                public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable d<? super PointerInputChange> dVar) {
                    return ((AnonymousClass2) create(awaitPointerEventScope, dVar)).invokeSuspend(l0.INSTANCE);
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
                        AwaitPointerEventScope awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
                        this.label = 1;
                        obj = TapGestureDetectorKt.l(awaitPointerEventScope, this);
                        if (obj == objE) {
                            return objE;
                        }
                    }
                    return obj;
                }
            }

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1$4, reason: invalid class name */
            @f(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1$4", f = "TapGestureDetector.kt", l = {ScriptIntrinsicBLAS.LEFT}, m = "invokeSuspend")
            static final class AnonymousClass4 extends k implements p<AwaitPointerEventScope, d<? super l0>, Object> {
                final /* synthetic */ e8.l<Offset, l0> $onDoubleTap;
                final /* synthetic */ e8.l<Offset, l0> $onTap;
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                final /* synthetic */ p0<PointerInputChange> $upOrCancel;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                AnonymousClass4(PressGestureScopeImpl pressGestureScopeImpl, e8.l<? super Offset, l0> lVar, e8.l<? super Offset, l0> lVar2, p0<PointerInputChange> p0Var, d<? super AnonymousClass4> dVar) {
                    super(2, dVar);
                    this.$pressScope = pressGestureScopeImpl;
                    this.$onDoubleTap = lVar;
                    this.$onTap = lVar2;
                    this.$upOrCancel = p0Var;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @NotNull
                public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                    AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.$pressScope, this.$onDoubleTap, this.$onTap, this.$upOrCancel, dVar);
                    anonymousClass4.L$0 = obj;
                    return anonymousClass4;
                }

                @Override // e8.p
                @Nullable
                /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
                public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable d<? super l0> dVar) {
                    return ((AnonymousClass4) create(awaitPointerEventScope, dVar)).invokeSuspend(l0.INSTANCE);
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
                        AwaitPointerEventScope awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
                        this.label = 1;
                        obj = TapGestureDetectorKt.l(awaitPointerEventScope, this);
                        if (obj == objE) {
                            return objE;
                        }
                    }
                    PointerInputChange pointerInputChange = (PointerInputChange) obj;
                    if (pointerInputChange != null) {
                        pointerInputChange.a();
                        this.$pressScope.m();
                        this.$onDoubleTap.invoke(Offset.d(pointerInputChange.f()));
                        return l0.INSTANCE;
                    }
                    this.$pressScope.e();
                    e8.l<Offset, l0> lVar = this.$onTap;
                    if (lVar != null) {
                        lVar.invoke(Offset.d(this.$upOrCancel.element.f()));
                        return l0.INSTANCE;
                    }
                    return null;
                }
            }

            /* JADX WARN: Code duplicated, block: B:24:0x009e  */
            /* JADX WARN: Code duplicated, block: B:27:0x00b4  */
            /* JADX WARN: Code duplicated, block: B:28:0x00bd  */
            /* JADX WARN: Code duplicated, block: B:32:0x00df A[RETURN] */
            /* JADX WARN: Code duplicated, block: B:33:0x00e0  */
            /* JADX WARN: Code duplicated, block: B:36:0x00e9 A[Catch: PointerEventTimeoutCancellationException -> 0x00ef, TryCatch #4 {PointerEventTimeoutCancellationException -> 0x00ef, blocks: (B:34:0x00e3, B:36:0x00e9, B:38:0x00f3), top: B:93:0x00e3 }] */
            /* JADX WARN: Code duplicated, block: B:38:0x00f3 A[Catch: PointerEventTimeoutCancellationException -> 0x00ef, TRY_LEAVE, TryCatch #4 {PointerEventTimeoutCancellationException -> 0x00ef, blocks: (B:34:0x00e3, B:36:0x00e9, B:38:0x00f3), top: B:93:0x00e3 }] */
            /* JADX WARN: Code duplicated, block: B:42:0x0102  */
            /* JADX WARN: Code duplicated, block: B:45:0x0120 A[RETURN] */
            /* JADX WARN: Code duplicated, block: B:49:0x012c  */
            /* JADX WARN: Code duplicated, block: B:51:0x0130  */
            /* JADX WARN: Code duplicated, block: B:53:0x0134  */
            /* JADX WARN: Code duplicated, block: B:54:0x0143  */
            /* JADX WARN: Code duplicated, block: B:56:0x0158 A[RETURN] */
            /* JADX WARN: Code duplicated, block: B:57:0x0159  */
            /* JADX WARN: Code duplicated, block: B:60:0x015f  */
            /* JADX WARN: Code duplicated, block: B:62:0x0163  */
            /* JADX WARN: Code duplicated, block: B:63:0x0174  */
            /* JADX WARN: Code duplicated, block: B:65:0x0181  */
            /* JADX WARN: Code duplicated, block: B:68:0x01b5 A[RETURN] */
            /* JADX WARN: Code duplicated, block: B:72:0x01bc  */
            /* JADX WARN: Code duplicated, block: B:75:0x01cf  */
            /* JADX WARN: Code duplicated, block: B:78:0x01e9 A[RETURN] */
            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                AwaitPointerEventScope awaitPointerEventScope;
                Object objE;
                AwaitPointerEventScope awaitPointerEventScope2;
                PointerInputChange pointerInputChange;
                long jD;
                p0 p0Var;
                Object objM0;
                AwaitPointerEventScope awaitPointerEventScope3;
                PointerInputChange pointerInputChange2;
                p0 p0Var2;
                AwaitPointerEventScope awaitPointerEventScope4;
                e8.l<Offset, l0> lVar;
                T t5;
                T t10;
                T t11;
                Object objG;
                p0 p0Var3;
                AwaitPointerEventScope awaitPointerEventScope5;
                e8.l<Offset, l0> lVar2;
                PointerInputChange pointerInputChange3;
                p0 p0Var4;
                AwaitPointerEventScope awaitPointerEventScope6;
                AnonymousClass4 anonymousClass4;
                e8.l<Offset, l0> lVar3;
                e8.l<Offset, l0> lVar4;
                e8.l<Offset, l0> lVar5;
                Object objE2 = kotlin.coroutines.intrinsics.d.e();
                switch (this.label) {
                    case 0:
                        w.b(obj);
                        awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
                        this.L$0 = awaitPointerEventScope;
                        this.label = 1;
                        objE = TapGestureDetectorKt.e(awaitPointerEventScope, false, this, 1, null);
                        if (objE == objE2) {
                            return objE2;
                        }
                        awaitPointerEventScope2 = awaitPointerEventScope;
                        pointerInputChange = (PointerInputChange) objE;
                        pointerInputChange.a();
                        this.$pressScope.p();
                        if (this.$onPress != TapGestureDetectorKt.NoPressGesture) {
                            kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new C00371(this.$onPress, this.$pressScope, pointerInputChange, null), 3, null);
                        }
                        if (this.$onLongPress != null) {
                            jD = awaitPointerEventScope2.getViewConfiguration().d();
                        } else {
                            jD = k8.d.MAX_MILLIS;
                        }
                        p0Var = new p0();
                        try {
                            AnonymousClass2 anonymousClass2 = new AnonymousClass2(null);
                            this.L$0 = awaitPointerEventScope2;
                            this.L$1 = pointerInputChange;
                            this.L$2 = p0Var;
                            this.L$3 = p0Var;
                            this.J$0 = jD;
                            this.label = 2;
                            objM0 = awaitPointerEventScope2.m0(jD, anonymousClass2, this);
                            if (objM0 == objE2) {
                                return objE2;
                            }
                            awaitPointerEventScope3 = awaitPointerEventScope2;
                            pointerInputChange2 = pointerInputChange;
                            p0Var2 = p0Var;
                            t5 = objM0;
                            try {
                                p0Var.element = t5;
                                t10 = p0Var2.element;
                                if (t10 == 0) {
                                    this.$pressScope.e();
                                } else {
                                    ((PointerInputChange) t10).a();
                                    this.$pressScope.m();
                                }
                                break;
                            } catch (PointerEventTimeoutCancellationException unused) {
                                p0Var = p0Var2;
                                pointerInputChange = pointerInputChange2;
                                awaitPointerEventScope4 = awaitPointerEventScope3;
                                lVar = this.$onLongPress;
                                if (lVar != null) {
                                    lVar.invoke(Offset.d(pointerInputChange.f()));
                                }
                                this.L$0 = awaitPointerEventScope4;
                                this.L$1 = p0Var;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.J$0 = jD;
                                this.label = 3;
                                if (TapGestureDetectorKt.h(awaitPointerEventScope4, this) == objE2) {
                                    return objE2;
                                }
                                this.$pressScope.m();
                                p0Var2 = p0Var;
                                awaitPointerEventScope3 = awaitPointerEventScope4;
                            }
                            t11 = p0Var2.element;
                            if (t11 != 0) {
                                if (this.$onDoubleTap == null) {
                                    lVar2 = this.$onTap;
                                    if (lVar2 != null) {
                                        lVar2.invoke(Offset.d(((PointerInputChange) t11).f()));
                                    }
                                } else {
                                    this.L$0 = awaitPointerEventScope3;
                                    this.L$1 = p0Var2;
                                    this.L$2 = null;
                                    this.L$3 = null;
                                    this.J$0 = jD;
                                    this.label = 4;
                                    objG = TapGestureDetectorKt.g(awaitPointerEventScope3, (PointerInputChange) t11, this);
                                    if (objG == objE2) {
                                        return objE2;
                                    }
                                    p0Var3 = p0Var2;
                                    awaitPointerEventScope5 = awaitPointerEventScope3;
                                    pointerInputChange3 = (PointerInputChange) objG;
                                    if (pointerInputChange3 == null) {
                                        lVar3 = this.$onTap;
                                        if (lVar3 != null) {
                                            lVar3.invoke(Offset.d(((PointerInputChange) p0Var3.element).f()));
                                        }
                                    } else {
                                        this.$pressScope.p();
                                        if (this.$onPress != TapGestureDetectorKt.NoPressGesture) {
                                            kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass3(this.$onPress, this.$pressScope, pointerInputChange3, null), 3, null);
                                        }
                                        try {
                                            anonymousClass4 = new AnonymousClass4(this.$pressScope, this.$onDoubleTap, this.$onTap, p0Var3, null);
                                            this.L$0 = awaitPointerEventScope5;
                                            this.L$1 = p0Var3;
                                            this.L$2 = pointerInputChange3;
                                            this.label = 5;
                                            if (awaitPointerEventScope5.m0(jD, anonymousClass4, this) == objE2) {
                                                return objE2;
                                            }
                                        } catch (PointerEventTimeoutCancellationException unused2) {
                                            p0Var4 = p0Var3;
                                            awaitPointerEventScope6 = awaitPointerEventScope5;
                                            lVar4 = this.$onTap;
                                            if (lVar4 != null) {
                                                lVar4.invoke(Offset.d(((PointerInputChange) p0Var4.element).f()));
                                            }
                                            lVar5 = this.$onLongPress;
                                            if (lVar5 != null) {
                                                lVar5.invoke(Offset.d(pointerInputChange3.f()));
                                            }
                                            this.L$0 = null;
                                            this.L$1 = null;
                                            this.L$2 = null;
                                            this.label = 6;
                                            if (TapGestureDetectorKt.h(awaitPointerEventScope6, this) == objE2) {
                                                return objE2;
                                            }
                                            this.$pressScope.m();
                                        }
                                    }
                                }
                            }
                            return l0.INSTANCE;
                        } catch (PointerEventTimeoutCancellationException unused3) {
                            awaitPointerEventScope4 = awaitPointerEventScope2;
                            lVar = this.$onLongPress;
                            if (lVar != null) {
                                lVar.invoke(Offset.d(pointerInputChange.f()));
                            }
                            this.L$0 = awaitPointerEventScope4;
                            this.L$1 = p0Var;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.J$0 = jD;
                            this.label = 3;
                            if (TapGestureDetectorKt.h(awaitPointerEventScope4, this) == objE2) {
                                return objE2;
                            }
                            this.$pressScope.m();
                            p0Var2 = p0Var;
                            awaitPointerEventScope3 = awaitPointerEventScope4;
                            t11 = p0Var2.element;
                            if (t11 != 0) {
                                if (this.$onDoubleTap == null) {
                                    lVar2 = this.$onTap;
                                    if (lVar2 != null) {
                                        lVar2.invoke(Offset.d(((PointerInputChange) t11).f()));
                                    }
                                } else {
                                    this.L$0 = awaitPointerEventScope3;
                                    this.L$1 = p0Var2;
                                    this.L$2 = null;
                                    this.L$3 = null;
                                    this.J$0 = jD;
                                    this.label = 4;
                                    objG = TapGestureDetectorKt.g(awaitPointerEventScope3, (PointerInputChange) t11, this);
                                    if (objG == objE2) {
                                        return objE2;
                                    }
                                    p0Var3 = p0Var2;
                                    awaitPointerEventScope5 = awaitPointerEventScope3;
                                    pointerInputChange3 = (PointerInputChange) objG;
                                    if (pointerInputChange3 == null) {
                                        lVar3 = this.$onTap;
                                        if (lVar3 != null) {
                                            lVar3.invoke(Offset.d(((PointerInputChange) p0Var3.element).f()));
                                        }
                                    } else {
                                        this.$pressScope.p();
                                        if (this.$onPress != TapGestureDetectorKt.NoPressGesture) {
                                            kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass3(this.$onPress, this.$pressScope, pointerInputChange3, null), 3, null);
                                        }
                                        anonymousClass4 = new AnonymousClass4(this.$pressScope, this.$onDoubleTap, this.$onTap, p0Var3, null);
                                        this.L$0 = awaitPointerEventScope5;
                                        this.L$1 = p0Var3;
                                        this.L$2 = pointerInputChange3;
                                        this.label = 5;
                                        if (awaitPointerEventScope5.m0(jD, anonymousClass4, this) == objE2) {
                                            return objE2;
                                        }
                                    }
                                }
                            }
                            return l0.INSTANCE;
                        }
                    case 1:
                        awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
                        w.b(obj);
                        objE = obj;
                        awaitPointerEventScope2 = awaitPointerEventScope;
                        pointerInputChange = (PointerInputChange) objE;
                        pointerInputChange.a();
                        this.$pressScope.p();
                        if (this.$onPress != TapGestureDetectorKt.NoPressGesture) {
                            kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new C00371(this.$onPress, this.$pressScope, pointerInputChange, null), 3, null);
                        }
                        if (this.$onLongPress != null) {
                            jD = awaitPointerEventScope2.getViewConfiguration().d();
                        } else {
                            jD = k8.d.MAX_MILLIS;
                        }
                        p0Var = new p0();
                        AnonymousClass2 anonymousClass3 = new AnonymousClass2(null);
                        this.L$0 = awaitPointerEventScope2;
                        this.L$1 = pointerInputChange;
                        this.L$2 = p0Var;
                        this.L$3 = p0Var;
                        this.J$0 = jD;
                        this.label = 2;
                        objM0 = awaitPointerEventScope2.m0(jD, anonymousClass3, this);
                        if (objM0 == objE2) {
                            return objE2;
                        }
                        awaitPointerEventScope3 = awaitPointerEventScope2;
                        pointerInputChange2 = pointerInputChange;
                        p0Var2 = p0Var;
                        t5 = objM0;
                        p0Var.element = t5;
                        t10 = p0Var2.element;
                        if (t10 == 0) {
                            this.$pressScope.e();
                        } else {
                            ((PointerInputChange) t10).a();
                            this.$pressScope.m();
                        }
                        t11 = p0Var2.element;
                        if (t11 != 0) {
                            if (this.$onDoubleTap == null) {
                                lVar2 = this.$onTap;
                                if (lVar2 != null) {
                                    lVar2.invoke(Offset.d(((PointerInputChange) t11).f()));
                                }
                            } else {
                                this.L$0 = awaitPointerEventScope3;
                                this.L$1 = p0Var2;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.J$0 = jD;
                                this.label = 4;
                                objG = TapGestureDetectorKt.g(awaitPointerEventScope3, (PointerInputChange) t11, this);
                                if (objG == objE2) {
                                    return objE2;
                                }
                                p0Var3 = p0Var2;
                                awaitPointerEventScope5 = awaitPointerEventScope3;
                                pointerInputChange3 = (PointerInputChange) objG;
                                if (pointerInputChange3 == null) {
                                    lVar3 = this.$onTap;
                                    if (lVar3 != null) {
                                        lVar3.invoke(Offset.d(((PointerInputChange) p0Var3.element).f()));
                                    }
                                } else {
                                    this.$pressScope.p();
                                    if (this.$onPress != TapGestureDetectorKt.NoPressGesture) {
                                        kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass3(this.$onPress, this.$pressScope, pointerInputChange3, null), 3, null);
                                    }
                                    anonymousClass4 = new AnonymousClass4(this.$pressScope, this.$onDoubleTap, this.$onTap, p0Var3, null);
                                    this.L$0 = awaitPointerEventScope5;
                                    this.L$1 = p0Var3;
                                    this.L$2 = pointerInputChange3;
                                    this.label = 5;
                                    if (awaitPointerEventScope5.m0(jD, anonymousClass4, this) == objE2) {
                                        return objE2;
                                    }
                                }
                            }
                        }
                        return l0.INSTANCE;
                    case 2:
                        jD = this.J$0;
                        p0Var = (p0) this.L$3;
                        p0 p0Var5 = (p0) this.L$2;
                        pointerInputChange = (PointerInputChange) this.L$1;
                        awaitPointerEventScope2 = (AwaitPointerEventScope) this.L$0;
                        try {
                            w.b(obj);
                            awaitPointerEventScope3 = awaitPointerEventScope2;
                            pointerInputChange2 = pointerInputChange;
                            p0Var2 = p0Var5;
                            t5 = obj;
                            p0Var.element = t5;
                            t10 = p0Var2.element;
                            if (t10 == 0) {
                                this.$pressScope.e();
                            } else {
                                ((PointerInputChange) t10).a();
                                this.$pressScope.m();
                            }
                            break;
                        } catch (PointerEventTimeoutCancellationException unused4) {
                            p0Var = p0Var5;
                            awaitPointerEventScope4 = awaitPointerEventScope2;
                            lVar = this.$onLongPress;
                            if (lVar != null) {
                                lVar.invoke(Offset.d(pointerInputChange.f()));
                            }
                            this.L$0 = awaitPointerEventScope4;
                            this.L$1 = p0Var;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.J$0 = jD;
                            this.label = 3;
                            if (TapGestureDetectorKt.h(awaitPointerEventScope4, this) == objE2) {
                                return objE2;
                            }
                            this.$pressScope.m();
                            p0Var2 = p0Var;
                            awaitPointerEventScope3 = awaitPointerEventScope4;
                            t11 = p0Var2.element;
                            if (t11 != 0) {
                                if (this.$onDoubleTap == null) {
                                    lVar2 = this.$onTap;
                                    if (lVar2 != null) {
                                        lVar2.invoke(Offset.d(((PointerInputChange) t11).f()));
                                    }
                                } else {
                                    this.L$0 = awaitPointerEventScope3;
                                    this.L$1 = p0Var2;
                                    this.L$2 = null;
                                    this.L$3 = null;
                                    this.J$0 = jD;
                                    this.label = 4;
                                    objG = TapGestureDetectorKt.g(awaitPointerEventScope3, (PointerInputChange) t11, this);
                                    if (objG == objE2) {
                                        return objE2;
                                    }
                                    p0Var3 = p0Var2;
                                    awaitPointerEventScope5 = awaitPointerEventScope3;
                                    pointerInputChange3 = (PointerInputChange) objG;
                                    if (pointerInputChange3 == null) {
                                        lVar3 = this.$onTap;
                                        if (lVar3 != null) {
                                            lVar3.invoke(Offset.d(((PointerInputChange) p0Var3.element).f()));
                                        }
                                    } else {
                                        this.$pressScope.p();
                                        if (this.$onPress != TapGestureDetectorKt.NoPressGesture) {
                                            kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass3(this.$onPress, this.$pressScope, pointerInputChange3, null), 3, null);
                                        }
                                        anonymousClass4 = new AnonymousClass4(this.$pressScope, this.$onDoubleTap, this.$onTap, p0Var3, null);
                                        this.L$0 = awaitPointerEventScope5;
                                        this.L$1 = p0Var3;
                                        this.L$2 = pointerInputChange3;
                                        this.label = 5;
                                        if (awaitPointerEventScope5.m0(jD, anonymousClass4, this) == objE2) {
                                            return objE2;
                                        }
                                    }
                                }
                            }
                            return l0.INSTANCE;
                        }
                        t11 = p0Var2.element;
                        if (t11 != 0) {
                            if (this.$onDoubleTap == null) {
                                lVar2 = this.$onTap;
                                if (lVar2 != null) {
                                    lVar2.invoke(Offset.d(((PointerInputChange) t11).f()));
                                }
                            } else {
                                this.L$0 = awaitPointerEventScope3;
                                this.L$1 = p0Var2;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.J$0 = jD;
                                this.label = 4;
                                objG = TapGestureDetectorKt.g(awaitPointerEventScope3, (PointerInputChange) t11, this);
                                if (objG == objE2) {
                                    return objE2;
                                }
                                p0Var3 = p0Var2;
                                awaitPointerEventScope5 = awaitPointerEventScope3;
                                pointerInputChange3 = (PointerInputChange) objG;
                                if (pointerInputChange3 == null) {
                                    lVar3 = this.$onTap;
                                    if (lVar3 != null) {
                                        lVar3.invoke(Offset.d(((PointerInputChange) p0Var3.element).f()));
                                    }
                                } else {
                                    this.$pressScope.p();
                                    if (this.$onPress != TapGestureDetectorKt.NoPressGesture) {
                                        kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass3(this.$onPress, this.$pressScope, pointerInputChange3, null), 3, null);
                                    }
                                    anonymousClass4 = new AnonymousClass4(this.$pressScope, this.$onDoubleTap, this.$onTap, p0Var3, null);
                                    this.L$0 = awaitPointerEventScope5;
                                    this.L$1 = p0Var3;
                                    this.L$2 = pointerInputChange3;
                                    this.label = 5;
                                    if (awaitPointerEventScope5.m0(jD, anonymousClass4, this) == objE2) {
                                        return objE2;
                                    }
                                }
                            }
                        }
                        return l0.INSTANCE;
                    case 3:
                        jD = this.J$0;
                        p0Var = (p0) this.L$1;
                        awaitPointerEventScope4 = (AwaitPointerEventScope) this.L$0;
                        w.b(obj);
                        this.$pressScope.m();
                        p0Var2 = p0Var;
                        awaitPointerEventScope3 = awaitPointerEventScope4;
                        t11 = p0Var2.element;
                        if (t11 != 0) {
                            if (this.$onDoubleTap == null) {
                                lVar2 = this.$onTap;
                                if (lVar2 != null) {
                                    lVar2.invoke(Offset.d(((PointerInputChange) t11).f()));
                                }
                            } else {
                                this.L$0 = awaitPointerEventScope3;
                                this.L$1 = p0Var2;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.J$0 = jD;
                                this.label = 4;
                                objG = TapGestureDetectorKt.g(awaitPointerEventScope3, (PointerInputChange) t11, this);
                                if (objG == objE2) {
                                    return objE2;
                                }
                                p0Var3 = p0Var2;
                                awaitPointerEventScope5 = awaitPointerEventScope3;
                                pointerInputChange3 = (PointerInputChange) objG;
                                if (pointerInputChange3 == null) {
                                    lVar3 = this.$onTap;
                                    if (lVar3 != null) {
                                        lVar3.invoke(Offset.d(((PointerInputChange) p0Var3.element).f()));
                                    }
                                } else {
                                    this.$pressScope.p();
                                    if (this.$onPress != TapGestureDetectorKt.NoPressGesture) {
                                        kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass3(this.$onPress, this.$pressScope, pointerInputChange3, null), 3, null);
                                    }
                                    anonymousClass4 = new AnonymousClass4(this.$pressScope, this.$onDoubleTap, this.$onTap, p0Var3, null);
                                    this.L$0 = awaitPointerEventScope5;
                                    this.L$1 = p0Var3;
                                    this.L$2 = pointerInputChange3;
                                    this.label = 5;
                                    if (awaitPointerEventScope5.m0(jD, anonymousClass4, this) == objE2) {
                                        return objE2;
                                    }
                                }
                            }
                        }
                        return l0.INSTANCE;
                    case 4:
                        jD = this.J$0;
                        p0 p0Var6 = (p0) this.L$1;
                        AwaitPointerEventScope awaitPointerEventScope7 = (AwaitPointerEventScope) this.L$0;
                        w.b(obj);
                        p0Var3 = p0Var6;
                        awaitPointerEventScope5 = awaitPointerEventScope7;
                        objG = obj;
                        pointerInputChange3 = (PointerInputChange) objG;
                        if (pointerInputChange3 == null) {
                            lVar3 = this.$onTap;
                            if (lVar3 != null) {
                                lVar3.invoke(Offset.d(((PointerInputChange) p0Var3.element).f()));
                            }
                        } else {
                            this.$pressScope.p();
                            if (this.$onPress != TapGestureDetectorKt.NoPressGesture) {
                                kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass3(this.$onPress, this.$pressScope, pointerInputChange3, null), 3, null);
                            }
                            anonymousClass4 = new AnonymousClass4(this.$pressScope, this.$onDoubleTap, this.$onTap, p0Var3, null);
                            this.L$0 = awaitPointerEventScope5;
                            this.L$1 = p0Var3;
                            this.L$2 = pointerInputChange3;
                            this.label = 5;
                            if (awaitPointerEventScope5.m0(jD, anonymousClass4, this) == objE2) {
                                return objE2;
                            }
                        }
                        return l0.INSTANCE;
                    case 5:
                        pointerInputChange3 = (PointerInputChange) this.L$2;
                        p0Var4 = (p0) this.L$1;
                        awaitPointerEventScope6 = (AwaitPointerEventScope) this.L$0;
                        try {
                            w.b(obj);
                            break;
                        } catch (PointerEventTimeoutCancellationException unused5) {
                            lVar4 = this.$onTap;
                            if (lVar4 != null) {
                                lVar4.invoke(Offset.d(((PointerInputChange) p0Var4.element).f()));
                            }
                            lVar5 = this.$onLongPress;
                            if (lVar5 != null) {
                                lVar5.invoke(Offset.d(pointerInputChange3.f()));
                            }
                            this.L$0 = null;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.label = 6;
                            if (TapGestureDetectorKt.h(awaitPointerEventScope6, this) == objE2) {
                                return objE2;
                            }
                            this.$pressScope.m();
                        }
                        return l0.INSTANCE;
                    case 6:
                        w.b(obj);
                        this.$pressScope.m();
                        return l0.INSTANCE;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(PressGestureScopeImpl pressGestureScopeImpl, q<? super PressGestureScope, ? super Offset, ? super d<? super l0>, ? extends Object> qVar, o0 o0Var, e8.l<? super Offset, l0> lVar, e8.l<? super Offset, l0> lVar2, e8.l<? super Offset, l0> lVar3, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$pressScope = pressGestureScopeImpl;
            this.$onPress = qVar;
            this.$$this$coroutineScope = o0Var;
            this.$onLongPress = lVar;
            this.$onDoubleTap = lVar2;
            this.$onTap = lVar3;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$pressScope, this.$onPress, this.$$this$coroutineScope, this.$onLongPress, this.$onDoubleTap, this.$onTap, dVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass1) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
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
                C00361 c00361 = new C00361(this.$pressScope, this.$onPress, this.$$this$coroutineScope, this.$onLongPress, this.$onDoubleTap, this.$onTap, null);
                this.label = 1;
                if (pointerInputScope.J(c00361, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((TapGestureDetectorKt$detectTapGestures$2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            PressGestureScopeImpl pressGestureScopeImpl = new PressGestureScopeImpl(this.$this_detectTapGestures);
            PointerInputScope pointerInputScope = this.$this_detectTapGestures;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(pressGestureScopeImpl, this.$onPress, o0Var, this.$onLongPress, this.$onDoubleTap, this.$onTap, null);
            this.label = 1;
            if (ForEachGestureKt.d(pointerInputScope, anonymousClass1, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
