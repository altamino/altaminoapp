package com.narvii.util.fileloader;

import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class FileLoader$cache$2 extends v implements e8.a<INVFileCache> {
    final /* synthetic */ FileLoader this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FileLoader$cache$2(FileLoader fileLoader) {
        super(0);
        this.this$0 = fileLoader;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @Nullable
    public final INVFileCache invoke() {
        FileLoader fileLoader = this.this$0;
        return fileLoader.provideCache(fileLoader.getDir());
    }
}
