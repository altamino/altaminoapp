package androidx.activity.compose;

import e8.a;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class BackHandlerKt$BackHandler$1$1 extends v implements a<l0> {
    final /* synthetic */ BackHandlerKt$BackHandler$backCallback$1$1 $backCallback;
    final /* synthetic */ boolean $enabled;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BackHandlerKt$BackHandler$1$1(BackHandlerKt$BackHandler$backCallback$1$1 backHandlerKt$BackHandler$backCallback$1$1, boolean z6) {
        super(0);
        this.$backCallback = backHandlerKt$BackHandler$backCallback$1$1;
        this.$enabled = z6;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        i(this.$enabled);
    }
}
