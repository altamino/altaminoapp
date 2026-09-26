package androidx.compose.ui.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1", f = "WindowRecomposer.android.kt", l = {116, 122}, m = "invokeSuspend")
final class WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 extends kotlin.coroutines.jvm.internal.l implements e8.p<kotlinx.coroutines.flow.h<? super Float>, kotlin.coroutines.d<? super w7.l0>, Object> {
    final /* synthetic */ Uri $animationScaleUri;
    final /* synthetic */ Context $applicationContext;
    final /* synthetic */ kotlinx.coroutines.channels.d<w7.l0> $channel;
    final /* synthetic */ WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1 $contentObserver;
    final /* synthetic */ ContentResolver $resolver;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(ContentResolver contentResolver, Uri uri, WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1 windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1, kotlinx.coroutines.channels.d<w7.l0> dVar, Context context, kotlin.coroutines.d<? super WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1> dVar2) {
        super(2, dVar2);
        this.$resolver = contentResolver;
        this.$animationScaleUri = uri;
        this.$contentObserver = windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1;
        this.$channel = dVar;
        this.$applicationContext = context;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 = new WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(this.$resolver, this.$animationScaleUri, this.$contentObserver, this.$channel, this.$applicationContext, dVar);
        windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.L$0 = obj;
        return windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull kotlinx.coroutines.flow.h<? super Float> hVar, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
        return ((WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1) create(hVar, dVar)).invokeSuspend(w7.l0.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0059 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:22:0x005a  */
    /* JADX WARN: Code duplicated, block: B:25:0x0065 A[Catch: all -> 0x0089, TRY_LEAVE, TryCatch #0 {all -> 0x0089, blocks: (B:19:0x004d, B:23:0x005d, B:25:0x0065), top: B:35:0x004d }] */
    /* JADX WARN: Code duplicated, block: B:27:0x0086 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x0087  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0087 -> B:35:0x004d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.a
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.b.e()
            int r1 = r9.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L35
            if (r1 == r3) goto L27
            if (r1 != r2) goto L1f
            java.lang.Object r1 = r9.L$1
            kotlinx.coroutines.channels.f r1 = (kotlinx.coroutines.channels.f) r1
            java.lang.Object r4 = r9.L$0
            kotlinx.coroutines.flow.h r4 = (kotlinx.coroutines.flow.h) r4
            w7.w.b(r10)     // Catch: java.lang.Throwable -> L1b
            r10 = r4
            goto L4c
        L1b:
            r10 = move-exception
            r4 = r9
            goto L95
        L1f:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L27:
            java.lang.Object r1 = r9.L$1
            kotlinx.coroutines.channels.f r1 = (kotlinx.coroutines.channels.f) r1
            java.lang.Object r4 = r9.L$0
            kotlinx.coroutines.flow.h r4 = (kotlinx.coroutines.flow.h) r4
            w7.w.b(r10)     // Catch: java.lang.Throwable -> L1b
            r5 = r4
            r4 = r9
            goto L5d
        L35:
            w7.w.b(r10)
            java.lang.Object r10 = r9.L$0
            kotlinx.coroutines.flow.h r10 = (kotlinx.coroutines.flow.h) r10
            android.content.ContentResolver r1 = r9.$resolver
            android.net.Uri r4 = r9.$animationScaleUri
            r5 = 0
            androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1 r6 = r9.$contentObserver
            r1.registerContentObserver(r4, r5, r6)
            kotlinx.coroutines.channels.d<w7.l0> r1 = r9.$channel     // Catch: java.lang.Throwable -> L1b
            kotlinx.coroutines.channels.f r1 = r1.iterator()     // Catch: java.lang.Throwable -> L1b
        L4c:
            r4 = r9
        L4d:
            r4.L$0 = r10     // Catch: java.lang.Throwable -> L89
            r4.L$1 = r1     // Catch: java.lang.Throwable -> L89
            r4.label = r3     // Catch: java.lang.Throwable -> L89
            java.lang.Object r5 = r1.b(r4)     // Catch: java.lang.Throwable -> L89
            if (r5 != r0) goto L5a
            return r0
        L5a:
            r8 = r5
            r5 = r10
            r10 = r8
        L5d:
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Throwable -> L89
            boolean r10 = r10.booleanValue()     // Catch: java.lang.Throwable -> L89
            if (r10 == 0) goto L8b
            r1.next()     // Catch: java.lang.Throwable -> L89
            android.content.Context r10 = r4.$applicationContext     // Catch: java.lang.Throwable -> L89
            android.content.ContentResolver r10 = r10.getContentResolver()     // Catch: java.lang.Throwable -> L89
            java.lang.String r6 = "animator_duration_scale"
            r7 = 1065353216(0x3f800000, float:1.0)
            float r10 = android.provider.Settings.Global.getFloat(r10, r6, r7)     // Catch: java.lang.Throwable -> L89
            java.lang.Float r10 = kotlin.coroutines.jvm.internal.b.c(r10)     // Catch: java.lang.Throwable -> L89
            r4.L$0 = r5     // Catch: java.lang.Throwable -> L89
            r4.L$1 = r1     // Catch: java.lang.Throwable -> L89
            r4.label = r2     // Catch: java.lang.Throwable -> L89
            java.lang.Object r10 = r5.emit(r10, r4)     // Catch: java.lang.Throwable -> L89
            if (r10 != r0) goto L87
            return r0
        L87:
            r10 = r5
            goto L4d
        L89:
            r10 = move-exception
            goto L95
        L8b:
            android.content.ContentResolver r10 = r4.$resolver
            androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1 r0 = r4.$contentObserver
            r10.unregisterContentObserver(r0)
            w7.l0 r10 = w7.l0.INSTANCE
            return r10
        L95:
            android.content.ContentResolver r0 = r4.$resolver
            androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1 r1 = r4.$contentObserver
            r0.unregisterContentObserver(r1)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
