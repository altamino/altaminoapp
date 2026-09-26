package androidx.compose.ui.hapticfeedback;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class PlatformHapticFeedbackType {

    @NotNull
    public static final PlatformHapticFeedbackType INSTANCE = new PlatformHapticFeedbackType();
    private static final int LongPress = HapticFeedbackType.a(0);
    private static final int TextHandleMove = HapticFeedbackType.a(9);

    public final int a() {
        return LongPress;
    }

    public final int b() {
        return TextHandleMove;
    }

    private PlatformHapticFeedbackType() {
    }
}
