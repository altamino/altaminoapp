package androidx.compose.material;

import e8.a;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class ElevationOverlayKt$LocalElevationOverlay$1 extends v implements a<ElevationOverlay> {
    public static final ElevationOverlayKt$LocalElevationOverlay$1 INSTANCE = new ElevationOverlayKt$LocalElevationOverlay$1();

    ElevationOverlayKt$LocalElevationOverlay$1() {
        super(0);
    }

    @Override // e8.a
    @Nullable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ElevationOverlay invoke() {
        return DefaultElevationOverlay.INSTANCE;
    }
}
