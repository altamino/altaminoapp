package androidx.compose.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
@Stable
final class KeyedComposedModifier1 extends ComposedModifier {

    @NotNull
    private final String fqName;

    @Nullable
    private final Object key1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyedComposedModifier1(@NotNull String fqName, @Nullable Object obj, @NotNull l<? super InspectorInfo, l0> inspectorInfo, @NotNull q<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier> factory) {
        super(inspectorInfo, factory);
        t.j(fqName, "fqName");
        t.j(inspectorInfo, "inspectorInfo");
        t.j(factory, "factory");
        this.fqName = fqName;
        this.key1 = obj;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof KeyedComposedModifier1) {
            KeyedComposedModifier1 keyedComposedModifier1 = (KeyedComposedModifier1) obj;
            if (t.e(this.fqName, keyedComposedModifier1.fqName) && t.e(this.key1, keyedComposedModifier1.key1)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = this.fqName.hashCode() * 31;
        Object obj = this.key1;
        return iHashCode + (obj != null ? obj.hashCode() : 0);
    }
}
