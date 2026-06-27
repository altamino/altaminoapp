package com.narvii.util.stats;

import android.content.SharedPreferences;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.lib.R;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.DBAminoLightHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NativeHelper;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
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
        public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
            String str = (String) apiRequest.tag();
            StatsService.this.prefs.edit().remove(str).apply();
            StatsService.this.runningRequests.remove(str);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List list, String str, ApiResponse apiResponse, Throwable th) {
            String str2 = (String) apiRequest.tag();
            if (apiResponse != null) {
                StatsService.this.prefs.edit().remove(str2).apply();
            }
            StatsService.this.runningRequests.remove(str2);
        }
    };

    /* loaded from: classes3.dex */
    static class Duration {
        final int cid;
        int end;
        final int start;

        Duration(int i, int i2) {
            this.cid = i;
            this.start = i2;
        }

        public String toString() {
            return this.cid + ": " + this.start + "-" + this.end + " (" + (this.end - this.start) + ")";
        }
    }

    public StatsService(NVContext nVContext, int i, int i2) {
        this.context = nVContext;
        this.pauseDuration = i;
        this.uploadInterval = i2;
        this.prefs = nVContext.getContext().getSharedPreferences("stattime", 0);
    }

    private Duration getLast() {
        if (this.buffer.size() == 0) {
            return null;
        }
        return this.buffer.get(r0.size() - 1);
    }

    private int getTime() {
        return (int) (System.currentTimeMillis() / 1000);
    }

    public void touchOrResume(int i) {
        if (this.hasAccount) {
            int time = getTime();
            Duration last = getLast();
            if (last == null || last.cid != i || time < last.start || last.end < time) {
                if (last != null) {
                    last.end = Math.min(last.end, Math.max(time, last.start + 1));
                }
                Duration duration = new Duration(i, time);
                duration.end = time + this.pauseDuration;
                this.buffer.add(duration);
                if (this.buffer.size() == 32) {
                    flush();
                    return;
                }
                return;
            }
            last.end = time + this.pauseDuration;
        }
    }

    public void pause(int i) {
        int time = getTime();
        Duration last = getLast();
        if (last == null || last.cid != i || last.end <= time) {
            return;
        }
        last.end = Math.max(time, last.start + 1);
    }

    public void start() {
        if (this.account == null) {
            this.account = (AccountService) this.context.getService("account");
        }
        this.hasAccount = this.account.hasAccount();
        if (this.hasAccount) {
            uploadAll();
        }
        Utils.handler.removeCallbacks(this.uploadTrigger);
        Utils.postDelayed(this.uploadTrigger, this.uploadInterval);
    }

    public void stop() {
        if (DBAminoLightHelper.getBoolean("stop_send_active", false)) {
            Utils.handler.removeCallbacks(this.uploadTrigger);
        }
        flush();
    }

    public void flush() {
        if (this.account == null) {
            this.account = (AccountService) this.context.getService("account");
        }
        this.hasAccount = this.account.hasAccount();
        if (!this.hasAccount) {
            clearAll();
            return;
        }
        SharedPreferences.Editor editorEdit = null;
        int i = 0;
        while (!this.buffer.isEmpty()) {
            ArrayList<Duration> arrayList = this.buffer;
            ListIterator<Duration> listIterator = arrayList.listIterator(arrayList.size());
            LinkedList linkedList = new LinkedList();
            int i2 = 0;
            while (listIterator.hasPrevious()) {
                Duration durationPrevious = listIterator.previous();
                int i3 = durationPrevious.cid;
                if (i3 == 0) {
                    listIterator.remove();
                } else {
                    if (i2 == 0) {
                        i2 = i3;
                    }
                    if (durationPrevious.cid == i2) {
                        listIterator.remove();
                        linkedList.addFirst(durationPrevious);
                    }
                }
            }
            if (linkedList.size() != 0 && i2 != 0) {
                ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
                Iterator it = linkedList.iterator();
                while (it.hasNext()) {
                    Duration duration = (Duration) it.next();
                    ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                    objectNodeCreateObjectNode.put(TtmlNode.START, duration.start);
                    objectNodeCreateObjectNode.put(TtmlNode.END, duration.end);
                    arrayNodeCreateArrayNode.add(objectNodeCreateObjectNode);
                    i += duration.end - duration.start;
                    Log.d("stats upload " + duration);
                }
                int i4 = ((Duration) linkedList.get(0)).start;
                ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
                objectNodeCreateObjectNode2.put("userActiveTimeChunkList", arrayNodeCreateArrayNode);
                objectNodeCreateObjectNode2.put("optInAdsFlags", ((AccountService) this.context.getService("account")).optinAdsFlags());
                objectNodeCreateObjectNode2.put("timestamp", System.currentTimeMillis());
                objectNodeCreateObjectNode2.put("timezone", Utils.getTimeZoneInMin());
                String string = objectNodeCreateObjectNode2.toString();
                String strS = NativeHelper.S(string.getBytes(Utils.UTF_8), this.context.getContext().getString(R.string.reqssec), Integer.parseInt(this.context.getContext().getString(R.string.reqsver)));
                ObjectNode objectNodeCreateObjectNode3 = JacksonUtils.createObjectNode();
                objectNodeCreateObjectNode3.put("cid", i2);
                objectNodeCreateObjectNode3.put("time", i4);
                objectNodeCreateObjectNode3.put("raw", string);
                objectNodeCreateObjectNode3.put("sig", strS);
                if (editorEdit == null) {
                    editorEdit = this.prefs.edit();
                }
                editorEdit.putString("uats_" + i4 + "_" + i2, objectNodeCreateObjectNode3.toString());
            }
        }
        if (editorEdit != null) {
            editorEdit.apply();
            uploadAll();
        }
    }

    public void clearAll() {
        this.prefs.edit().clear().commit();
        this.buffer.clear();
    }

    public void uploadAll() {
        ArrayList arrayList = new ArrayList(this.prefs.getAll().keySet());
        Collections.sort(arrayList);
        int time = getTime();
        Iterator it = arrayList.iterator();
        SharedPreferences.Editor editorEdit = null;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str.startsWith("uats_") && this.runningRequests.get(str) == null) {
                ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode(this.prefs.getString(str, null));
                int iNodeInt = JacksonUtils.nodeInt(objectNodeCreateObjectNode, "cid");
                int iNodeInt2 = JacksonUtils.nodeInt(objectNodeCreateObjectNode, "time");
                if (iNodeInt == 0 || iNodeInt2 > time || iNodeInt2 < time - InviteMembersFragment.SECOND_DAY) {
                    if (editorEdit == null) {
                        editorEdit = this.prefs.edit();
                    }
                    editorEdit.remove(str);
                } else {
                    String strAsText = objectNodeCreateObjectNode.get("raw").asText();
                    String strAsText2 = objectNodeCreateObjectNode.get("sig").asText();
                    ApiRequest.Builder builderSilent = ApiRequest.builder().silent();
                    builderSilent.post().communityId(iNodeInt).path("/community/stats/user-active-time");
                    builderSilent.body(strAsText).headers("NDC-MSG-SIG", strAsText2).contentTypeJson();
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

    public int getCachedTime(int i) {
        Iterator<Duration> it = this.buffer.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Duration next = it.next();
            if (next.cid == i) {
                i2 += next.end - next.start;
            }
        }
        return Math.min(i2, 300);
    }
}
