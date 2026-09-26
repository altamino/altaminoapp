package com.narvii.scene.callback;

import android.content.DialogInterface;
import com.narvii.app.NVActivity;
import com.narvii.mediaeditor.R;
import com.narvii.scene.template.SceneTemplateHelper;
import com.narvii.scene.view.ProgressRingDialog;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class SceneMediaPickerCallback$onPick$2$progressDialog$2 extends v implements e8.a<ProgressRingDialog> {
    final /* synthetic */ NVActivity $activity;
    final /* synthetic */ SceneTemplateHelper $sceneTemplateHelper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneMediaPickerCallback$onPick$2$progressDialog$2(NVActivity nVActivity, SceneTemplateHelper sceneTemplateHelper) {
        super(0);
        this.$activity = nVActivity;
        this.$sceneTemplateHelper = sceneTemplateHelper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$1$lambda$0(SceneTemplateHelper sceneTemplateHelper, DialogInterface dialogInterface) {
        t.j(sceneTemplateHelper, "$sceneTemplateHelper");
        sceneTemplateHelper.cancel();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ProgressRingDialog invoke() {
        ProgressRingDialog progressRingDialog = new ProgressRingDialog(this.$activity);
        final SceneTemplateHelper sceneTemplateHelper = this.$sceneTemplateHelper;
        progressRingDialog.setPromptTitle(R.string.normal_loading);
        progressRingDialog.setPromptText(R.string.do_not_close_and_lock_your_device);
        progressRingDialog.setCancelable(true);
        progressRingDialog.setCanceledOnTouchOutside(true);
        progressRingDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.scene.callback.b
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                SceneMediaPickerCallback$onPick$2$progressDialog$2.invoke$lambda$1$lambda$0(sceneTemplateHelper, dialogInterface);
            }
        });
        return progressRingDialog;
    }
}
