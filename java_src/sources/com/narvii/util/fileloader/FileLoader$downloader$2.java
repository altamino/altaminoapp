package com.narvii.util.fileloader;

import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class FileLoader$downloader$2 extends v implements e8.a<FileDownloader> {
    final /* synthetic */ FileLoader this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FileLoader$downloader$2(FileLoader fileLoader) {
        super(0);
        this.this$0 = fileLoader;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final FileDownloader invoke() {
        return new FileDownloader(this.this$0.getCtx());
    }
}
