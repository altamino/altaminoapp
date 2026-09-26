package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.PathFillType;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import java.util.List;
import kotlin.collections.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class VectorKt {

    @NotNull
    public static final String DefaultGroupName = "";

    @NotNull
    public static final String DefaultPathName = "";
    public static final float DefaultPivotX = 0.0f;
    public static final float DefaultPivotY = 0.0f;
    public static final float DefaultRotation = 0.0f;
    public static final float DefaultScaleX = 1.0f;
    public static final float DefaultScaleY = 1.0f;
    public static final float DefaultStrokeLineMiter = 4.0f;
    public static final float DefaultStrokeLineWidth = 0.0f;
    public static final float DefaultTranslationX = 0.0f;
    public static final float DefaultTranslationY = 0.0f;
    public static final float DefaultTrimPathEnd = 1.0f;
    public static final float DefaultTrimPathOffset = 0.0f;
    public static final float DefaultTrimPathStart = 0.0f;

    @NotNull
    private static final List<PathNode> EmptyPath = v.m();
    private static final int DefaultStrokeLineCap = StrokeCap.Companion.a();
    private static final int DefaultStrokeLineJoin = StrokeJoin.Companion.b();
    private static final int DefaultTintBlendMode = BlendMode.Companion.z();
    private static final long DefaultTintColor = Color.Companion.e();
    private static final int DefaultFillType = PathFillType.Companion.b();

    public static final int b() {
        return DefaultFillType;
    }

    public static final int c() {
        return DefaultStrokeLineCap;
    }

    public static final int d() {
        return DefaultStrokeLineJoin;
    }

    @NotNull
    public static final List<PathNode> e() {
        return EmptyPath;
    }

    @NotNull
    public static final List<PathNode> a(@Nullable String str) {
        return str == null ? EmptyPath : new PathParser().p(str).C();
    }
}
