package com.narvii.chat.waitinglist;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.signalling.SignallingService;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.model.User;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Tag;
import com.narvii.util.ws.WsError;
import com.narvii.util.ws.WsMessage;
import com.narvii.util.ws.WsRequest;
import com.narvii.util.ws.WsService;
import java.util.ArrayList;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WaitingListService.kt */
/* loaded from: classes2.dex */
public final class WaitingListService implements WsService.WsListener {
    public static final Companion Companion = new Companion(null);
    private static final Tag DONE = new Tag("done");
    private final EventDispatcher<WaitingListListener> listeners;
    private final SignallingService signallingService;
    private final WsService ws;

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onConnect(WsService wsService) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onDisconnect(WsService wsService, Throwable th) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsError(WsService wsService, WsError wsError) {
    }

    public WaitingListService(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Object service = ctx.getService("ws");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"ws\")");
        this.ws = (WsService) service;
        this.signallingService = (SignallingService) ctx.getService("signalling");
        this.listeners = new EventDispatcher<>();
        this.ws.listeners.addListener(this);
    }

    public final EventDispatcher<WaitingListListener> getListeners() {
        return this.listeners;
    }

    /* compiled from: WaitingListService.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final void waitListClean(final int i, final String threadId, Function1<Object, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(threadId, "threadId");
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 132;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i);
        objectNodeCreateObjectNode.put("threadId", threadId);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = wsCallback(new Function1<WsMessage, SignallingChannel>() { // from class: com.narvii.chat.waitinglist.WaitingListService.waitListClean.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final SignallingChannel invoke(WsMessage it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                SignallingChannel channelByThread = WaitingListService.this.getChannelByThread(i, threadId);
                channelByThread.userWaitList.clear();
                return channelByThread;
            }
        }, function1);
        this.ws.sendRequest(wsRequest);
    }

    public final void waitListJoinApprove(final int i, final String threadId, String uid, Function1<Object, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(threadId, "threadId");
        Intrinsics.checkParameterIsNotNull(uid, "uid");
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 134;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i);
        objectNodeCreateObjectNode.put("threadId", threadId);
        objectNodeCreateObjectNode.put("uid", uid);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = wsCallback2(new Function1<WsMessage, Pair<? extends SignallingChannel, ? extends Boolean>>() { // from class: com.narvii.chat.waitinglist.WaitingListService.waitListJoinApprove.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Pair<SignallingChannel, Boolean> invoke(WsMessage it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                return TuplesKt.to(WaitingListService.this.getChannelByThread(i, threadId), Boolean.valueOf(JacksonUtils.nodeBoolean(it.object, "isOnline")));
            }
        }, function1);
        this.ws.sendRequest(wsRequest);
    }

    public final void waitListJoinCancel(final int i, final String threadId, String uid, Function1<Object, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(threadId, "threadId");
        Intrinsics.checkParameterIsNotNull(uid, "uid");
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i);
        objectNodeCreateObjectNode.put("threadId", threadId);
        objectNodeCreateObjectNode.put("uid", uid);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = wsCallback(new Function1<WsMessage, SignallingChannel>() { // from class: com.narvii.chat.waitinglist.WaitingListService.waitListJoinCancel.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final SignallingChannel invoke(WsMessage it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                return WaitingListService.this.getChannelByThread(i, threadId);
            }
        }, function1);
        this.ws.sendRequest(wsRequest);
    }

    public final void waitListJoin(final int i, final String threadId, Function1<Object, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(threadId, "threadId");
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 138;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i);
        objectNodeCreateObjectNode.put("threadId", threadId);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = wsCallback(new Function1<WsMessage, SignallingChannel>() { // from class: com.narvii.chat.waitinglist.WaitingListService.waitListJoin.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final SignallingChannel invoke(WsMessage it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                return WaitingListService.this.getChannelByThread(i, threadId);
            }
        }, function1);
        this.ws.sendRequest(wsRequest);
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsMessage(WsService wsService, WsMessage wsMessage) {
        final SignallingChannel channelByThread;
        if (wsMessage == null || Intrinsics.areEqual(wsMessage.tag, DONE)) {
            return;
        }
        int i = wsMessage.type;
        if (i == 130) {
            final SignallingChannel channelByThread2 = this.signallingService.getChannelByThread(JacksonUtils.nodeString(wsMessage.object, "threadId"));
            if (channelByThread2 != null) {
                this.listeners.dispatch(new Callback<WaitingListListener>() { // from class: com.narvii.chat.waitinglist.WaitingListService.onWsMessage.1
                    @Override // com.narvii.util.Callback
                    public final void call(WaitingListListener waitingListListener) {
                        waitingListListener.onWaitingListApprove(channelByThread2);
                    }
                });
                return;
            }
            return;
        }
        if (i == 131 && (channelByThread = this.signallingService.getChannelByThread(JacksonUtils.nodeString(wsMessage.object, "threadId"))) != null) {
            final ArrayList arrayList = new ArrayList(channelByThread.userWaitList);
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(wsMessage.object, "userProfileList");
            if (jsonNodeNodePath != null) {
                ArrayList listAs = JacksonUtils.readListAs(jsonNodeNodePath.toString(), User.class);
                channelByThread.userWaitList.clear();
                if (listAs != null) {
                    channelByThread.userWaitList.addAll(listAs);
                }
            }
            this.listeners.dispatch(new Callback<WaitingListListener>() { // from class: com.narvii.chat.waitinglist.WaitingListService.onWsMessage.2
                @Override // com.narvii.util.Callback
                public final void call(WaitingListListener waitingListListener) {
                    SignallingChannel signallingChannel = channelByThread;
                    waitingListListener.onWaitingListChanged(signallingChannel, arrayList, signallingChannel.userWaitList);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SignallingChannel getChannelByThread(int i, String str) {
        SignallingChannel channelByThread = this.signallingService.getChannelByThread(i, str);
        return channelByThread == null ? new SignallingChannel(i, str) : channelByThread;
    }

    private final Callback<Object> wsCallback(final Function1<? super WsMessage, ? extends SignallingChannel> function1, final Function1<Object, Unit> function12) {
        return new Callback<Object>() { // from class: com.narvii.chat.waitinglist.WaitingListService.wsCallback.1
            @Override // com.narvii.util.Callback
            public final void call(Object it) {
                if (it instanceof WsMessage) {
                    SignallingChannel signallingChannel = (SignallingChannel) function1.invoke(it);
                    ((WsMessage) it).tag = WaitingListService.DONE;
                    Function1 function13 = function12;
                    if (function13 != null) {
                        return;
                    }
                    return;
                }
                Function1 function14 = function12;
                if (function14 != null) {
                    Intrinsics.checkExpressionValueIsNotNull(it, "it");
                }
            }
        };
    }

    private final Callback<Object> wsCallback2(final Function1<? super WsMessage, ? extends Pair<? extends SignallingChannel, ? extends Object>> function1, final Function1<Object, Unit> function12) {
        return new Callback<Object>() { // from class: com.narvii.chat.waitinglist.WaitingListService.wsCallback2.1
            @Override // com.narvii.util.Callback
            public final void call(Object it) {
                if (it instanceof WsMessage) {
                    Pair pair = (Pair) function1.invoke(it);
                    ((WsMessage) it).tag = WaitingListService.DONE;
                    Function1 function13 = function12;
                    if (function13 != null) {
                        return;
                    }
                    return;
                }
                Function1 function14 = function12;
                if (function14 != null) {
                    Intrinsics.checkExpressionValueIsNotNull(it, "it");
                }
            }
        };
    }
}
