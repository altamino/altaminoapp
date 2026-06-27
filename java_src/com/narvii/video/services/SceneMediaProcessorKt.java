package com.narvii.video.services;

import com.narvii.scene.model.SceneInfo;
import com.narvii.video.model.AVClipInfoPack;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SceneMediaProcessor.kt */
/* loaded from: classes3.dex */
public final class SceneMediaProcessorKt {
    public static final File getOrgFile(SceneInfo getOrgFile) {
        Intrinsics.checkParameterIsNotNull(getOrgFile, "$this$getOrgFile");
        File file = new File(getOrgFile.outputUrl);
        return new File(file.getParent(), FilesKt__UtilsKt.getNameWithoutExtension(file) + "_org." + FilesKt__UtilsKt.getExtension(file));
    }

    public static final int getTrimmedDurationInMs(ArrayList<AVClipInfoPack> clips) {
        Intrinsics.checkParameterIsNotNull(clips, "clips");
        Iterator<AVClipInfoPack> it = clips.iterator();
        int iTrimmedDurationInMs = 0;
        while (it.hasNext()) {
            iTrimmedDurationInMs += it.next().trimmedDurationInMs();
        }
        return iTrimmedDurationInMs;
    }
}
