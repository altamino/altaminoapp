package com.narvii.util.fileloader;

import com.narvii.util.Utils;
import java.io.File;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class FileLoader$Session$callbackWrapper$2 extends v implements e8.a<AnonymousClass1> {
    final /* synthetic */ FileLoader.Session this$0;

    /* JADX INFO: renamed from: com.narvii.util.fileloader.FileLoader$Session$callbackWrapper$2$1, reason: invalid class name */
    public static final class AnonymousClass1 implements IFileDownloadCallback {
        final /* synthetic */ FileLoader.Session this$0;

        AnonymousClass1(FileLoader.Session session) {
            this.this$0 = session;
        }

        @Override // com.narvii.util.fileloader.IFileDownloadCallback
        public void onPostExecute(@NotNull File file) {
            t.j(file, "file");
            if (this.this$0.getRequest().applyZipExtract()) {
                return;
            }
            this.this$0.setStatus(2);
            this.this$0.dispatchResult(null);
        }

        @Override // com.narvii.util.fileloader.IFileDownloadCallback
        public void onProgressUpdate(final int i10, final int i11) {
            for (final IFileDownloadCallback iFileDownloadCallback : this.this$0.callbacks) {
                Utils.post(new Runnable() { // from class: com.narvii.util.fileloader.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        iFileDownloadCallback.onProgressUpdate(i10, i11);
                    }
                });
            }
        }

        @Override // com.narvii.util.fileloader.IFileDownloadCallback
        @Nullable
        public Object getRealCallback() {
            return IFileDownloadCallback.DefaultImpls.getRealCallback(this);
        }

        @Override // com.narvii.util.fileloader.IFileDownloadCallback
        @Nullable
        public Object getTag() {
            return IFileDownloadCallback.DefaultImpls.getTag(this);
        }

        @Override // com.narvii.util.fileloader.IFileDownloadCallback
        public void onError(@NotNull String url, @Nullable Exception exc) {
            t.j(url, "url");
            this.this$0.setStatus(-1);
            this.this$0.dispatchResult(exc);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FileLoader$Session$callbackWrapper$2(FileLoader.Session session) {
        super(0);
        this.this$0 = session;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final AnonymousClass1 invoke() {
        return new AnonymousClass1(this.this$0);
    }
}
