package com.narvii.video;

import android.content.DialogInterface;
import com.narvii.util.dialog.ProgressDialog;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class SceneEditorFragment$progress$2 extends kotlin.jvm.internal.v implements e8.a<ProgressDialog> {
    final /* synthetic */ SceneEditorFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneEditorFragment$progress$2(SceneEditorFragment sceneEditorFragment) {
        super(0);
        this.this$0 = sceneEditorFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ProgressDialog invoke() {
        ProgressDialog progressDialog = new ProgressDialog(this.this$0.getContext());
        final SceneEditorFragment sceneEditorFragment = this.this$0;
        progressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.video.u0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                SceneEditorFragment$progress$2.invoke$lambda$1(sceneEditorFragment, dialogInterface);
            }
        });
        return progressDialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$1(SceneEditorFragment this$0, DialogInterface dialogInterface) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        g7.d dVar = this$0.previewVideoGeneratingTask;
        if (dVar != null) {
            this$0.getVideoManager().abort(dVar);
        }
    }
}
