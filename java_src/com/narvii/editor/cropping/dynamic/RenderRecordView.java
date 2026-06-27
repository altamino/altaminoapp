package com.narvii.editor.cropping.dynamic;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.editor.cropping.dynamic.Utils;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RenderRecordView.kt */
/* loaded from: classes2.dex */
public final class RenderRecordView extends View {
    private static final String COLOR = "#F5A623";
    public static final Companion Companion = new Companion(null);
    private static final float RADIUS = 4.0f;
    private static final String TAG = "RenderRecordView";
    private HashMap _$_findViewCache;
    private int maxPoint;
    private Paint paint;
    private final int[] pointsArray;
    private float radius;

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    /* compiled from: RenderRecordView.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public RenderRecordView(Context context) {
        super(context);
        this.paint = new Paint();
        int[] iArr = new int[100];
        for (int i = 0; i < 100; i++) {
            iArr[i] = 0;
        }
        this.pointsArray = iArr;
        this.paint.setColor(Color.parseColor(COLOR));
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        Utils.Companion companion = Utils.Companion;
        Context context2 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        this.radius = companion.dptopx(context2, RADIUS) / 2;
    }

    public RenderRecordView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.paint = new Paint();
        int[] iArr = new int[100];
        for (int i = 0; i < 100; i++) {
            iArr[i] = 0;
        }
        this.pointsArray = iArr;
        this.paint.setColor(Color.parseColor(COLOR));
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        Utils.Companion companion = Utils.Companion;
        Context context2 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        this.radius = companion.dptopx(context2, RADIUS) / 2;
    }

    public RenderRecordView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.paint = new Paint();
        int[] iArr = new int[100];
        for (int i2 = 0; i2 < 100; i2++) {
            iArr[i2] = 0;
        }
        this.pointsArray = iArr;
        this.paint.setColor(Color.parseColor(COLOR));
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        Utils.Companion companion = Utils.Companion;
        Context context2 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        this.radius = companion.dptopx(context2, RADIUS) / 2;
    }

    public final int getMaxPoint() {
        return this.maxPoint;
    }

    public final void setMaxPoint(int i) {
        this.maxPoint = i;
    }

    public final void addPoint(int i) {
        if (i >= 0 && 99 >= i) {
            this.pointsArray[i] = 1;
            invalidate();
            this.maxPoint = Math.max(this.maxPoint, i);
        }
    }

    public final void resetPoint(int i) {
        if (i >= 0 && 99 >= i) {
            int i2 = this.maxPoint;
            if (i < i2) {
                int i3 = i + 1;
                if (i3 <= i2) {
                    while (true) {
                        this.pointsArray[i3] = 0;
                        if (i3 == i2) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                }
                this.maxPoint = i;
            }
            this.pointsArray[i] = 1;
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        boolean zIsRtl = com.narvii.util.Utils.isRtl();
        float height = getHeight() / 2.0f;
        for (int i = 0; i <= 99; i++) {
            if (this.pointsArray[i] > 0) {
                int i2 = zIsRtl ? 99 - i : i;
                if (i2 == 0) {
                    i2 = 1;
                }
                if (canvas != null) {
                    canvas.drawCircle((i2 * getWidth()) / 100.0f, height, this.radius, this.paint);
                }
            }
        }
    }
}
