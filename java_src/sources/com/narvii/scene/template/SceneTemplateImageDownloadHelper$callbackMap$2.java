package com.narvii.scene.template;

import com.narvii.util.fileloader.IFileDownloadCallback;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class SceneTemplateImageDownloadHelper$callbackMap$2 extends v implements e8.a<Map<String, IFileDownloadCallback>> {
    public static final SceneTemplateImageDownloadHelper$callbackMap$2 INSTANCE = new SceneTemplateImageDownloadHelper$callbackMap$2();

    SceneTemplateImageDownloadHelper$callbackMap$2() {
        super(0);
    }

    @Override // e8.a
    @NotNull
    public final Map<String, IFileDownloadCallback> invoke() {
        return new LinkedHashMap();
    }
}
