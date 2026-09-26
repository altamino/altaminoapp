package com.narvii.util.fileloader;

import java.io.File;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public interface INVFileCache {
    void clear();

    @NotNull
    File get(@NotNull String str);

    void put(@NotNull String str, @NotNull File file);

    boolean remove(@NotNull String str);

    void touch(@NotNull File file);

    void trimAndFlush(int i10, long j6);
}
