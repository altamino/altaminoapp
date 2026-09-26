package androidx.compose.ui.res;

import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.compat.AndroidVectorParser;
import androidx.compose.ui.graphics.vector.compat.XmlVectorParser_androidKt;
import java.io.IOException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes4.dex */
public final class VectorResources_androidKt {
    @NotNull
    public static final ImageVectorCache.ImageVectorEntry a(@Nullable Resources.Theme theme, @NotNull Resources res, @NotNull XmlResourceParser parser) throws XmlPullParserException, IOException {
        t.j(res, "res");
        t.j(parser, "parser");
        AttributeSet attrs = Xml.asAttributeSet(parser);
        AndroidVectorParser androidVectorParser = new AndroidVectorParser(parser, 0, 2, null);
        t.i(attrs, "attrs");
        ImageVector.Builder builderA = XmlVectorParser_androidKt.a(androidVectorParser, res, theme, attrs);
        int iG = 0;
        while (!XmlVectorParser_androidKt.d(parser)) {
            iG = XmlVectorParser_androidKt.g(androidVectorParser, res, attrs, theme, builderA, iG);
            parser.next();
        }
        return new ImageVectorCache.ImageVectorEntry(builderA.f(), androidVectorParser.a());
    }
}
