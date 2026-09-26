package androidx.compose.ui.semantics;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.node.EntityList;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeWrapper;
import e8.l;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import okhttp3.internal.http2.Http2Connection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class SemanticsNodeKt {
    static /* synthetic */ List h(LayoutNode layoutNode, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = new ArrayList();
        }
        return g(layoutNode, list);
    }

    @Nullable
    public static final SemanticsEntity i(@NotNull LayoutNode layoutNode) {
        SemanticsEntity semanticsEntityD;
        t.j(layoutNode, "<this>");
        LayoutNodeWrapper layoutNodeWrapperR0 = layoutNode.r0();
        while (layoutNodeWrapperR0 != null && !EntityList.n(layoutNodeWrapperR0.s1(), EntityList.Companion.f())) {
            layoutNodeWrapperR0 = layoutNodeWrapperR0.F1();
        }
        if (layoutNodeWrapperR0 == null || (semanticsEntityD = (SemanticsEntity) EntityList.p(layoutNodeWrapperR0.s1(), EntityList.Companion.f())) == null) {
            return null;
        }
        LayoutNodeWrapper layoutNodeWrapperB = semanticsEntityD.b();
        while (layoutNodeWrapperB != null) {
            while (semanticsEntityD != null) {
                if (semanticsEntityD.c().Q0().p()) {
                    return semanticsEntityD;
                }
                semanticsEntityD = semanticsEntityD.d();
            }
            layoutNodeWrapperB = layoutNodeWrapperB.F1();
            semanticsEntityD = layoutNodeWrapperB != null ? (SemanticsEntity) EntityList.p(layoutNodeWrapperB.s1(), EntityList.Companion.f()) : null;
        }
        return null;
    }

    @Nullable
    public static final SemanticsEntity j(@NotNull LayoutNode layoutNode) {
        SemanticsEntity semanticsEntity;
        t.j(layoutNode, "<this>");
        LayoutNodeWrapper layoutNodeWrapperR0 = layoutNode.r0();
        while (layoutNodeWrapperR0 != null && !EntityList.n(layoutNodeWrapperR0.s1(), EntityList.Companion.f())) {
            layoutNodeWrapperR0 = layoutNodeWrapperR0.F1();
        }
        if (layoutNodeWrapperR0 == null || (semanticsEntity = (SemanticsEntity) EntityList.p(layoutNodeWrapperR0.s1(), EntityList.Companion.f())) == null) {
            return null;
        }
        LayoutNodeWrapper layoutNodeWrapperB = semanticsEntity.b();
        while (layoutNodeWrapperB != null) {
            if (semanticsEntity != null) {
                return semanticsEntity;
            }
            layoutNodeWrapperB = layoutNodeWrapperB.F1();
            semanticsEntity = layoutNodeWrapperB != null ? (SemanticsEntity) EntityList.p(layoutNodeWrapperB.s1(), EntityList.Companion.f()) : null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int e(SemanticsNode semanticsNode) {
        return semanticsNode.i() + 2000000000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LayoutNode f(LayoutNode layoutNode, l<? super LayoutNode, Boolean> lVar) {
        for (LayoutNode layoutNodeT0 = layoutNode.t0(); layoutNodeT0 != null; layoutNodeT0 = layoutNodeT0.t0()) {
            if (lVar.invoke(layoutNodeT0).booleanValue()) {
                return layoutNodeT0;
            }
        }
        return null;
    }

    private static final List<SemanticsEntity> g(LayoutNode layoutNode, List<SemanticsEntity> list) {
        MutableVector<LayoutNode> mutableVectorY0 = layoutNode.y0();
        int iN = mutableVectorY0.n();
        if (iN > 0) {
            LayoutNode[] layoutNodeArrM = mutableVectorY0.m();
            int i10 = 0;
            do {
                LayoutNode layoutNode2 = layoutNodeArrM[i10];
                SemanticsEntity semanticsEntityJ = j(layoutNode2);
                if (semanticsEntityJ != null) {
                    list.add(semanticsEntityJ);
                } else {
                    g(layoutNode2, list);
                }
                i10++;
            } while (i10 < iN);
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Role k(SemanticsNode semanticsNode) {
        return (Role) SemanticsConfigurationKt.a(semanticsNode.s(), SemanticsProperties.INSTANCE.s());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int l(SemanticsNode semanticsNode) {
        return semanticsNode.i() + Http2Connection.DEGRADED_PONG_TIMEOUT_NS;
    }
}
