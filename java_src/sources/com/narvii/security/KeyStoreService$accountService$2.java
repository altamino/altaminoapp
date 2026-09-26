package com.narvii.security;

import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import e8.a;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
final class KeyStoreService$accountService$2 extends v implements a<AccountService> {
    final /* synthetic */ KeyStoreService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    KeyStoreService$accountService$2(KeyStoreService keyStoreService) {
        super(0);
        this.this$0 = keyStoreService;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @Nullable
    public final AccountService invoke() {
        NVContext ctx = this.this$0.getCtx();
        if (ctx != null) {
            return (AccountService) ctx.getService("account");
        }
        return null;
    }
}
