package androidx.compose.ui.res;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.TypedValue;
import androidx.annotation.DrawableRes;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.painter.BitmapPainter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorPainterKt;
import androidx.compose.ui.graphics.vector.compat.XmlVectorParser_androidKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import java.io.IOException;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class PainterResources_androidKt {

    @NotNull
    private static final String errorMessage = "Only VectorDrawables and rasterized asset types are supported ex. PNG, JPG";

    private static final ImageBitmap a(Resources resources, int i10) {
        try {
            return ImageResources_androidKt.a(ImageBitmap.Companion, resources, i10);
        } catch (Throwable unused) {
            throw new IllegalArgumentException(errorMessage);
        }
    }

    @Composable
    private static final ImageVector b(Resources.Theme theme, Resources resources, int i10, Composer composer, int i11) throws XmlPullParserException, IOException {
        composer.G(2112503116);
        ImageVectorCache imageVectorCache = (ImageVectorCache) composer.x(AndroidCompositionLocals_androidKt.h());
        ImageVectorCache.Key key = new ImageVectorCache.Key(theme, i10);
        ImageVectorCache.ImageVectorEntry imageVectorEntryB = imageVectorCache.b(key);
        if (imageVectorEntryB == null) {
            XmlResourceParser xml = resources.getXml(i10);
            t.i(xml, "res.getXml(id)");
            if (t.e(XmlVectorParser_androidKt.j(xml).getName(), "vector")) {
                imageVectorEntryB = VectorResources_androidKt.a(theme, resources, xml);
                imageVectorCache.d(key, imageVectorEntryB);
            } else {
                throw new IllegalArgumentException(errorMessage);
            }
        }
        ImageVector imageVectorB = imageVectorEntryB.b();
        composer.Q();
        return imageVectorB;
    }

    @Composable
    @NotNull
    public static final Painter c(@DrawableRes int i10, @Nullable Composer composer, int i11) {
        Painter bitmapPainter;
        composer.G(473971343);
        Context context = (Context) composer.x(AndroidCompositionLocals_androidKt.g());
        Resources res = context.getResources();
        composer.G(-492369756);
        Object objH = composer.H();
        Composer.Companion companion = Composer.Companion;
        if (objH == companion.a()) {
            objH = new TypedValue();
            composer.z(objH);
        }
        composer.Q();
        TypedValue typedValue = (TypedValue) objH;
        res.getValue(i10, typedValue, true);
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && u.T(charSequence, ".xml", false, 2, null)) {
            composer.G(-738265321);
            Resources.Theme theme = context.getTheme();
            t.i(theme, "context.theme");
            t.i(res, "res");
            bitmapPainter = VectorPainterKt.b(b(theme, res, i10, composer, ((i11 << 6) & 896) | 72), composer, 0);
            composer.Q();
        } else {
            composer.G(-738265196);
            Object objValueOf = Integer.valueOf(i10);
            composer.G(511388516);
            boolean zK = composer.k(objValueOf) | composer.k(charSequence);
            Object objH2 = composer.H();
            if (zK || objH2 == companion.a()) {
                t.i(res, "res");
                objH2 = a(res, i10);
                composer.z(objH2);
            }
            composer.Q();
            bitmapPainter = new BitmapPainter((ImageBitmap) objH2, 0L, 0L, 6, null);
            composer.Q();
        }
        composer.Q();
        return bitmapPainter;
    }
}
