package com.narvii.scene.callback;

import android.content.DialogInterface;
import com.narvii.mediaeditor.R;
import com.narvii.scene.callback.SceneMediaPickerCallback;
import com.narvii.scene.view.ProgressRingDialog;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: SceneMediaPickerCallback.kt */
/* loaded from: classes3.dex */
final class SceneMediaPickerCallback$onPick$2$progressDialog$2 extends Lambda implements Function0<ProgressRingDialog> {
    final /* synthetic */ SceneMediaPickerCallback.AnonymousClass2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneMediaPickerCallback$onPick$2$progressDialog$2(SceneMediaPickerCallback.AnonymousClass2 anonymousClass2) {
        super(0);
        this.this$0 = anonymousClass2;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ProgressRingDialog invoke() {
        ProgressRingDialog progressRingDialog = new ProgressRingDialog(this.this$0.$activity);
        progressRingDialog.setPromptTitle(R.string.normal_loading);
        progressRingDialog.setPromptText(R.string.do_not_close_and_lock_your_device);
        progressRingDialog.setCancelable(true);
        progressRingDialog.setCanceledOnTouchOutside(true);
        progressRingDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.scene.callback.SceneMediaPickerCallback$onPick$2$progressDialog$2$$special$$inlined$apply$lambda$1
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.this$0.this$0.$sceneTemplateHelper.cancel();
            }
        });
        return progressRingDialog;
    }
}
