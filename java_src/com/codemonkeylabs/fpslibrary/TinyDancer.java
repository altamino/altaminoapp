package com.codemonkeylabs.fpslibrary;

import android.content.Context;

/* loaded from: classes.dex */
public class TinyDancer {
    public static TinyDancerBuilder create() {
        return new TinyDancerBuilder();
    }

    public static void hide(Context context) {
        TinyDancerBuilder.hide(context.getApplicationContext());
    }
}
