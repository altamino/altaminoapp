package com.narvii.util.fonticon;

import android.content.Context;
import android.graphics.Typeface;
import java.util.HashMap;

/* loaded from: classes3.dex */
public interface NVTypeface {
    HashMap<String, Character> getCharacters();

    String getPrefixName();

    Typeface getTypeface(Context context);
}
