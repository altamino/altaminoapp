package androidx.compose.ui.input.pointer;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class PointerIcon_androidKt {

    @NotNull
    private static final PointerIcon pointerIconDefault = new AndroidPointerIconType(1000);

    @NotNull
    private static final PointerIcon pointerIconCrosshair = new AndroidPointerIconType(1007);

    @NotNull
    private static final PointerIcon pointerIconText = new AndroidPointerIconType(1008);

    @NotNull
    private static final PointerIcon pointerIconHand = new AndroidPointerIconType(1002);

    @NotNull
    public static final PointerIcon b() {
        return pointerIconCrosshair;
    }

    @NotNull
    public static final PointerIcon c() {
        return pointerIconDefault;
    }

    @NotNull
    public static final PointerIcon d() {
        return pointerIconHand;
    }

    @NotNull
    public static final PointerIcon e() {
        return pointerIconText;
    }

    @NotNull
    public static final PointerIcon a(int i10) {
        return new AndroidPointerIconType(i10);
    }
}
