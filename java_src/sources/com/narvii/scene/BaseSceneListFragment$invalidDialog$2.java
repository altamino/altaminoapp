package com.narvii.scene;

import com.narvii.util.dialog.AlertDialog;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class BaseSceneListFragment$invalidDialog$2 extends v implements e8.a<AlertDialog> {
    final /* synthetic */ BaseSceneListFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BaseSceneListFragment$invalidDialog$2(BaseSceneListFragment baseSceneListFragment) {
        super(0);
        this.this$0 = baseSceneListFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final AlertDialog invoke() {
        return new AlertDialog(this.this$0.getActivity());
    }
}
