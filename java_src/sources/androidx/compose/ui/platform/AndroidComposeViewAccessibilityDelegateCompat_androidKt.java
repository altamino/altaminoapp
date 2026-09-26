package androidx.compose.ui.platform;

import android.graphics.Region;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.layout.LayoutInfo;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsEntity;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsOwner;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class AndroidComposeViewAccessibilityDelegateCompat_androidKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean j(AccessibilityAction<?> accessibilityAction, Object obj) {
        if (accessibilityAction == obj) {
            return true;
        }
        if (!(obj instanceof AccessibilityAction)) {
            return false;
        }
        AccessibilityAction accessibilityAction2 = (AccessibilityAction) obj;
        if (!kotlin.jvm.internal.t.e(accessibilityAction.b(), accessibilityAction2.b())) {
            return false;
        }
        if (accessibilityAction.a() != null || accessibilityAction2.a() == null) {
            return accessibilityAction.a() == null || accessibilityAction2.a() != null;
        }
        return false;
    }

    @Nullable
    public static final ScrollObservationScope m(@NotNull List<ScrollObservationScope> list, int i10) {
        kotlin.jvm.internal.t.j(list, "<this>");
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (list.get(i11).d() == i10) {
                return list.get(i11);
            }
        }
        return null;
    }

    @NotNull
    public static final Map<Integer, SemanticsNodeWithAdjustedBounds> o(@NotNull SemanticsOwner semanticsOwner) {
        kotlin.jvm.internal.t.j(semanticsOwner, "<this>");
        SemanticsNode semanticsNodeA = semanticsOwner.a();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (semanticsNodeA.k().i() && semanticsNodeA.k().K0()) {
            Region region = new Region();
            region.set(RectHelper_androidKt.a(semanticsNodeA.f()));
            p(region, semanticsNodeA, linkedHashMap, semanticsNodeA);
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean k(SemanticsNode semanticsNode) {
        if (SemanticsConfigurationKt.a(semanticsNode.h(), SemanticsProperties.INSTANCE.d()) == null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean l(SemanticsNode semanticsNode) {
        SemanticsEntity semanticsEntityJ;
        SemanticsConfiguration semanticsConfigurationJ;
        if (t(semanticsNode) && !kotlin.jvm.internal.t.e(SemanticsConfigurationKt.a(semanticsNode.s(), SemanticsProperties.INSTANCE.g()), Boolean.TRUE)) {
            return true;
        }
        LayoutNode layoutNodeN = n(semanticsNode.k(), AndroidComposeViewAccessibilityDelegateCompat_androidKt$excludeLineAndPageGranularities$ancestor$1.INSTANCE);
        if (layoutNodeN != null && ((semanticsEntityJ = SemanticsNodeKt.j(layoutNodeN)) == null || (semanticsConfigurationJ = semanticsEntityJ.j()) == null || !kotlin.jvm.internal.t.e(SemanticsConfigurationKt.a(semanticsConfigurationJ, SemanticsProperties.INSTANCE.g()), Boolean.TRUE))) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LayoutNode n(LayoutNode layoutNode, e8.l<? super LayoutNode, Boolean> lVar) {
        for (LayoutNode layoutNodeT0 = layoutNode.t0(); layoutNodeT0 != null; layoutNodeT0 = layoutNodeT0.t0()) {
            if (lVar.invoke(layoutNodeT0).booleanValue()) {
                return layoutNodeT0;
            }
        }
        return null;
    }

    private static final void p(Region region, SemanticsNode semanticsNode, Map<Integer, SemanticsNodeWithAdjustedBounds> map, SemanticsNode semanticsNode2) {
        boolean z6;
        int i10;
        Rect rect;
        LayoutInfo layoutInfoJ;
        if (semanticsNode2.k().i() && semanticsNode2.k().K0()) {
            z6 = false;
        } else {
            z6 = true;
        }
        if (!region.isEmpty() || semanticsNode2.i() == semanticsNode.i()) {
            if (z6 && !semanticsNode2.t()) {
                return;
            }
            android.graphics.Rect rectA = RectHelper_androidKt.a(semanticsNode2.r());
            Region region2 = new Region();
            region2.set(rectA);
            if (semanticsNode2.i() == semanticsNode.i()) {
                i10 = -1;
            } else {
                i10 = semanticsNode2.i();
            }
            if (region2.op(region, region2, Region.Op.INTERSECT)) {
                Integer numValueOf = Integer.valueOf(i10);
                android.graphics.Rect bounds = region2.getBounds();
                kotlin.jvm.internal.t.i(bounds, "region.bounds");
                map.put(numValueOf, new SemanticsNodeWithAdjustedBounds(semanticsNode2, bounds));
                List<SemanticsNode> listO = semanticsNode2.o();
                for (int size = listO.size() - 1; -1 < size; size--) {
                    p(region, semanticsNode, map, listO.get(size));
                }
                region.op(rectA, region, Region.Op.REVERSE_DIFFERENCE);
                return;
            }
            if (semanticsNode2.t()) {
                SemanticsNode semanticsNodeM = semanticsNode2.m();
                if (semanticsNodeM != null && (layoutInfoJ = semanticsNodeM.j()) != null && layoutInfoJ.i()) {
                    rect = semanticsNodeM.f();
                } else {
                    rect = new Rect(0.0f, 0.0f, 10.0f, 10.0f);
                }
                map.put(Integer.valueOf(i10), new SemanticsNodeWithAdjustedBounds(semanticsNode2, RectHelper_androidKt.a(rect)));
                return;
            }
            if (i10 == -1) {
                Integer numValueOf2 = Integer.valueOf(i10);
                android.graphics.Rect bounds2 = region2.getBounds();
                kotlin.jvm.internal.t.i(bounds2, "region.bounds");
                map.put(numValueOf2, new SemanticsNodeWithAdjustedBounds(semanticsNode2, bounds2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean q(SemanticsNode semanticsNode) {
        return semanticsNode.h().c(SemanticsProperties.INSTANCE.p());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean r(SemanticsNode semanticsNode) {
        return semanticsNode.h().c(SemanticsProperties.INSTANCE.q());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean s(SemanticsNode semanticsNode) {
        if (semanticsNode.j().getLayoutDirection() == LayoutDirection.Rtl) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean t(SemanticsNode semanticsNode) {
        return semanticsNode.s().c(SemanticsActions.INSTANCE.p());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean u(SemanticsNode semanticsNode, AndroidComposeViewAccessibilityDelegateCompat.SemanticsNodeCopy semanticsNodeCopy) {
        Iterator<Map.Entry<? extends SemanticsPropertyKey<?>, ? extends Object>> it = semanticsNodeCopy.b().iterator();
        while (it.hasNext()) {
            if (!semanticsNode.h().c(it.next().getKey())) {
                return true;
            }
        }
        return false;
    }
}
