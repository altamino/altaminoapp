package com.narvii.livelayer.ws;

import android.os.SystemClock;
import android.text.TextUtils;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.community.CommunityService;
import com.narvii.model.Community;
import com.narvii.model.story.StoryTopic;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.EventDispatcher;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.ws.WsError;
import com.narvii.util.ws.WsMessage;
import com.narvii.util.ws.WsRequest;
import com.narvii.util.ws.WsService;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class LiveLayerWsService implements WsService.WsListener {
    private static final Pattern PATH_X = Pattern.compile("x(\\d+)");
    FilterHelper filterHelper;
    NVContext nvContext;
    WsService wsService;
    public HashMap<String, Long> reportActiveTimeMap = new HashMap<>();
    public final HashMap<String, EventDispatcher<LiveLayerEventListener>> liveLayerEventMap = new HashMap<>();
    public final EventDispatcher<WsService.WsListener> wsListenerEventDispatcher = new EventDispatcher<>();

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onConnect(WsService wsService) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsError(WsService wsService, WsError wsError) {
    }

    public LiveLayerWsService(NVContext nVContext) {
        this.nvContext = nVContext;
        this.wsService = (WsService) nVContext.getService("ws");
        this.filterHelper = new FilterHelper(nVContext);
        this.wsService.listeners.addListener(this);
    }

    private void subscribeTopic(int i, String str, int i2, Callback callback) {
        if (str == null) {
            return;
        }
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = i2;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i);
        objectNodeCreateObjectNode.put("topic", str);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = callback;
        this.wsService.sendRequest(wsRequest);
    }

    private boolean isUserLoggedIn(int i) {
        return ((AccountService) this.nvContext.getService("account")).getUserProfile() != null;
    }

    private void reportActiveStatus(int i, List<String> list, String str, HashMap<String, Object> map, int i2, Callback callback) {
        String str2;
        String str3;
        HashMap map2 = map;
        if (str == null) {
            return;
        }
        if (list != null) {
            Collections.sort(list);
        }
        String str4 = null;
        if (map2 == null || map.isEmpty()) {
            str2 = null;
        } else {
            str4 = (String) map2.remove("eventSource");
            str2 = (String) map2.remove("eventOrigin");
        }
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        if (!CollectionUtils.isEmpty(list)) {
            objectNodeCreateObjectNode.put("actions", JacksonUtils.DEFAULT_MAPPER.valueToTree(list));
        }
        objectNodeCreateObjectNode.put("target", str);
        if (map2 != null && !map.isEmpty()) {
            objectNodeCreateObjectNode.put("params", JacksonUtils.DEFAULT_MAPPER.valueToTree(map2));
        }
        String string = objectNodeCreateObjectNode.toString();
        if (i2 == 304) {
            str3 = "eventOrigin";
            if (this.reportActiveTimeMap.size() > 1000) {
                Log.e("live layer", "the size of report active extraEventParams is too big");
                this.reportActiveTimeMap.clear();
            }
            this.reportActiveTimeMap.put(string, Long.valueOf(SystemClock.elapsedRealtime()));
        } else {
            str3 = "eventOrigin";
            if (i2 == 306) {
                if (this.reportActiveTimeMap.containsKey(string)) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime() - this.reportActiveTimeMap.get(string).longValue();
                    this.reportActiveTimeMap.remove(string);
                    if (map2 == null) {
                        map2 = new HashMap();
                    }
                    map2.put("duration", Long.valueOf(jElapsedRealtime));
                } else {
                    Log.w("live layer", "cannot find active time when report inactive " + string);
                }
            }
        }
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = i2;
        ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
        if (!CollectionUtils.isEmpty(list)) {
            objectNodeCreateObjectNode2.put("actions", JacksonUtils.DEFAULT_MAPPER.valueToTree(list));
        }
        objectNodeCreateObjectNode2.put("target", str);
        objectNodeCreateObjectNode2.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i);
        if (str4 != null) {
            objectNodeCreateObjectNode2.put("eventSource", str4);
        }
        if (str2 != null) {
            objectNodeCreateObjectNode2.put(str3, str2);
        }
        if (map2 == null) {
            map2 = new HashMap();
        }
        Community community = ((CommunityService) this.nvContext.getService("community")).getCommunity(i);
        if (community != null && community.userAddedTopicList != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<StoryTopic> it = community.userAddedTopicList.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(it.next().topicId));
            }
            map2.put("topicIds", arrayList);
        }
        if (map2 != null && !map2.isEmpty()) {
            objectNodeCreateObjectNode2.put("params", JacksonUtils.DEFAULT_MAPPER.valueToTree(map2));
            map2.remove("duration");
        }
        wsRequest.object = objectNodeCreateObjectNode2;
        wsRequest.callback = callback;
        this.wsService.sendRequest(wsRequest);
    }

    public void registerWsListener(WsService.WsListener wsListener) {
        this.wsListenerEventDispatcher.addListener(wsListener);
    }

    public void unregisterWsListener(WsService.WsListener wsListener) {
        this.wsListenerEventDispatcher.removeListener(wsListener);
    }

    public void reportActive(int i, List<String> list, String str, HashMap<String, Object> map) {
        reportActiveStatus(i, list, str, map, 304, null);
    }

    public void reportInactive(int i, List<String> list, String str, HashMap<String, Object> map) {
        reportActiveStatus(i, list, str, map, 306, null);
    }

    public void subscribe(int i, String str, LiveLayerEventListener liveLayerEventListener) {
        EventDispatcher<LiveLayerEventListener> eventDispatcher = this.liveLayerEventMap.get(str);
        if (eventDispatcher == null || eventDispatcher.isEmpty()) {
            subscribeTopic(i, str, 300, null);
        }
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
            this.liveLayerEventMap.put(str, eventDispatcher);
        }
        eventDispatcher.addListener(liveLayerEventListener);
    }

    public void unsubscribe(int i, String str, LiveLayerEventListener liveLayerEventListener) {
        EventDispatcher<LiveLayerEventListener> eventDispatcher = this.liveLayerEventMap.get(str);
        if (eventDispatcher != null) {
            eventDispatcher.removeListener(liveLayerEventListener);
        }
        if (eventDispatcher == null || eventDispatcher.isEmpty()) {
            subscribeTopic(i, str, 302, null);
        }
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsMessage(WsService wsService, WsMessage wsMessage) {
        if (wsMessage == null) {
            return;
        }
        int i = wsMessage.type;
        if (i == 400 || i == 401) {
            handleLiveLayerEventMessage(wsMessage);
        }
    }

    private void handleLiveLayerEventMessage(WsMessage wsMessage) {
        final LiveLayerEventMessage liveLayerEventMessage;
        try {
            liveLayerEventMessage = (LiveLayerEventMessage) JacksonUtils.DEFAULT_MAPPER.treeToValue(wsMessage.object, LiveLayerEventMessage.class);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            liveLayerEventMessage = null;
        }
        if (liveLayerEventMessage == null) {
            return;
        }
        if (liveLayerEventMessage.ndcId == -1) {
            String str = liveLayerEventMessage.topic;
            if (!TextUtils.isEmpty(str)) {
                String[] strArrSplit = str.split(":");
                if (strArrSplit.length >= 2) {
                    Matcher matcher = PATH_X.matcher(strArrSplit[1]);
                    if (matcher.matches()) {
                        try {
                            liveLayerEventMessage.ndcId = Integer.parseInt(matcher.group(1));
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        }
        if (liveLayerEventMessage.ndcId == -1) {
            Log.e(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, "ndcId of live layer message is not set");
            return;
        }
        EventDispatcher<LiveLayerEventListener> eventDispatcher = this.liveLayerEventMap.get(liveLayerEventMessage.topic);
        if (eventDispatcher == null || CollectionUtils.isEmpty(this.filterHelper.filter(liveLayerEventMessage.userProfileList))) {
            return;
        }
        int i = wsMessage.type;
        if (i == 400) {
            eventDispatcher.dispatch(new Callback() { // from class: com.narvii.livelayer.ws.-$$Lambda$LiveLayerWsService$3jOEGGzbbl1iZ4unK0vJu7U9FQo
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    LiveLayerEventMessage liveLayerEventMessage2 = liveLayerEventMessage;
                    ((LiveLayerEventListener) obj).onUserJoined(liveLayerEventMessage2.topic, liveLayerEventMessage2.userProfileList, liveLayerEventMessage2.userProfileCount);
                }
            });
        } else {
            if (i != 401) {
                return;
            }
            eventDispatcher.dispatch(new Callback() { // from class: com.narvii.livelayer.ws.-$$Lambda$LiveLayerWsService$pmss3DF12nhVcOeaZxK2c1bCbcY
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    LiveLayerEventMessage liveLayerEventMessage2 = liveLayerEventMessage;
                    ((LiveLayerEventListener) obj).onUserLeft(liveLayerEventMessage2.topic, liveLayerEventMessage2.userProfileList, liveLayerEventMessage2.userProfileCount);
                }
            });
        }
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onDisconnect(final WsService wsService, final Throwable th) {
        this.liveLayerEventMap.clear();
        this.wsListenerEventDispatcher.dispatch(new Callback() { // from class: com.narvii.livelayer.ws.-$$Lambda$LiveLayerWsService$lkY-lDbZSxoBVH7T_M4ybvC8A9A
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((WsService.WsListener) obj).onDisconnect(wsService, th);
            }
        });
    }
}
