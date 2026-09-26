package com.narvii.chat.detail;

import com.narvii.util.dialog.ProgressDialog;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class ThreadAnnouncementFragment$progressDialog$2 extends v implements e8.a<ProgressDialog> {
    final /* synthetic */ ThreadAnnouncementFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ThreadAnnouncementFragment$progressDialog$2(ThreadAnnouncementFragment threadAnnouncementFragment) {
        super(0);
        this.this$0 = threadAnnouncementFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ProgressDialog invoke() {
        return new ProgressDialog(this.this$0.getContext());
    }
}
