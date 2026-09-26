package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.core.view.ViewGroupKt$descendants$1", f = "ViewGroup.kt", l = {119, 121}, m = "invokeSuspend")
final class ViewGroupKt$descendants$1 extends kotlin.coroutines.jvm.internal.k implements e8.p<kotlin.sequences.i<? super View>, kotlin.coroutines.d<? super w7.l0>, Object> {
    final /* synthetic */ ViewGroup $this_descendants;
    int I$0;
    int I$1;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ViewGroupKt$descendants$1(ViewGroup viewGroup, kotlin.coroutines.d<? super ViewGroupKt$descendants$1> dVar) {
        super(2, dVar);
        this.$this_descendants = viewGroup;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        ViewGroupKt$descendants$1 viewGroupKt$descendants$1 = new ViewGroupKt$descendants$1(this.$this_descendants, dVar);
        viewGroupKt$descendants$1.L$0 = obj;
        return viewGroupKt$descendants$1;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull kotlin.sequences.i<? super View> iVar, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
        return ((ViewGroupKt$descendants$1) create(iVar, dVar)).invokeSuspend(w7.l0.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x004e  */
    /* JADX WARN: Code duplicated, block: B:14:0x0069 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:15:0x006a  */
    /* JADX WARN: Code duplicated, block: B:18:0x0075  */
    /* JADX WARN: Code duplicated, block: B:20:0x008e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:21:0x008f  */
    /* JADX WARN: Code duplicated, block: B:23:0x0098  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x008f -> B:22:0x0091). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0098 -> B:24:0x009c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.a
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.b.e()
            int r1 = r11.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L3d
            if (r1 == r3) goto L28
            if (r1 != r2) goto L20
            int r1 = r11.I$1
            int r4 = r11.I$0
            java.lang.Object r5 = r11.L$1
            android.view.ViewGroup r5 = (android.view.ViewGroup) r5
            java.lang.Object r6 = r11.L$0
            kotlin.sequences.i r6 = (kotlin.sequences.i) r6
            w7.w.b(r12)
            r12 = r11
            goto L91
        L20:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L28:
            int r1 = r11.I$1
            int r4 = r11.I$0
            java.lang.Object r5 = r11.L$2
            android.view.View r5 = (android.view.View) r5
            java.lang.Object r6 = r11.L$1
            android.view.ViewGroup r6 = (android.view.ViewGroup) r6
            java.lang.Object r7 = r11.L$0
            kotlin.sequences.i r7 = (kotlin.sequences.i) r7
            w7.w.b(r12)
            r12 = r11
            goto L71
        L3d:
            w7.w.b(r12)
            java.lang.Object r12 = r11.L$0
            kotlin.sequences.i r12 = (kotlin.sequences.i) r12
            android.view.ViewGroup r1 = r11.$this_descendants
            int r4 = r1.getChildCount()
            r5 = 0
            r6 = r11
        L4c:
            if (r5 >= r4) goto La1
            android.view.View r7 = r1.getChildAt(r5)
            java.lang.String r8 = "getChildAt(index)"
            kotlin.jvm.internal.t.i(r7, r8)
            r6.L$0 = r12
            r6.L$1 = r1
            r6.L$2 = r7
            r6.I$0 = r5
            r6.I$1 = r4
            r6.label = r3
            java.lang.Object r8 = r12.a(r7, r6)
            if (r8 != r0) goto L6a
            return r0
        L6a:
            r9 = r7
            r7 = r12
            r12 = r6
            r6 = r1
            r1 = r4
            r4 = r5
            r5 = r9
        L71:
            boolean r8 = r5 instanceof android.view.ViewGroup
            if (r8 == 0) goto L98
            android.view.ViewGroup r5 = (android.view.ViewGroup) r5
            kotlin.sequences.g r5 = androidx.core.view.ViewGroupKt.b(r5)
            r12.L$0 = r7
            r12.L$1 = r6
            r8 = 0
            r12.L$2 = r8
            r12.I$0 = r4
            r12.I$1 = r1
            r12.label = r2
            java.lang.Object r5 = r7.c(r5, r12)
            if (r5 != r0) goto L8f
            return r0
        L8f:
            r5 = r6
            r6 = r7
        L91:
            r9 = r6
            r6 = r12
            r12 = r9
            r10 = r5
            r5 = r1
            r1 = r10
            goto L9c
        L98:
            r5 = r1
            r1 = r6
            r6 = r12
            r12 = r7
        L9c:
            int r4 = r4 + r3
            r9 = r5
            r5 = r4
            r4 = r9
            goto L4c
        La1:
            w7.l0 r12 = w7.l0.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.ViewGroupKt$descendants$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
