package com.narvii.master.home.profile;

import com.narvii.widget.ACMAlertDialog;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class EditAminoIdFragment$comfirmDialog$2 extends kotlin.jvm.internal.v implements e8.a<ACMAlertDialog> {
    final /* synthetic */ EditAminoIdFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    EditAminoIdFragment$comfirmDialog$2(EditAminoIdFragment editAminoIdFragment) {
        super(0);
        this.this$0 = editAminoIdFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ACMAlertDialog invoke() {
        return this.this$0.createComfirmDialog();
    }
}
