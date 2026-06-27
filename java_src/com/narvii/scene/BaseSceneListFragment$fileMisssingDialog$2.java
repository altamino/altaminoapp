package com.narvii.scene;

import android.view.View;
import com.narvii.mediaeditor.R;
import com.narvii.widget.ACMAlertDialog;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: BaseSceneListFragment.kt */
/* loaded from: classes3.dex */
final class BaseSceneListFragment$fileMisssingDialog$2 extends Lambda implements Function0<ACMAlertDialog> {
    final /* synthetic */ BaseSceneListFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BaseSceneListFragment$fileMisssingDialog$2(BaseSceneListFragment baseSceneListFragment) {
        super(0);
        this.this$0 = baseSceneListFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ACMAlertDialog invoke() {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.this$0.getContext());
        aCMAlertDialog.setCancelable(false);
        aCMAlertDialog.setCanceledOnTouchOutside(false);
        aCMAlertDialog.setMessage(this.this$0.getString(R.string.original_file_missing));
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.scene.BaseSceneListFragment$fileMisssingDialog$2$$special$$inlined$apply$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.this$0.this$0.clearUselessClip();
            }
        });
        return aCMAlertDialog;
    }
}
