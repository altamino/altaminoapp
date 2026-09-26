package com.narvii.topic.adapter;

import com.narvii.app.NVContext;
import com.narvii.community.MyCommunityListService;

/* JADX INFO: loaded from: classes5.dex */
final class RecentCommunityAdapter$MyLaunchHelper$myCommunityListService$2 extends kotlin.jvm.internal.v implements e8.a<MyCommunityListService> {
    final /* synthetic */ NVContext $ctx;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RecentCommunityAdapter$MyLaunchHelper$myCommunityListService$2(NVContext nVContext) {
        super(0);
        this.$ctx = nVContext;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final MyCommunityListService invoke() {
        return (MyCommunityListService) this.$ctx.getService("myCommunityList");
    }
}
