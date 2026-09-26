package com.narvii.scene.template;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes6.dex */
final class SceneTemplateHelper$singleThreadExecutor$2 extends v implements e8.a<ExecutorService> {
    public static final SceneTemplateHelper$singleThreadExecutor$2 INSTANCE = new SceneTemplateHelper$singleThreadExecutor$2();

    SceneTemplateHelper$singleThreadExecutor$2() {
        super(0);
    }

    @Override // e8.a
    public final ExecutorService invoke() {
        return Executors.newSingleThreadExecutor();
    }
}
