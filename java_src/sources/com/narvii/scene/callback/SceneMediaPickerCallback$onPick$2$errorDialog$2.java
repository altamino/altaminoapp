package com.narvii.scene.callback;

import com.narvii.app.NVActivity;
import com.narvii.mediaeditor.R;
import com.narvii.widget.ACMAlertDialog;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class SceneMediaPickerCallback$onPick$2$errorDialog$2 extends v implements e8.a<ACMAlertDialog> {
    final /* synthetic */ NVActivity $activity;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneMediaPickerCallback$onPick$2$errorDialog$2(NVActivity nVActivity) {
        super(0);
        this.$activity = nVActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final ACMAlertDialog invoke() {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.$activity);
        aCMAlertDialog.addButton(R.string.got_it, null);
        return aCMAlertDialog;
    }
}
