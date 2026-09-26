package com.narvii.chat.dialog;

import com.narvii.config.ConfigService;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes.dex */
final class VVChatUserDialog$config$2 extends v implements e8.a<ConfigService> {
    final /* synthetic */ VVChatUserDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VVChatUserDialog$config$2(VVChatUserDialog vVChatUserDialog) {
        super(0);
        this.this$0 = vVChatUserDialog;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final ConfigService invoke() {
        return (ConfigService) this.this$0.getService("config");
    }
}
