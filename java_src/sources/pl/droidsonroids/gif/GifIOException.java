package pl.droidsonroids.gif;

import androidx.annotation.NonNull;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public class GifIOException extends IOException {
    private static final long serialVersionUID = 13038402904505L;
    private final String mErrnoMessage;

    @NonNull
    public final c reason;

    @Override // java.lang.Throwable
    public String getMessage() {
        if (this.mErrnoMessage == null) {
            return this.reason.b();
        }
        return this.reason.b() + ": " + this.mErrnoMessage;
    }

    GifIOException(int i10, String str) {
        this.reason = c.a(i10);
        this.mErrnoMessage = str;
    }
}
