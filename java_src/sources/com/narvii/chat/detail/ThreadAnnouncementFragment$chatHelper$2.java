package com.narvii.chat.detail;

import android.content.Context;
import com.narvii.chat.util.ChatHelper;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class ThreadAnnouncementFragment$chatHelper$2 extends v implements e8.a<ChatHelper> {
    final /* synthetic */ ThreadAnnouncementFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ThreadAnnouncementFragment$chatHelper$2(ThreadAnnouncementFragment threadAnnouncementFragment) {
        super(0);
        this.this$0 = threadAnnouncementFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ChatHelper invoke() {
        Context context = this.this$0.getContext();
        t.i(context, "getContext(...)");
        return new ChatHelper(context);
    }
}
