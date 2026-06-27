package com.narvii.theme;

import android.R;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.StateListDrawable;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;

/* loaded from: classes3.dex */
public class SwitchButtonDrawable extends StateListDrawable {
    protected static int size;
    protected static final int[] state_uncheck_normal = new int[0];
    protected static final int[] state_uncheck_pressed = {R.attr.state_pressed};
    protected static final int[] state_checked_normal = {R.attr.state_checked};
    protected static final int[] state_checked_pressed = {R.attr.state_checked, R.attr.state_pressed};
    protected static final Paint paint = new Paint();

    static {
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
    }

    public SwitchButtonDrawable(NVContext nVContext) {
        ConfigService configService = (ConfigService) nVContext.getService("config");
        buildStates(nVContext);
        if (size == 0) {
            size = nVContext.getContext().getResources().getDimensionPixelSize(com.narvii.lib.R.dimen.switch_button_decorator);
        }
        paint.setColor(configService.getTheme().colorPrimary());
    }

    protected void buildStates(NVContext nVContext) {
        int iColorPrimary = ((ConfigService) nVContext.getService("config")).getTheme().colorPrimary();
        addState(state_checked_pressed, new ColorDrawable(iColorPrimary));
        addState(state_checked_normal, new ColorDrawable(iColorPrimary));
        addState(state_uncheck_pressed, new ColorDrawable(-1));
        addState(state_uncheck_normal, new ColorDrawable(-1));
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }
}
