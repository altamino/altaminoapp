package androidx.compose.foundation;

import androidx.compose.ui.focus.FocusProperties;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class FocusableKt$focusGroup$1 extends v implements l<FocusProperties, l0> {
    public static final FocusableKt$focusGroup$1 INSTANCE = new FocusableKt$focusGroup$1();

    FocusableKt$focusGroup$1() {
        super(1);
    }

    public final void a(@NotNull FocusProperties focusProperties) {
        t.j(focusProperties, "$this$focusProperties");
        focusProperties.g(false);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(FocusProperties focusProperties) {
        a(focusProperties);
        return l0.INSTANCE;
    }
}
