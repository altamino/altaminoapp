package androidx.compose.ui.platform.accessibility;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.d0;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class CollectionInfoKt {
    private static final boolean a(List<SemanticsNode> list) {
        List listM;
        long jU;
        if (list.size() < 2) {
            return true;
        }
        if (list.size() == 0 || list.size() == 1) {
            listM = v.m();
        } else {
            listM = new ArrayList();
            SemanticsNode semanticsNode = list.get(0);
            int iO = v.o(list);
            int i10 = 0;
            while (i10 < iO) {
                i10++;
                SemanticsNode semanticsNode2 = list.get(i10);
                SemanticsNode semanticsNode3 = semanticsNode2;
                SemanticsNode semanticsNode4 = semanticsNode;
                listM.add(Offset.d(OffsetKt.a(Math.abs(Offset.m(semanticsNode4.f().h()) - Offset.m(semanticsNode3.f().h())), Math.abs(Offset.n(semanticsNode4.f().h()) - Offset.n(semanticsNode3.f().h())))));
                semanticsNode = semanticsNode2;
            }
        }
        if (listM.size() == 1) {
            jU = ((Offset) d0.j0(listM)).u();
        } else {
            if (listM.isEmpty()) {
                throw new UnsupportedOperationException("Empty collection can't be reduced.");
            }
            Object objJ0 = d0.j0(listM);
            int iO2 = v.o(listM);
            if (1 <= iO2) {
                int i11 = 1;
                while (true) {
                    objJ0 = Offset.d(Offset.r(((Offset) objJ0).u(), ((Offset) listM.get(i11)).u()));
                    if (i11 == iO2) {
                        break;
                    }
                    i11++;
                }
            }
            jU = ((Offset) objJ0).u();
        }
        return Offset.f(jU) < Offset.e(jU);
    }

    public static final boolean b(@NotNull SemanticsNode semanticsNode) {
        t.j(semanticsNode, "<this>");
        SemanticsConfiguration semanticsConfigurationH = semanticsNode.h();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        return (SemanticsConfigurationKt.a(semanticsConfigurationH, semanticsProperties.a()) == null && SemanticsConfigurationKt.a(semanticsNode.h(), semanticsProperties.t()) == null) ? false : true;
    }

    public static final void d(@NotNull SemanticsNode node, @NotNull AccessibilityNodeInfoCompat info) {
        t.j(node, "node");
        t.j(info, "info");
        SemanticsConfiguration semanticsConfigurationH = node.h();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        CollectionInfo collectionInfo = (CollectionInfo) SemanticsConfigurationKt.a(semanticsConfigurationH, semanticsProperties.a());
        if (collectionInfo != null) {
            info.g0(f(collectionInfo));
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (SemanticsConfigurationKt.a(node.h(), semanticsProperties.t()) != null) {
            List<SemanticsNode> listO = node.o();
            int size = listO.size();
            for (int i10 = 0; i10 < size; i10++) {
                SemanticsNode semanticsNode = listO.get(i10);
                if (semanticsNode.h().c(SemanticsProperties.INSTANCE.u())) {
                    arrayList.add(semanticsNode);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            boolean zA = a(arrayList);
            info.g0(AccessibilityNodeInfoCompat.CollectionInfoCompat.b(zA ? 1 : arrayList.size(), zA ? arrayList.size() : 1, false, 0));
        }
    }

    public static final void e(@NotNull SemanticsNode node, @NotNull AccessibilityNodeInfoCompat info) {
        t.j(node, "node");
        t.j(info, "info");
        SemanticsConfiguration semanticsConfigurationH = node.h();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        CollectionItemInfo collectionItemInfo = (CollectionItemInfo) SemanticsConfigurationKt.a(semanticsConfigurationH, semanticsProperties.b());
        if (collectionItemInfo != null) {
            info.h0(g(collectionItemInfo, node));
        }
        SemanticsNode semanticsNodeM = node.m();
        if (semanticsNodeM == null || SemanticsConfigurationKt.a(semanticsNodeM.h(), semanticsProperties.t()) == null) {
            return;
        }
        CollectionInfo collectionInfo = (CollectionInfo) SemanticsConfigurationKt.a(semanticsNodeM.h(), semanticsProperties.a());
        if ((collectionInfo == null || !c(collectionInfo)) && node.h().c(semanticsProperties.u())) {
            ArrayList arrayList = new ArrayList();
            List<SemanticsNode> listO = semanticsNodeM.o();
            int size = listO.size();
            for (int i10 = 0; i10 < size; i10++) {
                SemanticsNode semanticsNode = listO.get(i10);
                if (semanticsNode.h().c(SemanticsProperties.INSTANCE.u())) {
                    arrayList.add(semanticsNode);
                }
            }
            if (!arrayList.isEmpty()) {
                boolean zA = a(arrayList);
                int size2 = arrayList.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    SemanticsNode semanticsNode2 = (SemanticsNode) arrayList.get(i11);
                    if (semanticsNode2.i() == node.i()) {
                        AccessibilityNodeInfoCompat.CollectionItemInfoCompat collectionItemInfoCompatA = AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(zA ? 0 : i11, 1, zA ? i11 : 0, 1, false, ((Boolean) semanticsNode2.h().g(SemanticsProperties.INSTANCE.u(), CollectionInfoKt$setCollectionItemInfo$2$itemInfo$1.INSTANCE)).booleanValue());
                        if (collectionItemInfoCompatA != null) {
                            info.h0(collectionItemInfoCompatA);
                        }
                    }
                }
            }
        }
    }

    private static final boolean c(CollectionInfo collectionInfo) {
        if (collectionInfo.b() >= 0 && collectionInfo.a() >= 0) {
            return false;
        }
        return true;
    }

    private static final AccessibilityNodeInfoCompat.CollectionInfoCompat f(CollectionInfo collectionInfo) {
        return AccessibilityNodeInfoCompat.CollectionInfoCompat.b(collectionInfo.b(), collectionInfo.a(), false, 0);
    }

    private static final AccessibilityNodeInfoCompat.CollectionItemInfoCompat g(CollectionItemInfo collectionItemInfo, SemanticsNode semanticsNode) {
        return AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(collectionItemInfo.c(), collectionItemInfo.d(), collectionItemInfo.a(), collectionItemInfo.b(), false, ((Boolean) semanticsNode.h().g(SemanticsProperties.INSTANCE.u(), CollectionInfoKt$toAccessibilityCollectionItemInfo$1.INSTANCE)).booleanValue());
    }
}
