package com.narvii.community;

import com.narvii.chat.core.ChatService;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class MyCommunityHelper$chatService$2 extends kotlin.jvm.internal.v implements e8.a<ChatService> {
    final /* synthetic */ MyCommunityHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MyCommunityHelper$chatService$2(MyCommunityHelper myCommunityHelper) {
        super(0);
        this.this$0 = myCommunityHelper;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ChatService invoke() {
        return (ChatService) this.this$0.getService("chat");
    }
}
