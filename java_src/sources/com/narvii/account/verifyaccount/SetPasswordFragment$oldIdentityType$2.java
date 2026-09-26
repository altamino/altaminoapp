package com.narvii.account.verifyaccount;

import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class SetPasswordFragment$oldIdentityType$2 extends v implements e8.a<Integer> {
    final /* synthetic */ SetPasswordFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SetPasswordFragment$oldIdentityType$2(SetPasswordFragment setPasswordFragment) {
        super(0);
        this.this$0 = setPasswordFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final Integer invoke() {
        return Integer.valueOf(this.this$0.getIntParam("type"));
    }
}
