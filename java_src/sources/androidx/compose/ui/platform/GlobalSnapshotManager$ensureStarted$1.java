package androidx.compose.ui.platform;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$1", f = "GlobalSnapshotManager.android.kt", l = {63}, m = "invokeSuspend")
final class GlobalSnapshotManager$ensureStarted$1 extends kotlin.coroutines.jvm.internal.l implements e8.p<kotlinx.coroutines.o0, kotlin.coroutines.d<? super w7.l0>, Object> {
    final /* synthetic */ kotlinx.coroutines.channels.d<w7.l0> $channel;
    Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GlobalSnapshotManager$ensureStarted$1(kotlinx.coroutines.channels.d<w7.l0> dVar, kotlin.coroutines.d<? super GlobalSnapshotManager$ensureStarted$1> dVar2) {
        super(2, dVar2);
        this.$channel = dVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        return new GlobalSnapshotManager$ensureStarted$1(this.$channel, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull kotlinx.coroutines.o0 o0Var, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
        return ((GlobalSnapshotManager$ensureStarted$1) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:17:0x003d  */
    /* JADX WARN: Code duplicated, block: B:20:0x004b A[Catch: all -> 0x005b, TRY_LEAVE, TryCatch #1 {all -> 0x005b, blocks: (B:18:0x0043, B:20:0x004b), top: B:32:0x0043 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x003d -> B:32:0x0043). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.a
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.b.e()
            int r1 = r6.label
            r2 = 1
            if (r1 == 0) goto L25
            if (r1 != r2) goto L1d
            java.lang.Object r1 = r6.L$1
            kotlinx.coroutines.channels.f r1 = (kotlinx.coroutines.channels.f) r1
            java.lang.Object r3 = r6.L$0
            kotlinx.coroutines.channels.t r3 = (kotlinx.coroutines.channels.t) r3
            w7.w.b(r7)     // Catch: java.lang.Throwable -> L1b
            r4 = r3
            r3 = r1
            r1 = r0
            r0 = r6
            goto L43
        L1b:
            r7 = move-exception
            goto L65
        L1d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L25:
            w7.w.b(r7)
            kotlinx.coroutines.channels.d<w7.l0> r3 = r6.$channel
            kotlinx.coroutines.channels.f r7 = r3.iterator()     // Catch: java.lang.Throwable -> L1b
            r1 = r7
            r7 = r6
        L30:
            r7.L$0 = r3     // Catch: java.lang.Throwable -> L1b
            r7.L$1 = r1     // Catch: java.lang.Throwable -> L1b
            r7.label = r2     // Catch: java.lang.Throwable -> L1b
            java.lang.Object r4 = r1.b(r7)     // Catch: java.lang.Throwable -> L1b
            if (r4 != r0) goto L3d
            return r0
        L3d:
            r5 = r0
            r0 = r7
            r7 = r4
            r4 = r3
            r3 = r1
            r1 = r5
        L43:
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: java.lang.Throwable -> L5b
            boolean r7 = r7.booleanValue()     // Catch: java.lang.Throwable -> L5b
            if (r7 == 0) goto L5e
            java.lang.Object r7 = r3.next()     // Catch: java.lang.Throwable -> L5b
            w7.l0 r7 = (w7.l0) r7     // Catch: java.lang.Throwable -> L5b
            androidx.compose.runtime.snapshots.Snapshot$Companion r7 = androidx.compose.runtime.snapshots.Snapshot.Companion     // Catch: java.lang.Throwable -> L5b
            r7.g()     // Catch: java.lang.Throwable -> L5b
            r7 = r0
            r0 = r1
            r1 = r3
            r3 = r4
            goto L30
        L5b:
            r7 = move-exception
            r3 = r4
            goto L65
        L5e:
            r7 = 0
            kotlinx.coroutines.channels.j.a(r4, r7)
            w7.l0 r7 = w7.l0.INSTANCE
            return r7
        L65:
            throw r7     // Catch: java.lang.Throwable -> L66
        L66:
            r0 = move-exception
            kotlinx.coroutines.channels.j.a(r3, r7)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
