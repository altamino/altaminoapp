package com.meicam.sdk;

import android.content.Context;
import android.os.Looper;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class NvsStatisticsSender {
    private static String HTTPS_API_SET_STATISTICS = "https://api.meishesdk.com/statistics/index.php";
    private static final boolean NV_DEBUG = false;
    private static String NV_KEY_STATISTICS_APP_START_TIME = "NV_KEY_STATISTICS_APP_START_TIME";
    private static String NV_KEY_STATISTICS_INFO_CURRENT_DATE = "NV_KEY_STATISTICS_INFO_CURRENT_DATE";
    private static final int NV_STATISTICS_DAILY = 1;
    private static final int NV_STATISTICS_EVERY_START = 2;
    private static final int NV_STATISTICS_NEVER = 0;
    private static final String TAG = "Meicam";
    private Context m_context;
    private boolean m_isStatisticsPrivateInfo;
    private int m_statisticsFrequency;
    private Thread m_thread = new Thread(new Runnable() { // from class: com.meicam.sdk.NvsStatisticsSender.1
        @Override // java.lang.Runnable
        public void run() throws JSONException {
            Looper.prepare();
            NvsStatisticsSender.this.startSendStatistics();
            Looper.loop();
        }
    });

    public NvsStatisticsSender(Context context) {
        this.m_context = context;
    }

    public void sendStatistics(int i, boolean z) {
        this.m_statisticsFrequency = i;
        this.m_isStatisticsPrivateInfo = z;
        this.m_thread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSendStatistics() throws JSONException {
        if (this.m_statisticsFrequency == 0) {
            return;
        }
        Set<String> systemVariableStringSet = NvsSystemVariableManager.getSystemVariableStringSet(this.m_context, NV_KEY_STATISTICS_APP_START_TIME);
        HashSet hashSet = new HashSet();
        Iterator<String> it = systemVariableStringSet.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next());
        }
        NvsStatisticsInfo nvsStatisticsInfo = new NvsStatisticsInfo(this.m_context);
        hashSet.add(nvsStatisticsInfo.getStartTime());
        String systemVariableString = NvsSystemVariableManager.getSystemVariableString(this.m_context, NV_KEY_STATISTICS_INFO_CURRENT_DATE);
        if (systemVariableString.trim().equals(getCurrentDateString()) && this.m_statisticsFrequency == 1) {
            return;
        }
        if (systemVariableString.trim().equals(getCurrentDateString()) && this.m_statisticsFrequency == 2) {
            NvsSystemVariableManager.setSystemVariableStringSet(this.m_context, NV_KEY_STATISTICS_APP_START_TIME, hashSet);
            return;
        }
        HashSet hashSet2 = new HashSet();
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            hashSet2.add((String) it2.next());
        }
        Iterator it3 = hashSet.iterator();
        while (it3.hasNext()) {
            String str = (String) it3.next();
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("appId", nvsStatisticsInfo.getAppId());
                jSONObject.put("startTime", str);
                jSONObject.put("deviceId", nvsStatisticsInfo.getDeviceId());
                jSONObject.put("model", nvsStatisticsInfo.getModel());
                jSONObject.put("osType", nvsStatisticsInfo.getOsType());
                jSONObject.put("osVersion", nvsStatisticsInfo.getOsVersion());
                if (this.m_isStatisticsPrivateInfo) {
                    jSONObject.put("phoneNumber", nvsStatisticsInfo.getPhoneNumber());
                    ArrayList lngAndLat = nvsStatisticsInfo.getLngAndLat();
                    jSONObject.put("longitude", lngAndLat.get(0));
                    jSONObject.put("latitude", lngAndLat.get(1));
                }
                String string = jSONObject.toString();
                NvsHttpsRequest nvsHttpsRequest = new NvsHttpsRequest();
                HashMap map = new HashMap();
                map.put("command", "setAppStatistics");
                if (new JSONObject(nvsHttpsRequest.postHttpsRequest(HTTPS_API_SET_STATISTICS, map, string)).getInt("errNo") == 0) {
                    hashSet2.remove(str);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        NvsSystemVariableManager.setSystemVariableStringSet(this.m_context, NV_KEY_STATISTICS_APP_START_TIME, hashSet2);
        NvsSystemVariableManager.setSystemVariableString(this.m_context, NV_KEY_STATISTICS_INFO_CURRENT_DATE, getCurrentDateString());
    }

    private String getCurrentDateString() {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date(System.currentTimeMillis()));
    }
}
