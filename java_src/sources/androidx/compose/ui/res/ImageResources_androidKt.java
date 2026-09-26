package androidx.compose.ui.res;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.DrawableRes;
import androidx.compose.ui.graphics.AndroidImageBitmap_androidKt;
import androidx.compose.ui.graphics.ImageBitmap;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class ImageResources_androidKt {
    @NotNull
    public static final ImageBitmap a(@NotNull ImageBitmap.Companion companion, @NotNull Resources res, @DrawableRes int i10) {
        t.j(companion, "<this>");
        t.j(res, "res");
        Drawable drawable = res.getDrawable(i10, null);
        if (drawable == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        }
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        t.i(bitmap, "res.getDrawable(id, null…as BitmapDrawable).bitmap");
        return AndroidImageBitmap_androidKt.c(bitmap);
    }
}
