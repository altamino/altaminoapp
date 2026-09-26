package com.narvii.checkin;

import com.narvii.modulization.CommunityConfigHelper;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class CheckInService$communityConfigHelper$2 extends v implements e8.a<CommunityConfigHelper> {
    final /* synthetic */ CheckInService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CheckInService$communityConfigHelper$2(CheckInService checkInService) {
        super(0);
        this.this$0 = checkInService;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final CommunityConfigHelper invoke() {
        return new CommunityConfigHelper(this.this$0.getCtx());
    }
}
