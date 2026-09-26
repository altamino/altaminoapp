package com.narvii.chat.signalling;

import android.content.Intent;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.master.R;
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

/* JADX INFO: loaded from: classes5.dex */
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
            ArrayList<SignallingChannel> arrayList = new ArrayList();
            for (SignallingChannel signallingChannel : SignallingService.this.channels) {
                long j6 = signallingChannel.lostConnectionTime;
                if (j6 != 0 && j6 + 300000 < jElapsedRealtime) {
                    arrayList.add(signallingChannel);
                }
            }
            for (final SignallingChannel signallingChannel2 : arrayList) {
                Log.w("unjoin thread channel due to connection lost timeout: " + signallingChannel2.threadId);
                SignallingService.this.channels.remove(signallingChannel2);
                SignallingService.this.listeners.dispatch(new Callback<SignallingListener>() { // from class: com.narvii.chat.signalling.SignallingService.19.1
                    @Override // com.narvii.util.Callback
                    public void call(SignallingListener signallingListener) {
                        signallingListener.onChannelListChanged(SignallingService.this, signallingChannel2, false);
                    }
                });
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public WsError getWsError(WsMessage wsMessage) {
        JsonNode jsonNodeNodePath;
        if (wsMessage == null || (jsonNodeNodePath = JacksonUtils.nodePath(wsMessage.object, "exception")) == null) {
            return null;
        }
        return (WsError) JacksonUtils.readAs(jsonNodeNodePath.toString(), WsError.class);
    }

    public Collection<SignallingChannel> channelList() {
        return this.channels;
    }

    public SignallingChannel getChannelByThread(String str) {
        for (SignallingChannel signallingChannel : this.channels) {
            if (Utils.isEqualsNotNull(signallingChannel.threadId, str)) {
                return signallingChannel;
            }
        }
        return null;
    }

    public String getKeepAliveThreadId() {
        return this.keepAliveThreadId;
    }

    public void getAgoraChannel(final int i10, final String str, final Callback callback) {
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 200;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i10);
        objectNodeCreateObjectNode.put("threadId", str);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = new Callback() { // from class: com.narvii.chat.signalling.SignallingService.8
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (!(obj instanceof WsMessage)) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(obj);
                        return;
                    }
                    return;
                }
                WsMessage wsMessage = (WsMessage) obj;
                SignallingChannel signallingChannelRespAgora = SignallingService.this.respAgora(i10, str, wsMessage);
                wsMessage.tag = SignallingService.DONE;
                Callback callback3 = callback;
                if (callback3 != null) {
                    callback3.call(signallingChannelRespAgora);
                }
            }
        };
        this.ws.sendRequest(wsRequest);
    }

    public SignallingChannel getChannelByName(String str) {
        for (SignallingChannel signallingChannel : this.channels) {
            if (Utils.isEqualsNotNull(signallingChannel.channelName, str)) {
                return signallingChannel;
            }
        }
        return null;
    }

    public void getThreadUserList(final int i10, final String str, final Callback callback) {
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 105;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i10);
        objectNodeCreateObjectNode.put("threadId", str);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = new Callback() { // from class: com.narvii.chat.signalling.SignallingService.10
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (!(obj instanceof WsMessage)) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(obj);
                        return;
                    }
                    return;
                }
                SignallingChannel channelByThread = SignallingService.this.getChannelByThread(i10, str);
                final ArrayList arrayList = channelByThread == null ? null : new ArrayList(channelByThread.userList);
                WsMessage wsMessage = (WsMessage) obj;
                final SignallingChannel signallingChannelRespThreadUserList = SignallingService.this.respThreadUserList(i10, str, wsMessage);
                wsMessage.tag = SignallingService.DONE;
                Callback callback3 = callback;
                if (callback3 != null) {
                    callback3.call(signallingChannelRespThreadUserList);
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
                }
            }
        };
        this.ws.sendRequest(wsRequest);
    }

    public void joinThread(final int i10, final String str, final Callback callback) {
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 100;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i10);
        objectNodeCreateObjectNode.put("threadId", str);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = new Callback() { // from class: com.narvii.chat.signalling.SignallingService.2
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (!(obj instanceof WsMessage)) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(obj);
                        return;
                    }
                    return;
                }
                WsMessage wsMessage = (WsMessage) obj;
                final SignallingChannel signallingChannelRespJoin = SignallingService.this.respJoin(i10, str, wsMessage);
                wsMessage.tag = SignallingService.DONE;
                WsError wsError = SignallingService.this.getWsError(wsMessage);
                Callback callback3 = callback;
                if (callback3 != null) {
                    if (wsError == null) {
                        callback3.call(signallingChannelRespJoin);
                    } else {
                        callback3.call(wsError);
                    }
                }
                SignallingService.this.listeners.dispatch(new Callback<SignallingListener>() { // from class: com.narvii.chat.signalling.SignallingService.2.1
                    @Override // com.narvii.util.Callback
                    public void call(SignallingListener signallingListener) {
                        signallingListener.onChannelListChanged(SignallingService.this, signallingChannelRespJoin, true);
                    }
                });
                Utils.post(SignallingService.this.checkKeepAlive);
            }
        };
        this.ws.sendRequest(wsRequest);
    }

    public void leaveAllThreads(boolean z6) {
        for (SignallingChannel signallingChannel : new ArrayList(this.channels)) {
            if (z6 || !Utils.isEqualsNotNull(signallingChannel.threadId, this.keepAliveThreadId)) {
                if (this.ws.isConnected()) {
                    leaveThread(signallingChannel.ndcId, signallingChannel.threadId, null);
                }
                this.channels.remove(signallingChannel);
            }
        }
    }

    public void leaveThread(final int i10, final String str, final Callback callback) {
        if (Utils.isEquals(str, this.keepAliveThreadId)) {
            this.keepAliveThreadId = null;
            Utils.post(this.checkKeepAlive);
        }
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 103;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i10);
        objectNodeCreateObjectNode.put("threadId", str);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = new Callback() { // from class: com.narvii.chat.signalling.SignallingService.9
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (!(obj instanceof WsMessage)) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(obj);
                        return;
                    }
                    return;
                }
                WsMessage wsMessage = (WsMessage) obj;
                final SignallingChannel signallingChannelRespLeave = SignallingService.this.respLeave(i10, str, wsMessage);
                wsMessage.tag = SignallingService.DONE;
                Callback callback3 = callback;
                if (callback3 != null) {
                    callback3.call(signallingChannelRespLeave);
                }
                SignallingService.this.listeners.dispatch(new Callback<SignallingListener>() { // from class: com.narvii.chat.signalling.SignallingService.9.1
                    @Override // com.narvii.util.Callback
                    public void call(SignallingListener signallingListener) {
                        signallingListener.onChannelListChanged(SignallingService.this, signallingChannelRespLeave, false);
                    }
                });
            }
        };
        this.ws.sendRequest(wsRequest);
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

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsMessage(WsService wsService, WsMessage wsMessage) {
        final ChannelUser next;
        if (wsMessage == null || wsMessage.tag == DONE) {
            return;
        }
        int i10 = wsMessage.type;
        if (i10 == 102) {
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
        if (i10 == 111) {
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
        if (i10 == 115) {
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
        if (i10 == 113) {
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
        if (i10 == 106 || i10 == 107) {
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
                    int i11 = channelByThread5.joinRole;
                    int i12 = channelUser2.joinRole;
                    if (i11 != i12) {
                        channelByThread5.joinRole = i12;
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
        if (i10 == 117) {
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
        if (i10 != 128) {
            if (i10 == 118) {
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
        List<ChannelUser> list = channelByThread6.userList;
        if (list == null) {
            next = null;
            break;
        }
        Iterator<ChannelUser> it3 = list.iterator();
        while (true) {
            if (!it3.hasNext()) {
                next = null;
                break;
            }
            next = it3.next();
            if (next.channelUid == channelByThread6.channelUid) {
                next.joinRole = 2;
                break;
            }
        }
        if (next != null) {
            this.listeners.dispatch(new Callback<SignallingListener>() { // from class: com.narvii.chat.signalling.SignallingService.17
                @Override // com.narvii.util.Callback
                public void call(SignallingListener signallingListener) {
                    signallingListener.onUserRoleChange(SignallingService.this, channelByThread6, next);
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

    public void sendRemoveFromPresenter(final int i10, final String str, String str2, final Callback callback) {
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 126;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i10);
        objectNodeCreateObjectNode.put("threadId", str);
        objectNodeCreateObjectNode.put("joinRole", 2);
        objectNodeCreateObjectNode.put("targetUid", str2);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = new Callback() { // from class: com.narvii.chat.signalling.SignallingService.3
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (!(obj instanceof WsMessage)) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(obj);
                        return;
                    }
                    return;
                }
                WsError wsError = SignallingService.this.getWsError((WsMessage) obj);
                SignallingChannel channelByThread = SignallingService.this.getChannelByThread(i10, str);
                Callback callback3 = callback;
                if (callback3 != null) {
                    if (wsError == null) {
                        callback3.call(channelByThread);
                    } else {
                        callback3.call(wsError);
                    }
                }
            }
        };
        this.ws.sendRequest(wsRequest);
    }

    public void setKeepAliveThreadId(String str) {
        this.keepAliveThreadId = str;
        Handler handler = Utils.handler;
        handler.removeCallbacks(this.checkKeepAlive);
        handler.postDelayed(this.checkKeepAlive, 400L);
    }

    public void updateThreadChannelType(final int i10, final String str, final int i11, final Callback callback) {
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 108;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i10);
        objectNodeCreateObjectNode.put("threadId", str);
        objectNodeCreateObjectNode.put("channelType", i11);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = new Callback() { // from class: com.narvii.chat.signalling.SignallingService.5
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (!(obj instanceof WsMessage)) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(obj);
                        return;
                    }
                    return;
                }
                WsMessage wsMessage = (WsMessage) obj;
                SignallingChannel signallingChannelRespUpdateChannelType = SignallingService.this.respUpdateChannelType(i10, str, i11, wsMessage);
                wsMessage.tag = SignallingService.DONE;
                if (callback != null) {
                    WsError wsError = SignallingService.this.getWsError(wsMessage);
                    if (wsError != null) {
                        callback.call(wsError);
                    } else {
                        callback.call(signallingChannelRespUpdateChannelType);
                    }
                }
            }
        };
        this.ws.sendRequest(wsRequest);
    }

    public void updateThreadJoinRole(final int i10, final String str, final int i11, final Callback callback) {
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 112;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i10);
        objectNodeCreateObjectNode.put("threadId", str);
        objectNodeCreateObjectNode.put("joinRole", i11);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = new Callback() { // from class: com.narvii.chat.signalling.SignallingService.4
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (!(obj instanceof WsMessage)) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(obj);
                        return;
                    }
                    return;
                }
                WsMessage wsMessage = (WsMessage) obj;
                SignallingChannel signallingChannelRespUpdateJoinRole = SignallingService.this.respUpdateJoinRole(i10, str, i11, wsMessage);
                WsError wsError = SignallingService.this.getWsError(wsMessage);
                Callback callback3 = callback;
                if (callback3 != null) {
                    if (wsError == null) {
                        callback3.call(signallingChannelRespUpdateJoinRole);
                    } else {
                        callback3.call(wsError);
                    }
                }
            }
        };
        this.ws.sendRequest(wsRequest);
    }

    public SignallingService(NVContext nVContext) {
        this.context = nVContext;
        WsService wsService = (WsService) nVContext.getService("ws");
        this.ws = wsService;
        wsService.listeners.addListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$respUpdateChannelType$0(SignallingChannel signallingChannel, SignallingListener signallingListener) {
        signallingListener.onChannelTypeUpdateSuccess(this, signallingChannel);
    }

    public SignallingChannel getChannelByThread(int i10, String str) {
        for (SignallingChannel signallingChannel : this.channels) {
            if (signallingChannel.ndcId == i10 && Utils.isEqualsNotNull(signallingChannel.threadId, str)) {
                return signallingChannel;
            }
        }
        return null;
    }

    SignallingChannel respAgora(int i10, String str, WsMessage wsMessage) {
        SignallingChannel channelByThread = getChannelByThread(i10, str);
        if (channelByThread == null) {
            channelByThread = new SignallingChannel(i10, str);
        }
        channelByThread.channelName = JacksonUtils.nodeString(wsMessage.object, "channelName");
        channelByThread.channelKey = JacksonUtils.nodeString(wsMessage.object, "channelKey");
        channelByThread.channelUid = JacksonUtils.nodeInt(wsMessage.object, "channelUid");
        channelByThread.expiredAfter = SystemClock.elapsedRealtime() + ((long) (JacksonUtils.nodeInt(wsMessage.object, "expiredTime") * 1000));
        return channelByThread;
    }

    SignallingChannel respJoin(int i10, String str, WsMessage wsMessage) {
        SignallingChannel channelByThread = getChannelByThread(i10, str);
        if (channelByThread == null) {
            SignallingChannel signallingChannel = new SignallingChannel(i10, str);
            this.channels.add(signallingChannel);
            return signallingChannel;
        }
        return channelByThread;
    }

    SignallingChannel respLeave(int i10, String str, WsMessage wsMessage) {
        SignallingChannel channelByThread = getChannelByThread(i10, str);
        if (channelByThread == null) {
            return new SignallingChannel(i10, str);
        }
        this.channels.remove(channelByThread);
        return channelByThread;
    }

    SignallingChannel respThreadUserList(int i10, String str, WsMessage wsMessage) {
        SignallingChannel channelByThread = getChannelByThread(i10, str);
        if (channelByThread == null) {
            channelByThread = new SignallingChannel(i10, str);
        }
        ArrayList listAs = JacksonUtils.readListAs(JacksonUtils.nodePath(wsMessage.object, "userList").toString(), ChannelUser.class);
        channelByThread.userList.clear();
        channelByThread.userList.addAll(listAs);
        return channelByThread;
    }

    SignallingChannel respUpdateChannelType(int i10, String str, int i11, WsMessage wsMessage) {
        final SignallingChannel channelByThread = getChannelByThread(i10, str);
        if (channelByThread == null) {
            channelByThread = new SignallingChannel(i10, str);
        }
        channelByThread.channelType = i11;
        WsError wsError = getWsError(wsMessage);
        if (wsError != null) {
            int i12 = wsError.code;
            if (i12 == 111) {
                this.listeners.dispatch(new Callback<SignallingListener>() { // from class: com.narvii.chat.signalling.SignallingService.6
                    @Override // com.narvii.util.Callback
                    public void call(SignallingListener signallingListener) {
                        signallingListener.onReceiverBusy(channelByThread);
                    }
                });
                return channelByThread;
            }
            if (i12 == 112) {
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
            this.listeners.dispatch(new Callback() { // from class: com.narvii.chat.signalling.a
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f2061a.lambda$respUpdateChannelType$0(channelByThread, (SignallingListener) obj);
                }
            });
        }
        return channelByThread;
    }

    SignallingChannel respUpdateJoinRole(int i10, String str, int i11, WsMessage wsMessage) {
        WsError wsError;
        SignallingChannel channelByThread = getChannelByThread(i10, str);
        if (channelByThread == null) {
            channelByThread = new SignallingChannel(i10, str);
        }
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(wsMessage.object, "exception");
        ChannelUser channelUser = null;
        if (jsonNodeNodePath != null) {
            wsError = (WsError) JacksonUtils.readAs(jsonNodeNodePath.toString(), WsError.class);
        } else {
            wsError = null;
        }
        if (wsError != null) {
            if (!TextUtils.isEmpty(wsError.message) && wsError.code != 102) {
                NVToast.makeText(this.context.getContext(), wsError.message, 1).show();
            }
            return channelByThread;
        }
        JsonNode jsonNodeNodePath2 = JacksonUtils.nodePath(wsMessage.object, GlobalProfileFragment.KEY_USER);
        if (jsonNodeNodePath2 != null) {
            channelUser = (ChannelUser) JacksonUtils.readAs(jsonNodeNodePath2.toString(), ChannelUser.class);
        }
        if (channelUser != null) {
            i11 = channelUser.joinRole;
        }
        channelByThread.joinRole = i11;
        return channelByThread;
    }
}
