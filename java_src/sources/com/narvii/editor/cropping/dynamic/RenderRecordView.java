package com.narvii.editor.cropping.dynamic;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class RenderRecordView extends View {

    @NotNull
    private static final String COLOR = "#F5A623";

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final float RADIUS = 4.0f;

    @NotNull
    private static final String TAG = "RenderRecordView";
    private int maxPoint;

    @NotNull
    private Paint paint;

    @NotNull
    private final int[] pointsArray;
    private float radius;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public RenderRecordView(@Nullable Context context) {
        super(context);
        this.paint = new Paint();
        int[] iArr = new int[100];
        for (int i10 = 0; i10 < 100; i10++) {
            iArr[i10] = 0;
        }
        this.pointsArray = iArr;
        this.paint.setColor(Color.parseColor(COLOR));
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        Utils.Companion companion = Utils.Companion;
        Context context2 = getContext();
        t.i(context2, "getContext(...)");
        this.radius = companion.dptopx(context2, 4.0f) / 2;
    }

    public final int getMaxPoint() {
        return this.maxPoint;
    }

    public final void setMaxPoint(int i10) {
        this.maxPoint = i10;
    }

    public final void addPoint(int i10) {
        if (i10 < 0 || i10 >= 100) {
            return;
        }
        this.pointsArray[i10] = 1;
        invalidate();
        this.maxPoint = Math.max(this.maxPoint, i10);
    }

    public final void resetPoint(int i10) {
        if (i10 < 0 || i10 >= 100) {
            return;
        }
        int i11 = this.maxPoint;
        if (i10 < i11) {
            int i12 = i10 + 1;
            if (i12 <= i11) {
                while (true) {
                    this.pointsArray[i12] = 0;
                    if (i12 == i11) {
                        break;
                    } else {
                        i12++;
                    }
                }
            }
            this.maxPoint = i10;
        }
        this.pointsArray[i10] = 1;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(@Nullable Canvas canvas) {
        int i10;
        super.onDraw(canvas);
        boolean zIsRtl = com.narvii.util.Utils.isRtl();
        float height = getHeight() / 2.0f;
        for (int i11 = 0; i11 < 100; i11++) {
            if (this.pointsArray[i11] > 0) {
                if (zIsRtl) {
                    i10 = 99 - i11;
                } else {
                    i10 = i11;
                }
                if (i10 == 0) {
                    i10 = 1;
                }
                if (canvas != null) {
                    canvas.drawCircle((i10 * getWidth()) / 100.0f, height, this.radius, this.paint);
                }
            }
        }
    }

    public RenderRecordView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.paint = new Paint();
        int[] iArr = new int[100];
        for (int i10 = 0; i10 < 100; i10++) {
            iArr[i10] = 0;
        }
        this.pointsArray = iArr;
        this.paint.setColor(Color.parseColor(COLOR));
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        Utils.Companion companion = Utils.Companion;
        Context context2 = getContext();
        t.i(context2, "getContext(...)");
        this.radius = companion.dptopx(context2, 4.0f) / 2;
    }

    public RenderRecordView(@Nullable Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.paint = new Paint();
        int[] iArr = new int[100];
        for (int i11 = 0; i11 < 100; i11++) {
            iArr[i11] = 0;
        }
        this.pointsArray = iArr;
        this.paint.setColor(Color.parseColor(COLOR));
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        Utils.Companion companion = Utils.Companion;
        Context context2 = getContext();
        t.i(context2, "getContext(...)");
        this.radius = companion.dptopx(context2, 4.0f) / 2;
    }
}
