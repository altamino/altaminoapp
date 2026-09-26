package com.narvii.scene.template;

import android.content.Context;
import com.narvii.mediaeditor.R;
import com.narvii.scene.view.ProgressRingDialog;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class SceneTemplateGeneratorFragment$progressDialog$2 extends v implements e8.a<ProgressRingDialog> {
    final /* synthetic */ SceneTemplateGeneratorFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneTemplateGeneratorFragment$progressDialog$2(SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment) {
        super(0);
        this.this$0 = sceneTemplateGeneratorFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ProgressRingDialog invoke() {
        Context contextRequireContext = this.this$0.requireContext();
        t.i(contextRequireContext, "requireContext(...)");
        ProgressRingDialog progressRingDialog = new ProgressRingDialog(contextRequireContext);
        SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment = this.this$0;
        progressRingDialog.setPromptTitle(R.string.normal_loading);
        progressRingDialog.setPromptText(R.string.do_not_close_and_lock_your_device);
        progressRingDialog.setCancelable(true);
        progressRingDialog.setCanceledOnTouchOutside(true);
        progressRingDialog.setOnCancelListener(sceneTemplateGeneratorFragment);
        return progressRingDialog;
    }
}
