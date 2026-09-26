package com.narvii.livelayer.ws;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.community.CommunityService;
import com.narvii.master.search.SearchPrefsHelper;
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

/* JADX INFO: loaded from: classes8.dex */
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
        int i10 = wsMessage.type;
        if (i10 == 400) {
            eventDispatcher.dispatch(new Callback() { // from class: com.narvii.livelayer.ws.b
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    LiveLayerWsService.lambda$handleLiveLayerEventMessage$0(liveLayerEventMessage, (LiveLayerEventListener) obj);
                }
            });
        } else {
            if (i10 != 401) {
                return;
            }
            eventDispatcher.dispatch(new Callback() { // from class: com.narvii.livelayer.ws.c
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    LiveLayerWsService.lambda$handleLiveLayerEventMessage$1(liveLayerEventMessage, (LiveLayerEventListener) obj);
                }
            });
        }
    }

    private boolean isUserLoggedIn(int i10) {
        return ((AccountService) this.nvContext.getService("account")).getUserProfile() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handleLiveLayerEventMessage$0(LiveLayerEventMessage liveLayerEventMessage, LiveLayerEventListener liveLayerEventListener) {
        liveLayerEventListener.onUserJoined(liveLayerEventMessage.topic, liveLayerEventMessage.userProfileList, liveLayerEventMessage.userProfileCount);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handleLiveLayerEventMessage$1(LiveLayerEventMessage liveLayerEventMessage, LiveLayerEventListener liveLayerEventListener) {
        liveLayerEventListener.onUserLeft(liveLayerEventMessage.topic, liveLayerEventMessage.userProfileList, liveLayerEventMessage.userProfileCount);
    }

    private void reportActiveStatus(int i10, List<String> list, String str, HashMap<String, Object> map, int i11, Callback callback) {
        String str2;
        String str3;
        String str4;
        HashMap map2 = map;
        if (str == null) {
            return;
        }
        if (list != null) {
            Collections.sort(list);
        }
        if (map2 == null || map.isEmpty()) {
            str2 = null;
            str3 = null;
        } else {
            str2 = (String) map2.remove("eventSource");
            str3 = (String) map2.remove("eventOrigin");
        }
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        if (!CollectionUtils.isEmpty(list)) {
            objectNodeCreateObjectNode.put("actions", JacksonUtils.DEFAULT_MAPPER.valueToTree(list));
        }
        objectNodeCreateObjectNode.put(TypedValues.AttributesType.S_TARGET, str);
        if (map2 != null && !map.isEmpty()) {
            objectNodeCreateObjectNode.put("params", JacksonUtils.DEFAULT_MAPPER.valueToTree(map2));
        }
        String string = objectNodeCreateObjectNode.toString();
        if (i11 == 304) {
            str4 = "eventOrigin";
            if (this.reportActiveTimeMap.size() > 1000) {
                Log.e("live layer", "the size of report active extraEventParams is too big");
                this.reportActiveTimeMap.clear();
            }
            this.reportActiveTimeMap.put(string, Long.valueOf(SystemClock.elapsedRealtime()));
        } else {
            str4 = "eventOrigin";
            if (i11 == 306) {
                if (this.reportActiveTimeMap.containsKey(string)) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime() - this.reportActiveTimeMap.get(string).longValue();
                    this.reportActiveTimeMap.remove(string);
                    if (map2 == null) {
                        map2 = new HashMap();
                    }
                    map2.put(TypedValues.TransitionType.S_DURATION, Long.valueOf(jElapsedRealtime));
                } else {
                    Log.w("live layer", "cannot find active time when report inactive " + string);
                }
            }
        }
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = i11;
        ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
        if (!CollectionUtils.isEmpty(list)) {
            objectNodeCreateObjectNode2.put("actions", JacksonUtils.DEFAULT_MAPPER.valueToTree(list));
        }
        objectNodeCreateObjectNode2.put(TypedValues.AttributesType.S_TARGET, str);
        objectNodeCreateObjectNode2.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i10);
        if (str2 != null) {
            objectNodeCreateObjectNode2.put("eventSource", str2);
        }
        if (str3 != null) {
            objectNodeCreateObjectNode2.put(str4, str3);
        }
        if (map2 == null) {
            map2 = new HashMap();
        }
        Community community = ((CommunityService) this.nvContext.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(i10);
        if (community != null && community.userAddedTopicList != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<StoryTopic> it = community.userAddedTopicList.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(it.next().topicId));
            }
            map2.put("topicIds", arrayList);
        }
        if (!map2.isEmpty()) {
            objectNodeCreateObjectNode2.put("params", JacksonUtils.DEFAULT_MAPPER.valueToTree(map2));
            map2.remove(TypedValues.TransitionType.S_DURATION);
        }
        wsRequest.object = objectNodeCreateObjectNode2;
        wsRequest.callback = callback;
        this.wsService.sendRequest(wsRequest);
    }

    private void subscribeTopic(int i10, String str, int i11, Callback callback) {
        if (str == null) {
            return;
        }
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = i11;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i10);
        objectNodeCreateObjectNode.put("topic", str);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = callback;
        this.wsService.sendRequest(wsRequest);
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onDisconnect(final WsService wsService, final Throwable th) {
        this.liveLayerEventMap.clear();
        this.wsListenerEventDispatcher.dispatch(new Callback() { // from class: com.narvii.livelayer.ws.a
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((WsService.WsListener) obj).onDisconnect(wsService, th);
            }
        });
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsMessage(WsService wsService, WsMessage wsMessage) {
        if (wsMessage == null) {
            return;
        }
        int i10 = wsMessage.type;
        if (i10 == 400 || i10 == 401) {
            handleLiveLayerEventMessage(wsMessage);
        }
    }

    public void registerWsListener(WsService.WsListener wsListener) {
        this.wsListenerEventDispatcher.addListener(wsListener);
    }

    public void reportActive(int i10, List<String> list, String str, HashMap<String, Object> map) {
        reportActiveStatus(i10, list, str, map, 304, null);
    }

    public void reportInactive(int i10, List<String> list, String str, HashMap<String, Object> map) {
        reportActiveStatus(i10, list, str, map, 306, null);
    }

    public void subscribe(int i10, String str, LiveLayerEventListener liveLayerEventListener) {
        EventDispatcher<LiveLayerEventListener> eventDispatcher = this.liveLayerEventMap.get(str);
        if (eventDispatcher == null || eventDispatcher.isEmpty()) {
            subscribeTopic(i10, str, 300, null);
        }
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
            this.liveLayerEventMap.put(str, eventDispatcher);
        }
        eventDispatcher.addListener(liveLayerEventListener);
    }

    public void unregisterWsListener(WsService.WsListener wsListener) {
        this.wsListenerEventDispatcher.removeListener(wsListener);
    }

    public void unsubscribe(int i10, String str, LiveLayerEventListener liveLayerEventListener) {
        EventDispatcher<LiveLayerEventListener> eventDispatcher = this.liveLayerEventMap.get(str);
        if (eventDispatcher != null) {
            eventDispatcher.removeListener(liveLayerEventListener);
        }
        if (eventDispatcher == null || eventDispatcher.isEmpty()) {
            subscribeTopic(i10, str, 302, null);
        }
    }

    public LiveLayerWsService(NVContext nVContext) {
        this.nvContext = nVContext;
        this.wsService = (WsService) nVContext.getService("ws");
        this.filterHelper = new FilterHelper(nVContext);
        this.wsService.listeners.addListener(this);
    }
}
