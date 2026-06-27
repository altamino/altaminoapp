package com.narvii.scene.template;

import com.narvii.util.Utils;
import java.io.File;

/* compiled from: SceneTemplateHelper.kt */
/* loaded from: classes3.dex */
public final class SceneTemplateHelperKt {
    public static final File getTemporaryDraftRootDir() {
        File file = new File(Utils.getTmpDir(true), "temporaryDraft");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }
}
