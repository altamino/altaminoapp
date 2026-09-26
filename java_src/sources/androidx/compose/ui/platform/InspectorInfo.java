package androidx.compose.ui.platform;

import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@StabilityInferred
public final class InspectorInfo {
    public static final int $stable = 8;

    @Nullable
    private String name;

    @NotNull
    private final ValueElementSequence properties = new ValueElementSequence();

    @Nullable
    private Object value;

    @NotNull
    public final ValueElementSequence a() {
        return this.properties;
    }

    public final void b(@Nullable String str) {
        this.name = str;
    }

    public final void c(@Nullable Object obj) {
        this.value = obj;
    }
}
