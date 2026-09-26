package androidx.compose.ui.graphics.vector.compat;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.BrushKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.PathFillType;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathNode;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.unit.Dp;
import androidx.constraintlayout.motion.widget.Key;
import androidx.core.content.res.ComplexColorCompat;
import androidx.core.content.res.TypedArrayUtils;
import java.io.IOException;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes7.dex */
public final class XmlVectorParser_androidKt {
    private static final int FILL_TYPE_WINDING = 0;
    private static final int LINECAP_BUTT = 0;
    private static final int LINECAP_ROUND = 1;
    private static final int LINECAP_SQUARE = 2;
    private static final int LINEJOIN_BEVEL = 2;
    private static final int LINEJOIN_MITER = 0;
    private static final int LINEJOIN_ROUND = 1;

    @NotNull
    private static final String SHAPE_CLIP_PATH = "clip-path";

    @NotNull
    private static final String SHAPE_GROUP = "group";

    @NotNull
    private static final String SHAPE_PATH = "path";

    public static final void h(@NotNull AndroidVectorParser androidVectorParser, @NotNull Resources res, @Nullable Resources.Theme theme, @NotNull AttributeSet attrs, @NotNull ImageVector.Builder builder) {
        t.j(androidVectorParser, "<this>");
        t.j(res, "res");
        t.j(attrs, "attrs");
        t.j(builder, "builder");
        AndroidVectorResources androidVectorResources = AndroidVectorResources.INSTANCE;
        TypedArray typedArrayL = androidVectorParser.l(res, theme, attrs, androidVectorResources.e());
        float fH = androidVectorParser.h(typedArrayL, Key.ROTATION, androidVectorResources.i(), 0.0f);
        float fC = androidVectorParser.c(typedArrayL, androidVectorResources.g(), 0.0f);
        float fC2 = androidVectorParser.c(typedArrayL, androidVectorResources.h(), 0.0f);
        float fH2 = androidVectorParser.h(typedArrayL, "scaleX", androidVectorResources.j(), 1.0f);
        float fH3 = androidVectorParser.h(typedArrayL, "scaleY", androidVectorResources.k(), 1.0f);
        float fH4 = androidVectorParser.h(typedArrayL, "translateX", androidVectorResources.l(), 0.0f);
        float fH5 = androidVectorParser.h(typedArrayL, "translateY", androidVectorResources.m(), 0.0f);
        String strJ = androidVectorParser.j(typedArrayL, androidVectorResources.f());
        if (strJ == null) {
            strJ = "";
        }
        typedArrayL.recycle();
        builder.a(strJ, fH, fC, fC2, fH2, fH3, fH4, fH5, VectorKt.e());
    }

    @NotNull
    public static final ImageVector.Builder a(@NotNull AndroidVectorParser androidVectorParser, @NotNull Resources res, @Nullable Resources.Theme theme, @NotNull AttributeSet attrs) throws XmlPullParserException {
        long jF;
        int iZ;
        ColorStateList colorStateListF;
        t.j(androidVectorParser, "<this>");
        t.j(res, "res");
        t.j(attrs, "attrs");
        AndroidVectorResources androidVectorResources = AndroidVectorResources.INSTANCE;
        TypedArray typedArrayL = androidVectorParser.l(res, theme, attrs, androidVectorResources.F());
        boolean zE = androidVectorParser.e(typedArrayL, "autoMirrored", androidVectorResources.a(), false);
        float fH = androidVectorParser.h(typedArrayL, "viewportWidth", androidVectorResources.H(), 0.0f);
        float fH2 = androidVectorParser.h(typedArrayL, "viewportHeight", androidVectorResources.G(), 0.0f);
        if (fH <= 0.0f) {
            throw new XmlPullParserException(typedArrayL.getPositionDescription() + "<VectorGraphic> tag requires viewportWidth > 0");
        }
        if (fH2 <= 0.0f) {
            throw new XmlPullParserException(typedArrayL.getPositionDescription() + "<VectorGraphic> tag requires viewportHeight > 0");
        }
        float fB = androidVectorParser.b(typedArrayL, androidVectorResources.I(), 0.0f);
        float fB2 = androidVectorParser.b(typedArrayL, androidVectorResources.n(), 0.0f);
        if (typedArrayL.hasValue(androidVectorResources.D())) {
            TypedValue typedValue = new TypedValue();
            typedArrayL.getValue(androidVectorResources.D(), typedValue);
            jF = (typedValue.type == 2 || (colorStateListF = androidVectorParser.f(typedArrayL, theme, "tint", androidVectorResources.D())) == null) ? Color.Companion.f() : ColorKt.b(colorStateListF.getDefaultColor());
        } else {
            jF = Color.Companion.f();
        }
        long j6 = jF;
        int iD = androidVectorParser.d(typedArrayL, androidVectorResources.E(), -1);
        if (iD == -1) {
            iZ = BlendMode.Companion.z();
        } else if (iD == 3) {
            iZ = BlendMode.Companion.B();
        } else if (iD == 5) {
            iZ = BlendMode.Companion.z();
        } else if (iD != 9) {
            switch (iD) {
                case 14:
                    iZ = BlendMode.Companion.q();
                    break;
                case 15:
                    iZ = BlendMode.Companion.v();
                    break;
                case 16:
                    iZ = BlendMode.Companion.t();
                    break;
                default:
                    iZ = BlendMode.Companion.z();
                    break;
            }
        } else {
            iZ = BlendMode.Companion.y();
        }
        int i10 = iZ;
        float f = Dp.f(fB / res.getDisplayMetrics().density);
        float f6 = Dp.f(fB2 / res.getDisplayMetrics().density);
        typedArrayL.recycle();
        return new ImageVector.Builder(null, f, f6, fH, fH2, j6, i10, zE, 1, null);
    }

    private static final int b(int i10, int i11) {
        if (i10 == 0) {
            return StrokeCap.Companion.a();
        }
        if (i10 != 1) {
            return i10 != 2 ? i11 : StrokeCap.Companion.c();
        }
        return StrokeCap.Companion.b();
    }

    private static final int c(int i10, int i11) {
        if (i10 == 0) {
            return StrokeJoin.Companion.b();
        }
        if (i10 != 1) {
            return i10 != 2 ? i11 : StrokeJoin.Companion.a();
        }
        return StrokeJoin.Companion.c();
    }

    public static final boolean d(@NotNull XmlPullParser xmlPullParser) {
        t.j(xmlPullParser, "<this>");
        if (xmlPullParser.getEventType() != 1) {
            return xmlPullParser.getDepth() < 1 && xmlPullParser.getEventType() == 3;
        }
        return true;
    }

    public static final void f(@NotNull AndroidVectorParser androidVectorParser, @NotNull Resources res, @Nullable Resources.Theme theme, @NotNull AttributeSet attrs, @NotNull ImageVector.Builder builder) {
        t.j(androidVectorParser, "<this>");
        t.j(res, "res");
        t.j(attrs, "attrs");
        t.j(builder, "builder");
        AndroidVectorResources androidVectorResources = AndroidVectorResources.INSTANCE;
        TypedArray typedArrayL = androidVectorParser.l(res, theme, attrs, androidVectorResources.b());
        String strJ = androidVectorParser.j(typedArrayL, androidVectorResources.c());
        if (strJ == null) {
            strJ = "";
        }
        List<PathNode> listA = VectorKt.a(androidVectorParser.j(typedArrayL, androidVectorResources.d()));
        typedArrayL.recycle();
        builder.a((254 & 1) != 0 ? "" : strJ, (254 & 2) != 0 ? 0.0f : 0.0f, (254 & 4) != 0 ? 0.0f : 0.0f, (254 & 8) != 0 ? 0.0f : 0.0f, (254 & 16) != 0 ? 1.0f : 0.0f, (254 & 32) == 0 ? 0.0f : 1.0f, (254 & 64) != 0 ? 0.0f : 0.0f, (254 & 128) == 0 ? 0.0f : 0.0f, (254 & 256) != 0 ? VectorKt.e() : listA);
    }

    public static final int g(@NotNull AndroidVectorParser androidVectorParser, @NotNull Resources res, @NotNull AttributeSet attrs, @Nullable Resources.Theme theme, @NotNull ImageVector.Builder builder, int i10) throws XmlPullParserException {
        t.j(androidVectorParser, "<this>");
        t.j(res, "res");
        t.j(attrs, "attrs");
        t.j(builder, "builder");
        int eventType = androidVectorParser.k().getEventType();
        if (eventType != 2) {
            if (eventType != 3 || !t.e("group", androidVectorParser.k().getName())) {
                return i10;
            }
            int i11 = i10 + 1;
            for (int i12 = 0; i12 < i11; i12++) {
                builder.g();
            }
            return 0;
        }
        String name = androidVectorParser.k().getName();
        if (name == null) {
            return i10;
        }
        int iHashCode = name.hashCode();
        if (iHashCode == -1649314686) {
            if (!name.equals(SHAPE_CLIP_PATH)) {
                return i10;
            }
            f(androidVectorParser, res, theme, attrs, builder);
            return i10 + 1;
        }
        if (iHashCode == 3433509) {
            if (!name.equals("path")) {
                return i10;
            }
            i(androidVectorParser, res, theme, attrs, builder);
            return i10;
        }
        if (iHashCode != 98629247 || !name.equals("group")) {
            return i10;
        }
        h(androidVectorParser, res, theme, attrs, builder);
        return i10;
    }

    public static final void i(@NotNull AndroidVectorParser androidVectorParser, @NotNull Resources res, @Nullable Resources.Theme theme, @NotNull AttributeSet attrs, @NotNull ImageVector.Builder builder) throws IllegalArgumentException {
        t.j(androidVectorParser, "<this>");
        t.j(res, "res");
        t.j(attrs, "attrs");
        t.j(builder, "builder");
        AndroidVectorResources androidVectorResources = AndroidVectorResources.INSTANCE;
        TypedArray typedArrayL = androidVectorParser.l(res, theme, attrs, androidVectorResources.o());
        if (!TypedArrayUtils.r(androidVectorParser.k(), "pathData")) {
            throw new IllegalArgumentException("No path data available");
        }
        String strJ = androidVectorParser.j(typedArrayL, androidVectorResources.r());
        if (strJ == null) {
            strJ = "";
        }
        String str = strJ;
        List<PathNode> listA = VectorKt.a(androidVectorParser.j(typedArrayL, androidVectorResources.s()));
        ComplexColorCompat complexColorCompatG = androidVectorParser.g(typedArrayL, theme, "fillColor", androidVectorResources.q(), 0);
        float fH = androidVectorParser.h(typedArrayL, "fillAlpha", androidVectorResources.p(), 1.0f);
        int iB = b(androidVectorParser.i(typedArrayL, "strokeLineCap", androidVectorResources.v(), -1), StrokeCap.Companion.a());
        int iC = c(androidVectorParser.i(typedArrayL, "strokeLineJoin", androidVectorResources.w(), -1), StrokeJoin.Companion.a());
        float fH2 = androidVectorParser.h(typedArrayL, "strokeMiterLimit", androidVectorResources.x(), 1.0f);
        ComplexColorCompat complexColorCompatG2 = androidVectorParser.g(typedArrayL, theme, "strokeColor", androidVectorResources.u(), 0);
        float fH3 = androidVectorParser.h(typedArrayL, "strokeAlpha", androidVectorResources.t(), 1.0f);
        float fH4 = androidVectorParser.h(typedArrayL, "strokeWidth", androidVectorResources.y(), 1.0f);
        float fH5 = androidVectorParser.h(typedArrayL, "trimPathEnd", androidVectorResources.z(), 1.0f);
        float fH6 = androidVectorParser.h(typedArrayL, "trimPathOffset", androidVectorResources.B(), 0.0f);
        float fH7 = androidVectorParser.h(typedArrayL, "trimPathStart", androidVectorResources.C(), 0.0f);
        int i10 = androidVectorParser.i(typedArrayL, "fillType", androidVectorResources.A(), FILL_TYPE_WINDING);
        typedArrayL.recycle();
        Brush brushE = e(complexColorCompatG);
        Brush brushE2 = e(complexColorCompatG2);
        PathFillType.Companion companion = PathFillType.Companion;
        builder.c(listA, i10 == 0 ? companion.b() : companion.a(), str, brushE, fH, brushE2, fH3, fH4, iB, iC, fH2, fH7, fH5, fH6);
    }

    @NotNull
    public static final XmlPullParser j(@NotNull XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        t.j(xmlPullParser, "<this>");
        int next = xmlPullParser.next();
        while (next != 2 && next != 1) {
            next = xmlPullParser.next();
        }
        if (next == 2) {
            return xmlPullParser;
        }
        throw new XmlPullParserException("No start tag found");
    }

    private static final Brush e(ComplexColorCompat complexColorCompat) {
        if (!complexColorCompat.l()) {
            return null;
        }
        Shader shaderF = complexColorCompat.f();
        if (shaderF != null) {
            return BrushKt.a(shaderF);
        }
        return new SolidColor(ColorKt.b(complexColorCompat.e()), null);
    }
}
