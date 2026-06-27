package com.narvii.util.fileloader;

import com.narvii.app.NVContext;
import com.narvii.util.http.ProxyStack;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FileDownloader.kt */
/* loaded from: classes3.dex */
public final class FileDownloader {
    private final NVContext ctx;
    private final ProxyStack stack;

    public FileDownloader(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        this.stack = new ProxyStack(this.ctx);
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0122 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:111:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0141 A[Catch: all -> 0x01c5, Exception -> 0x01c7, TRY_LEAVE, TryCatch #9 {Exception -> 0x01c7, all -> 0x01c5, blocks: (B:46:0x0122, B:47:0x0136, B:50:0x0141, B:54:0x0151, B:56:0x015e, B:58:0x0172, B:57:0x0167, B:59:0x0177, B:62:0x0187, B:63:0x0190, B:65:0x0196, B:66:0x019a, B:69:0x01a0, B:70:0x01a9), top: B:105:0x0122 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01d7 A[Catch: all -> 0x01f5, TRY_ENTER, TryCatch #2 {all -> 0x01f5, blocks: (B:43:0x0118, B:84:0x01d7, B:85:0x01e0), top: B:100:0x0118 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01e0 A[Catch: all -> 0x01f5, TRY_LEAVE, TryCatch #2 {all -> 0x01f5, blocks: (B:43:0x0118, B:84:0x01d7, B:85:0x01e0), top: B:100:0x0118 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0200  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void execute(final com.narvii.util.fileloader.FileLoader.Session r12, final java.io.File r13, final com.narvii.util.fileloader.IFileDownloadCallback r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 518
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.util.fileloader.FileDownloader.execute(com.narvii.util.fileloader.FileLoader$Session, java.io.File, com.narvii.util.fileloader.IFileDownloadCallback, boolean):void");
    }
}
