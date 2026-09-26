package com.narvii.scene.dialog;

import com.narvii.app.NVContext;
import com.narvii.scene.helper.SceneSpHelper;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class SceneMediaPickerDialog$sceneSpHelper$2 extends v implements e8.a<SceneSpHelper> {
    final /* synthetic */ NVContext $ctx;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SceneMediaPickerDialog$sceneSpHelper$2(NVContext nVContext) {
        super(0);
        this.$ctx = nVContext;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final SceneSpHelper invoke() {
        return new SceneSpHelper(this.$ctx);
    }
}
