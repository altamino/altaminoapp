package androidx.compose.ui.platform;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsEntity;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$1$ancestor$1 extends kotlin.jvm.internal.v implements e8.l<LayoutNode, Boolean> {
    public static final AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$1$ancestor$1 INSTANCE = new AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$1$ancestor$1();

    AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$1$ancestor$1() {
        super(1);
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(@NotNull LayoutNode parent) {
        SemanticsConfiguration semanticsConfigurationJ;
        kotlin.jvm.internal.t.j(parent, "parent");
        SemanticsEntity semanticsEntityJ = SemanticsNodeKt.j(parent);
        boolean z6 = false;
        if (semanticsEntityJ != null && (semanticsConfigurationJ = semanticsEntityJ.j()) != null && semanticsConfigurationJ.p()) {
            z6 = true;
        }
        return Boolean.valueOf(z6);
    }
}
