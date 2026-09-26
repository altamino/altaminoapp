package androidx.compose.foundation.gestures;

import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import e8.p;
import e8.q;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.k;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2", f = "TapGestureDetector.kt", l = {ComposerKt.referenceKey}, m = "invokeSuspend")
final class TapGestureDetectorKt$detectTapAndPress$2 extends l implements p<PointerInputScope, d<? super l0>, Object> {
    final /* synthetic */ q<PressGestureScope, Offset, d<? super l0>, Object> $onPress;
    final /* synthetic */ e8.l<Offset, l0> $onTap;
    final /* synthetic */ PressGestureScopeImpl $pressScope;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1, reason: invalid class name */
    @f(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1", f = "TapGestureDetector.kt", l = {208}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ PointerInputScope $$this$forEachGesture;
        final /* synthetic */ q<PressGestureScope, Offset, d<? super l0>, Object> $onPress;
        final /* synthetic */ e8.l<Offset, l0> $onTap;
        final /* synthetic */ PressGestureScopeImpl $pressScope;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(PressGestureScopeImpl pressGestureScopeImpl, PointerInputScope pointerInputScope, q<? super PressGestureScope, ? super Offset, ? super d<? super l0>, ? extends Object> qVar, e8.l<? super Offset, l0> lVar, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$pressScope = pressGestureScopeImpl;
            this.$$this$forEachGesture = pointerInputScope;
            this.$onPress = qVar;
            this.$onTap = lVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$pressScope, this.$$this$forEachGesture, this.$onPress, this.$onTap, dVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$1, reason: invalid class name and collision with other inner class name */
        @f(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$1", f = "TapGestureDetector.kt", l = {210, 216}, m = "invokeSuspend")
        static final class C00341 extends k implements p<AwaitPointerEventScope, d<? super l0>, Object> {
            final /* synthetic */ o0 $$this$coroutineScope;
            final /* synthetic */ q<PressGestureScope, Offset, d<? super l0>, Object> $onPress;
            final /* synthetic */ e8.l<Offset, l0> $onTap;
            final /* synthetic */ PressGestureScopeImpl $pressScope;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$1$1, reason: invalid class name and collision with other inner class name */
            @f(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1$1$1", f = "TapGestureDetector.kt", l = {ThirdPartyAccountBaseFragment.API_ERR_EMAIL}, m = "invokeSuspend")
            static final class C00351 extends l implements p<o0, d<? super l0>, Object> {
                final /* synthetic */ PointerInputChange $down;
                final /* synthetic */ q<PressGestureScope, Offset, d<? super l0>, Object> $onPress;
                final /* synthetic */ PressGestureScopeImpl $pressScope;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                C00351(q<? super PressGestureScope, ? super Offset, ? super d<? super l0>, ? extends Object> qVar, PressGestureScopeImpl pressGestureScopeImpl, PointerInputChange pointerInputChange, d<? super C00351> dVar) {
                    super(2, dVar);
                    this.$onPress = qVar;
                    this.$pressScope = pressGestureScopeImpl;
                    this.$down = pointerInputChange;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @NotNull
                public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                    return new C00351(this.$onPress, this.$pressScope, this.$down, dVar);
                }

                @Override // e8.p
                @Nullable
                public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                    return ((C00351) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C00341(q<? super PressGestureScope, ? super Offset, ? super d<? super l0>, ? extends Object> qVar, o0 o0Var, PressGestureScopeImpl pressGestureScopeImpl, e8.l<? super Offset, l0> lVar, d<? super C00341> dVar) {
                super(2, dVar);
                this.$onPress = qVar;
                this.$$this$coroutineScope = o0Var;
                this.$pressScope = pressGestureScopeImpl;
                this.$onTap = lVar;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                C00341 c00341 = new C00341(this.$onPress, this.$$this$coroutineScope, this.$pressScope, this.$onTap, dVar);
                c00341.L$0 = obj;
                return c00341;
            }

            @Override // e8.p
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable d<? super l0> dVar) {
                return ((C00341) create(awaitPointerEventScope, dVar)).invokeSuspend(l0.INSTANCE);
            }

            /* JADX WARN: Code duplicated, block: B:21:0x0065  */
            /* JADX WARN: Code duplicated, block: B:22:0x006b  */
            /* JADX WARN: Code duplicated, block: B:24:0x0077  */
            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                AwaitPointerEventScope awaitPointerEventScope;
                PointerInputChange pointerInputChange;
                e8.l<Offset, l0> lVar;
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 == 2) {
                            w.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
                        w.b(obj);
                    }
                    pointerInputChange = (PointerInputChange) obj;
                    if (pointerInputChange == null) {
                        this.$pressScope.e();
                    } else {
                        pointerInputChange.a();
                        this.$pressScope.m();
                        lVar = this.$onTap;
                        if (lVar != null) {
                            lVar.invoke(Offset.d(pointerInputChange.f()));
                        }
                    }
                    return l0.INSTANCE;
                }
                w.b(obj);
                awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
                this.L$0 = awaitPointerEventScope;
                this.label = 1;
                obj = TapGestureDetectorKt.e(awaitPointerEventScope, false, this, 1, null);
                if (obj == objE) {
                    return objE;
                }
                PointerInputChange pointerInputChange2 = (PointerInputChange) obj;
                pointerInputChange2.a();
                if (this.$onPress != TapGestureDetectorKt.NoPressGesture) {
                    kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new C00351(this.$onPress, this.$pressScope, pointerInputChange2, null), 3, null);
                }
                this.L$0 = null;
                this.label = 2;
                obj = TapGestureDetectorKt.l(awaitPointerEventScope, this);
                if (obj == objE) {
                    return objE;
                }
                pointerInputChange = (PointerInputChange) obj;
                if (pointerInputChange == null) {
                    this.$pressScope.e();
                } else {
                    pointerInputChange.a();
                    this.$pressScope.m();
                    lVar = this.$onTap;
                    if (lVar != null) {
                        lVar.invoke(Offset.d(pointerInputChange.f()));
                    }
                }
                return l0.INSTANCE;
            }
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
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
                o0 o0Var = (o0) this.L$0;
                this.$pressScope.p();
                PointerInputScope pointerInputScope = this.$$this$forEachGesture;
                C00341 c00341 = new C00341(this.$onPress, o0Var, this.$pressScope, this.$onTap, null);
                this.label = 1;
                if (pointerInputScope.J(c00341, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TapGestureDetectorKt$detectTapAndPress$2(PressGestureScopeImpl pressGestureScopeImpl, q<? super PressGestureScope, ? super Offset, ? super d<? super l0>, ? extends Object> qVar, e8.l<? super Offset, l0> lVar, d<? super TapGestureDetectorKt$detectTapAndPress$2> dVar) {
        super(2, dVar);
        this.$pressScope = pressGestureScopeImpl;
        this.$onPress = qVar;
        this.$onTap = lVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        TapGestureDetectorKt$detectTapAndPress$2 tapGestureDetectorKt$detectTapAndPress$2 = new TapGestureDetectorKt$detectTapAndPress$2(this.$pressScope, this.$onPress, this.$onTap, dVar);
        tapGestureDetectorKt$detectTapAndPress$2.L$0 = obj;
        return tapGestureDetectorKt$detectTapAndPress$2;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
        return ((TapGestureDetectorKt$detectTapAndPress$2) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$pressScope, (PointerInputScope) this.L$0, this.$onPress, this.$onTap, null);
            this.label = 1;
            if (p0.f(anonymousClass1, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
