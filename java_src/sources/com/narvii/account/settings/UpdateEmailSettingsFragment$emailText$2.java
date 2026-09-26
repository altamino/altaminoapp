package com.narvii.account.settings;

import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes7.dex */
final class UpdateEmailSettingsFragment$emailText$2 extends v implements e8.a<String> {
    final /* synthetic */ UpdateEmailSettingsFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UpdateEmailSettingsFragment$emailText$2(UpdateEmailSettingsFragment updateEmailSettingsFragment) {
        super(0);
        this.this$0 = updateEmailSettingsFragment;
    }

    @Override // e8.a
    public final String invoke() {
        return this.this$0.accountService.getEmail();
    }
}
