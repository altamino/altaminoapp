package com.narvii.chat.signalling;

import android.content.Intent;
import android.os.SystemClock;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.ws.WsError;
import com.narvii.util.ws.WsMessage;
import com.narvii.util.ws.WsRequest;
import com.narvii.util.ws.WsService;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class SignallingService implements WsService.WsListener {
    public static final int CHANNEL_TYPE_AUDIO = 1;
    public static final int CHANNEL_TYPE_AVATAR = 3;
    public static final int CHANNEL_TYPE_NONE = 0;
    public static final int CHANNEL_TYPE_SCREEN_ROOM = 5;
    public static final int CHANNEL_TYPE_VIDEO = 4;
    public static final int CONNECTION_LOST_TIMEOUT = 300000;
    private static final Tag DONE = new Tag("done");
    public static final int JOIN_ROLE_AUDIENCE = 2;
    public static final int JOIN_ROLE_GUEST = 0;
    public static final int JOIN_ROLE_GUEST_AUDIENCE = 3;
    public static final int JOIN_ROLE_PRESENTER = 1;
    public static final int PING_SERVER_INTERVAL = 60000;
    NVContext context;
    String keepAliveThreadId;
    WsService ws;
    public final EventDispatcher<SignallingListener> listeners = new EventDispatcher<>();
    final ArrayList<SignallingChannel> channels = new ArrayList<>();
    final Runnable checkKeepAlive = new Runnable() { // from class: com.narvii.chat.signalling.SignallingService.1
        @Override // java.lang.Runnable
        public void run() {
            SignallingService signallingService = SignallingService.this;
            signallingService.ws.setKeepAlive(signallingService.getChannelByThread(signallingService.keepAliveThreadId) != null);
        }
    };
    private final Runnable lostConnectionTimeout = new Runnable() { // from class: com.narvii.chat.signalling.SignallingService.19
        @Override // java.lang.Runnable
        public void run() {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            ArrayList arrayList = new ArrayList();
            Iterator<SignallingChannel> it = SignallingService.this.channels.iterator();
            while (it.hasNext()) {
                SignallingChannel next = it.next();
                long j = next.lostConnectionTime;
                if (j != 0 && j + 300000 < jElapsedRealtime) {
                    arrayList.add(next);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                final SignallingChannel signallingChannel = (SignallingChannel) it2.next();
                Log.w("unjoin thread channel due to connection lost timeout: " + signallingChannel.threadId);
                SignallingService.this.channels.remove(signallingChannel);
                SignallingService.this.listeners.dispatch(new Callback<SignallingListener>() { // from class: com.narvii.chat.signalling.SignallingService.19.1
                    @Override // com.narvii.util.Callback
                    public void call(SignallingListener signallingListener) {
                        signallingListener.onChannelListChanged(SignallingService.this, signallingChannel, false);
                    }
                });
            }
        }
    };

    public SignallingService(NVContext nVContext) {
        this.context = nVContext;
        this.ws = (WsService) nVContext.getService("ws");
        this.ws.listeners.addListener(this);
    }

    public String getKeepAliveThreadId() {
        return this.keepAliveThreadId;
    }

    public void setKeepAliveThreadId(String str) {
        this.keepAliveThreadId = str;
        Utils.handler.removeCallbacks(this.checkKeepAlive);
        Utils.handler.postDelayed(this.checkKeepAlive, 400L);
    }

    public void leaveAllThreads(boolean z) {
        Iterator it = new ArrayList(this.channels).iterator();
        while (it.hasNext()) {
            SignallingChannel signallingChannel = (SignallingChannel) it.next();
            if (z || !Utils.isEqualsNotNull(signallingChannel.threadId, this.keepAliveThreadId)) {
                if (this.ws.isConnected()) {
                    leaveThread(signallingChannel.ndcId, signallingChannel.threadId, null);
                }
                this.channels.remove(signallingChannel);
            }
        }
    }

    public Collection<SignallingChannel> channelList() {
        return this.channels;
    }

    public SignallingChannel getChannelByName(String str) {
        Iterator<SignallingChannel> it = this.channels.iterator();
        while (it.hasNext()) {
            SignallingChannel next = it.next();
            if (Utils.isEqualsNotNull(next.channelName, str)) {
                return next;
            }
        }
        return null;
    }

    public SignallingChannel getChannelByThread(String str) {
        Iterator<SignallingChannel> it = this.channels.iterator();
        while (it.hasNext()) {
            SignallingChannel next = it.next();
            if (Utils.isEqualsNotNull(next.threadId, str)) {
                return next;
            }
        }
        return null;
    }

    public SignallingChannel getChannelByThread(int i, String str) {
        Iterator<SignallingChannel> it = this.channels.iterator();
        while (it.hasNext()) {
            SignallingChannel next = it.next();
            if (next.ndcId == i && Utils.isEqualsNotNull(next.threadId, str)) {
                return next;
            }
        }
        return null;
    }

    public void joinThread(final int i, final String str, final Callback callback) {
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 100;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i);
        objectNodeCreateObjectNode.put("threadId", str);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = new Callback() { // from class: com.narvii.chat.signalling.SignallingService.2
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (obj instanceof WsMessage) {
                    WsMessage wsMessage = (WsMessage) obj;
                    final SignallingChannel signallingChannelRespJoin = SignallingService.this.respJoin(i, str, wsMessage);
                    wsMessage.tag = SignallingService.DONE;
                    WsError wsError = SignallingService.this.getWsError(wsMessage);
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        if (wsError == null) {
                            callback2.call(signallingChannelRespJoin);
                        } else {
                            callback2.call(wsError);
                        }
                    }
                    SignallingService.this.listeners.dispatch(new Callback<SignallingListener>() { // from class: com.narvii.chat.signalling.SignallingService.2.1
                        @Override // com.narvii.util.Callback
                        public void call(SignallingListener signallingListener) {
                            signallingListener.onChannelListChanged(SignallingService.this, signallingChannelRespJoin, true);
                        }
                    });
                    Utils.post(SignallingService.this.checkKeepAlive);
                    return;
                }
                Callback callback3 = callback;
                if (callback3 != null) {
                    callback3.call(obj);
                }
            }
        };
        this.ws.sendRequest(wsRequest);
    }

    SignallingChannel respJoin(int i, String str, WsMessage wsMessage) {
        SignallingChannel channelByThread = getChannelByThread(i, str);
        if (channelByThread != null) {
            return channelByThread;
        }
        SignallingChannel signallingChannel = new SignallingChannel(i, str);
        this.channels.add(signallingChannel);
        return signallingChannel;
    }

    public void sendRemoveFromPresenter(final int i, final String str, String str2, final Callback callback) {
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 126;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i);
        objectNodeCreateObjectNode.put("threadId", str);
        objectNodeCreateObjectNode.put("joinRole", 2);
        objectNodeCreateObjectNode.put("targetUid", str2);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = new Callback() { // from class: com.narvii.chat.signalling.SignallingService.3
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (obj instanceof WsMessage) {
                    WsError wsError = SignallingService.this.getWsError((WsMessage) obj);
                    SignallingChannel channelByThread = SignallingService.this.getChannelByThread(i, str);
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        if (wsError == null) {
                            callback2.call(channelByThread);
                            return;
                        } else {
                            callback2.call(wsError);
                            return;
                        }
                    }
                    return;
                }
                Callback callback3 = callback;
                if (callback3 != null) {
                    callback3.call(obj);
                }
            }
        };
        this.ws.sendRequest(wsRequest);
    }

    public void updateThreadJoinRole(final int i, final String str, final int i2, final Callback callback) {
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 112;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i);
        objectNodeCreateObjectNode.put("threadId", str);
        objectNodeCreateObjectNode.put("joinRole", i2);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = new Callback() { // from class: com.narvii.chat.signalling.SignallingService.4
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (obj instanceof WsMessage) {
                    WsMessage wsMessage = (WsMessage) obj;
                    SignallingChannel signallingChannelRespUpdateJoinRole = SignallingService.this.respUpdateJoinRole(i, str, i2, wsMessage);
                    WsError wsError = SignallingService.this.getWsError(wsMessage);
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        if (wsError == null) {
                            callback2.call(signallingChannelRespUpdateJoinRole);
                            return;
                        } else {
                            callback2.call(wsError);
                            return;
                        }
                    }
                    return;
                }
                Callback callback3 = callback;
                if (callback3 != null) {
                    callback3.call(obj);
                }
            }
        };
        this.ws.sendRequest(wsRequest);
    }

    SignallingChannel respUpdateJoinRole(int i, String str, int i2, WsMessage wsMessage) {
        SignallingChannel channelByThread = getChannelByThread(i, str);
        if (channelByThread == null) {
            channelByThread = new SignallingChannel(i, str);
        }
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(wsMessage.object, "exception");
        WsError wsError = jsonNodeNodePath != null ? (WsError) JacksonUtils.readAs(jsonNodeNodePath.toString(), WsError.class) : null;
        if (wsError != null) {
            if (!TextUtils.isEmpty(wsError.message) && wsError.code != 102) {
                NVToast.makeText(this.context.getContext(), wsError.message, 1).show();
            }
            return channelByThread;
        }
        JsonNode jsonNodeNodePath2 = JacksonUtils.nodePath(wsMessage.object, GlobalProfileFragment.KEY_USER);
        ChannelUser channelUser = jsonNodeNodePath2 != null ? (ChannelUser) JacksonUtils.readAs(jsonNodeNodePath2.toString(), ChannelUser.class) : null;
        if (channelUser != null) {
            i2 = channelUser.joinRole;
        }
        channelByThread.joinRole = i2;
        return channelByThread;
    }

    public void updateThreadChannelType(final int i, final String str, final int i2, final Callback callback) {
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 108;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i);
        objectNodeCreateObjectNode.put("threadId", str);
        objectNodeCreateObjectNode.put("channelType", i2);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = new Callback() { // from class: com.narvii.chat.signalling.SignallingService.5
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (obj instanceof WsMessage) {
                    WsMessage wsMessage = (WsMessage) obj;
                    SignallingChannel signallingChannelRespUpdateChannelType = SignallingService.this.respUpdateChannelType(i, str, i2, wsMessage);
                    wsMessage.tag = SignallingService.DONE;
                    if (callback != null) {
                        WsError wsError = SignallingService.this.getWsError(wsMessage);
                        if (wsError != null) {
                            callback.call(wsError);
                            return;
                        } else {
                            callback.call(signallingChannelRespUpdateChannelType);
                            return;
                        }
                    }
                    return;
                }
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(obj);
                }
            }
        };
        this.ws.sendRequest(wsRequest);
    }

    SignallingChannel respUpdateChannelType(int i, String str, int i2, WsMessage wsMessage) {
        final SignallingChannel channelByThread = getChannelByThread(i, str);
        if (channelByThread == null) {
            channelByThread = new SignallingChannel(i, str);
        }
        channelByThread.channelType = i2;
        WsError wsError = getWsError(wsMessage);
        if (wsError != null) {
            int i3 = wsError.code;
            if (i3 == 111) {
                this.listeners.dispatch(new Callback<SignallingListener>() { // from class: com.narvii.chat.signalling.SignallingService.6
                    @Override // com.narvii.util.Callback
                    public void call(SignallingListener signallingListener) {
                        signallingListener.onReceiverBusy(channelByThread);
                    }
                });
                return channelByThread;
            }
            if (i3 == 112) {
                this.listeners.dispatch(new Callback<SignallingListener>() { // from class: com.narvii.chat.signalling.SignallingService.7
                    @Override // com.narvii.util.Callback
                    public void call(SignallingListener signallingListener) {
                        signallingListener.onChannelForceQuit(SignallingService.this, channelByThread, 99);
                    }
                });
            } else {
                NVToast.makeText(this.context.getContext(), wsError.message, 1).show();
            }
        } else {
            this.listeners.dispatch(new Callback() { // from class: com.narvii.chat.signalling.-$$Lambda$SignallingService$jVpB6d0aJ9wiXGL6PhKaMgBANUc
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f$0.lambda$respUpdateChannelType$0$SignallingService(channelByThread, (SignallingListener) obj);
                }
            });
        }
        return channelByThread;
    }

    public /* synthetic */ void lambda$respUpdateChannelType$0$SignallingService(SignallingChannel signallingChannel, SignallingListener signallingListener) {
        signallingListener.onChannelTypeUpdateSuccess(this, signallingChannel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WsError getWsError(WsMessage wsMessage) {
        JsonNode jsonNodeNodePath;
        if (wsMessage == null || (jsonNodeNodePath = JacksonUtils.nodePath(wsMessage.object, "exception")) == null) {
            return null;
        }
        return (WsError) JacksonUtils.readAs(jsonNodeNodePath.toString(), WsError.class);
    }

    public void getAgoraChannel(final int i, final String str, final Callback callback) {
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 200;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i);
        objectNodeCreateObjectNode.put("threadId", str);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = new Callback() { // from class: com.narvii.chat.signalling.SignallingService.8
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (obj instanceof WsMessage) {
                    WsMessage wsMessage = (WsMessage) obj;
                    SignallingChannel signallingChannelRespAgora = SignallingService.this.respAgora(i, str, wsMessage);
                    wsMessage.tag = SignallingService.DONE;
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(signallingChannelRespAgora);
                        return;
                    }
                    return;
                }
                Callback callback3 = callback;
                if (callback3 != null) {
                    callback3.call(obj);
                }
            }
        };
        this.ws.sendRequest(wsRequest);
    }

    SignallingChannel respAgora(int i, String str, WsMessage wsMessage) {
        SignallingChannel channelByThread = getChannelByThread(i, str);
        if (channelByThread == null) {
            channelByThread = new SignallingChannel(i, str);
        }
        channelByThread.channelName = JacksonUtils.nodeString(wsMessage.object, "channelName");
        channelByThread.channelKey = JacksonUtils.nodeString(wsMessage.object, "channelKey");
        channelByThread.channelUid = JacksonUtils.nodeInt(wsMessage.object, "channelUid");
        channelByThread.expiredAfter = SystemClock.elapsedRealtime() + (JacksonUtils.nodeInt(wsMessage.object, "expiredTime") * 1000);
        return channelByThread;
    }

    public void leaveThread(final int i, final String str, final Callback callback) {
        if (Utils.isEquals(str, this.keepAliveThreadId)) {
            this.keepAliveThreadId = null;
            Utils.post(this.checkKeepAlive);
        }
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 103;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i);
        objectNodeCreateObjectNode.put("threadId", str);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = new Callback() { // from class: com.narvii.chat.signalling.SignallingService.9
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (obj instanceof WsMessage) {
                    WsMessage wsMessage = (WsMessage) obj;
                    final SignallingChannel signallingChannelRespLeave = SignallingService.this.respLeave(i, str, wsMessage);
                    wsMessage.tag = SignallingService.DONE;
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(signallingChannelRespLeave);
                    }
                    SignallingService.this.listeners.dispatch(new Callback<SignallingListener>() { // from class: com.narvii.chat.signalling.SignallingService.9.1
                        @Override // com.narvii.util.Callback
                        public void call(SignallingListener signallingListener) {
                            signallingListener.onChannelListChanged(SignallingService.this, signallingChannelRespLeave, false);
                        }
                    });
                    return;
                }
                Callback callback3 = callback;
                if (callback3 != null) {
                    callback3.call(obj);
                }
            }
        };
        this.ws.sendRequest(wsRequest);
    }

    SignallingChannel respLeave(int i, String str, WsMessage wsMessage) {
        SignallingChannel channelByThread = getChannelByThread(i, str);
        if (channelByThread == null) {
            return new SignallingChannel(i, str);
        }
        this.channels.remove(channelByThread);
        return channelByThread;
    }

    public void getThreadUserList(final int i, final String str, final Callback callback) {
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 105;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i);
        objectNodeCreateObjectNode.put("threadId", str);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = new Callback() { // from class: com.narvii.chat.signalling.SignallingService.10
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (obj instanceof WsMessage) {
                    SignallingChannel channelByThread = SignallingService.this.getChannelByThread(i, str);
                    final ArrayList arrayList = channelByThread == null ? null : new ArrayList(channelByThread.userList);
                    WsMessage wsMessage = (WsMessage) obj;
                    final SignallingChannel signallingChannelRespThreadUserList = SignallingService.this.respThreadUserList(i, str, wsMessage);
                    wsMessage.tag = SignallingService.DONE;
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(signallingChannelRespThreadUserList);
                    }
                    if (arrayList != null) {
                        SignallingService.this.listeners.dispatch(new Callback<SignallingListener>() { // from class: com.narvii.chat.signalling.SignallingService.10.1
                            @Override // com.narvii.util.Callback
                            public void call(SignallingListener signallingListener) {
                                SignallingService signallingService = SignallingService.this;
                                SignallingChannel signallingChannel = signallingChannelRespThreadUserList;
                                signallingListener.onUserListChanged(signallingService, signallingChannel, arrayList, signallingChannel.userList);
                            }
                        });
                        return;
                    }
                    return;
                }
                Callback callback3 = callback;
                if (callback3 != null) {
                    callback3.call(obj);
                }
            }
        };
        this.ws.sendRequest(wsRequest);
    }

    SignallingChannel respThreadUserList(int i, String str, WsMessage wsMessage) {
        SignallingChannel channelByThread = getChannelByThread(i, str);
        if (channelByThread == null) {
            channelByThread = new SignallingChannel(i, str);
        }
        ArrayList listAs = JacksonUtils.readListAs(JacksonUtils.nodePath(wsMessage.object, "userList").toString(), ChannelUser.class);
        channelByThread.userList.clear();
        channelByThread.userList.addAll(listAs);
        return channelByThread;
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsMessage(WsService wsService, WsMessage wsMessage) {
        if (wsMessage == null || wsMessage.tag == DONE) {
            return;
        }
        int i = wsMessage.type;
        if (i == 102) {
            final SignallingChannel channelByThread = getChannelByThread(JacksonUtils.nodeString(wsMessage.object, "threadId"));
            if (channelByThread != null) {
                final ArrayList arrayList = new ArrayList(channelByThread.userList);
                ArrayList listAs = JacksonUtils.readListAs(JacksonUtils.nodePath(wsMessage.object, "userList").toString(), ChannelUser.class);
                channelByThread.userList.clear();
                channelByThread.userList.addAll(listAs);
                this.listeners.dispatch(new Callback<SignallingListener>() { // from class: com.narvii.chat.signalling.SignallingService.11
                    @Override // com.narvii.util.Callback
                    public void call(SignallingListener signallingListener) {
                        SignallingService signallingService = SignallingService.this;
                        SignallingChannel signallingChannel = channelByThread;
                        signallingListener.onUserListChanged(signallingService, signallingChannel, arrayList, signallingChannel.userList);
                    }
                });
                return;
            }
            return;
        }
        if (i == 111) {
            final SignallingChannel channelByThread2 = getChannelByThread(JacksonUtils.nodeString(wsMessage.object, "threadId"));
            if (channelByThread2 != null) {
                int iNodeInt = JacksonUtils.nodeInt(wsMessage.object, "channelType");
                int iNodeInt2 = JacksonUtils.nodeInt(wsMessage.object, NotificationCompat.CATEGORY_STATUS);
                if (channelByThread2.channelType == iNodeInt && iNodeInt2 == channelByThread2.threadStatus) {
                    return;
                }
                channelByThread2.channelType = iNodeInt;
                channelByThread2.threadStatus = iNodeInt2;
                this.listeners.dispatch(new Callback<SignallingListener>() { // from class: com.narvii.chat.signalling.SignallingService.12
                    @Override // com.narvii.util.Callback
                    public void call(SignallingListener signallingListener) {
                        signallingListener.onChannelChanged(SignallingService.this, channelByThread2);
                    }
                });
                return;
            }
            return;
        }
        if (i == 115) {
            final SignallingChannel channelByThread3 = getChannelByThread(JacksonUtils.nodeString(wsMessage.object, "threadId"));
            if (channelByThread3 != null) {
                final int iNodeInt3 = JacksonUtils.nodeInt(wsMessage.object, "reason");
                this.listeners.dispatch(new Callback<SignallingListener>() { // from class: com.narvii.chat.signalling.SignallingService.13
                    @Override // com.narvii.util.Callback
                    public void call(SignallingListener signallingListener) {
                        signallingListener.onChannelForceQuit(SignallingService.this, channelByThread3, iNodeInt3);
                    }
                });
                return;
            }
            return;
        }
        if (i == 113) {
            String strNodeString = JacksonUtils.nodeString(wsMessage.object, "threadId");
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(wsMessage.object, GlobalProfileFragment.KEY_USER);
            if (jsonNodeNodePath != null) {
                final ChannelUser channelUser = (ChannelUser) JacksonUtils.readAs(jsonNodeNodePath.toString(), ChannelUser.class);
                final SignallingChannel channelByThread4 = getChannelByThread(strNodeString);
                if (channelByThread4 != null) {
                    channelByThread4.channelUid = channelUser.channelUid;
                    Iterator<ChannelUser> it = channelByThread4.userList.iterator();
                    while (it.hasNext()) {
                        if (Utils.isEqualsNotNull(it.next().uid(), channelUser.uid())) {
                            it.remove();
                        }
                    }
                    channelByThread4.userList.add(channelUser);
                    this.listeners.dispatch(new Callback<SignallingListener>() { // from class: com.narvii.chat.signalling.SignallingService.14
                        @Override // com.narvii.util.Callback
                        public void call(SignallingListener signallingListener) {
                            signallingListener.onUserRoleChange(SignallingService.this, channelByThread4, channelUser);
                        }
                    });
                    return;
                }
                return;
            }
            return;
        }
        if (i == 106 || i == 107) {
            final SignallingChannel channelByThread5 = getChannelByThread(JacksonUtils.nodeString(wsMessage.object, "threadId"));
            if (channelByThread5 != null) {
                final ArrayList arrayList2 = new ArrayList(channelByThread5.userList);
                JsonNode jsonNodeNodePath2 = JacksonUtils.nodePath(wsMessage.object, GlobalProfileFragment.KEY_USER);
                if (jsonNodeNodePath2 == null) {
                    return;
                }
                ChannelUser channelUser2 = (ChannelUser) JacksonUtils.readAs(jsonNodeNodePath2.toString(), ChannelUser.class);
                Iterator<ChannelUser> it2 = channelByThread5.userList.iterator();
                while (it2.hasNext()) {
                    if (Utils.isEqualsNotNull(it2.next().uid(), channelUser2.uid())) {
                        it2.remove();
                    }
                }
                if (channelByThread5.channelUid == channelUser2.channelUid) {
                    int i2 = channelByThread5.joinRole;
                    int i3 = channelUser2.joinRole;
                    if (i2 != i3) {
                        channelByThread5.joinRole = i3;
                    }
                }
                if (wsMessage.type == 106) {
                    channelByThread5.userList.add(channelUser2);
                }
                this.listeners.dispatch(new Callback<SignallingListener>() { // from class: com.narvii.chat.signalling.SignallingService.15
                    @Override // com.narvii.util.Callback
                    public void call(SignallingListener signallingListener) {
                        SignallingService signallingService = SignallingService.this;
                        SignallingChannel signallingChannel = channelByThread5;
                        signallingListener.onUserListChanged(signallingService, signallingChannel, arrayList2, signallingChannel.userList);
                    }
                });
                return;
            }
            return;
        }
        if (i == 117) {
            JsonNode jsonNodeNodePath3 = JacksonUtils.nodePath(wsMessage.object, "threadChannelUserInfoList");
            if (jsonNodeNodePath3 == null) {
                return;
            }
            final ArrayList listAs2 = JacksonUtils.readListAs(jsonNodeNodePath3.toString(), ThreadChannelUserInfo.class);
            this.listeners.dispatch(new Callback<SignallingListener>() { // from class: com.narvii.chat.signalling.SignallingService.16
                @Override // com.narvii.util.Callback
                public void call(SignallingListener signallingListener) {
                    signallingListener.onSignallingPong(listAs2);
                }
            });
            return;
        }
        if (i != 128) {
            if (i == 118) {
                NVToast.makeText(this.context.getContext(), R.string.multi_device_hint, 1).show();
                return;
            }
            return;
        }
        int iNodeInt4 = JacksonUtils.nodeInt(wsMessage.object, "joinRole");
        final SignallingChannel channelByThread6 = getChannelByThread(JacksonUtils.nodeString(wsMessage.object, "threadId"));
        if (channelByThread6 == null || iNodeInt4 != 2) {
            return;
        }
        channelByThread6.joinRole = 2;
        final ChannelUser channelUser3 = null;
        List<ChannelUser> list = channelByThread6.userList;
        if (list != null) {
            Iterator<ChannelUser> it3 = list.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                ChannelUser next = it3.next();
                if (next.channelUid == channelByThread6.channelUid) {
                    next.joinRole = 2;
                    channelUser3 = next;
                    break;
                }
            }
        }
        if (channelUser3 != null) {
            this.listeners.dispatch(new Callback<SignallingListener>() { // from class: com.narvii.chat.signalling.SignallingService.17
                @Override // com.narvii.util.Callback
                public void call(SignallingListener signallingListener) {
                    signallingListener.onUserRoleChange(SignallingService.this, channelByThread6, channelUser3);
                }
            });
        }
        this.listeners.dispatch(new Callback<SignallingListener>() { // from class: com.narvii.chat.signalling.SignallingService.18
            @Override // com.narvii.util.Callback
            public void call(SignallingListener signallingListener) {
                signallingListener.onUserForceRemoveFromPresenter(channelByThread6);
            }
        });
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onConnect(WsService wsService) {
        Iterator<SignallingChannel> it = this.channels.iterator();
        while (it.hasNext()) {
            it.next().lostConnectionTime = 0L;
        }
        Utils.handler.removeCallbacks(this.lostConnectionTimeout);
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onDisconnect(WsService wsService, Throwable th) {
        if (!this.channels.isEmpty()) {
            Iterator<SignallingChannel> it = this.channels.iterator();
            while (it.hasNext()) {
                it.next().lostConnectionTime = SystemClock.elapsedRealtime();
            }
            Utils.handler.removeCallbacks(this.lostConnectionTimeout);
            Utils.postDelayed(this.lostConnectionTimeout, 300000L);
        }
        try {
            this.context.getContext().stopService(new Intent(NVApplication.instance(), (Class<?>) ProcessKillMonitorService.class));
        } catch (Exception unused) {
        }
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsError(WsService wsService, final WsError wsError) {
        this.listeners.dispatch(new Callback<SignallingListener>() { // from class: com.narvii.chat.signalling.SignallingService.20
            @Override // com.narvii.util.Callback
            public void call(SignallingListener signallingListener) {
                signallingListener.onError(SignallingService.this, wsError);
            }
        });
    }
}
