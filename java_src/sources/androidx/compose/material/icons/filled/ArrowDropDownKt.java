package androidx.compose.material.icons.filled;

import androidx.compose.material.icons.Icons;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class ArrowDropDownKt {

    @Nullable
    private static ImageVector _arrowDropDown;

    @NotNull
    public static final ImageVector a(@NotNull Icons.Filled filled) {
        t.j(filled, "<this>");
        ImageVector imageVector = _arrowDropDown;
        if (imageVector != null) {
            t.g(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Filled.ArrowDropDown", Dp.f(24.0f), Dp.f(24.0f), 24.0f, 24.0f, 0L, 0, 96, (k) null);
        int iB = VectorKt.b();
        SolidColor solidColor = new SolidColor(Color.Companion.a(), null);
        int iA = StrokeCap.Companion.a();
        int iA2 = StrokeJoin.Companion.a();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.e(7.0f, 10.0f);
        pathBuilder.d(5.0f, 5.0f);
        pathBuilder.d(5.0f, -5.0f);
        pathBuilder.b();
        ImageVector imageVectorF = builder.c(pathBuilder.c(), (14336 & 2) != 0 ? VectorKt.b() : iB, (14336 & 4) != 0 ? "" : "", (14336 & 8) != 0 ? null : solidColor, (14336 & 16) != 0 ? 1.0f : 1.0f, (14336 & 32) == 0 ? null : null, (14336 & 64) != 0 ? 1.0f : 1.0f, (14336 & 128) != 0 ? 0.0f : 1.0f, (14336 & 256) != 0 ? VectorKt.c() : iA, (14336 & 512) != 0 ? VectorKt.d() : iA2, (14336 & 1024) != 0 ? 4.0f : 1.0f, (14336 & 2048) != 0 ? 0.0f : 0.0f, (14336 & 4096) == 0 ? 0.0f : 1.0f, (14336 & 8192) == 0 ? 0.0f : 0.0f).f();
        _arrowDropDown = imageVectorF;
        t.g(imageVectorF);
        return imageVectorF;
    }
}
