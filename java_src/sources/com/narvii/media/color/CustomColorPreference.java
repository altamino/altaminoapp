package com.narvii.media.color;

import android.content.Context;
import android.content.SharedPreferences;
import com.narvii.util.JacksonUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public class CustomColorPreference {
    private static final int CUSTOM_COLOR_LIST_MAX_LENGTH = 3;
    private static final String PREF_PREFIX_CUSTOM_COLOR_LIST = "CUSTOM_COLOR_LIST";
    private final SharedPreferences prefs;

    public List<Integer> getCustomColorList() {
        return JacksonUtils.readListAs(this.prefs.getString(PREF_PREFIX_CUSTOM_COLOR_LIST, null), Integer.class);
    }

    public CustomColorPreference(Context context) {
        this.prefs = context.getSharedPreferences("color_picker", 0);
    }

    public void addColorIntoCustomList(int i10) {
        ArrayList arrayList;
        List<Integer> customColorList = getCustomColorList();
        if (customColorList == null) {
            arrayList = new ArrayList();
        } else {
            arrayList = new ArrayList(customColorList);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num != null && num.intValue() == i10) {
                it.remove();
            }
        }
        arrayList.add(0, Integer.valueOf(i10));
        while (arrayList.size() > 3) {
            arrayList.remove(arrayList.size() - 1);
        }
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        editorEdit.putString(PREF_PREFIX_CUSTOM_COLOR_LIST, JacksonUtils.writeAsString(arrayList));
        editorEdit.apply();
    }
}
