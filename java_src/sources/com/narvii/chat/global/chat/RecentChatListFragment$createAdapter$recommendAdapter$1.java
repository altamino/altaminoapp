package com.narvii.chat.global.chat;

import androidx.fragment.app.Fragment;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class RecentChatListFragment$createAdapter$recommendAdapter$1 extends v implements e8.l<Boolean, l0> {
    final /* synthetic */ RecentChatListFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RecentChatListFragment$createAdapter$recommendAdapter$1(RecentChatListFragment recentChatListFragment) {
        super(1);
        this.this$0 = recentChatListFragment;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Boolean bool) {
        invoke(bool.booleanValue());
        return l0.INSTANCE;
    }

    public final void invoke(boolean z6) {
        if (z6) {
            Fragment parentFragment = this.this$0.getParentFragment();
            t.h(parentFragment, "null cannot be cast to non-null type com.narvii.chat.global.chat.AggregationChatFragment");
            ((AggregationChatFragment) parentFragment).setStoreBadged();
        }
    }
}
