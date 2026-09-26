package kotlinx.serialization;

import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public class j extends IllegalArgumentException {
    public j() {
    }

    public j(@Nullable String str) {
        super(str);
    }

    public j(@Nullable String str, @Nullable Throwable th) {
        super(str, th);
    }

    public j(@Nullable Throwable th) {
        super(th);
    }
}
