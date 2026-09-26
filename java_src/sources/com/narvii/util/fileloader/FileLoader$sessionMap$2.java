package com.narvii.util.fileloader;

import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class FileLoader$sessionMap$2 extends v implements e8.a<ConcurrentHashMap<String, FileLoader.Session>> {
    public static final FileLoader$sessionMap$2 INSTANCE = new FileLoader$sessionMap$2();

    FileLoader$sessionMap$2() {
        super(0);
    }

    @Override // e8.a
    @NotNull
    public final ConcurrentHashMap<String, FileLoader.Session> invoke() {
        return new ConcurrentHashMap<>();
    }
}
