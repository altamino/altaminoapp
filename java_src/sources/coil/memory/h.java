package coil.memory;

import android.graphics.Bitmap;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface h {
    void a(int i10);

    @Nullable
    MemoryCache.b b(@NotNull MemoryCache.Key key);

    void c(@NotNull MemoryCache.Key key, @NotNull Bitmap bitmap, @NotNull Map<String, ? extends Object> map, int i10);
}
