package androidx.compose.foundation.lazy;

import androidx.compose.ui.layout.Placeable;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class LazyListPlaceableWrapper {
    private final long offset;

    @Nullable
    private final Object parentData;

    @NotNull
    private final Placeable placeable;

    public /* synthetic */ LazyListPlaceableWrapper(long j6, Placeable placeable, Object obj, k kVar) {
        this(j6, placeable, obj);
    }

    public final long a() {
        return this.offset;
    }

    @Nullable
    public final Object b() {
        return this.parentData;
    }

    @NotNull
    public final Placeable c() {
        return this.placeable;
    }

    private LazyListPlaceableWrapper(long j6, Placeable placeable, Object obj) {
        this.offset = j6;
        this.placeable = placeable;
        this.parentData = obj;
    }
}
