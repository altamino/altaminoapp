package com.narvii.chat.global.chat;

import com.narvii.util.dialog.ProgressDialog;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class ChatBatchDeletionFragment$progress$2 extends v implements e8.a<ProgressDialog> {
    final /* synthetic */ ChatBatchDeletionFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChatBatchDeletionFragment$progress$2(ChatBatchDeletionFragment chatBatchDeletionFragment) {
        super(0);
        this.this$0 = chatBatchDeletionFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ProgressDialog invoke() {
        return new ProgressDialog(this.this$0.getContext());
    }
}
