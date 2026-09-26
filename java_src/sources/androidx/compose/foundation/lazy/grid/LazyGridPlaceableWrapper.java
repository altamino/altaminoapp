package androidx.compose.foundation.lazy.grid;

import androidx.compose.ui.layout.Placeable;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class LazyGridPlaceableWrapper {
    private final long offset;

    @Nullable
    private final Object parentData;

    @NotNull
    private final Placeable placeable;

    public /* synthetic */ LazyGridPlaceableWrapper(long j6, Placeable placeable, Object obj, k kVar) {
        this(j6, placeable, obj);
    }

    @Nullable
    public final Object a() {
        return this.parentData;
    }

    @NotNull
    public final Placeable b() {
        return this.placeable;
    }

    private LazyGridPlaceableWrapper(long j6, Placeable placeable, Object obj) {
        this.offset = j6;
        this.placeable = placeable;
        this.parentData = obj;
    }
}
