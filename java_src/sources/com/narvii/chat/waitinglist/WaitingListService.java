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
import e8.l;
import java.util.ArrayList;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes7.dex */
public final class WaitingListService implements WsService.WsListener {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final Tag DONE = new Tag("done");

    @NotNull
    private final EventDispatcher<WaitingListListener> listeners;
    private final SignallingService signallingService;

    @NotNull
    private final WsService ws;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: com.narvii.chat.waitinglist.WaitingListService$waitListClean$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<WsMessage, SignallingChannel> {
        final /* synthetic */ int $ndcId;
        final /* synthetic */ String $threadId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10, String str) {
            super(1);
            this.$ndcId = i10;
            this.$threadId = str;
        }

        @Override // e8.l
        @NotNull
        public final SignallingChannel invoke(@NotNull WsMessage it) {
            t.j(it, "it");
            SignallingChannel channelByThread = WaitingListService.this.getChannelByThread(this.$ndcId, this.$threadId);
            channelByThread.userWaitList.clear();
            return channelByThread;
        }
    }

    /* JADX INFO: renamed from: com.narvii.chat.waitinglist.WaitingListService$waitListJoin$1, reason: invalid class name and case insensitive filesystem */
    static final class C05331 extends v implements l<WsMessage, SignallingChannel> {
        final /* synthetic */ int $ndcId;
        final /* synthetic */ String $threadId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05331(int i10, String str) {
            super(1);
            this.$ndcId = i10;
            this.$threadId = str;
        }

        @Override // e8.l
        @NotNull
        public final SignallingChannel invoke(@NotNull WsMessage it) {
            t.j(it, "it");
            return WaitingListService.this.getChannelByThread(this.$ndcId, this.$threadId);
        }
    }

    /* JADX INFO: renamed from: com.narvii.chat.waitinglist.WaitingListService$waitListJoinApprove$1, reason: invalid class name and case insensitive filesystem */
    static final class C05341 extends v implements l<WsMessage, u<? extends SignallingChannel, ? extends Object>> {
        final /* synthetic */ int $ndcId;
        final /* synthetic */ String $threadId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05341(int i10, String str) {
            super(1);
            this.$ndcId = i10;
            this.$threadId = str;
        }

        @Override // e8.l
        @NotNull
        public final u<SignallingChannel, Object> invoke(@NotNull WsMessage it) {
            t.j(it, "it");
            return a0.a(WaitingListService.this.getChannelByThread(this.$ndcId, this.$threadId), Boolean.valueOf(JacksonUtils.nodeBoolean(it.object, "isOnline")));
        }
    }

    /* JADX INFO: renamed from: com.narvii.chat.waitinglist.WaitingListService$waitListJoinCancel$1, reason: invalid class name and case insensitive filesystem */
    static final class C05351 extends v implements l<WsMessage, SignallingChannel> {
        final /* synthetic */ int $ndcId;
        final /* synthetic */ String $threadId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05351(int i10, String str) {
            super(1);
            this.$ndcId = i10;
            this.$threadId = str;
        }

        @Override // e8.l
        @NotNull
        public final SignallingChannel invoke(@NotNull WsMessage it) {
            t.j(it, "it");
            return WaitingListService.this.getChannelByThread(this.$ndcId, this.$threadId);
        }
    }

    @NotNull
    public final EventDispatcher<WaitingListListener> getListeners() {
        return this.listeners;
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onConnect(@Nullable WsService wsService) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onDisconnect(@Nullable WsService wsService, @Nullable Throwable th) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsError(@Nullable WsService wsService, @Nullable WsError wsError) {
    }

    public WaitingListService(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        Object service = ctx.getService("ws");
        t.i(service, "getService(...)");
        WsService wsService = (WsService) service;
        this.ws = wsService;
        this.signallingService = (SignallingService) ctx.getService("signalling");
        this.listeners = new EventDispatcher<>();
        wsService.listeners.addListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SignallingChannel getChannelByThread(int i10, String str) {
        SignallingChannel channelByThread = this.signallingService.getChannelByThread(i10, str);
        return channelByThread == null ? new SignallingChannel(i10, str) : channelByThread;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onWsMessage$lambda$1(SignallingChannel signallingChannel, ArrayList oldlist, WaitingListListener waitingListListener) {
        t.j(oldlist, "$oldlist");
        waitingListListener.onWaitingListChanged(signallingChannel, oldlist, signallingChannel.userWaitList);
    }

    private final Callback<Object> wsCallback(final l<? super WsMessage, ? extends SignallingChannel> lVar, final l<Object, l0> lVar2) {
        return new Callback() { // from class: com.narvii.chat.waitinglist.a
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                WaitingListService.wsCallback$lambda$2(lVar, lVar2, obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void wsCallback$lambda$2(l resp, l lVar, Object obj) {
        t.j(resp, "$resp");
        if (!(obj instanceof WsMessage)) {
            if (lVar != null) {
                t.g(obj);
                lVar.invoke(obj);
                return;
            }
            return;
        }
        SignallingChannel signallingChannel = (SignallingChannel) resp.invoke(obj);
        ((WsMessage) obj).tag = DONE;
        if (lVar != null) {
            lVar.invoke(signallingChannel);
        }
    }

    private final Callback<Object> wsCallback2(final l<? super WsMessage, ? extends u<? extends SignallingChannel, ? extends Object>> lVar, final l<Object, l0> lVar2) {
        return new Callback() { // from class: com.narvii.chat.waitinglist.d
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                WaitingListService.wsCallback2$lambda$3(lVar, lVar2, obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void wsCallback2$lambda$3(l resp, l lVar, Object obj) {
        t.j(resp, "$resp");
        if (!(obj instanceof WsMessage)) {
            if (lVar != null) {
                t.g(obj);
                lVar.invoke(obj);
                return;
            }
            return;
        }
        u uVar = (u) resp.invoke(obj);
        ((WsMessage) obj).tag = DONE;
        if (lVar != null) {
            lVar.invoke(uVar);
        }
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsMessage(@Nullable WsService wsService, @Nullable WsMessage wsMessage) {
        if (wsMessage == null || t.e(wsMessage.tag, DONE)) {
            return;
        }
        int i10 = wsMessage.type;
        if (i10 == 130) {
            final SignallingChannel channelByThread = this.signallingService.getChannelByThread(JacksonUtils.nodeString(wsMessage.object, "threadId"));
            if (channelByThread != null) {
                this.listeners.dispatch(new Callback() { // from class: com.narvii.chat.waitinglist.b
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        ((WaitingListListener) obj).onWaitingListApprove(channelByThread);
                    }
                });
                return;
            }
            return;
        }
        if (i10 != 131) {
            return;
        }
        final SignallingChannel channelByThread2 = this.signallingService.getChannelByThread(JacksonUtils.nodeString(wsMessage.object, "threadId"));
        if (channelByThread2 != null) {
            final ArrayList arrayList = new ArrayList(channelByThread2.userWaitList);
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(wsMessage.object, "userProfileList");
            if (jsonNodeNodePath != null) {
                ArrayList listAs = JacksonUtils.readListAs(jsonNodeNodePath.toString(), User.class);
                channelByThread2.userWaitList.clear();
                if (listAs != null) {
                    channelByThread2.userWaitList.addAll(listAs);
                }
            }
            this.listeners.dispatch(new Callback() { // from class: com.narvii.chat.waitinglist.c
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    WaitingListService.onWsMessage$lambda$1(channelByThread2, arrayList, (WaitingListListener) obj);
                }
            });
        }
    }

    public final void waitListClean(int i10, @NotNull String threadId, @Nullable l<Object, l0> lVar) {
        t.j(threadId, "threadId");
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 132;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i10);
        objectNodeCreateObjectNode.put("threadId", threadId);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = wsCallback(new AnonymousClass1(i10, threadId), lVar);
        this.ws.sendRequest(wsRequest);
    }

    public final void waitListJoin(int i10, @NotNull String threadId, @Nullable l<Object, l0> lVar) {
        t.j(threadId, "threadId");
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 138;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i10);
        objectNodeCreateObjectNode.put("threadId", threadId);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = wsCallback(new C05331(i10, threadId), lVar);
        this.ws.sendRequest(wsRequest);
    }

    public final void waitListJoinApprove(int i10, @NotNull String threadId, @NotNull String uid, @Nullable l<Object, l0> lVar) {
        t.j(threadId, "threadId");
        t.j(uid, "uid");
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 134;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i10);
        objectNodeCreateObjectNode.put("threadId", threadId);
        objectNodeCreateObjectNode.put("uid", uid);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = wsCallback2(new C05341(i10, threadId), lVar);
        this.ws.sendRequest(wsRequest);
    }

    public final void waitListJoinCancel(int i10, @NotNull String threadId, @NotNull String uid, @Nullable l<Object, l0> lVar) {
        t.j(threadId, "threadId");
        t.j(uid, "uid");
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i10);
        objectNodeCreateObjectNode.put("threadId", threadId);
        objectNodeCreateObjectNode.put("uid", uid);
        wsRequest.object = objectNodeCreateObjectNode;
        wsRequest.callback = wsCallback(new C05351(i10, threadId), lVar);
        this.ws.sendRequest(wsRequest);
    }
}
