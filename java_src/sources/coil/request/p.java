package coil.request;

import android.graphics.drawable.Drawable;
import coil.memory.MemoryCache;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class p extends i {

    @NotNull
    private final coil.decode.f dataSource;

    @Nullable
    private final String diskCacheKey;

    @NotNull
    private final Drawable drawable;
    private final boolean isPlaceholderCached;
    private final boolean isSampled;

    @Nullable
    private final MemoryCache.Key memoryCacheKey;

    @NotNull
    private final h request;

    public /* synthetic */ p(Drawable drawable, h hVar, coil.decode.f fVar, MemoryCache.Key key, String str, boolean z6, boolean z10, int i10, kotlin.jvm.internal.k kVar) {
        this(drawable, hVar, fVar, (i10 & 8) != 0 ? null : key, (i10 & 16) != 0 ? null : str, (i10 & 32) != 0 ? false : z6, (i10 & 64) != 0 ? false : z10);
    }

    @Override // coil.request.i
    @NotNull
    public Drawable a() {
        return this.drawable;
    }

    @Override // coil.request.i
    @NotNull
    public h b() {
        return this.request;
    }

    @NotNull
    public final coil.decode.f c() {
        return this.dataSource;
    }

    public final boolean d() {
        return this.isPlaceholderCached;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof p) {
            p pVar = (p) obj;
            if (t.e(a(), pVar.a()) && t.e(b(), pVar.b()) && this.dataSource == pVar.dataSource && t.e(this.memoryCacheKey, pVar.memoryCacheKey) && t.e(this.diskCacheKey, pVar.diskCacheKey) && this.isSampled == pVar.isSampled && this.isPlaceholderCached == pVar.isPlaceholderCached) {
                return true;
            }
        }
        return false;
    }

    public p(@NotNull Drawable drawable, @NotNull h hVar, @NotNull coil.decode.f fVar, @Nullable MemoryCache.Key key, @Nullable String str, boolean z6, boolean z10) {
        super(null);
        this.drawable = drawable;
        this.request = hVar;
        this.dataSource = fVar;
        this.memoryCacheKey = key;
        this.diskCacheKey = str;
        this.isSampled = z6;
        this.isPlaceholderCached = z10;
    }

    public int hashCode() {
        int iHashCode;
        int iHashCode2 = ((((a().hashCode() * 31) + b().hashCode()) * 31) + this.dataSource.hashCode()) * 31;
        MemoryCache.Key key = this.memoryCacheKey;
        int iHashCode3 = 0;
        if (key != null) {
            iHashCode = key.hashCode();
        } else {
            iHashCode = 0;
        }
        int i10 = (iHashCode2 + iHashCode) * 31;
        String str = this.diskCacheKey;
        if (str != null) {
            iHashCode3 = str.hashCode();
        }
        return ((((i10 + iHashCode3) * 31) + androidx.compose.foundation.c.a(this.isSampled)) * 31) + androidx.compose.foundation.c.a(this.isPlaceholderCached);
    }
}
