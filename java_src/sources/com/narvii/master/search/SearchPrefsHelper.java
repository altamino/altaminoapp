package com.narvii.master.search;

import android.content.Context;
import android.content.SharedPreferences;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class SearchPrefsHelper {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int MAX_SIZE = 50;

    @NotNull
    public static final String PREFS_KEY_CHAT = "chat";

    @NotNull
    public static final String PREFS_KEY_COMMUNITY = "community";

    @NotNull
    public static final String PREFS_KEY_OTHERS = "others";

    @NotNull
    public static final String PREFS_KEY_POST = "searchHistoryList";

    @NotNull
    public static final String PREFS_KEY_TOPIC = "topic";

    @Nullable
    private LinkedHashSet<String> hashSet;

    @NotNull
    private final SharedPreferences prefs;

    @NotNull
    private final String prefsKey;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Nullable
    public final LinkedHashSet<String> getHashSet() {
        return this.hashSet;
    }

    @NotNull
    public final SharedPreferences getPrefs() {
        return this.prefs;
    }

    public final void setHashSet(@Nullable LinkedHashSet<String> linkedHashSet) {
        this.hashSet = linkedHashSet;
    }

    public SearchPrefsHelper(@NotNull Context context, @NotNull String prefsKey) {
        String str;
        t.j(context, "context");
        t.j(prefsKey, "prefsKey");
        this.prefsKey = prefsKey;
        String str2 = "global_search";
        switch (prefsKey.hashCode()) {
            case -1480249367:
                str = PREFS_KEY_COMMUNITY;
                prefsKey.equals(str);
                break;
            case -1325774710:
                if (prefsKey.equals(PREFS_KEY_POST)) {
                    str2 = "global_post_search";
                }
                break;
            case -1006804125:
                str = PREFS_KEY_OTHERS;
                prefsKey.equals(str);
                break;
            case 3052376:
                str = "chat";
                prefsKey.equals(str);
                break;
            case 110546223:
                str = "topic";
                prefsKey.equals(str);
                break;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences(str2, 0);
        t.i(sharedPreferences, "getSharedPreferences(...)");
        this.prefs = sharedPreferences;
    }

    private final void save(Set<String> set) {
        if (set == null) {
            this.prefs.edit().remove(this.prefsKey).apply();
        } else {
            this.prefs.edit().putString(this.prefsKey, JacksonUtils.writeAsString(set)).apply();
        }
    }

    public final void addSearchKeyword(@Nullable String str) {
        if (str == null || StringUtils.isTrimEmpty(str)) {
            return;
        }
        String string = u.b1(str).toString();
        LinkedHashSet<String> historyList = getHistoryList();
        historyList.remove(string);
        historyList.add(string);
        LinkedHashSet<String> linkedHashSet = this.hashSet;
        Iterator<String> it = linkedHashSet != null ? linkedHashSet.iterator() : null;
        if (it != null) {
            for (int size = historyList.size() - 50; size > 0 && it.hasNext(); size--) {
                it.next();
                it.remove();
            }
        }
        save(historyList);
    }

    public final void clearSearchHistoryList() {
        LinkedHashSet<String> linkedHashSet = this.hashSet;
        if (linkedHashSet != null) {
            linkedHashSet.clear();
        }
        save(null);
    }

    @NotNull
    public final LinkedHashSet<String> getHistoryList() {
        ArrayList arrayList;
        if (this.hashSet == null) {
            ArrayList listAs = JacksonUtils.readListAs(this.prefs.getString(this.prefsKey, null), String.class);
            if (listAs != null) {
                arrayList = new ArrayList();
                for (Object obj : listAs) {
                    if (!StringUtils.isTrimEmpty((String) obj)) {
                        arrayList.add(obj);
                    }
                }
            } else {
                arrayList = new ArrayList();
            }
            this.hashSet = new LinkedHashSet<>(arrayList);
        }
        LinkedHashSet<String> linkedHashSet = this.hashSet;
        return linkedHashSet == null ? new LinkedHashSet<>() : linkedHashSet;
    }
}
