package com.narvii.scene.template;

import com.narvii.util.Utils;
import java.io.File;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class SceneTemplateHelperKt {
    @NotNull
    public static final File getTemporaryDraftRootDir() {
        File file = new File(Utils.getTmpDir(true), "temporaryDraft");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }
}
