package com.narvii.scene;

import android.view.View;
import com.narvii.mediaeditor.R;
import com.narvii.widget.ACMAlertDialog;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class BaseSceneListFragment$fileMisssingDialog$2 extends v implements e8.a<ACMAlertDialog> {
    final /* synthetic */ BaseSceneListFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BaseSceneListFragment$fileMisssingDialog$2(BaseSceneListFragment baseSceneListFragment) {
        super(0);
        this.this$0 = baseSceneListFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ACMAlertDialog invoke() {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.this$0.getContext());
        final BaseSceneListFragment baseSceneListFragment = this.this$0;
        aCMAlertDialog.setCancelable(false);
        aCMAlertDialog.setCanceledOnTouchOutside(false);
        aCMAlertDialog.setMessage(baseSceneListFragment.getString(R.string.original_file_missing));
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.scene.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseSceneListFragment$fileMisssingDialog$2.invoke$lambda$1$lambda$0(baseSceneListFragment, view);
            }
        });
        return aCMAlertDialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$1$lambda$0(BaseSceneListFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.clearUselessClip();
    }
}
