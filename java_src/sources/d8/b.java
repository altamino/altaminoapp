package d8;

import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class b extends Error {
    public b() {
        super("Kotlin reflection implementation is not found at runtime. Make sure you have kotlin-reflect.jar in the classpath");
    }

    public b(@Nullable String str) {
        super(str);
    }

    public b(@Nullable String str, @Nullable Throwable th) {
        super(str, th);
    }

    public b(@Nullable Throwable th) {
        super(th);
    }
}
