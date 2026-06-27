package com.narvii.master.search;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes3.dex */
public class GlobalPostSearchPrefsHelper {
    public static final String KEY_FILTER_BY_MY = "filter_by_my_amino";
    public static final String KEY_SORT_BY = "sort_by";
    public static final int MAX_ID_LIST_SIZE = 50;
    public static final String MOST_RECENT = "mostRecent";
    public static final String MOST_RELEVANT = "mostRelevant";
    private SharedPreferences prefs;
    private int subType;

    public GlobalPostSearchPrefsHelper(Context context) {
        this(context, 0);
    }

    public GlobalPostSearchPrefsHelper(Context context, int i) {
        this.subType = 0;
        this.prefs = context.getSharedPreferences("global_post_search", 0);
        this.subType = i;
    }

    public boolean filterByMyAmino() {
        return this.prefs.getBoolean(getFilterByMyKey(), false);
    }

    public String sortBy() {
        return this.prefs.getString(getSortByKey(), MOST_RELEVANT);
    }

    public void saveConfigChange(boolean z, String str) {
        this.prefs.edit().putBoolean(getFilterByMyKey(), z).putString(getSortByKey(), str).apply();
    }

    private String getSortByKey() {
        StringBuilder sb = new StringBuilder();
        sb.append(KEY_SORT_BY);
        int i = this.subType;
        sb.append(i == 0 ? "" : Integer.valueOf(i));
        return sb.toString();
    }

    private String getFilterByMyKey() {
        StringBuilder sb = new StringBuilder();
        sb.append(KEY_FILTER_BY_MY);
        int i = this.subType;
        sb.append(i == 0 ? "" : Integer.valueOf(i));
        return sb.toString();
    }
}
