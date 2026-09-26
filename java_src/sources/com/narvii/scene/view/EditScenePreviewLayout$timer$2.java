package com.narvii.scene.view;

import java.util.Timer;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class EditScenePreviewLayout$timer$2 extends v implements e8.a<Timer> {
    public static final EditScenePreviewLayout$timer$2 INSTANCE = new EditScenePreviewLayout$timer$2();

    EditScenePreviewLayout$timer$2() {
        super(0);
    }

    @Override // e8.a
    @NotNull
    public final Timer invoke() {
        return new Timer();
    }
}
