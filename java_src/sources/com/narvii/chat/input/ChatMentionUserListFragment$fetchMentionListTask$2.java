package com.narvii.chat.input;

import com.narvii.chat.input.ChatMentionUserListFragment.FetchMentionListTask;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class ChatMentionUserListFragment$fetchMentionListTask$2 extends v implements e8.a<ChatMentionUserListFragment.FetchMentionListTask> {
    final /* synthetic */ ChatMentionUserListFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChatMentionUserListFragment$fetchMentionListTask$2(ChatMentionUserListFragment chatMentionUserListFragment) {
        super(0);
        this.this$0 = chatMentionUserListFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ChatMentionUserListFragment.FetchMentionListTask invoke() {
        return this.this$0.new FetchMentionListTask();
    }
}
