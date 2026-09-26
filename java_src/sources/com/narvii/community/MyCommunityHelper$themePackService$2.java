package com.narvii.community;

import com.narvii.theme.ThemePackService;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class MyCommunityHelper$themePackService$2 extends kotlin.jvm.internal.v implements e8.a<ThemePackService> {
    final /* synthetic */ MyCommunityHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MyCommunityHelper$themePackService$2(MyCommunityHelper myCommunityHelper) {
        super(0);
        this.this$0 = myCommunityHelper;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ThemePackService invoke() {
        return (ThemePackService) this.this$0.getService("themePack");
    }
}
