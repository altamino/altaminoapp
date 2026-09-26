package androidx.compose.ui.window;

import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class AndroidPopup_androidKt$Popup$3 extends v implements a<l0> {
    final /* synthetic */ LayoutDirection $layoutDirection;
    final /* synthetic */ a<l0> $onDismissRequest;
    final /* synthetic */ PopupLayout $popupLayout;
    final /* synthetic */ PopupProperties $properties;
    final /* synthetic */ String $testTag;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidPopup_androidKt$Popup$3(PopupLayout popupLayout, a<l0> aVar, PopupProperties popupProperties, String str, LayoutDirection layoutDirection) {
        super(0);
        this.$popupLayout = popupLayout;
        this.$onDismissRequest = aVar;
        this.$properties = popupProperties;
        this.$testTag = str;
        this.$layoutDirection = layoutDirection;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$popupLayout.s(this.$onDismissRequest, this.$properties, this.$testTag, this.$layoutDirection);
    }
}
