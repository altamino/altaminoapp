package com.narvii.scene.template;

import android.view.View;
import com.narvii.mediaeditor.R;
import com.narvii.widget.ACMAlertDialog;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class SceneTemplateGeneratorFragment$selectImageDialog$2 extends v implements e8.a<ACMAlertDialog> {
    final /* synthetic */ SceneTemplateGeneratorFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneTemplateGeneratorFragment$selectImageDialog$2(SceneTemplateGeneratorFragment sceneTemplateGeneratorFragment) {
        super(0);
        this.this$0 = sceneTemplateGeneratorFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$1$lambda$0(View view) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ACMAlertDialog invoke() {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.this$0.getContext());
        aCMAlertDialog.setMessage(this.this$0.getString(R.string.select_image_or_video_hint));
        aCMAlertDialog.addButton(R.string.got_it, new View.OnClickListener() { // from class: com.narvii.scene.template.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SceneTemplateGeneratorFragment$selectImageDialog$2.invoke$lambda$1$lambda$0(view);
            }
        });
        return aCMAlertDialog;
    }
}
