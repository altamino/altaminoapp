package ffmpeg.base;

/* compiled from: IEditorBaseCallback.kt */
/* loaded from: classes4.dex */
public interface IEditorBaseCallback {

    /* compiled from: IEditorBaseCallback.kt */
    public static final class DefaultImpls {
        public static void onFail(IEditorBaseCallback iEditorBaseCallback) {
        }

        public static void onStart(IEditorBaseCallback iEditorBaseCallback) {
        }

        public static void onSuccess(IEditorBaseCallback iEditorBaseCallback) {
        }
    }

    void onFail();

    void onStart();

    void onSuccess();
}
