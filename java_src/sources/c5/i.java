package c5;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public class i extends com.google.firebase.l {
    private final a code;

    public i(@NonNull String str) {
        super(str);
        this.code = a.UNKNOWN;
    }

    public enum a {
        UNKNOWN(0),
        CONFIG_UPDATE_STREAM_ERROR(1),
        CONFIG_UPDATE_MESSAGE_INVALID(2),
        CONFIG_UPDATE_NOT_FETCHED(3),
        CONFIG_UPDATE_UNAVAILABLE(4);

        private final int value;

        a(int i10) {
            this.value = i10;
        }
    }

    public i(@NonNull String str, @Nullable Throwable th) {
        super(str, th);
        this.code = a.UNKNOWN;
    }

    public i(@NonNull String str, @NonNull a aVar) {
        super(str);
        this.code = aVar;
    }

    public i(@NonNull String str, @Nullable Throwable th, @NonNull a aVar) {
        super(str, th);
        this.code = aVar;
    }
}
