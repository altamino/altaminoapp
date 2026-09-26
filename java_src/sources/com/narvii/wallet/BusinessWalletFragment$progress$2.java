package com.narvii.wallet;

import com.narvii.util.dialog.ProgressDialog;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class BusinessWalletFragment$progress$2 extends kotlin.jvm.internal.v implements e8.a<ProgressDialog> {
    final /* synthetic */ BusinessWalletFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BusinessWalletFragment$progress$2(BusinessWalletFragment businessWalletFragment) {
        super(0);
        this.this$0 = businessWalletFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ProgressDialog invoke() {
        return new ProgressDialog(this.this$0.getContext());
    }
}
