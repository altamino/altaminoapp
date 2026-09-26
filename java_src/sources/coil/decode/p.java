package coil.decode;

import java.io.Closeable;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public abstract class p implements Closeable {

    public static abstract class a {
    }

    public /* synthetic */ p(kotlin.jvm.internal.k kVar) {
        this();
    }

    @Nullable
    public abstract a d();

    @NotNull
    public abstract BufferedSource h();

    private p() {
    }
}
