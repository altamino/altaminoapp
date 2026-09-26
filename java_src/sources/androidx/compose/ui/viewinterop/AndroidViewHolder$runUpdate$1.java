package androidx.compose.ui.viewinterop;

import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class AndroidViewHolder$runUpdate$1 extends v implements e8.a<l0> {
    final /* synthetic */ AndroidViewHolder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidViewHolder$runUpdate$1(AndroidViewHolder androidViewHolder) {
        super(0);
        this.this$0 = androidViewHolder;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        if (this.this$0.hasUpdateBlock) {
            SnapshotStateObserver snapshotStateObserver = this.this$0.snapshotObserver;
            AndroidViewHolder androidViewHolder = this.this$0;
            snapshotStateObserver.k(androidViewHolder, androidViewHolder.onCommitAffectingUpdate, this.this$0.getUpdate());
        }
    }
}
