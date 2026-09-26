package androidx.compose.material;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class TypographyKt {

    @NotNull
    private static final ProvidableCompositionLocal<Typography> LocalTypography = CompositionLocalKt.e(TypographyKt$LocalTypography$1.INSTANCE);

    @NotNull
    public static final ProvidableCompositionLocal<Typography> b() {
        return LocalTypography;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextStyle c(TextStyle textStyle, FontFamily fontFamily) {
        if (textStyle.h() != null) {
            return textStyle;
        }
        return textStyle.b((262111 & 1) != 0 ? textStyle.spanStyle.f() : 0L, (262111 & 2) != 0 ? textStyle.spanStyle.i() : 0L, (262111 & 4) != 0 ? textStyle.spanStyle.l() : null, (262111 & 8) != 0 ? textStyle.spanStyle.j() : null, (262111 & 16) != 0 ? textStyle.spanStyle.k() : null, (262111 & 32) != 0 ? textStyle.spanStyle.g() : fontFamily, (262111 & 64) != 0 ? textStyle.spanStyle.h() : null, (262111 & 128) != 0 ? textStyle.spanStyle.m() : 0L, (262111 & 256) != 0 ? textStyle.spanStyle.d() : null, (262111 & 512) != 0 ? textStyle.spanStyle.s() : null, (262111 & 1024) != 0 ? textStyle.spanStyle.n() : null, (262111 & 2048) != 0 ? textStyle.spanStyle.c() : 0L, (262111 & 4096) != 0 ? textStyle.spanStyle.q() : null, (262111 & 8192) != 0 ? textStyle.spanStyle.p() : null, (262111 & 16384) != 0 ? textStyle.paragraphStyle.f() : null, (262111 & 32768) != 0 ? textStyle.paragraphStyle.g() : null, (262111 & 65536) != 0 ? textStyle.paragraphStyle.c() : 0L, (262111 & 131072) != 0 ? textStyle.paragraphStyle.h() : null);
    }
}
