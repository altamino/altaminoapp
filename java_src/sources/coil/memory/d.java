package coil.memory;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class d implements MemoryCache {

    @NotNull
    private final g strongMemoryCache;

    @NotNull
    private final h weakMemoryCache;

    @Override // coil.memory.MemoryCache
    public void a(int i10) {
        this.strongMemoryCache.a(i10);
        this.weakMemoryCache.a(i10);
    }

    @Override // coil.memory.MemoryCache
    @Nullable
    public MemoryCache.b b(@NotNull MemoryCache.Key key) {
        MemoryCache.b bVarB = this.strongMemoryCache.b(key);
        return bVarB == null ? this.weakMemoryCache.b(key) : bVarB;
    }

    @Override // coil.memory.MemoryCache
    public void c(@NotNull MemoryCache.Key key, @NotNull MemoryCache.b bVar) {
        this.strongMemoryCache.c(MemoryCache.Key.c(key, null, coil.util.c.b(key.e()), 1, null), bVar.a(), coil.util.c.b(bVar.b()));
    }

    public d(@NotNull g gVar, @NotNull h hVar) {
        this.strongMemoryCache = gVar;
        this.weakMemoryCache = hVar;
    }
}
