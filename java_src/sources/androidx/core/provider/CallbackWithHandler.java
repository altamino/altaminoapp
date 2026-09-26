package androidx.core.provider;

import android.graphics.Typeface;
import android.os.Handler;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes5.dex */
class CallbackWithHandler {

    @NonNull
    private final FontsContractCompat.FontRequestCallback mCallback;

    @NonNull
    private final Handler mCallbackHandler;

    private void a(final int i10) {
        final FontsContractCompat.FontRequestCallback fontRequestCallback = this.mCallback;
        this.mCallbackHandler.post(new Runnable() { // from class: androidx.core.provider.CallbackWithHandler.2
            @Override // java.lang.Runnable
            public void run() {
                fontRequestCallback.a(i10);
            }
        });
    }

    private void c(@NonNull final Typeface typeface) {
        final FontsContractCompat.FontRequestCallback fontRequestCallback = this.mCallback;
        this.mCallbackHandler.post(new Runnable() { // from class: androidx.core.provider.CallbackWithHandler.1
            @Override // java.lang.Runnable
            public void run() {
                fontRequestCallback.b(typeface);
            }
        });
    }

    CallbackWithHandler(@NonNull FontsContractCompat.FontRequestCallback fontRequestCallback, @NonNull Handler handler) {
        this.mCallback = fontRequestCallback;
        this.mCallbackHandler = handler;
    }

    void b(@NonNull FontRequestWorker.TypefaceResult typefaceResult) {
        if (typefaceResult.a()) {
            c(typefaceResult.mTypeface);
        } else {
            a(typefaceResult.mResult);
        }
    }
}
