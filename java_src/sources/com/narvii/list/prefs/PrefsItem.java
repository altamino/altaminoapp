package com.narvii.list.prefs;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
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
        int i10 = this.id;
        if (i10 != 0) {
            return i10;
        }
        String str = this.name;
        return str != null ? str.hashCode() : super.hashCode();
    }
}
