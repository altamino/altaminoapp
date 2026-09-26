package kotlin.io;

import java.io.File;
import java.io.IOException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class g extends IOException {

    @NotNull
    private final File file;

    @Nullable
    private final File other;

    @Nullable
    private final String reason;

    public /* synthetic */ g(File file, File file2, String str, int i10, kotlin.jvm.internal.k kVar) {
        this(file, (i10 & 2) != 0 ? null : file2, (i10 & 4) != 0 ? null : str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(@NotNull File file, @Nullable File file2, @Nullable String str) {
        super(d.b(file, file2, str));
        t.j(file, "file");
        this.file = file;
        this.other = file2;
        this.reason = str;
    }
}
