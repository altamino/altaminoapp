package androidx.compose.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import e8.q;
import java.util.Arrays;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
@Stable
final class KeyedComposedModifierN extends ComposedModifier {

    @NotNull
    private final String fqName;

    @NotNull
    private final Object[] keys;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyedComposedModifierN(@NotNull String fqName, @NotNull Object[] keys, @NotNull l<? super InspectorInfo, l0> inspectorInfo, @NotNull q<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier> factory) {
        super(inspectorInfo, factory);
        t.j(fqName, "fqName");
        t.j(keys, "keys");
        t.j(inspectorInfo, "inspectorInfo");
        t.j(factory, "factory");
        this.fqName = fqName;
        this.keys = keys;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof KeyedComposedModifierN) {
            KeyedComposedModifierN keyedComposedModifierN = (KeyedComposedModifierN) obj;
            if (t.e(this.fqName, keyedComposedModifierN.fqName) && Arrays.equals(this.keys, keyedComposedModifierN.keys)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.fqName.hashCode() * 31) + Arrays.hashCode(this.keys);
    }
}
