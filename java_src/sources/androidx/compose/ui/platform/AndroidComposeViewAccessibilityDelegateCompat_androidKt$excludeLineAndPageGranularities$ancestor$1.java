package androidx.compose.ui.platform;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsEntity;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class AndroidComposeViewAccessibilityDelegateCompat_androidKt$excludeLineAndPageGranularities$ancestor$1 extends kotlin.jvm.internal.v implements e8.l<LayoutNode, Boolean> {
    public static final AndroidComposeViewAccessibilityDelegateCompat_androidKt$excludeLineAndPageGranularities$ancestor$1 INSTANCE = new AndroidComposeViewAccessibilityDelegateCompat_androidKt$excludeLineAndPageGranularities$ancestor$1();

    AndroidComposeViewAccessibilityDelegateCompat_androidKt$excludeLineAndPageGranularities$ancestor$1() {
        super(1);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0027  */
    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(@NotNull LayoutNode it) {
        boolean z6;
        kotlin.jvm.internal.t.j(it, "it");
        SemanticsEntity semanticsEntityJ = SemanticsNodeKt.j(it);
        SemanticsConfiguration semanticsConfigurationJ = semanticsEntityJ != null ? semanticsEntityJ.j() : null;
        if (semanticsConfigurationJ != null) {
            z6 = semanticsConfigurationJ.p() && semanticsConfigurationJ.c(SemanticsActions.INSTANCE.p());
        }
        return Boolean.valueOf(z6);
    }
}
