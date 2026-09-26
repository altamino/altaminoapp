package com.narvii.chat.global.chat;

import androidx.fragment.app.Fragment;
import com.narvii.master.MasterTabFragment;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
final class CommunityChatFragment$createAdapter$recommendAdapter$1 extends v implements e8.l<Boolean, l0> {
    final /* synthetic */ CommunityChatFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CommunityChatFragment$createAdapter$recommendAdapter$1(CommunityChatFragment communityChatFragment) {
        super(1);
        this.this$0 = communityChatFragment;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Boolean bool) {
        invoke(bool.booleanValue());
        return l0.INSTANCE;
    }

    public final void invoke(boolean z6) {
        if (z6) {
            Fragment parentFragment = this.this$0.getParentFragment();
            MasterTabFragment masterTabFragment = parentFragment instanceof MasterTabFragment ? (MasterTabFragment) parentFragment : null;
            if (masterTabFragment != null) {
                masterTabFragment.setStoreBadged();
            }
        }
    }
}
