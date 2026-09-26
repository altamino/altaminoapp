package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import e8.p;
import e8.q;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.k;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
final class PointerIconKt$pointerHoverIcon$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ PointerIcon $icon;
    final /* synthetic */ boolean $overrideDescendants;

    /* JADX INFO: renamed from: androidx.compose.ui.input.pointer.PointerIconKt$pointerHoverIcon$2$1, reason: invalid class name */
    @f(c = "androidx.compose.ui.input.pointer.PointerIconKt$pointerHoverIcon$2$1", f = "PointerIcon.kt", l = {74}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<PointerInputScope, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ PointerIcon $icon;
        final /* synthetic */ boolean $overrideDescendants;
        final /* synthetic */ PointerIconService $pointerIconService;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z6, PointerIconService pointerIconService, PointerIcon pointerIcon, kotlin.coroutines.d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$overrideDescendants = z6;
            this.$pointerIconService = pointerIconService;
            this.$icon = pointerIcon;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$overrideDescendants, this.$pointerIconService, this.$icon, dVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((AnonymousClass1) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX INFO: renamed from: androidx.compose.ui.input.pointer.PointerIconKt$pointerHoverIcon$2$1$1, reason: invalid class name and collision with other inner class name */
        @f(c = "androidx.compose.ui.input.pointer.PointerIconKt$pointerHoverIcon$2$1$1", f = "PointerIcon.kt", l = {80}, m = "invokeSuspend")
        static final class C00721 extends k implements p<AwaitPointerEventScope, kotlin.coroutines.d<? super l0>, Object> {
            final /* synthetic */ PointerIcon $icon;
            final /* synthetic */ boolean $overrideDescendants;
            final /* synthetic */ PointerIconService $pointerIconService;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00721(boolean z6, PointerIconService pointerIconService, PointerIcon pointerIcon, kotlin.coroutines.d<? super C00721> dVar) {
                super(2, dVar);
                this.$overrideDescendants = z6;
                this.$pointerIconService = pointerIconService;
                this.$icon = pointerIcon;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                C00721 c00721 = new C00721(this.$overrideDescendants, this.$pointerIconService, this.$icon, dVar);
                c00721.L$0 = obj;
                return c00721;
            }

            @Override // e8.p
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable kotlin.coroutines.d<? super l0> dVar) {
                return ((C00721) create(awaitPointerEventScope, dVar)).invokeSuspend(l0.INSTANCE);
            }

            /* JADX WARN: Code duplicated, block: B:11:0x002b  */
            /* JADX WARN: Code duplicated, block: B:12:0x002e  */
            /* JADX WARN: Code duplicated, block: B:15:0x003a A[RETURN] */
            /* JADX WARN: Code duplicated, block: B:16:0x003b  */
            /* JADX WARN: Code duplicated, block: B:19:0x0053  */
            /* JADX WARN: Code duplicated, block: B:24:0x007c A[ADDED_TO_REGION] */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x003b -> B:17:0x0040). Please report as a decompilation issue!!! */
            /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:19:0x0053
                	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                */
            @Override // kotlin.coroutines.jvm.internal.a
            @org.jetbrains.annotations.Nullable
            public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r13) {
                /*
                    r12 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.b.e()
                    int r1 = r12.label
                    r2 = 1
                    if (r1 == 0) goto L1e
                    if (r1 != r2) goto L16
                    java.lang.Object r1 = r12.L$0
                    androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                    w7.w.b(r13)
                    r3 = r1
                    r1 = r0
                    r0 = r12
                    goto L40
                L16:
                    java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r13.<init>(r0)
                    throw r13
                L1e:
                    w7.w.b(r13)
                    java.lang.Object r13 = r12.L$0
                    androidx.compose.ui.input.pointer.AwaitPointerEventScope r13 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r13
                    r1 = r13
                    r13 = r12
                L27:
                    boolean r3 = r13.$overrideDescendants
                    if (r3 == 0) goto L2e
                    androidx.compose.ui.input.pointer.PointerEventPass r3 = androidx.compose.ui.input.pointer.PointerEventPass.Main
                    goto L30
                L2e:
                    androidx.compose.ui.input.pointer.PointerEventPass r3 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                L30:
                    r13.L$0 = r1
                    r13.label = r2
                    java.lang.Object r3 = r1.u0(r3, r13)
                    if (r3 != r0) goto L3b
                    return r0
                L3b:
                    r11 = r0
                    r0 = r13
                    r13 = r3
                    r3 = r1
                    r1 = r11
                L40:
                    androidx.compose.ui.input.pointer.PointerEvent r13 = (androidx.compose.ui.input.pointer.PointerEvent) r13
                    int r4 = r13.f()
                    androidx.compose.ui.input.pointer.PointerEventType$Companion r5 = androidx.compose.ui.input.pointer.PointerEventType.Companion
                    int r6 = r5.e()
                    boolean r4 = androidx.compose.ui.input.pointer.PointerEventType.j(r4, r6)
                    r6 = 0
                    if (r4 == 0) goto L6e
                    java.util.List r4 = r13.c()
                    java.lang.Object r4 = r4.get(r6)
                    androidx.compose.ui.input.pointer.PointerInputChange r4 = (androidx.compose.ui.input.pointer.PointerInputChange) r4
                    long r7 = r3.a()
                    androidx.compose.ui.geometry.Size$Companion r9 = androidx.compose.ui.geometry.Size.Companion
                    long r9 = r9.b()
                    boolean r4 = androidx.compose.ui.input.pointer.PointerEventKt.f(r4, r7, r9)
                    if (r4 == 0) goto L6e
                    r6 = r2
                L6e:
                    int r13 = r13.f()
                    int r4 = r5.b()
                    boolean r13 = androidx.compose.ui.input.pointer.PointerEventType.j(r13, r4)
                    if (r13 != 0) goto L85
                    if (r6 != 0) goto L85
                    androidx.compose.ui.input.pointer.PointerIconService r13 = r0.$pointerIconService
                    androidx.compose.ui.input.pointer.PointerIcon r4 = r0.$icon
                    r13.a(r4)
                L85:
                    r13 = r0
                    r0 = r1
                    r1 = r3
                    goto L27
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.PointerIconKt$pointerHoverIcon$2.AnonymousClass1.C00721.invokeSuspend(java.lang.Object):java.lang.Object");
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
                C00721 c00721 = new C00721(this.$overrideDescendants, this.$pointerIconService, this.$icon, null);
                this.label = 1;
                if (pointerInputScope.J(c00721, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PointerIconKt$pointerHoverIcon$2(PointerIcon pointerIcon, boolean z6) {
        super(3);
        this.$icon = pointerIcon;
        this.$overrideDescendants = z6;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(811087536);
        PointerIconService pointerIconService = (PointerIconService) composer.x(CompositionLocalsKt.k());
        Modifier modifierC = pointerIconService == null ? Modifier.Companion : SuspendingPointerInputFilterKt.c(composed, this.$icon, Boolean.valueOf(this.$overrideDescendants), new AnonymousClass1(this.$overrideDescendants, pointerIconService, this.$icon, null));
        composer.Q();
        return modifierC;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
