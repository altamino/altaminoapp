package c5;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public class l extends i {
    private final int httpStatusCode;

    public l(int i10, @NonNull String str) {
        super(str);
        this.httpStatusCode = i10;
    }

    public int a() {
        return this.httpStatusCode;
    }

    public l(int i10, @NonNull String str, @Nullable Throwable th) {
        super(str, th);
        this.httpStatusCode = i10;
    }

    public l(@NonNull String str, i.a aVar) {
        super(str, aVar);
        this.httpStatusCode = -1;
    }

    public l(int i10, @NonNull String str, i.a aVar) {
        super(str, aVar);
        this.httpStatusCode = i10;
    }

    public l(@NonNull String str, @Nullable Throwable th, @NonNull i.a aVar) {
        super(str, th, aVar);
        this.httpStatusCode = -1;
    }

    public l(int i10, @NonNull String str, @Nullable Throwable th, @NonNull i.a aVar) {
        super(str, th, aVar);
        this.httpStatusCode = i10;
    }
}
