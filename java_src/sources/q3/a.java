package q3;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo
public class a {
    private static final int COLOR_ALPHA_END = 0;
    private static final int COLOR_ALPHA_MIDDLE = 20;
    private static final int COLOR_ALPHA_START = 68;

    @NonNull
    private final Paint cornerShadowPaint;

    @NonNull
    private final Paint edgeShadowPaint;
    private final Path scratch;
    private int shadowEndColor;
    private int shadowMiddleColor;

    @NonNull
    private final Paint shadowPaint;
    private int shadowStartColor;
    private Paint transparentPaint;
    private static final int[] edgeColors = new int[3];
    private static final float[] edgePositions = {0.0f, 0.5f, 1.0f};
    private static final int[] cornerColors = new int[4];
    private static final float[] cornerPositions = {0.0f, 0.0f, 0.5f, 1.0f};

    public a() {
        this(ViewCompat.MEASURED_STATE_MASK);
    }

    @NonNull
    public Paint c() {
        return this.shadowPaint;
    }

    public a(int i10) {
        this.scratch = new Path();
        this.transparentPaint = new Paint();
        this.shadowPaint = new Paint();
        d(i10);
        this.transparentPaint.setColor(0);
        Paint paint = new Paint(4);
        this.cornerShadowPaint = paint;
        paint.setStyle(Paint.Style.FILL);
        this.edgeShadowPaint = new Paint(paint);
    }

    public void a(@NonNull Canvas canvas, @Nullable Matrix matrix, @NonNull RectF rectF, int i10, float f, float f6) {
        boolean z6 = f6 < 0.0f;
        Path path = this.scratch;
        if (z6) {
            int[] iArr = cornerColors;
            iArr[0] = 0;
            iArr[1] = this.shadowEndColor;
            iArr[2] = this.shadowMiddleColor;
            iArr[3] = this.shadowStartColor;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f, f6);
            path.close();
            float f7 = -i10;
            rectF.inset(f7, f7);
            int[] iArr2 = cornerColors;
            iArr2[0] = 0;
            iArr2[1] = this.shadowStartColor;
            iArr2[2] = this.shadowMiddleColor;
            iArr2[3] = this.shadowEndColor;
        }
        float fWidth = rectF.width() / 2.0f;
        if (fWidth <= 0.0f) {
            return;
        }
        float f10 = 1.0f - (i10 / fWidth);
        float[] fArr = cornerPositions;
        fArr[1] = f10;
        fArr[2] = ((1.0f - f10) / 2.0f) + f10;
        this.cornerShadowPaint.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, cornerColors, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z6) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, this.transparentPaint);
        }
        canvas.drawArc(rectF, f, f6, true, this.cornerShadowPaint);
        canvas.restore();
    }

    public void b(@NonNull Canvas canvas, @Nullable Matrix matrix, @NonNull RectF rectF, int i10) {
        rectF.bottom += i10;
        rectF.offset(0.0f, -i10);
        int[] iArr = edgeColors;
        iArr[0] = this.shadowEndColor;
        iArr[1] = this.shadowMiddleColor;
        iArr[2] = this.shadowStartColor;
        Paint paint = this.edgeShadowPaint;
        float f = rectF.left;
        paint.setShader(new LinearGradient(f, rectF.top, f, rectF.bottom, iArr, edgePositions, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, this.edgeShadowPaint);
        canvas.restore();
    }

    public void d(int i10) {
        this.shadowStartColor = ColorUtils.o(i10, 68);
        this.shadowMiddleColor = ColorUtils.o(i10, 20);
        this.shadowEndColor = ColorUtils.o(i10, 0);
        this.shadowPaint.setColor(this.shadowStartColor);
    }
}
