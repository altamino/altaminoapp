package com.narvii.list.prefs;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;

/* loaded from: classes3.dex */
public class PrefsItem {
    public String desc;
    public int descColor;
    public Drawable icon;
    public int iconBackgroundColor;
    public int id;
    public String name;
    public int rightIconResId;
    public boolean enabled = true;
    public boolean chevronRight = true;
    public TextUtils.TruncateAt descTruncateAt = TextUtils.TruncateAt.END;
    public boolean text2Bold = false;

    public int hashCode() {
        int i = this.id;
        if (i != 0) {
            return i;
        }
        String str = this.name;
        if (str != null) {
            return str.hashCode();
        }
        return super.hashCode();
    }
}
