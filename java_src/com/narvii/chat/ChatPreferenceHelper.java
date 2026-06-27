package com.narvii.chat;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.narvii.app.NVContext;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public class ChatPreferenceHelper {
    private static final long ONE_DAY = 86400000;
    NVContext context;
    SharedPreferences welcomePrefs;

    public ChatPreferenceHelper(NVContext nVContext) {
        this.context = nVContext;
        this.welcomePrefs = nVContext.getContext().getSharedPreferences("chatWelcomePrefs", 0);
    }

    public void saveLastWelcomeMessageShowTime(String str, long j) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.welcomePrefs.edit().putLong(str, j).apply();
    }

    public long getLastWelcomeMessageShowTime(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        return this.welcomePrefs.getLong(str, 0L);
    }

    public void removeOverdueItems() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map<String, ?> all = this.welcomePrefs.getAll();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            String key = entry.getKey();
            if ((entry.getValue() instanceof Long) && jCurrentTimeMillis - ((Long) entry.getValue()).longValue() > 86400000) {
                arrayList.add(key);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.welcomePrefs.edit().remove((String) it.next()).apply();
        }
    }
}
