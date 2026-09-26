package coil.util;

import android.content.Context;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class r {

    @NotNull
    private static final String FOLDER_NAME = "image_cache";

    @NotNull
    public static final r INSTANCE = new r();

    @Nullable
    private static coil.disk.a instance;

    @NotNull
    public final synchronized coil.disk.a a(@NotNull Context context) {
        coil.disk.a aVarA;
        aVarA = instance;
        if (aVarA == null) {
            aVarA = new coil.disk.a.C0098a().b(kotlin.io.n.u(i.o(context), FOLDER_NAME)).a();
            instance = aVarA;
        }
        return aVarA;
    }

    private r() {
    }
}
