package com.narvii.app;

import android.R;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.StateSet;
import com.narvii.config.ConfigService;

/* loaded from: classes2.dex */
public class NVTabDrawable extends StateListDrawable {
    protected static int size;
    protected static final int[] state_normal = StateSet.WILD_CARD;
    protected static final int[] state_pressed = {R.attr.state_selected};
    protected static final float[] hsv = new float[3];
    protected static final Paint paint = new Paint();

    static {
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
    }

    public NVTabDrawable(NVContext nVContext) {
        ConfigService configService = (ConfigService) nVContext.getService("config");
        buildStates(nVContext);
        if (size == 0) {
            size = nVContext.getContext().getResources().getDimensionPixelSize(com.narvii.lib.R.dimen.switch_button_decorator);
        }
        paint.setColor(configService.getTheme().colorPrimary());
    }

    protected void buildStates(NVContext nVContext) {
        addState(state_pressed, new ColorDrawable(((ConfigService) nVContext.getService("config")).getTheme().colorPrimary()));
        addState(state_normal, new ColorDrawable(-657931));
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    protected void buidIndicator(Canvas canvas, Paint paint2) {
        int[] state = getState();
        boolean z = false;
        if (state != null) {
            int length = state.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (state[i] == 16842913) {
                    z = true;
                    break;
                }
                i++;
            }
        }
        if (z) {
            Rect bounds = getBounds();
            canvas.drawRect(bounds.left, r1 - size, bounds.right, bounds.bottom, paint2);
        }
    }
}
