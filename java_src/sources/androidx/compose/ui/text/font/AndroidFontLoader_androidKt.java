package androidx.compose.ui.text.font;

import android.content.Context;
import android.os.Build;
import androidx.core.content.res.ResourcesCompat;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.i;

/* JADX INFO: loaded from: classes11.dex */
public final class AndroidFontLoader_androidKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final android.graphics.Typeface c(ResourceFont resourceFont, Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            return ResourceFontHelper.INSTANCE.a(context, resourceFont);
        }
        android.graphics.Typeface typefaceG = ResourcesCompat.g(context, resourceFont.d());
        t.g(typefaceG);
        t.i(typefaceG, "{\n        ResourcesCompa…t(context, resId)!!\n    }");
        return typefaceG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object d(ResourceFont resourceFont, Context context, kotlin.coroutines.d<? super android.graphics.Typeface> dVar) {
        return i.g(e1.b(), new AndroidFontLoader_androidKt$loadAsync$2(resourceFont, context, null), dVar);
    }
}
