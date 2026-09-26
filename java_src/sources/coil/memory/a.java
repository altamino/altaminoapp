package coil.memory;

import android.graphics.Bitmap;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class a implements g {

    @NotNull
    private final h weakMemoryCache;

    @Override // coil.memory.g
    public void a(int i10) {
    }

    @Override // coil.memory.g
    @Nullable
    public MemoryCache.b b(@NotNull MemoryCache.Key key) {
        return null;
    }

    @Override // coil.memory.g
    public void c(@NotNull MemoryCache.Key key, @NotNull Bitmap bitmap, @NotNull Map<String, ? extends Object> map) {
        this.weakMemoryCache.c(key, bitmap, map, coil.util.a.a(bitmap));
    }

    public a(@NotNull h hVar) {
        this.weakMemoryCache = hVar;
    }
}
