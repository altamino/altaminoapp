package com.narvii.scene.helper;

import com.narvii.scene.dialog.SceneMediaPickerDialog;
import e8.a;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class SceneMediaPickerHelper$sceneMediaPickerDialog$2 extends v implements a<SceneMediaPickerDialog> {
    final /* synthetic */ SceneMediaPickerHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneMediaPickerHelper$sceneMediaPickerDialog$2(SceneMediaPickerHelper sceneMediaPickerHelper) {
        super(0);
        this.this$0 = sceneMediaPickerHelper;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final SceneMediaPickerDialog invoke() {
        SceneMediaPickerDialog sceneMediaPickerDialog = new SceneMediaPickerDialog(this.this$0.getCtx());
        sceneMediaPickerDialog.setOnPickerListener(this.this$0);
        return sceneMediaPickerDialog;
    }
}
