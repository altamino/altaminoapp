package androidx.compose.ui.platform;

import androidx.compose.ui.input.rotary.RotaryScrollEvent;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class AndroidComposeView$rotaryInputModifier$1 extends kotlin.jvm.internal.v implements e8.l<RotaryScrollEvent, Boolean> {
    public static final AndroidComposeView$rotaryInputModifier$1 INSTANCE = new AndroidComposeView$rotaryInputModifier$1();

    AndroidComposeView$rotaryInputModifier$1() {
        super(1);
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(@NotNull RotaryScrollEvent it) {
        kotlin.jvm.internal.t.j(it, "it");
        return Boolean.FALSE;
    }
}
