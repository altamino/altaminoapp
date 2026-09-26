package com.narvii.app;

import android.R;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.StateSet;
import com.narvii.config.ConfigService;

/* JADX INFO: loaded from: classes6.dex */
public class NVTabDrawable extends StateListDrawable {
    protected static final Paint paint;
    protected static int size;
    protected static final int[] state_normal = StateSet.WILD_CARD;
    protected static final int[] state_pressed = {R.attr.state_selected};
    protected static final float[] hsv = new float[3];

    static {
        Paint paint2 = new Paint();
        paint = paint2;
        paint2.setAntiAlias(true);
        paint2.setStyle(Paint.Style.FILL);
    }

    protected void buildStates(NVContext nVContext) {
        addState(state_pressed, new ColorDrawable(((ConfigService) nVContext.getService("config")).getTheme().colorPrimary()));
        addState(state_normal, new ColorDrawable(-657931));
    }

    public NVTabDrawable(NVContext nVContext) {
        ConfigService configService = (ConfigService) nVContext.getService("config");
        buildStates(nVContext);
        if (size == 0) {
            size = nVContext.getContext().getResources().getDimensionPixelSize(com.narvii.lib.R.dimen.switch_button_decorator);
        }
        paint.setColor(configService.getTheme().colorPrimary());
    }

    protected void buidIndicator(Canvas canvas, Paint paint2) {
        int[] state = getState();
        if (state != null) {
            for (int i10 : state) {
                if (i10 == 16842913) {
                    Rect bounds = getBounds();
                    float f = bounds.left;
                    int i11 = bounds.bottom;
                    canvas.drawRect(f, i11 - size, bounds.right, i11, paint2);
                    return;
                }
            }
        }
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }
}
