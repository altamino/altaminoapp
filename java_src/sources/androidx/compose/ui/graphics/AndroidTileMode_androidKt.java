package androidx.compose.ui.graphics;

import android.graphics.Shader;
import android.os.Build;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class AndroidTileMode_androidKt {

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Shader.TileMode.values().length];
            iArr[Shader.TileMode.CLAMP.ordinal()] = 1;
            iArr[Shader.TileMode.MIRROR.ordinal()] = 2;
            iArr[Shader.TileMode.REPEAT.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @NotNull
    public static final Shader.TileMode a(int i10) {
        TileMode.Companion companion = TileMode.Companion;
        if (TileMode.g(i10, companion.a())) {
            return Shader.TileMode.CLAMP;
        }
        if (TileMode.g(i10, companion.d())) {
            return Shader.TileMode.REPEAT;
        }
        if (TileMode.g(i10, companion.c())) {
            return Shader.TileMode.MIRROR;
        }
        if (TileMode.g(i10, companion.b())) {
            return Build.VERSION.SDK_INT >= 31 ? TileModeVerificationHelper.INSTANCE.b() : Shader.TileMode.CLAMP;
        }
        return Shader.TileMode.CLAMP;
    }
}
