package com.narvii.account.settings;

import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes6.dex */
final class UpdatePhoneNumberSettingsFragment$phoneNumberText$2 extends v implements e8.a<String> {
    final /* synthetic */ UpdatePhoneNumberSettingsFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UpdatePhoneNumberSettingsFragment$phoneNumberText$2(UpdatePhoneNumberSettingsFragment updatePhoneNumberSettingsFragment) {
        super(0);
        this.this$0 = updatePhoneNumberSettingsFragment;
    }

    @Override // e8.a
    public final String invoke() {
        return this.this$0.accountService.getPhoneNumber();
    }
}
