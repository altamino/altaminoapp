package com.narvii.master.search;

import android.content.SharedPreferences;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: SearchPrefsHelper.kt */
/* loaded from: classes3.dex */
public final class SearchPrefsHelper {
    public static final Companion Companion = new Companion(null);
    public static final int MAX_SIZE = 50;
    public static final String PREFS_KEY_CHAT = "chat";
    public static final String PREFS_KEY_COMMUNITY = "community";
    public static final String PREFS_KEY_OTHERS = "others";
    public static final String PREFS_KEY_POST = "searchHistoryList";
    public static final String PREFS_KEY_STORY = "searchHistoryList9";
    public static final String PREFS_KEY_TOPIC = "topic";
    private LinkedHashSet<String> hashSet;
    private final SharedPreferences prefs;
    private final String prefsKey;

    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SearchPrefsHelper(android.content.Context r4, java.lang.String r5) {
        /*
            r3 = this;
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r0)
            java.lang.String r0 = "prefsKey"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r5, r0)
            r3.<init>()
            r3.prefsKey = r5
            java.lang.String r5 = r3.prefsKey
            int r0 = r5.hashCode()
            java.lang.String r1 = "global_post_search"
            java.lang.String r2 = "global_search"
            switch(r0) {
                case -1480249367: goto L3d;
                case -1325774710: goto L33;
                case -1006804125: goto L30;
                case 3052376: goto L2d;
                case 110546223: goto L26;
                case 1850657007: goto L1d;
                default: goto L1c;
            }
        L1c:
            goto L40
        L1d:
            java.lang.String r0 = "searchHistoryList9"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L40
            goto L3b
        L26:
            java.lang.String r0 = "topic"
        L28:
            boolean r5 = r5.equals(r0)
            goto L40
        L2d:
            java.lang.String r0 = "chat"
            goto L28
        L30:
            java.lang.String r0 = "others"
            goto L28
        L33:
            java.lang.String r0 = "searchHistoryList"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L40
        L3b:
            r2 = r1
            goto L40
        L3d:
            java.lang.String r0 = "community"
            goto L28
        L40:
            r5 = 0
            android.content.SharedPreferences r4 = r4.getSharedPreferences(r2, r5)
            java.lang.String r5 = "context.getSharedPrefere…me, Context.MODE_PRIVATE)"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, r5)
            r3.prefs = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.master.search.SearchPrefsHelper.<init>(android.content.Context, java.lang.String):void");
    }

    public final SharedPreferences getPrefs() {
        return this.prefs;
    }

    public final LinkedHashSet<String> getHashSet() {
        return this.hashSet;
    }

    public final void setHashSet(LinkedHashSet<String> linkedHashSet) {
        this.hashSet = linkedHashSet;
    }

    /* compiled from: SearchPrefsHelper.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final LinkedHashSet<String> getHistoryList() {
        ArrayList arrayList;
        if (this.hashSet == null) {
            ArrayList listAs = JacksonUtils.readListAs(this.prefs.getString(this.prefsKey, null), String.class);
            if (listAs == null) {
                arrayList = new ArrayList();
            } else {
                arrayList = new ArrayList();
                for (Object obj : listAs) {
                    if (!StringUtils.isTrimEmpty((String) obj)) {
                        arrayList.add(obj);
                    }
                }
            }
            this.hashSet = new LinkedHashSet<>(arrayList);
        }
        LinkedHashSet<String> linkedHashSet = this.hashSet;
        return linkedHashSet != null ? linkedHashSet : new LinkedHashSet<>();
    }

    public final void addSearchKeyword(String str) {
        if (str == null || StringUtils.isTrimEmpty(str)) {
            return;
        }
        String string = StringsKt__StringsKt.trim(str).toString();
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

    private final void save(Set<String> set) {
        if (set == null) {
            this.prefs.edit().remove(this.prefsKey).apply();
        } else {
            this.prefs.edit().putString(this.prefsKey, JacksonUtils.writeAsString(set)).apply();
        }
    }

    public final void clearSearchHistoryList() {
        LinkedHashSet<String> linkedHashSet = this.hashSet;
        if (linkedHashSet != null) {
            linkedHashSet.clear();
        }
        save(null);
    }
}
