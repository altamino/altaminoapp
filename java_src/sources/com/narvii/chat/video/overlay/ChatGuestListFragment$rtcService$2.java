package com.narvii.chat.video.overlay;

import com.narvii.chat.rtc.RtcService;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes.dex */
final class ChatGuestListFragment$rtcService$2 extends v implements e8.a<RtcService> {
    final /* synthetic */ ChatGuestListFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChatGuestListFragment$rtcService$2(ChatGuestListFragment chatGuestListFragment) {
        super(0);
        this.this$0 = chatGuestListFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final RtcService invoke() {
        return (RtcService) this.this$0.getService("rtc");
    }
}
