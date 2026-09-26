package androidx.compose.ui.platform;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@StabilityInferred
public final class ValueElementSequence implements kotlin.sequences.g<ValueElement> {
    public static final int $stable = 8;

    @NotNull
    private final List<ValueElement> elements = new ArrayList();

    public final void c(@NotNull String name, @Nullable Object obj) {
        kotlin.jvm.internal.t.j(name, "name");
        this.elements.add(new ValueElement(name, obj));
    }

    @Override // kotlin.sequences.g
    @NotNull
    public Iterator<ValueElement> iterator() {
        return this.elements.iterator();
    }
}
