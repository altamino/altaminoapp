package androidx.compose.ui.node;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class DepthSortedSet$mapOfOriginalDepth$2 extends v implements e8.a<Map<LayoutNode, Integer>> {
    public static final DepthSortedSet$mapOfOriginalDepth$2 INSTANCE = new DepthSortedSet$mapOfOriginalDepth$2();

    DepthSortedSet$mapOfOriginalDepth$2() {
        super(0);
    }

    @Override // e8.a
    @NotNull
    public final Map<LayoutNode, Integer> invoke() {
        return new LinkedHashMap();
    }
}
