package com.narvii.topic;

import androidx.fragment.app.Fragment;
import com.narvii.master.MasterTabFragment;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class TopicRelatedChatListFragment$createAdapter$chatListAdapter$1 extends v implements l<Boolean, l0> {
    final /* synthetic */ TopicRelatedChatListFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TopicRelatedChatListFragment$createAdapter$chatListAdapter$1(TopicRelatedChatListFragment topicRelatedChatListFragment) {
        super(1);
        this.this$0 = topicRelatedChatListFragment;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Boolean bool) {
        invoke(bool.booleanValue());
        return l0.INSTANCE;
    }

    public final void invoke(boolean z6) {
        if (z6) {
            Fragment parentFragment = this.this$0.getParentFragment();
            t.h(parentFragment, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment");
            ((MasterTabFragment) parentFragment).setStoreBadged();
        }
    }
}
