package com.narvii.util;

import android.content.Context;
import com.narvii.lib.R;

/* loaded from: classes3.dex */
public class ActionBarIcon extends FontAwesomeDrawable {
    static int COLOR;
    static int SIZE;

    public ActionBarIcon(Context context, String str, float f, int i) {
        this(context, str, f, i, 255);
    }

    public ActionBarIcon(Context context, String str, float f, int i, int i2) {
        this(context, str, f, i, i2, true);
    }

    public ActionBarIcon(Context context, String str, float f, int i, int i2, boolean z) {
        super(context);
        setKeyString(str);
        if (SIZE == 0) {
            SIZE = context.getResources().getDimensionPixelSize(R.dimen.actionbar_icon_size);
        }
        setIntrinsicSize(SIZE);
        if (i == 0) {
            if (COLOR == 0) {
                COLOR = context.getResources().getColor(R.color.actionbar_icon);
            }
            i = COLOR;
        }
        setFocalArea(f);
        setColor(i);
        if (z) {
            setShadow(3.0f, 0.0f, 1.0f, -1442840576);
        }
        setAlpha(i2);
    }

    public ActionBarIcon(Context context, String str) {
        this(context, str, 0.75f, 0);
    }

    public ActionBarIcon(Context context, int i) {
        this(context, context.getApplicationContext().getString(i));
    }
}
