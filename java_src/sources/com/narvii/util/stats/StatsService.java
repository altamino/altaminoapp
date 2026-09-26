package com.narvii.util.stats;

import android.content.SharedPreferences;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import c.f.b.e.q5;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.lib.R;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.statistics.StatisticsService;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes7.dex */
public class StatsService {
    private static final int BUFFER_SIZE_LIMIT = 32;
    private AccountService account;
    private NVContext context;
    private boolean hasAccount;
    private final int pauseDuration;
    private final SharedPreferences prefs;
    private final int uploadInterval;
    private final HashMap<String, ApiRequest> runningRequests = new HashMap<>();
    private final ArrayList<Duration> buffer = new ArrayList<>();
    private final Runnable uploadTrigger = new Runnable() { // from class: com.narvii.util.stats.StatsService.1
        @Override // java.lang.Runnable
        public void run() {
            StatsService.this.flush();
            Utils.handler.removeCallbacks(this);
            Utils.postDelayed(this, StatsService.this.uploadInterval);
        }
    };
    private final ApiResponseListener uploadListener = new ApiResponseListener(ApiResponse.class) { // from class: com.narvii.util.stats.StatsService.2
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List list, String str, ApiResponse apiResponse, Throwable th) {
            String str2 = (String) apiRequest.tag();
            if (apiResponse != null) {
                StatsService.this.prefs.edit().remove(str2).apply();
            }
            StatsService.this.runningRequests.remove(str2);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) {
            String str = (String) apiRequest.tag();
            StatsService.this.prefs.edit().remove(str).apply();
            StatsService.this.runningRequests.remove(str);
        }
    };

    static class Duration {
        final int cid;
        int end;
        final int start;

        public String toString() {
            return this.cid + ": " + this.start + "-" + this.end + " (" + (this.end - this.start) + ")";
        }

        Duration(int i10, int i11) {
            this.cid = i10;
            this.start = i11;
        }
    }

    private Duration getLast() {
        if (this.buffer.size() == 0) {
            return null;
        }
        ArrayList<Duration> arrayList = this.buffer;
        return arrayList.get(arrayList.size() - 1);
    }

    public void clearAll() {
        this.prefs.edit().clear().commit();
        this.buffer.clear();
    }

    public void flush() {
        if (this.account == null) {
            this.account = (AccountService) this.context.getService("account");
        }
        boolean zHasAccount = this.account.hasAccount();
        this.hasAccount = zHasAccount;
        if (!zHasAccount) {
            clearAll();
            return;
        }
        SharedPreferences.Editor editorEdit = null;
        int iOptinAdsFlags = 0;
        int i10 = 0;
        while (!this.buffer.isEmpty()) {
            ArrayList<Duration> arrayList = this.buffer;
            ListIterator<Duration> listIterator = arrayList.listIterator(arrayList.size());
            LinkedList<Duration> linkedList = new LinkedList();
            int i11 = 0;
            while (listIterator.hasPrevious()) {
                Duration durationPrevious = listIterator.previous();
                int i12 = durationPrevious.cid;
                if (i12 == 0) {
                    listIterator.remove();
                } else {
                    if (i11 == 0) {
                        i11 = i12;
                    }
                    if (i12 == i11) {
                        listIterator.remove();
                        linkedList.addFirst(durationPrevious);
                    }
                }
            }
            if (linkedList.size() != 0 && i11 != 0) {
                ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
                for (Duration duration : linkedList) {
                    ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                    objectNodeCreateObjectNode.put("start", duration.start);
                    objectNodeCreateObjectNode.put("end", duration.end);
                    arrayNodeCreateArrayNode.add(objectNodeCreateObjectNode);
                    i10 += duration.end - duration.start;
                    Log.d("stats upload " + duration);
                }
                int i13 = ((Duration) linkedList.get(0)).start;
                ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
                objectNodeCreateObjectNode2.put("userActiveTimeChunkList", arrayNodeCreateArrayNode);
                iOptinAdsFlags = ((AccountService) this.context.getService("account")).optinAdsFlags();
                objectNodeCreateObjectNode2.put("optInAdsFlags", iOptinAdsFlags);
                objectNodeCreateObjectNode2.put("timezone", Utils.getTimeZoneInMin());
                String string = objectNodeCreateObjectNode2.toString();
                String strF = q5.f(string.getBytes(Utils.UTF_8), this.context.getContext().getString(R.string.rsc), Integer.parseInt(this.context.getContext().getString(R.string.rsv)));
                ObjectNode objectNodeCreateObjectNode3 = JacksonUtils.createObjectNode();
                objectNodeCreateObjectNode3.put(CmcdConfiguration.KEY_CONTENT_ID, i11);
                objectNodeCreateObjectNode3.put("time", i13);
                objectNodeCreateObjectNode3.put("raw", string);
                objectNodeCreateObjectNode3.put("sig", strF);
                if (editorEdit == null) {
                    editorEdit = this.prefs.edit();
                }
                editorEdit.putString("uats_" + i13 + "_" + i11, objectNodeCreateObjectNode3.toString());
            }
        }
        if (editorEdit != null) {
            editorEdit.apply();
            uploadAll();
        }
        if (iOptinAdsFlags == 0 || i10 <= 0) {
            return;
        }
        ((StatisticsService) this.context.getService("statistics")).event(null).userPropInc("Opt-in Ads Time", i10);
    }

    public int getCachedTime(int i10) {
        int i11 = 0;
        for (Duration duration : this.buffer) {
            if (duration.cid == i10) {
                i11 += duration.end - duration.start;
            }
        }
        return Math.min(i11, 300);
    }

    public void start() {
        if (this.account == null) {
            this.account = (AccountService) this.context.getService("account");
        }
        boolean zHasAccount = this.account.hasAccount();
        this.hasAccount = zHasAccount;
        if (zHasAccount) {
            uploadAll();
        }
        Utils.handler.removeCallbacks(this.uploadTrigger);
        Utils.postDelayed(this.uploadTrigger, this.uploadInterval);
    }

    public void stop() {
        Utils.handler.removeCallbacks(this.uploadTrigger);
        flush();
    }

    public void touchOrResume(int i10) {
        if (this.hasAccount) {
            int time = getTime();
            Duration last = getLast();
            if (last != null && last.cid == i10 && time >= last.start && last.end >= time) {
                last.end = time + this.pauseDuration;
                return;
            }
            if (last != null) {
                last.end = Math.min(last.end, Math.max(time, last.start + 1));
            }
            Duration duration = new Duration(i10, time);
            duration.end = time + this.pauseDuration;
            this.buffer.add(duration);
            if (this.buffer.size() == 32) {
                flush();
            }
        }
    }

    public void uploadAll() {
        ObjectNode objectNode;
        ArrayList<String> arrayList = new ArrayList(this.prefs.getAll().keySet());
        Collections.sort(arrayList);
        int time = getTime();
        SharedPreferences.Editor editorEdit = null;
        for (String str : arrayList) {
            if (str.startsWith("uats_") && this.runningRequests.get(str) == null) {
                ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode(this.prefs.getString(str, null));
                int iNodeInt = JacksonUtils.nodeInt(objectNodeCreateObjectNode, CmcdConfiguration.KEY_CONTENT_ID);
                int iNodeInt2 = JacksonUtils.nodeInt(objectNodeCreateObjectNode, "time");
                if (iNodeInt == 0 || iNodeInt2 > time || iNodeInt2 < time - InviteMembersFragment.SECOND_DAY) {
                    if (editorEdit == null) {
                        editorEdit = this.prefs.edit();
                    }
                    editorEdit.remove(str);
                } else {
                    try {
                        objectNode = (ObjectNode) new ObjectMapper().readTree(objectNodeCreateObjectNode.get("raw").asText());
                    } catch (IOException unused) {
                        objectNode = null;
                    }
                    ApiRequest.Builder builderSilent = ApiRequest.builder().silent();
                    builderSilent.post().communityId(iNodeInt).path("/community/stats/user-active-time");
                    builderSilent.body(objectNode).contentTypeJson();
                    builderSilent.tag(str);
                    ApiRequest apiRequestBuild = builderSilent.build();
                    ((ApiService) this.context.getService("api")).exec(apiRequestBuild, this.uploadListener);
                    this.runningRequests.put(str, apiRequestBuild);
                }
            }
        }
        if (editorEdit != null) {
            editorEdit.apply();
        }
    }

    public StatsService(NVContext nVContext, int i10, int i11) {
        this.context = nVContext;
        this.pauseDuration = i10;
        this.uploadInterval = i11;
        this.prefs = nVContext.getContext().getSharedPreferences("stattime", 0);
    }

    private int getTime() {
        return (int) (System.currentTimeMillis() / 1000);
    }

    public void pause(int i10) {
        int time = getTime();
        Duration last = getLast();
        if (last != null && last.cid == i10 && last.end > time) {
            last.end = Math.max(time, last.start + 1);
        }
    }
}
