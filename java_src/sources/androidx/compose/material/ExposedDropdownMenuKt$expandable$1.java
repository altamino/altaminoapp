package androidx.compose.material;

import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputScope;
import e8.a;
import e8.p;
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

/* JADX INFO: loaded from: classes2.dex */
@f(c = "androidx.compose.material.ExposedDropdownMenuKt$expandable$1", f = "ExposedDropdownMenu.kt", l = {516}, m = "invokeSuspend")
final class ExposedDropdownMenuKt$expandable$1 extends l implements p<PointerInputScope, d<? super l0>, Object> {
    final /* synthetic */ a<l0> $onExpandedChange;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExposedDropdownMenuKt$expandable$1(a<l0> aVar, d<? super ExposedDropdownMenuKt$expandable$1> dVar) {
        super(2, dVar);
        this.$onExpandedChange = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        ExposedDropdownMenuKt$expandable$1 exposedDropdownMenuKt$expandable$1 = new ExposedDropdownMenuKt$expandable$1(this.$onExpandedChange, dVar);
        exposedDropdownMenuKt$expandable$1.L$0 = obj;
        return exposedDropdownMenuKt$expandable$1;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
        return ((ExposedDropdownMenuKt$expandable$1) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX INFO: renamed from: androidx.compose.material.ExposedDropdownMenuKt$expandable$1$1, reason: invalid class name */
    @f(c = "androidx.compose.material.ExposedDropdownMenuKt$expandable$1$1", f = "ExposedDropdownMenu.kt", l = {517}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<PointerInputScope, d<? super l0>, Object> {
        final /* synthetic */ a<l0> $onExpandedChange;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.material.ExposedDropdownMenuKt$expandable$1$1$1, reason: invalid class name and collision with other inner class name */
        @f(c = "androidx.compose.material.ExposedDropdownMenuKt$expandable$1$1$1", f = "ExposedDropdownMenu.kt", l = {518}, m = "invokeSuspend")
        static final class C00591 extends l implements p<o0, d<? super l0>, Object> {
            final /* synthetic */ PointerInputScope $$this$forEachGesture;
            final /* synthetic */ a<l0> $onExpandedChange;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00591(PointerInputScope pointerInputScope, a<l0> aVar, d<? super C00591> dVar) {
                super(2, dVar);
                this.$$this$forEachGesture = pointerInputScope;
                this.$onExpandedChange = aVar;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                return new C00591(this.$$this$forEachGesture, this.$onExpandedChange, dVar);
            }

            /* JADX INFO: renamed from: androidx.compose.material.ExposedDropdownMenuKt$expandable$1$1$1$1, reason: invalid class name and collision with other inner class name */
            @f(c = "androidx.compose.material.ExposedDropdownMenuKt$expandable$1$1$1$1", f = "ExposedDropdownMenu.kt", l = {521}, m = "invokeSuspend")
            static final class C00601 extends k implements p<AwaitPointerEventScope, d<? super l0>, Object> {
                final /* synthetic */ a<l0> $onExpandedChange;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C00601(a<l0> aVar, d<? super C00601> dVar) {
                    super(2, dVar);
                    this.$onExpandedChange = aVar;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @NotNull
                public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                    C00601 c00601 = new C00601(this.$onExpandedChange, dVar);
                    c00601.L$0 = obj;
                    return c00601;
                }

                @Override // e8.p
                @Nullable
                /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
                public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable d<? super l0> dVar) {
                    return ((C00601) create(awaitPointerEventScope, dVar)).invokeSuspend(l0.INSTANCE);
                }

                /* JADX WARN: Code duplicated, block: B:15:0x0046  */
                /* JADX WARN: Code duplicated, block: B:18:0x0056 A[LOOP:0: B:14:0x0044->B:18:0x0056, LOOP_END] */
                /* JADX WARN: Code duplicated, block: B:21:0x0052 A[SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:22:0x0059 A[SYNTHETIC] */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0034 -> B:13:0x0039). Please report as a decompilation issue!!! */
                /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                    jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
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
                        r2 = 1
                        if (r1 == 0) goto L1e
                        if (r1 != r2) goto L16
                        java.lang.Object r1 = r8.L$0
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                        w7.w.b(r9)
                        r3 = r1
                        r1 = r0
                        r0 = r8
                        goto L39
                    L16:
                        java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                        java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                        r9.<init>(r0)
                        throw r9
                    L1e:
                        w7.w.b(r9)
                        java.lang.Object r9 = r8.L$0
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r9 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r9
                        r1 = r9
                        r9 = r8
                    L27:
                        androidx.compose.ui.input.pointer.PointerEventPass r3 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                        r9.L$0 = r1
                        r9.label = r2
                        java.lang.Object r3 = r1.u0(r3, r9)
                        if (r3 != r0) goto L34
                        return r0
                    L34:
                        r7 = r0
                        r0 = r9
                        r9 = r3
                        r3 = r1
                        r1 = r7
                    L39:
                        androidx.compose.ui.input.pointer.PointerEvent r9 = (androidx.compose.ui.input.pointer.PointerEvent) r9
                        java.util.List r9 = r9.c()
                        int r4 = r9.size()
                        r5 = 0
                    L44:
                        if (r5 >= r4) goto L59
                        java.lang.Object r6 = r9.get(r5)
                        androidx.compose.ui.input.pointer.PointerInputChange r6 = (androidx.compose.ui.input.pointer.PointerInputChange) r6
                        boolean r6 = androidx.compose.ui.input.pointer.PointerEventKt.c(r6)
                        if (r6 != 0) goto L56
                        r9 = r0
                        r0 = r1
                        r1 = r3
                        goto L27
                    L56:
                        int r5 = r5 + 1
                        goto L44
                    L59:
                        e8.a<w7.l0> r9 = r0.$onExpandedChange
                        r9.invoke()
                        w7.l0 r9 = w7.l0.INSTANCE
                        return r9
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ExposedDropdownMenuKt$expandable$1.AnonymousClass1.C00591.C00601.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override // e8.p
            @Nullable
            public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                return ((C00591) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
                    PointerInputScope pointerInputScope = this.$$this$forEachGesture;
                    C00601 c00601 = new C00601(this.$onExpandedChange, null);
                    this.label = 1;
                    if (pointerInputScope.J(c00601, this) == objE) {
                        return objE;
                    }
                }
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(a<l0> aVar, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$onExpandedChange = aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$onExpandedChange, dVar);
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
                C00591 c00591 = new C00591((PointerInputScope) this.L$0, this.$onExpandedChange, null);
                this.label = 1;
                if (p0.f(c00591, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$onExpandedChange, null);
            this.label = 1;
            if (ForEachGestureKt.d(pointerInputScope, anonymousClass1, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
