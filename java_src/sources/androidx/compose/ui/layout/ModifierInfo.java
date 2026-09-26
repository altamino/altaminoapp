package androidx.compose.ui.layout;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@StabilityInferred
public final class ModifierInfo {
    public static final int $stable = 8;

    @NotNull
    private final LayoutCoordinates coordinates;

    @Nullable
    private final Object extra;

    @NotNull
    private final Modifier modifier;

    public ModifierInfo(@NotNull Modifier modifier, @NotNull LayoutCoordinates coordinates, @Nullable Object obj) {
        t.j(modifier, "modifier");
        t.j(coordinates, "coordinates");
        this.modifier = modifier;
        this.coordinates = coordinates;
        this.extra = obj;
    }

    public /* synthetic */ ModifierInfo(Modifier modifier, LayoutCoordinates layoutCoordinates, Object obj, int i10, k kVar) {
        this(modifier, layoutCoordinates, (i10 & 4) != 0 ? null : obj);
    }
}
