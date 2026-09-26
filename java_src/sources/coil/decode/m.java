package coil.decode;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.exifinterface.media.ExifInterface;
import kotlin.jvm.internal.t;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class m {

    @NotNull
    public static final m INSTANCE = new m();

    @NotNull
    private static final Paint PAINT = new Paint(3);

    private m() {
    }

    @NotNull
    public final j a(@Nullable String str, @NotNull BufferedSource bufferedSource, @NotNull l lVar) {
        if (n.c(lVar, str)) {
            ExifInterface exifInterface = new ExifInterface(new k(bufferedSource.peek().inputStream()));
            return new j(exifInterface.t(), exifInterface.l());
        }
        return j.NONE;
    }

    @NotNull
    public final Bitmap b(@NotNull Bitmap bitmap, @NotNull j jVar) {
        Bitmap bitmapCreateBitmap;
        if (!jVar.b() && !n.a(jVar)) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float width = bitmap.getWidth() / 2.0f;
        float height = bitmap.getHeight() / 2.0f;
        if (jVar.b()) {
            matrix.postScale(-1.0f, 1.0f, width, height);
        }
        if (n.a(jVar)) {
            matrix.postRotate(jVar.a(), width, height);
        }
        RectF rectF = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
        matrix.mapRect(rectF);
        float f = rectF.left;
        if (f != 0.0f || rectF.top != 0.0f) {
            matrix.postTranslate(-f, -rectF.top);
        }
        if (n.b(jVar)) {
            bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getHeight(), bitmap.getWidth(), coil.util.a.c(bitmap));
            t.i(bitmapCreateBitmap, "createBitmap(width, height, config)");
        } else {
            bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), coil.util.a.c(bitmap));
            t.i(bitmapCreateBitmap, "createBitmap(width, height, config)");
        }
        new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, matrix, PAINT);
        bitmap.recycle();
        return bitmapCreateBitmap;
    }
}
