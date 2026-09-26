package com.narvii.video.services;

import com.narvii.scene.model.SceneInfo;
import com.narvii.video.model.AVClipInfoPack;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.io.n;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class SceneMediaProcessorKt {
    @NotNull
    public static final File getOrgFile(@NotNull SceneInfo sceneInfo) {
        t.j(sceneInfo, "<this>");
        File file = new File(sceneInfo.outputUrl);
        return new File(file.getParent(), n.s(file) + "_org." + n.r(file));
    }

    public static final int getTrimmedDurationInMs(@NotNull ArrayList<AVClipInfoPack> clips) {
        t.j(clips, "clips");
        Iterator<AVClipInfoPack> it = clips.iterator();
        int iTrimmedDurationInMs = 0;
        while (it.hasNext()) {
            iTrimmedDurationInMs += it.next().trimmedDurationInMs();
        }
        return iTrimmedDurationInMs;
    }
}
