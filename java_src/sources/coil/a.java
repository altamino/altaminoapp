package coil;

import android.content.Context;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class a {

    @NotNull
    public static final a INSTANCE = new a();

    @Nullable
    private static e imageLoader;

    @Nullable
    private static f imageLoaderFactory;

    private final synchronized e b(Context context) {
        e eVarA;
        try {
            e eVar = imageLoader;
            if (eVar != null) {
                return eVar;
            }
            f fVar = imageLoaderFactory;
            if (fVar == null || (eVarA = fVar.a()) == null) {
                Object applicationContext = context.getApplicationContext();
                f fVar2 = applicationContext instanceof f ? (f) applicationContext : null;
                eVarA = fVar2 != null ? fVar2.a() : g.a(context);
            }
            imageLoaderFactory = null;
            imageLoader = eVarA;
            return eVarA;
        } catch (Throwable th) {
            throw th;
        }
    }

    @NotNull
    public static final e a(@NotNull Context context) {
        e eVar = imageLoader;
        return eVar == null ? INSTANCE.b(context) : eVar;
    }

    private a() {
    }
}
