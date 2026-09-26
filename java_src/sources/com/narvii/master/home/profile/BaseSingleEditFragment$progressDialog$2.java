package com.narvii.master.home.profile;

import com.narvii.util.dialog.ProgressDialog;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
final class BaseSingleEditFragment$progressDialog$2 extends kotlin.jvm.internal.v implements e8.a<ProgressDialog> {
    final /* synthetic */ BaseSingleEditFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BaseSingleEditFragment$progressDialog$2(BaseSingleEditFragment baseSingleEditFragment) {
        super(0);
        this.this$0 = baseSingleEditFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ProgressDialog invoke() {
        return this.this$0.createProgressDialog();
    }
}
