package com.narvii.util;

import android.content.Context;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes6.dex */
public class ActionBarIcon extends FontAwesomeDrawable {
    static int COLOR;
    static int SIZE;

    public ActionBarIcon(Context context, String str, float f, int i10) {
        this(context, str, f, i10, 255);
    }

    public ActionBarIcon(Context context, String str, float f, int i10, int i11) {
        this(context, str, f, i10, i11, true);
    }

    public ActionBarIcon(Context context, String str, float f, int i10, int i11, boolean z6) {
        super(context);
        setKeyString(str);
        if (SIZE == 0) {
            SIZE = context.getResources().getDimensionPixelSize(R.dimen.actionbar_icon_size);
        }
        setIntrinsicSize(SIZE);
        if (i10 == 0) {
            if (COLOR == 0) {
                COLOR = context.getResources().getColor(R.color.actionbar_icon);
            }
            i10 = COLOR;
        }
        setFocalArea(f);
        setColor(i10);
        if (z6) {
            setShadow(3.0f, 0.0f, 1.0f, -1442840576);
        }
        setAlpha(i11);
    }

    public ActionBarIcon(Context context, String str) {
        this(context, str, 0.75f, 0);
    }

    public ActionBarIcon(Context context, int i10) {
        this(context, context.getApplicationContext().getString(i10));
    }
}
