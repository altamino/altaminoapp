package com.narvii.util.statistics;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.config.ConfigService;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes3.dex */
public class StatisticsServiceImpl implements StatisticsService {
    AccountService account;
    String appType;
    ConfigService config;
    NVContext context;
    Boolean emailActivated;
    SharedPreferences prefs;
    LinkedList<StatisticsEventBuilder> queue = new LinkedList<>();
    private final Runnable sendEvents = new Runnable() { // from class: com.narvii.util.statistics.StatisticsServiceImpl.1
        @Override // java.lang.Runnable
        public void run() {
            if (!StatisticsServiceImpl.this.queue.isEmpty()) {
                Collections.sort(StatisticsServiceImpl.this.queue, StatisticsEventBuilder.COMPARATOR);
            }
            while (!StatisticsServiceImpl.this.queue.isEmpty()) {
                StatisticsServiceImpl.this.logEvent(StatisticsServiceImpl.this.queue.removeFirst());
            }
        }
    };

    protected void logEvent(StatisticsEventBuilder statisticsEventBuilder) {
    }

    @Override // com.narvii.util.statistics.StatisticsService
    public StatisticsEventBuilder event(String str) {
        StatisticsEventBuilder statisticsEventBuilder = new StatisticsEventBuilder(str);
        Iterator<StatisticsEventBuilder> it = this.queue.iterator();
        while (it.hasNext()) {
            if (Utils.isEqualsNotNull(it.next().eventName, str)) {
                it.remove();
            }
        }
        this.queue.add(statisticsEventBuilder);
        Utils.handler.removeCallbacks(this.sendEvents);
        Utils.postDelayed(this.sendEvents, 100L);
        if (!TextUtils.isEmpty(this.appType)) {
            statisticsEventBuilder.param("App Type", this.appType);
        }
        return statisticsEventBuilder;
    }

    @Override // com.narvii.util.statistics.StatisticsService
    public void revenue(String str, double d) {
        Log.i("statistics", "revenue " + str + " $" + new DecimalFormat("0.00").format(d));
    }

    @Override // com.narvii.util.statistics.StatisticsService
    public void setDeviceProperty(String str, Object obj) {
        String string = this.prefs.getString("statistics_device_props", null);
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode(string);
        if (objectNodeCreateObjectNode == null) {
            objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        }
        if (obj == null) {
            objectNodeCreateObjectNode.remove(str);
        } else if (obj instanceof Number) {
            objectNodeCreateObjectNode.put(str, ((Number) obj).intValue());
        } else if (obj instanceof String) {
            objectNodeCreateObjectNode.put(str, (String) obj);
        } else {
            if (!(obj instanceof Boolean)) {
                throw new IllegalArgumentException();
            }
            objectNodeCreateObjectNode.put(str, ((Boolean) obj).booleanValue());
        }
        String string2 = objectNodeCreateObjectNode.size() != 0 ? objectNodeCreateObjectNode.toString() : null;
        if (Utils.isStringEquals(string2, string)) {
            return;
        }
        if (string2 == null) {
            this.prefs.edit().remove("statistics_device_props").apply();
        } else {
            this.prefs.edit().putString("statistics_device_props", string2).apply();
        }
    }

    public StatisticsServiceImpl(NVContext nVContext, String str) {
        this.context = nVContext;
        this.appType = str;
        this.config = (ConfigService) nVContext.getService("config");
        this.account = (AccountService) nVContext.getService("account");
        this.prefs = (SharedPreferences) nVContext.getService(IncubatorApplication.PREFS_SERVICE_KEY);
    }
}
