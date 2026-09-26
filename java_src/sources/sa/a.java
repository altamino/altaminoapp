package sa;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes9.dex */
public interface a {
    void onBoundsChange(Rect rect);

    void onDraw(Canvas canvas, Paint paint, Bitmap bitmap);
}
