package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import e8.l;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes8.dex */
final class ScrollingLogic$doFlingAnimation$2$outerScopeScroll$1 extends v implements l<Offset, Offset> {
    final /* synthetic */ ScrollScope $$this$scroll;
    final /* synthetic */ ScrollingLogic this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScrollingLogic$doFlingAnimation$2$outerScopeScroll$1(ScrollingLogic scrollingLogic, ScrollScope scrollScope) {
        super(1);
        this.this$0 = scrollingLogic;
        this.$$this$scroll = scrollScope;
    }

    public final long a(long j6) {
        ScrollingLogic scrollingLogic = this.this$0;
        return Offset.q(j6, this.this$0.h(scrollingLogic.a(this.$$this$scroll, scrollingLogic.h(j6), null, NestedScrollSource.Companion.b())));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Offset invoke(Offset offset) {
        return Offset.d(a(offset.u()));
    }
}
