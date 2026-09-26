package com.narvii.account;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class SetIdentityFragment$oldIdentityType$2 extends kotlin.jvm.internal.v implements e8.a<Integer> {
    final /* synthetic */ SetIdentityFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SetIdentityFragment$oldIdentityType$2(SetIdentityFragment setIdentityFragment) {
        super(0);
        this.this$0 = setIdentityFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final Integer invoke() {
        return Integer.valueOf(this.this$0.getIntParam("type"));
    }
}
