package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@RequiresApi
final class TileModeVerificationHelper {

    @NotNull
    public static final TileModeVerificationHelper INSTANCE = new TileModeVerificationHelper();

    @DoNotInline
    public final int a() {
        return TileMode.Companion.b();
    }

    private TileModeVerificationHelper() {
    }

    @DoNotInline
    @NotNull
    public final Shader.TileMode b() {
        return Shader.TileMode.DECAL;
    }
}
