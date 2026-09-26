package com.narvii.topic.adapter;

import com.narvii.community.RecentCommunityHelper;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;

/* JADX INFO: loaded from: classes5.dex */
final class RecentCommunityAdapter$recentCommunityHelper$2 extends kotlin.jvm.internal.v implements e8.a<RecentCommunityHelper> {
    final /* synthetic */ RecentCommunityAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RecentCommunityAdapter$recentCommunityHelper$2(RecentCommunityAdapter recentCommunityAdapter) {
        super(0);
        this.this$0 = recentCommunityAdapter;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final RecentCommunityHelper invoke() {
        RecentCommunityHelper recentCommunityHelper = (RecentCommunityHelper) ((NVRecyclerViewBaseAdapter) this.this$0).context.getService("recentCommunities");
        recentCommunityHelper.addChangeListener(this.this$0);
        return recentCommunityHelper;
    }
}
