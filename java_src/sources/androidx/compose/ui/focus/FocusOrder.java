package androidx.compose.ui.focus;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@StabilityInferred
public final class FocusOrder {
    public static final int $stable = 8;

    @NotNull
    private final FocusProperties focusProperties;

    public FocusOrder(@NotNull FocusProperties focusProperties) {
        t.j(focusProperties, "focusProperties");
        this.focusProperties = focusProperties;
    }

    public FocusOrder() {
        this(new FocusPropertiesImpl());
    }
}
