package androidx.compose.runtime;

import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.flow.h;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1", f = "SnapshotFlow.kt", l = {134, 138, 160}, m = "invokeSuspend")
final class SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1<T> extends l implements p<h<? super T>, d<? super l0>, Object> {
    final /* synthetic */ e8.a<T> $block;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1(e8.a<? extends T> aVar, d<? super SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1> dVar) {
        super(2, dVar);
        this.$block = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1 snapshotStateKt__SnapshotFlowKt$snapshotFlow$1 = new SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1(this.$block, dVar);
        snapshotStateKt__SnapshotFlowKt$snapshotFlow$1.L$0 = obj;
        return snapshotStateKt__SnapshotFlowKt$snapshotFlow$1;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull h<? super T> hVar, @Nullable d<? super l0> dVar) {
        return ((SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1) create(hVar, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00dc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:33:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:36:0x00e9 A[Catch: all -> 0x005a, TryCatch #2 {all -> 0x005a, blocks: (B:34:0x00e5, B:36:0x00e9, B:41:0x00f3, B:44:0x0101, B:48:0x0117, B:50:0x0120, B:60:0x0144, B:61:0x0147, B:15:0x0052, B:45:0x010c, B:47:0x0114, B:58:0x0140, B:59:0x0143), top: B:77:0x0052, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:44:0x0101 A[Catch: all -> 0x005a, TRY_LEAVE, TryCatch #2 {all -> 0x005a, blocks: (B:34:0x00e5, B:36:0x00e9, B:41:0x00f3, B:44:0x0101, B:48:0x0117, B:50:0x0120, B:60:0x0144, B:61:0x0147, B:15:0x0052, B:45:0x010c, B:47:0x0114, B:58:0x0140, B:59:0x0143), top: B:77:0x0052, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x0120 A[Catch: all -> 0x005a, TRY_LEAVE, TryCatch #2 {all -> 0x005a, blocks: (B:34:0x00e5, B:36:0x00e9, B:41:0x00f3, B:44:0x0101, B:48:0x0117, B:50:0x0120, B:60:0x0144, B:61:0x0147, B:15:0x0052, B:45:0x010c, B:47:0x0114, B:58:0x0140, B:59:0x0143), top: B:77:0x0052, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0134 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:53:0x0135  */
    /* JADX WARN: Path cross not found for [B:44:0x0101, B:62:0x0148], limit reached: 82 */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.a
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r17) {
        /*
            Method dump skipped, instruction units count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
