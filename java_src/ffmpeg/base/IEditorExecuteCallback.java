package ffmpeg.base;

import ffmpeg.base.IEditorBaseCallback;

/* compiled from: IEditorExecuteCallback.kt */
/* loaded from: classes4.dex */
public interface IEditorExecuteCallback extends IEditorBaseCallback {

    /* compiled from: IEditorExecuteCallback.kt */
    public static final class DefaultImpls {
        public static void onCancel(IEditorExecuteCallback iEditorExecuteCallback) {
        }

        public static void onFail(IEditorExecuteCallback iEditorExecuteCallback) {
            IEditorBaseCallback.DefaultImpls.onFail(iEditorExecuteCallback);
        }

        public static void onProgress(IEditorExecuteCallback iEditorExecuteCallback, float f) {
        }

        public static void onStart(IEditorExecuteCallback iEditorExecuteCallback) {
            IEditorBaseCallback.DefaultImpls.onStart(iEditorExecuteCallback);
        }

        public static void onSuccess(IEditorExecuteCallback iEditorExecuteCallback) {
            IEditorBaseCallback.DefaultImpls.onSuccess(iEditorExecuteCallback);
        }
    }

    void onCancel();

    void onProgress(float f);
}
