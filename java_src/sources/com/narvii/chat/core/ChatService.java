package com.narvii.chat.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.collection.ArrayMap;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media3.common.MimeTypes;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.BasicNetwork;
import com.android.volley.toolbox.NoCache;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.account.AuidService;
import com.narvii.amino.master.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatMessageItemDetailFragment;
import com.narvii.chat.MessageResponse;
import com.narvii.chat.ThreadConfigChangeListener;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatHelperKt;
import com.narvii.chat.util.ChatMessageDto;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.community.AffiliationsService;
import com.narvii.link.LinkSnippetHelper;
import com.narvii.link.LinkSnippetListener;
import com.narvii.media.MediaLoader;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.LinkSummary;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.notification.NotificationListener;
import com.narvii.photos.PhotoManager;
import com.narvii.services.incubator.CommunityContext;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Tag;
import com.narvii.util.UriUtils;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiResponseProgressListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.http.ProxyStack;
import com.narvii.util.ws.WsError;
import com.narvii.util.ws.WsMessage;
import com.narvii.util.ws.WsRequest;
import com.narvii.util.ws.WsService;
import com.narvii.widget.NVImageView;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.UUID;
import kotlin.collections.p;
import kotlin.collections.v;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.u0;
import okhttp3.internal.http2.Http2Connection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class ChatService implements WsService.WsListener, NotificationListener {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private final int CHAT_RESET_INTERVAL;

    @NotNull
    private final Tag DONE;
    private final String TAG;
    private final int THREAD_CHECK_REQUEST_MIN_INTERVAL;

    @NotNull
    public final HashMap<String, WeakReference<Bitmap>> bitmapCache;

    @NotNull
    private final ChatHelper chaHelper;

    @NotNull
    private final SharedPreferences chatDraftPrefs;

    @NotNull
    private final HashSet<Integer> communitiesIsRequestingThreadCheck;

    @NotNull
    private final SparseArray<EventDispatcher<ChatMessageReceptor>> communityLevelReceptors;

    @NotNull
    private final NVContext ctx;
    private int curCid;

    @Nullable
    private NVContext curCommunityContext;

    @Nullable
    private DraftMap drafts;

    @NotNull
    private final EventDispatcher<ChatMessageReceptor> globalLevelReceptors;

    @NotNull
    private final HashSet<String> guestThreadSet;

    @NotNull
    private final ArrayList<Integer> inProcessUploadMediaIds;

    @NotNull
    private final SparseArray<Long> lastThreadCheckTime;
    private long lastWsDisconnectTimeMillis;

    @NotNull
    private final LocalBroadcastManager localBroadcastManager;

    @NotNull
    private final SparseArray<ChatMessage> messages;

    @Nullable
    private String myUid;

    @NotNull
    private final SparseArray<Date> outboundMessageCreateTime;

    @NotNull
    private final HashMap<Integer, Set<Integer>> outboundMessagesNdcIdsMapper;

    @NotNull
    private final File photoDir;
    private boolean photoTouched;

    @NotNull
    private final ChatService$postListener$1 postListener;

    @NotNull
    private final SharedPreferences prefs;

    @NotNull
    private final SparseBooleanArray recalledMessages;

    @NotNull
    private final BroadcastReceiver receiver;

    @NotNull
    private final long[] recentMessageTime;

    @NotNull
    private final RequestQueue serialRequestQueue;

    @Nullable
    private String setLatestTid;
    private long setLatestTime;

    @NotNull
    private final SparseArray<ArrayMap<String, ThreadCheckInfo>> threadCheckInfosMapper;

    @NotNull
    private final HashSet<Integer> threadCheckQueue;

    @Nullable
    private ApiRequest threadCheckRequest;

    @NotNull
    private final Runnable threadCheckRunnable;

    @NotNull
    private final HashMap<String, EventDispatcher<ThreadConfigChangeListener>> threadConfigDispatcher;

    @NotNull
    private final HashMap<String, EventDispatcher<ChatMessageReceptor>> threadLevelReceptor;

    @NotNull
    private final SparseArray<Integer> unreadChatCountMapper;

    @NotNull
    private final HashMap<String, EventDispatcher<VideoMessageProgressChangeListener>> videoMessageProgressDispatcher;

    @NotNull
    private final SparseIntArray videoUploadPercents;

    @NotNull
    private final WsService ws;

    public interface ChatMessageReceptor {
        void onNewChatMessage(int i10, @NotNull ChatMessageDto chatMessageDto);

        void onResetChatMessageList();

        void onUnreadThreadCountChanged(int i10);
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final int generateClientRefId() {
            return (int) ((System.currentTimeMillis() / ((long) 10)) % ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS));
        }
    }

    public static final class DraftMap extends LinkedHashMap<String, String> {
        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsKey(Object obj) {
            if (obj instanceof String) {
                return containsKey((String) obj);
            }
            return false;
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsValue(Object obj) {
            if (obj instanceof String) {
                return containsValue((String) obj);
            }
            return false;
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            if (obj instanceof String) {
                return get((String) obj);
            }
            return null;
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object getOrDefault(Object obj, Object obj2) {
            return !(obj instanceof String) ? obj2 : getOrDefault((String) obj, (String) obj2);
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object remove(Object obj) {
            if (obj instanceof String) {
                return remove((String) obj);
            }
            return null;
        }

        public /* bridge */ boolean containsKey(String str) {
            return super.containsKey((Object) str);
        }

        public /* bridge */ boolean containsValue(String str) {
            return super.containsValue((Object) str);
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ String get(Object obj) {
            if (obj instanceof String) {
                return get((String) obj);
            }
            return null;
        }

        public final /* bridge */ String getOrDefault(Object obj, String str) {
            return !(obj instanceof String) ? str : getOrDefault((String) obj, str);
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ String remove(Object obj) {
            if (obj instanceof String) {
                return remove((String) obj);
            }
            return null;
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Set<Map.Entry<String, String>> entrySet() {
            return getEntries();
        }

        public /* bridge */ String get(String str) {
            return (String) super.get((Object) str);
        }

        public /* bridge */ Set<Map.Entry<String, String>> getEntries() {
            return super.entrySet();
        }

        public /* bridge */ Set<String> getKeys() {
            return super.keySet();
        }

        public /* bridge */ String getOrDefault(String str, String str2) {
            return (String) super.getOrDefault((Object) str, str2);
        }

        public /* bridge */ int getSize() {
            return super.size();
        }

        public /* bridge */ Collection<String> getValues() {
            return super.values();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Set<String> keySet() {
            return getKeys();
        }

        public /* bridge */ String remove(String str) {
            return (String) super.remove((Object) str);
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(@Nullable Map.Entry<String, String> entry) {
            if (size() > 100) {
                return true;
            }
            return false;
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ int size() {
            return getSize();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Collection<String> values() {
            return getValues();
        }

        @Override // java.util.HashMap, java.util.Map
        public final /* bridge */ boolean remove(Object obj, Object obj2) {
            if ((obj instanceof String) && (obj2 instanceof String)) {
                return remove((String) obj, (String) obj2);
            }
            return false;
        }

        public /* bridge */ boolean remove(String str, String str2) {
            return super.remove((Object) str, (Object) str2);
        }
    }

    private final class LinkSnippetHandler implements LinkSnippetListener {
        private boolean finished;

        @NotNull
        private String link;

        @Nullable
        private LinkSnippetHelper linkSnippetHelper;

        @NotNull
        private ChatMessage msg;
        final /* synthetic */ ChatService this$0;

        public final boolean getFinished() {
            return this.finished;
        }

        @NotNull
        public final String getLink() {
            return this.link;
        }

        @Nullable
        public final LinkSnippetHelper getLinkSnippetHelper() {
            return this.linkSnippetHelper;
        }

        @NotNull
        public final ChatMessage getMsg() {
            return this.msg;
        }

        @Override // com.narvii.link.LinkSnippetListener
        public boolean isFinished() {
            return this.finished;
        }

        public final void setFinished(boolean z6) {
            this.finished = z6;
        }

        public final void setLink(@NotNull String str) {
            t.j(str, "<set-?>");
            this.link = str;
        }

        public final void setLinkSnippetHelper(@Nullable LinkSnippetHelper linkSnippetHelper) {
            this.linkSnippetHelper = linkSnippetHelper;
        }

        public final void setMsg(@NotNull ChatMessage chatMessage) {
            t.j(chatMessage, "<set-?>");
            this.msg = chatMessage;
        }

        public LinkSnippetHandler(@NotNull ChatService chatService, @NotNull ChatMessage msg, @Nullable String link, LinkSnippetHelper linkSnippetHelper) {
            t.j(msg, "msg");
            t.j(link, "link");
            this.this$0 = chatService;
            this.msg = msg;
            this.link = link;
            this.linkSnippetHelper = linkSnippetHelper;
        }

        @Override // com.narvii.link.LinkSnippetListener
        public void onFinish(@Nullable Media media) {
            if (this.finished) {
                return;
            }
            this.finished = true;
            LinkSnippetHelper linkSnippetHelper = this.linkSnippetHelper;
            if (linkSnippetHelper != null) {
                linkSnippetHelper.removeTimeoutRunnable();
            }
            NVObject nVObjectM1622clone = this.msg.m1622clone();
            t.h(nVObjectM1622clone, "null cannot be cast to non-null type com.narvii.model.ChatMessage");
            ChatMessage chatMessage = (ChatMessage) nVObjectM1622clone;
            if (media != null) {
                if (chatMessage.extensions == null) {
                    chatMessage.extensions = JacksonUtils.createObjectNode();
                }
                LinkSummary linkSummary = new LinkSummary();
                ArrayList arrayList = new ArrayList();
                linkSummary.mediaList = arrayList;
                arrayList.add(media);
                linkSummary.link = this.link;
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(linkSummary);
                chatMessage.extensions.put("linkSnippetList", JacksonUtils.DEFAULT_MAPPER.valueToTree(arrayList2));
            }
            chatMessage._linkParsing = false;
            chatMessage._status = 1;
            this.this$0.storeOutboundMessage(chatMessage);
            Notification notification = new Notification("update", chatMessage);
            ChatService chatService = this.this$0;
            chatService.sendNotification(chatService.getNdcIdFromMessage(chatMessage), notification);
            ChatService chatService2 = this.this$0;
            ApiRequest apiRequestBuildRequest = chatService2.buildRequest(chatService2.getNdcIdFromMessage(chatMessage), chatMessage);
            if (apiRequestBuildRequest != null) {
                Object service = this.this$0.getCtx().getService("api");
                t.i(service, "getService(...)");
                ((ApiService) service).exec(apiRequestBuildRequest, this.this$0.postListener, this.this$0.serialRequestQueue);
                this.this$0.recordOutBoundCreatedTime(chatMessage);
                return;
            }
            ChatService$postListener$1 chatService$postListener$1 = this.this$0.postListener;
            ApiRequest apiRequestBuild = ApiRequest.builder().tag(chatMessage).build();
            t.i(apiRequestBuild, "build(...)");
            String string = this.this$0.getCtx().getContext().getString(R.string.api_request_fail);
            t.i(string, "getString(...)");
            chatService$postListener$1.onFail(apiRequestBuild, 0, null, string, null, null);
        }
    }

    public final class VideoMessagePostListener extends ApiResponseProgressListener<MessageResponse> {

        @NotNull
        private ChatMessage chatMessage;
        final /* synthetic */ ChatService this$0;

        @NotNull
        public final ChatMessage getChatMessage() {
            return this.chatMessage;
        }

        public final void setChatMessage(@NotNull ChatMessage chatMessage) {
            t.j(chatMessage, "<set-?>");
            this.chatMessage = chatMessage;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public VideoMessagePostListener(@NotNull ChatService chatService, @NotNull Class<? extends MessageResponse> clazz, ChatMessage chatMessage) {
            super(clazz);
            t.j(clazz, "clazz");
            t.j(chatMessage, "chatMessage");
            this.this$0 = chatService;
            this.chatMessage = chatMessage;
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
            t.j(req, "req");
            t.j(message, "message");
            t.j(t5, "t");
            super.onFail(req, i10, list, message, apiResponse, t5);
            this.this$0.onPostFailed(req, i10, list, message, apiResponse, t5);
            this.this$0.videoUploadPercents.put(this.chatMessage.getClientRefIdTmp(), 0);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(@NotNull ApiRequest req, @NotNull MessageResponse resp) throws Exception {
            t.j(req, "req");
            t.j(resp, "resp");
            super.onFinish(req, resp);
            this.this$0.onPostFinished(req, resp);
            this.this$0.videoUploadPercents.put(this.chatMessage.getClientRefIdTmp(), 100);
        }

        @Override // com.narvii.util.http.PostProgressListener
        public void onPostProgress(int i10, int i11) {
            Log.i("chat_video_upload_progress", i10 + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + i11);
            if (this.chatMessage.getClientRefIdTmp() != 0) {
                int i12 = i11 == 0 ? 0 : (int) ((i10 * 100.0f) / i11);
                this.this$0.videoUploadPercents.put(this.chatMessage.getClientRefIdTmp(), i12);
                ChatService chatService = this.this$0;
                ChatMessage chatMessage = this.chatMessage;
                chatService.dispatchVideoMessagePostProgressChange(chatMessage.threadId, chatMessage.getClientRefIdTmp(), i12);
            }
        }
    }

    public interface VideoMessageProgressChangeListener {
        void onProgressUpdate(int i10, int i11);
    }

    private final ApiRequest buildVideoChatRequest(int i10, ChatMessage chatMessage, ObjectNode objectNode) {
        File path;
        File path2;
        if (chatMessage == null) {
            return null;
        }
        buildBaseRequestNode$default(this, chatMessage, objectNode, false, 4, null);
        Media media = chatMessage.media();
        if (media != null) {
            path2 = photoManager$Amino_bundle().getPath(media.url);
            path = photoManager$Amino_bundle().getPath(media.coverImage);
        } else {
            path = null;
            path2 = null;
        }
        if (path2 == null) {
            return null;
        }
        ApiRequest.Builder builderCommunityId = ApiRequest.builder().post().chatServer().path("/chat/thread/" + chatMessage.threadId + "/message").communityId(i10);
        if (path != null && path.exists()) {
            builderCommunityId.addPart(new ApiRequest.FilePart("cover.jpg", path));
        }
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("contentType", "video/mp4");
        objectNodeCreateObjectNode.put("cover", "cover.jpg");
        objectNodeCreateObjectNode.put("video", "video.mp4");
        objectNode.put("videoUpload", objectNodeCreateObjectNode);
        builderCommunityId.contentTypeMultiPart().addPart(new ApiRequest.FormPart(ApiRequest.MULTIPART_NAME_PAYLOAD, objectNode.toString())).addPart(new ApiRequest.FilePart("video.mp4", path2));
        builderCommunityId.tag(chatMessage);
        builderCommunityId.timeout(60000);
        return builderCommunityId.build();
    }

    public static /* synthetic */ void queryThreadCheckInfo$default(ChatService chatService, int i10, boolean z6, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z6 = false;
        }
        chatService.queryThreadCheckInfo(i10, z6);
    }

    public static /* synthetic */ void sendChatMessageAck$default(ChatService chatService, int i10, ChatMessage chatMessage, boolean z6, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z6 = false;
        }
        chatService.sendChatMessageAck(i10, chatMessage, z6);
    }

    private final boolean sendChatRequest(int i10, ChatMessage chatMessage) {
        if (chatMessage == null) {
            return false;
        }
        if (parseLinkFirst(chatMessage)) {
            return true;
        }
        ApiRequest apiRequestBuildRequest = buildRequest(i10, chatMessage);
        if (apiRequestBuildRequest == null) {
            ChatService$postListener$1 chatService$postListener$1 = this.postListener;
            ApiRequest apiRequestBuild = ApiRequest.builder().tag(chatMessage).build();
            t.i(apiRequestBuild, "build(...)");
            String string = this.ctx.getContext().getString(R.string.api_request_fail);
            t.i(string, "getString(...)");
            chatService$postListener$1.onFail(apiRequestBuild, 0, null, string, null, null);
            return false;
        }
        Object service = this.ctx.getService("api");
        t.i(service, "getService(...)");
        ApiService apiService = (ApiService) service;
        ApiResponseListener<MessageResponse> videoMessagePostListener = isVideoUploadRequest(chatMessage) ? getVideoMessagePostListener(chatMessage) : this.postListener;
        if (chatMessage.isSerialExecutorRequired()) {
            apiService.exec(apiRequestBuildRequest, videoMessagePostListener, this.serialRequestQueue);
        } else {
            apiService.exec(apiRequestBuildRequest, videoMessagePostListener);
        }
        recordOutBoundCreatedTime(chatMessage);
        return true;
    }

    private final ThreadCheckInfo updateThreadCheckInfo(ArrayMap<String, ThreadCheckInfo> arrayMap, ThreadCheckInfo threadCheckInfo) {
        if (arrayMap == null || threadCheckInfo == null) {
            return null;
        }
        ThreadCheckInfo threadCheckInfo2 = arrayMap.get(threadCheckInfo.getThreadId());
        Date lastReadTime = threadCheckInfo2 != null ? threadCheckInfo2.getLastReadTime() : null;
        Date latestActivityTime = threadCheckInfo2 != null ? threadCheckInfo2.getLatestActivityTime() : null;
        if (ChatHelperKt.isNewer(lastReadTime, threadCheckInfo.getLastReadTime())) {
            threadCheckInfo.setLastReadTime(lastReadTime);
        }
        if (ChatHelperKt.isNewer(latestActivityTime, threadCheckInfo.getLatestActivityTime())) {
            threadCheckInfo.setLatestActivityTime(latestActivityTime);
        }
        arrayMap.put(threadCheckInfo.getThreadId(), threadCheckInfo);
        return threadCheckInfo;
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    public final int getCurCid() {
        return this.curCid;
    }

    @Nullable
    public final NVContext getCurCommunityContext() {
        return this.curCommunityContext;
    }

    public final int getCurVideoUploadProgress(@Nullable ChatMessage chatMessage) {
        if (chatMessage == null) {
            return 0;
        }
        int i10 = chatMessage._status;
        if (i10 == 0) {
            return 100;
        }
        if (i10 == 2 || this.videoUploadPercents.indexOfKey(chatMessage.getClientRefIdTmp()) < 0) {
            return 0;
        }
        return this.videoUploadPercents.get(chatMessage.getClientRefIdTmp());
    }

    @Nullable
    public final String getDraft(@Nullable String str) {
        DraftMap draftMap;
        if (str == null || str.length() == 0 || (draftMap = this.drafts) == null) {
            return null;
        }
        return (String) draftMap.get((Object) str);
    }

    @NotNull
    public final BroadcastReceiver getReceiver$Amino_bundle() {
        return this.receiver;
    }

    @Nullable
    public final Date getThreadLastReadTime(int i10, @Nullable String str) {
        ThreadCheckInfo threadCheckInfo;
        if (str == null || str.length() == 0 || (threadCheckInfo = getCurCommunityThreadCheckInfos(i10).get(str)) == null) {
            return null;
        }
        return threadCheckInfo.getLastReadTime();
    }

    public final void handleQuitMessage(@Nullable ChatMessageDto chatMessageDto) {
        if ((chatMessageDto != null ? chatMessageDto.chatMessage : null) == null) {
            return;
        }
        ChatMessage chatMessage = chatMessageDto.chatMessage;
        if (chatMessage.type == 102 || chatMessage.isThreadDestroyMessage()) {
            AccountService accountService = (AccountService) this.ctx.getService("account");
            if (Utils.isEqualsNotNull(accountService != null ? accountService.getUserId() : null, chatMessage.uid()) || chatMessage.type == 118) {
                removeThread(chatMessageDto.ndcId, chatMessage.threadId);
                ChatThread chatThread = new ChatThread();
                chatThread.threadId = chatMessageDto.chatMessage.threadId;
                sendNotification(chatMessageDto.ndcId, new Notification("delete", chatThread));
            }
        }
    }

    public final boolean isCurThreadUnread(int i10, @Nullable String str) {
        ThreadCheckInfo threadCheckInfo;
        if (str == null || str.length() == 0 || (threadCheckInfo = getCurCommunityThreadCheckInfos(i10).get(str)) == null) {
            return false;
        }
        return threadCheckInfo.hasUnreadMessage();
    }

    @NotNull
    public final PhotoManager photoManager$Amino_bundle() {
        this.photoTouched = true;
        Object service = this.ctx.getService("photo");
        t.i(service, "getService(...)");
        return (PhotoManager) service;
    }

    @Nullable
    public final ChatMessage postMessage(@Nullable ChatMessage chatMessage) {
        return postMessage$default(this, 0, chatMessage, 1, null);
    }

    public final void queryThreadCheckInfo(int i10) {
        queryThreadCheckInfo$default(this, i10, false, 2, (Object) null);
    }

    public final void sendChatMessageAck(int i10, @Nullable ChatMessage chatMessage, boolean z6) {
        if (i10 < 0 || chatMessage == null) {
            return;
        }
        ChatMessageDto chatMessageDto = new ChatMessageDto();
        chatMessageDto.chatMessage = chatMessage;
        chatMessageDto.ndcId = i10;
        sendChatMessageAck(chatMessageDto, z6);
    }

    public final void setCurCid(int i10) {
        this.curCid = i10;
    }

    public final void setCurCommunityContext(@Nullable NVContext nVContext) {
        this.curCommunityContext = nVContext;
    }

    public final void updateThreadCheckTable(@Nullable GlobalThreadCheckResultMapResponse globalThreadCheckResultMapResponse) {
        HashMap<Integer, List<ThreadCheckInfo>> threadCheckResultInCommunities;
        boolean z6;
        if ((globalThreadCheckResultMapResponse != null ? globalThreadCheckResultMapResponse.getThreadCheckResultInCommunities() : null) == null || (threadCheckResultInCommunities = globalThreadCheckResultMapResponse.getThreadCheckResultInCommunities()) == null) {
            return;
        }
        Iterator<Map.Entry<Integer, List<ThreadCheckInfo>>> it = threadCheckResultInCommunities.entrySet().iterator();
        loop0: while (true) {
            z6 = false;
            while (true) {
                if (!it.hasNext()) {
                    break loop0;
                }
                Map.Entry<Integer, List<ThreadCheckInfo>> next = it.next();
                int iIntValue = next.getKey().intValue();
                List<ThreadCheckInfo> value = next.getValue();
                Integer num = this.unreadChatCountMapper.get(iIntValue);
                ArrayMap<String, ThreadCheckInfo> curCommunityThreadCheckInfos = getCurCommunityThreadCheckInfos(iIntValue);
                Iterator<T> it2 = value.iterator();
                int i10 = 0;
                while (true) {
                    int i11 = 1;
                    if (!it2.hasNext()) {
                        break;
                    }
                    ThreadCheckInfo threadCheckInfoUpdateThreadCheckInfo = updateThreadCheckInfo(curCommunityThreadCheckInfos, (ThreadCheckInfo) it2.next());
                    if (threadCheckInfoUpdateThreadCheckInfo == null || !threadCheckInfoUpdateThreadCheckInfo.hasUnreadMessage()) {
                        i11 = 0;
                    }
                    i10 += i11;
                }
                this.unreadChatCountMapper.put(iIntValue, Integer.valueOf(i10));
                if (z6 || num == null || num.intValue() != i10) {
                    z6 = true;
                }
            }
        }
        if (z6) {
            dispatchGlobalThreadCountChange();
        }
    }

    public ChatService(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        this.ctx = ctx;
        Object service = ctx.getService("ws");
        t.i(service, "getService(...)");
        WsService wsService = (WsService) service;
        this.ws = wsService;
        this.DONE = new Tag("done");
        this.TAG = ChatService.class.getName();
        this.CHAT_RESET_INTERVAL = 300000;
        this.THREAD_CHECK_REQUEST_MIN_INTERVAL = AuidService.REFRESH_AUID_TIME_INTERVAL_MS;
        this.globalLevelReceptors = new EventDispatcher<>();
        this.communityLevelReceptors = new SparseArray<>();
        this.threadLevelReceptor = new HashMap<>();
        this.threadCheckInfosMapper = new SparseArray<>();
        this.unreadChatCountMapper = new SparseArray<>();
        this.lastThreadCheckTime = new SparseArray<>();
        this.threadCheckQueue = new HashSet<>();
        this.communitiesIsRequestingThreadCheck = new HashSet<>();
        this.outboundMessageCreateTime = new SparseArray<>();
        this.inProcessUploadMediaIds = new ArrayList<>();
        this.messages = new SparseArray<>();
        this.outboundMessagesNdcIdsMapper = new HashMap<>();
        this.recalledMessages = new SparseBooleanArray();
        this.bitmapCache = new HashMap<>();
        this.videoUploadPercents = new SparseIntArray();
        this.videoMessageProgressDispatcher = new HashMap<>();
        this.threadConfigDispatcher = new HashMap<>();
        this.guestThreadSet = new HashSet<>();
        wsService.listeners.addListener(this);
        LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(ctx.getContext());
        t.i(localBroadcastManagerB, "getInstance(...)");
        this.localBroadcastManager = localBroadcastManagerB;
        Context context = ctx.getContext();
        t.i(context, "getContext(...)");
        this.chaHelper = new ChatHelper(context);
        SharedPreferences sharedPreferences = ctx.getContext().getSharedPreferences("chat", 0);
        t.i(sharedPreferences, "getSharedPreferences(...)");
        this.prefs = sharedPreferences;
        SharedPreferences sharedPreferences2 = ctx.getContext().getSharedPreferences(ChatServiceKt.KEY_PREF_CHAT_DRAFT, 0);
        t.i(sharedPreferences2, "getSharedPreferences(...)");
        this.chatDraftPrefs = sharedPreferences2;
        this.photoDir = new File(new File(ctx.getContext().getFilesDir(), "photo"), "chat");
        RequestQueue requestQueue = new RequestQueue(new NoCache(), new BasicNetwork(new ProxyStack(ctx)), 1);
        this.serialRequestQueue = requestQueue;
        requestQueue.start();
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.chat.core.ChatService$receiver$1
            @Override // android.content.BroadcastReceiver
            public void onReceive(@NotNull Context context2, @NotNull Intent intent) {
                t.j(context2, "context");
                t.j(intent, "intent");
                if (t.e(AccountService.ACTION_ACCOUNT_CHANGED, intent.getAction())) {
                    AccountService accountService = (AccountService) this.this$0.getCtx().getService("account");
                    this.this$0.myUid = accountService.getUserId();
                    if (!accountService.hasAccount() && this.this$0.threadCheckRequest != null) {
                        Object service2 = this.this$0.getCtx().getService("api");
                        t.i(service2, "getService(...)");
                        ((ApiService) service2).abort(this.this$0.threadCheckRequest);
                    }
                    this.this$0.clear();
                }
            }
        };
        this.threadCheckRunnable = new Runnable() { // from class: com.narvii.chat.core.k
            @Override // java.lang.Runnable
            public final void run() {
                ChatService.threadCheckRunnable$lambda$13(this.f1870a);
            }
        };
        this.postListener = new ChatService$postListener$1(this, MessageResponse.class);
        this.drafts = new DraftMap();
        this.recentMessageTime = new long[3];
    }

    public static /* synthetic */ void buildBaseRequestNode$default(ChatService chatService, ChatMessage chatMessage, ObjectNode objectNode, boolean z6, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z6 = true;
        }
        chatService.buildBaseRequestNode(chatMessage, objectNode, z6);
    }

    private final int buildUnreadThreadMapper(int i10) {
        ArrayMap<String, ThreadCheckInfo> arrayMap = this.threadCheckInfosMapper.get(i10);
        int i11 = 0;
        if (arrayMap == null) {
            this.unreadChatCountMapper.put(i10, 0);
            return 0;
        }
        Collection<ThreadCheckInfo> collectionValues = arrayMap.values();
        t.i(collectionValues, "<get-values>(...)");
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            if (((ThreadCheckInfo) it.next()).hasUnreadMessage()) {
                i11++;
            }
        }
        this.unreadChatCountMapper.put(i10, Integer.valueOf(i11));
        return i11;
    }

    private final void checkCurCommunityThreadCountChange(int i10) {
        if (i10 < 0) {
            return;
        }
        Integer num = this.unreadChatCountMapper.get(i10);
        int iBuildUnreadThreadMapper = buildUnreadThreadMapper(i10);
        if (num != null && iBuildUnreadThreadMapper == num.intValue()) {
            return;
        }
        dispatchUnreadCountChangeOnCommunityLevel(i10);
        dispatchGlobalThreadCountChange();
    }

    private final void dispatchAnnouncementChange(String str, final ChatMessage chatMessage) {
        EventDispatcher<ThreadConfigChangeListener> eventDispatcher;
        if (str == null || str.length() == 0 || chatMessage == null || (eventDispatcher = this.threadConfigDispatcher.get(str)) == null) {
            return;
        }
        eventDispatcher.dispatch(new Callback() { // from class: com.narvii.chat.core.a
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ChatService.dispatchAnnouncementChange$lambda$31(chatMessage, (ThreadConfigChangeListener) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void dispatchAnnouncementChange$lambda$31(ChatMessage chatMessage, ThreadConfigChangeListener threadConfigChangeListener) {
        threadConfigChangeListener.announcementPinBehaviorChanged(chatMessage.type == 121);
    }

    private final void dispatchChannelPermissionChange(String str, ChatMessage chatMessage) {
        EventDispatcher<ThreadConfigChangeListener> eventDispatcher;
        if (str == null || str.length() == 0 || chatMessage == null || (eventDispatcher = this.threadConfigDispatcher.get(str)) == null) {
            return;
        }
        final n0 n0Var = new n0();
        n0Var.element = 1;
        int i10 = chatMessage.type;
        if (i10 == 124) {
            n0Var.element = 3;
        } else if (i10 == 123) {
            n0Var.element = 2;
        } else if (i10 == 122) {
            n0Var.element = 1;
        }
        eventDispatcher.dispatch(new Callback() { // from class: com.narvii.chat.core.l
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ChatService.dispatchChannelPermissionChange$lambda$29(n0Var, (ThreadConfigChangeListener) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void dispatchChannelPermissionChange$lambda$29(n0 p, ThreadConfigChangeListener threadConfigChangeListener) {
        t.j(p, "$p");
        threadConfigChangeListener.onLivePermissionChanged(p.element);
    }

    private final void dispatchChatMessageListChange(String str, final ChatMessageDto chatMessageDto) {
        if (str == null || str.length() == 0 || chatMessageDto == null) {
            return;
        }
        EventDispatcher<ChatMessageReceptor> eventDispatcher = this.threadLevelReceptor.get(str);
        Log.d(this.TAG, "dispatchChatMessageListChange --> " + str);
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback() { // from class: com.narvii.chat.core.h
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    ChatService.dispatchChatMessageListChange$lambda$6(chatMessageDto, (ChatService.ChatMessageReceptor) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void dispatchChatMessageListChange$lambda$6(ChatMessageDto chatMessageDto, ChatMessageReceptor chatMessageReceptor) {
        chatMessageReceptor.onNewChatMessage(chatMessageDto.ndcId, chatMessageDto);
    }

    private final void dispatchChatMessageListReset() {
        Log.d(this.TAG, "dispatchChatMessageListReset");
        Iterator<EventDispatcher<ChatMessageReceptor>> it = this.threadLevelReceptor.values().iterator();
        while (it.hasNext()) {
            it.next().dispatch(new Callback() { // from class: com.narvii.chat.core.j
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    ((ChatService.ChatMessageReceptor) obj).onResetChatMessageList();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void dispatchGlobalOnNewMessage$lambda$2(int i10, ChatMessageDto chatMessageDto, ChatMessageReceptor chatMessageReceptor) {
        t.j(chatMessageDto, "$chatMessageDto");
        chatMessageReceptor.onNewChatMessage(i10, chatMessageDto);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void dispatchVideoMessagePostProgressChange(String str, final int i10, final int i11) {
        EventDispatcher<VideoMessageProgressChangeListener> eventDispatcher;
        if (str == null || str.length() == 0 || (eventDispatcher = this.videoMessageProgressDispatcher.get(str)) == null) {
            return;
        }
        eventDispatcher.dispatch(new Callback() { // from class: com.narvii.chat.core.f
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((ChatService.VideoMessageProgressChangeListener) obj).onProgressUpdate(i10, i11);
            }
        });
    }

    private final void dispatchViewOnlyChange(String str, final ChatMessage chatMessage) {
        EventDispatcher<ThreadConfigChangeListener> eventDispatcher;
        if (str == null || str.length() == 0 || chatMessage == null || (eventDispatcher = this.threadConfigDispatcher.get(str)) == null) {
            return;
        }
        eventDispatcher.dispatch(new Callback() { // from class: com.narvii.chat.core.d
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ChatService.dispatchViewOnlyChange$lambda$30(chatMessage, (ThreadConfigChangeListener) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void dispatchViewOnlyChange$lambda$30(ChatMessage chatMessage, ThreadConfigChangeListener threadConfigChangeListener) {
        threadConfigChangeListener.viewOnlyChanged(chatMessage.type == 125);
    }

    private final ArrayMap<String, ThreadCheckInfo> getCurCommunityThreadCheckInfos(int i10) {
        ArrayMap<String, ThreadCheckInfo> arrayMap = this.threadCheckInfosMapper.get(i10);
        if (arrayMap != null) {
            return arrayMap;
        }
        ArrayMap<String, ThreadCheckInfo> arrayMap2 = new ArrayMap<>();
        this.threadCheckInfosMapper.put(i10, arrayMap2);
        return arrayMap2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getNdcIdFromMessage(ChatMessage chatMessage) {
        int i10 = chatMessage._ndcId;
        return i10 == 0 ? this.curCid : i10;
    }

    private final ApiResponseListener<MessageResponse> getVideoMessagePostListener(ChatMessage chatMessage) {
        return new VideoMessagePostListener(this, MessageResponse.class, chatMessage);
    }

    private final boolean isReadyToRequestThreadCheckForCurCommunity(int i10) {
        if (this.lastThreadCheckTime.get(i10) != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Long l = this.lastThreadCheckTime.get(i10);
            t.i(l, "get(...)");
            if (jCurrentTimeMillis - l.longValue() <= this.THREAD_CHECK_REQUEST_MIN_INTERVAL) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPostFinished$lambda$23(final ChatService this$0, final ChatMessage orig, final ChatMessage chatMessage, Boolean bool) {
        t.j(this$0, "this$0");
        t.j(orig, "$orig");
        Utils.post(new Runnable() { // from class: com.narvii.chat.core.e
            @Override // java.lang.Runnable
            public final void run() {
                ChatService.onPostFinished$lambda$23$lambda$22(this.f1862a, orig, chatMessage);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPostFinished$lambda$23$lambda$22(ChatService this$0, ChatMessage orig, ChatMessage chatMessage) {
        t.j(this$0, "this$0");
        t.j(orig, "$orig");
        t.g(chatMessage);
        this$0.onMessagePostSuccess(orig, chatMessage);
    }

    public static /* synthetic */ ChatMessage postMessage$default(ChatService chatService, int i10, ChatMessage chatMessage, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = chatService.curCid;
        }
        return chatService.postMessage(i10, chatMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void printCurrentThreadCheckTable() {
        Collection<ThreadCheckInfo> collectionValues;
        StringBuilder sb = new StringBuilder();
        sb.append("\n-------------------Thread Check table ------------------\n");
        int size = this.threadCheckInfosMapper.size();
        for (int i10 = 0; i10 < size; i10++) {
            int iKeyAt = this.threadCheckInfosMapper.keyAt(i10);
            ArrayMap<String, ThreadCheckInfo> arrayMapValueAt = this.threadCheckInfosMapper.valueAt(i10);
            if (arrayMapValueAt != null && (collectionValues = arrayMapValueAt.values()) != null) {
                for (ThreadCheckInfo threadCheckInfo : collectionValues) {
                    u0 u0Var = u0.INSTANCE;
                    String str = String.format("%10d", Arrays.copyOf(new Object[]{Integer.valueOf(iKeyAt)}, 1));
                    t.i(str, "format(...)");
                    String str2 = String.format("%40s", Arrays.copyOf(new Object[]{threadCheckInfo.getThreadId()}, 1));
                    t.i(str2, "format(...)");
                    String str3 = String.format("%40s", Arrays.copyOf(new Object[]{threadCheckInfo.getLatestActivityTime()}, 1));
                    t.i(str3, "format(...)");
                    String str4 = String.format("%40s", Arrays.copyOf(new Object[]{threadCheckInfo.getLastReadTime()}, 1));
                    t.i(str4, "format(...)");
                    sb.append(str + " " + str2 + " " + str3 + " " + str4 + "     " + threadCheckInfo.getAlertOption() + "\n");
                }
            }
        }
        Log.d(this.TAG, sb.toString());
    }

    public static /* synthetic */ void queryThreadCheckInfo$default(ChatService chatService, Set set, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        chatService.queryThreadCheckInfo((Set<Integer>) set, z6);
    }

    private final void recordRecentMessage() {
        Long lK0 = p.k0(this.recentMessageTime);
        this.recentMessageTime[lK0 != null ? p.W(this.recentMessageTime, lK0.longValue()) : 0] = SystemClock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void refresh$lambda$12(ChatService this$0, AffiliationsService.AffiliationResponse affiliationResponse) {
        t.j(this$0, "this$0");
        HashSet hashSet = new HashSet();
        Iterator<Integer> it = affiliationResponse.affiliations.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next());
        }
        this$0.queryThreadCheckInfo((Set<Integer>) hashSet, false);
    }

    private final void removeOutboundMessage(int i10) {
        Set<Integer> set;
        ChatMessage chatMessage = this.messages.get(i10);
        this.messages.remove(i10);
        if (chatMessage == null || (set = this.outboundMessagesNdcIdsMapper.get(Integer.valueOf(chatMessage._ndcId))) == null) {
            return;
        }
        set.remove(Integer.valueOf(i10));
    }

    public static /* synthetic */ void sendChatMessageAck$default(ChatService chatService, ChatMessageDto chatMessageDto, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        chatService.sendChatMessageAck(chatMessageDto, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void threadCheckRunnable$lambda$13(ChatService this$0) {
        t.j(this$0, "this$0");
        queryThreadCheckInfo$default(this$0, (Set) this$0.threadCheckQueue, false, 2, (Object) null);
    }

    public static /* synthetic */ void updateReadTime$default(ChatService chatService, int i10, String str, Date date, boolean z6, ChatThread chatThread, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            z6 = false;
        }
        boolean z10 = z6;
        if ((i11 & 16) != 0) {
            chatThread = null;
        }
        chatService.updateReadTime(i10, str, date, z10, chatThread);
    }

    public final void addCommunityLevelReceptor(int i10, @Nullable ChatMessageReceptor chatMessageReceptor) {
        if (i10 < 0 || chatMessageReceptor == null) {
            return;
        }
        EventDispatcher<ChatMessageReceptor> eventDispatcher = this.communityLevelReceptors.get(i10);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(chatMessageReceptor);
        this.communityLevelReceptors.put(i10, eventDispatcher);
    }

    public final void addGlobalChatMessageReceptor(@NotNull ChatMessageReceptor listener) {
        t.j(listener, "listener");
        this.globalLevelReceptors.addListener(listener);
    }

    public final void addGuestThreadId(@Nullable String str) {
        if (str != null) {
            this.guestThreadSet.add(str);
        }
    }

    public final void addInProcessUploadMedia(int i10) {
        if (this.inProcessUploadMediaIds.contains(Integer.valueOf(i10))) {
            return;
        }
        this.inProcessUploadMediaIds.add(Integer.valueOf(i10));
    }

    public final void addLiveChannelPermissionListener(@Nullable String str, @Nullable ThreadConfigChangeListener threadConfigChangeListener) {
        if (str == null || str.length() == 0 || threadConfigChangeListener == null) {
            return;
        }
        EventDispatcher<ThreadConfigChangeListener> eventDispatcher = this.threadConfigDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(threadConfigChangeListener);
        this.threadConfigDispatcher.put(str, eventDispatcher);
    }

    public final void addThreadCheckQueue(int i10) {
        if (this.communitiesIsRequestingThreadCheck.contains(Integer.valueOf(i10)) || !isReadyToRequestThreadCheckForCurCommunity(i10)) {
            return;
        }
        this.threadCheckQueue.add(Integer.valueOf(i10));
        Handler handler = Utils.handler;
        handler.removeCallbacks(this.threadCheckRunnable);
        handler.postDelayed(this.threadCheckRunnable, 400L);
    }

    public final void addThreadLvelRecptor(@Nullable String str, @Nullable ChatMessageReceptor chatMessageReceptor) {
        if (str == null || str.length() == 0 || chatMessageReceptor == null) {
            return;
        }
        EventDispatcher<ChatMessageReceptor> eventDispatcher = this.threadLevelReceptor.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(chatMessageReceptor);
        this.threadLevelReceptor.put(str, eventDispatcher);
    }

    public final void addVideoMessagePostListener(@Nullable String str, @Nullable VideoMessageProgressChangeListener videoMessageProgressChangeListener) {
        if (str == null || str.length() == 0 || videoMessageProgressChangeListener == null) {
            return;
        }
        EventDispatcher<VideoMessageProgressChangeListener> eventDispatcher = this.videoMessageProgressDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(videoMessageProgressChangeListener);
        this.videoMessageProgressDispatcher.put(str, eventDispatcher);
    }

    public final void buildBaseRequestNode(@Nullable ChatMessage chatMessage, @NotNull ObjectNode node, boolean z6) {
        t.j(node, "node");
        if (chatMessage == null) {
            return;
        }
        if (!TextUtils.isEmpty(chatMessage.getReplyMessageId())) {
            node.put("replyMessageId", chatMessage.getReplyMessageId());
        }
        node.put("type", chatMessage.type);
        node.put("content", chatMessage.content);
        node.put("clientRefId", chatMessage.getClientRefIdTmp());
        node.put("attachedObject", JacksonUtils.nodePath(chatMessage.extensions, "attachedObjectInfo"));
        int i10 = chatMessage.mediaType;
        if (i10 != 0) {
            node.put("mediaType", i10);
            if (TextUtils.isEmpty(chatMessage.mediaValue) || !z6) {
                return;
            }
            node.put("mediaValue", chatMessage.mediaValue);
        }
    }

    /* JADX WARN: Code duplicated, block: B:130:0x0299  */
    /* JADX WARN: Code duplicated, block: B:131:0x029d  */
    @Nullable
    public final ApiRequest buildRequest(int i10, @Nullable ChatMessage chatMessage) {
        File fileCreateTmpFile;
        String str;
        File fileCreateTmpFile2;
        String str2;
        String mediaValue;
        File file;
        String str3;
        File path;
        ApiRequest.Builder builderCommunityId;
        if (chatMessage == null) {
            return null;
        }
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        int i11 = chatMessage.type;
        if (i11 == 1) {
            t.g(objectNodeCreateObjectNode);
            buildBaseRequestNode$default(this, chatMessage, objectNodeCreateObjectNode, false, 4, null);
        } else if (i11 == 3) {
            objectNodeCreateObjectNode.put("stickerId", chatMessage.stickerId);
            objectNodeCreateObjectNode.put("type", 3);
            objectNodeCreateObjectNode.put("clientRefId", chatMessage.getClientRefIdTmp());
        } else {
            if (!chatMessage.isCallRelatedMessage()) {
                if (chatMessage.mediaType != 0 || (str3 = chatMessage.content) == null || str3.length() == 0) {
                    int i12 = chatMessage.mediaType;
                    if (i12 == 100 && (mediaValue = chatMessage.mediaValue) != null) {
                        t.i(mediaValue, "mediaValue");
                        if (kotlin.text.t.K(mediaValue, "photo://", false, 2, null)) {
                            PhotoManager photoManagerPhotoManager$Amino_bundle = photoManager$Amino_bundle();
                            File fileCreateTmpFile3 = Utils.createTmpFile();
                            String[] strArr = new String[1];
                            try {
                                photoManagerPhotoManager$Amino_bundle.writeUploadDataTo(chatMessage.mediaValue, NVImageView.TYPE_CHAT_MESSAGE, fileCreateTmpFile3, strArr, chatMessage.mediaUhqEnabled);
                            } catch (Exception e) {
                                Log.e("unable to encode bitmap", e);
                                if (fileCreateTmpFile3 != null) {
                                    fileCreateTmpFile3.delete();
                                }
                            } catch (OutOfMemoryError e2) {
                                Log.e("out of memory when encode bitmap to base64", e2);
                                if (fileCreateTmpFile3 != null) {
                                    fileCreateTmpFile3.delete();
                                }
                            }
                            if (fileCreateTmpFile3 == null || fileCreateTmpFile3.length() == 0) {
                                return null;
                            }
                            String string = UUID.randomUUID().toString();
                            t.i(string, "toString(...)");
                            t.g(objectNodeCreateObjectNode);
                            buildBaseRequestNode(chatMessage, objectNodeCreateObjectNode, false);
                            objectNodeCreateObjectNode.put("mediaUploadValue", string);
                            objectNodeCreateObjectNode.put("mediaUhqEnabled", chatMessage.mediaUhqEnabled);
                            objectNodeCreateObjectNode.put("mediaUploadValueContentType", strArr[0]);
                            fileCreateTmpFile = Utils.createTmpFile();
                            try {
                                try {
                                    ChatHelper.Companion companion = ChatHelper.Companion;
                                    String string2 = objectNodeCreateObjectNode.toString();
                                    t.i(string2, "toString(...)");
                                    companion.buildBodyFile(string2, fileCreateTmpFile3, string, fileCreateTmpFile);
                                    fileCreateTmpFile3.delete();
                                } catch (Exception e6) {
                                    Log.e("fail to write body", e6);
                                    if (fileCreateTmpFile != null) {
                                        fileCreateTmpFile.delete();
                                    }
                                    fileCreateTmpFile3.delete();
                                    return null;
                                }
                            } catch (Throwable th) {
                                fileCreateTmpFile3.delete();
                                throw th;
                            }
                        } else {
                            t.g(objectNodeCreateObjectNode);
                            buildBaseRequestNode$default(this, chatMessage, objectNodeCreateObjectNode, false, 4, null);
                            fileCreateTmpFile = null;
                        }
                    } else if (i12 == 103 && (str2 = chatMessage.mediaValue) != null && YoutubeUtils.isYtvScheme(str2)) {
                        t.g(objectNodeCreateObjectNode);
                        buildBaseRequestNode$default(this, chatMessage, objectNodeCreateObjectNode, false, 4, null);
                        fileCreateTmpFile = null;
                    } else {
                        if (isVideoUploadRequest(chatMessage)) {
                            t.g(objectNodeCreateObjectNode);
                            return buildVideoChatRequest(i10, chatMessage, objectNodeCreateObjectNode);
                        }
                        if (chatMessage.type == 2 && chatMessage.mediaType == 110 && (str = chatMessage.mediaValue) != null) {
                            Uri uri = Uri.parse(str);
                            String path2 = uri.getPath();
                            if (!t.e("file", uri.getScheme()) || path2 == null || path2.length() == 0) {
                                return null;
                            }
                            File file2 = new File(path2);
                            if (!file2.exists()) {
                                return null;
                            }
                            String string3 = UUID.randomUUID().toString();
                            t.i(string3, "toString(...)");
                            t.g(objectNodeCreateObjectNode);
                            buildBaseRequestNode(chatMessage, objectNodeCreateObjectNode, false);
                            objectNodeCreateObjectNode.put("mediaUploadValue", string3);
                            fileCreateTmpFile2 = Utils.createTmpFile();
                            try {
                                ChatHelper.Companion companion2 = ChatHelper.Companion;
                                String string4 = objectNodeCreateObjectNode.toString();
                                t.i(string4, "toString(...)");
                                companion2.buildBodyFile(string4, file2, string3, fileCreateTmpFile2);
                            } catch (Exception e7) {
                                Log.e("fail to write body", e7);
                                fileCreateTmpFile2.delete();
                                return null;
                            }
                        } else {
                            fileCreateTmpFile = null;
                            Log.w("unsupported chat message");
                        }
                    }
                    file = fileCreateTmpFile;
                    builderCommunityId = ApiRequest.builder().post().chatServer().path("/chat/thread/" + chatMessage.threadId + "/message").communityId(i10);
                    if (file == null) {
                        builderCommunityId.body(objectNodeCreateObjectNode);
                    } else {
                        builderCommunityId.body(file).deleteBodyAfterDone();
                        builderCommunityId.timeout(60000);
                    }
                    builderCommunityId.tag(chatMessage);
                    return builderCommunityId.build();
                }
                t.g(objectNodeCreateObjectNode);
                buildBaseRequestNode(chatMessage, objectNodeCreateObjectNode, false);
                JsonNode jsonNodeNodePath = JacksonUtils.nodePath(chatMessage.extensions, "mentionedArray");
                if (jsonNodeNodePath != null) {
                    ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
                    objectNodeCreateObjectNode.put("extensions", objectNodeCreateObjectNode2);
                    objectNodeCreateObjectNode2.put("mentionedArray", jsonNodeNodePath);
                }
                LinkSummary firstLinkSnippet = chatMessage.getFirstLinkSnippet();
                if (firstLinkSnippet != null) {
                    PhotoManager photoManagerPhotoManager$Amino_bundle2 = photoManager$Amino_bundle();
                    if (firstLinkSnippet.getFirstMedia() != null && (path = photoManagerPhotoManager$Amino_bundle2.getPath(firstLinkSnippet.getFirstMedia().url)) != null && path.length() != 0) {
                        String string5 = UUID.randomUUID().toString();
                        t.i(string5, "toString(...)");
                        JsonNode jsonNodeNodePath2 = JacksonUtils.nodePath(objectNodeCreateObjectNode, "extensions");
                        if (jsonNodeNodePath2 == null) {
                            jsonNodeNodePath2 = JacksonUtils.createObjectNode();
                            objectNodeCreateObjectNode.put("extensions", jsonNodeNodePath2);
                        }
                        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
                        t.h(jsonNodeNodePath2, "null cannot be cast to non-null type com.fasterxml.jackson.databind.node.ObjectNode");
                        ((ObjectNode) jsonNodeNodePath2).put("linkSnippetList", arrayNodeCreateArrayNode);
                        ObjectNode objectNodeCreateObjectNode3 = JacksonUtils.createObjectNode();
                        objectNodeCreateObjectNode3.put("link", firstLinkSnippet.link);
                        objectNodeCreateObjectNode3.put("mediaType", 100);
                        objectNodeCreateObjectNode3.put("mediaUploadValue", string5);
                        objectNodeCreateObjectNode3.put("mediaUploadValueContentType", MimeTypes.IMAGE_PNG);
                        arrayNodeCreateArrayNode.add(objectNodeCreateObjectNode3);
                        fileCreateTmpFile2 = Utils.createTmpFile();
                        try {
                            ChatHelper.Companion companion3 = ChatHelper.Companion;
                            String string6 = objectNodeCreateObjectNode.toString();
                            t.i(string6, "toString(...)");
                            companion3.buildBodyFile(string6, path, string5, fileCreateTmpFile2);
                        } catch (Exception e10) {
                            Log.e("fail to write body", e10);
                            fileCreateTmpFile2.delete();
                        }
                    }
                    return null;
                }
                file = fileCreateTmpFile2;
                builderCommunityId = ApiRequest.builder().post().chatServer().path("/chat/thread/" + chatMessage.threadId + "/message").communityId(i10);
                if (file == null) {
                    builderCommunityId.body(objectNodeCreateObjectNode);
                } else {
                    builderCommunityId.body(file).deleteBodyAfterDone();
                    builderCommunityId.timeout(60000);
                }
                builderCommunityId.tag(chatMessage);
                return builderCommunityId.build();
            }
            objectNodeCreateObjectNode.put("type", chatMessage.type);
            objectNodeCreateObjectNode.put("clientRefId", chatMessage.getClientRefIdTmp());
        }
        fileCreateTmpFile = null;
        file = fileCreateTmpFile;
        builderCommunityId = ApiRequest.builder().post().chatServer().path("/chat/thread/" + chatMessage.threadId + "/message").communityId(i10);
        if (file == null) {
            builderCommunityId.body(objectNodeCreateObjectNode);
        } else {
            builderCommunityId.body(file).deleteBodyAfterDone();
            builderCommunityId.timeout(60000);
        }
        builderCommunityId.tag(chatMessage);
        return builderCommunityId.build();
    }

    public final void clear() {
        this.threadCheckInfosMapper.clear();
        this.threadCheckQueue.clear();
        this.communitiesIsRequestingThreadCheck.clear();
        this.unreadChatCountMapper.clear();
        this.bitmapCache.clear();
        this.messages.clear();
        if (this.photoTouched) {
            Utils.deleteDir(this.photoDir);
        }
    }

    public final void clearCommunityLevelData(int i10) {
        Set<Integer> set = this.outboundMessagesNdcIdsMapper.get(Integer.valueOf(i10));
        if (set == null) {
            return;
        }
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            this.outboundMessageCreateTime.remove(iIntValue);
            this.messages.remove(iIntValue);
        }
        storeDraft();
    }

    public final boolean containGuestThreadId(@Nullable String str) {
        if (str == null) {
            return false;
        }
        return this.guestThreadSet.contains(str);
    }

    public final void dispatchGlobalOnNewMessage(final int i10, @NotNull final ChatMessageDto chatMessageDto) {
        t.j(chatMessageDto, "chatMessageDto");
        this.globalLevelReceptors.dispatch(new Callback() { // from class: com.narvii.chat.core.m
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ChatService.dispatchGlobalOnNewMessage$lambda$2(i10, chatMessageDto, (ChatService.ChatMessageReceptor) obj);
            }
        });
    }

    public final void dispatchGlobalThreadCountChange() {
        this.globalLevelReceptors.dispatch(new Callback() { // from class: com.narvii.chat.core.c
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((ChatService.ChatMessageReceptor) obj).onUnreadThreadCountChanged(0);
            }
        });
    }

    public final void dispatchNewMessageOnCommunityLevel(final int i10, @Nullable final ChatMessageDto chatMessageDto) {
        EventDispatcher<ChatMessageReceptor> eventDispatcher;
        if (i10 < 0 || chatMessageDto == null || (eventDispatcher = this.communityLevelReceptors.get(i10)) == null) {
            return;
        }
        Log.d(this.TAG, "dispatchNewMessageOnCommunityLevel --> " + i10);
        eventDispatcher.dispatch(new Callback() { // from class: com.narvii.chat.core.n
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((ChatService.ChatMessageReceptor) obj).onNewChatMessage(i10, chatMessageDto);
            }
        });
    }

    public final void dispatchUnreadCountChangeOnCommunityLevel(final int i10) {
        EventDispatcher<ChatMessageReceptor> eventDispatcher;
        if (i10 >= 0 && (eventDispatcher = this.communityLevelReceptors.get(i10)) != null) {
            Log.d(this.TAG, "dispatchUnreadCountChangeOnCommunityLevel --> " + i10);
            eventDispatcher.dispatch(new Callback() { // from class: com.narvii.chat.core.i
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    ((ChatService.ChatMessageReceptor) obj).onUnreadThreadCountChanged(i10);
                }
            });
        }
    }

    public final int getAllUnreadThreadCount() {
        int size = this.unreadChatCountMapper.size();
        int iIntValue = 0;
        for (int i10 = 0; i10 < size; i10++) {
            Integer numValueAt = this.unreadChatCountMapper.valueAt(i10);
            t.i(numValueAt, "valueAt(...)");
            iIntValue += numValueAt.intValue();
        }
        return iIntValue;
    }

    @NotNull
    public final NVContext getCurNvContext() {
        NVContext nVContext = this.curCommunityContext;
        if (nVContext != null) {
            t.g(nVContext);
            return nVContext;
        }
        if (this.curCid != 0) {
            return new CommunityContext(NVApplication.instance(), this.curCid);
        }
        NVApplication nVApplicationInstance = NVApplication.instance();
        t.i(nVApplicationInstance, "instance(...)");
        return nVApplicationInstance;
    }

    public final long getLatestSendElapse() {
        Long lJ0 = p.j0(this.recentMessageTime);
        if (lJ0 == null) {
            return Long.MAX_VALUE;
        }
        return SystemClock.elapsedRealtime() - lJ0.longValue();
    }

    @Nullable
    public final Date getOutBoundCreatedTime(@Nullable ChatMessage chatMessage) {
        if (chatMessage == null) {
            return null;
        }
        return this.outboundMessageCreateTime.get(chatMessage.getClientRefIdTmp());
    }

    @NotNull
    public final List<ChatMessage> getOutboundMessages(@Nullable String str) {
        if (str == null || str.length() == 0) {
            return v.m();
        }
        int size = this.messages.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            ChatMessage chatMessageValueAt = this.messages.valueAt(i10);
            if (Utils.isEqualsNotNull(chatMessageValueAt.threadId, str)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(chatMessageValueAt);
            }
        }
        return arrayList != null ? arrayList : v.m();
    }

    @NotNull
    public final File getPhotoDir() {
        this.photoDir.mkdirs();
        this.photoTouched = true;
        return this.photoDir;
    }

    public final long getReadTime(@Nullable String str) {
        if (str == null || str.length() == 0) {
            return 0L;
        }
        String string = this.prefs.getString("lastReadTime", null);
        if (TextUtils.isEmpty(string)) {
            return 0L;
        }
        try {
            t.g(string);
            StringTokenizer stringTokenizer = new StringTokenizer(string, "|");
            while (stringTokenizer.hasMoreTokens()) {
                String strNextToken = stringTokenizer.nextToken();
                if (!stringTokenizer.hasMoreTokens()) {
                    return 0L;
                }
                String strNextToken2 = stringTokenizer.nextToken();
                if (Utils.isEqualsNotNull(str, strNextToken)) {
                    return Long.parseLong(strNextToken2);
                }
            }
            return 0L;
        } catch (Exception unused) {
            return 0L;
        }
    }

    public final int getUnreadChatCountInCurCommunity(int i10) {
        if (this.unreadChatCountMapper.indexOfKey(i10) < 0) {
            return buildUnreadThreadMapper(i10);
        }
        Integer num = this.unreadChatCountMapper.get(i10);
        t.i(num, "get(...)");
        return num.intValue();
    }

    public final boolean isMediaUploadingStillInProcess(int i10) {
        return this.inProcessUploadMediaIds.contains(Integer.valueOf(i10));
    }

    public final boolean isSendTooFast() {
        Long lK0 = p.k0(this.recentMessageTime);
        return SystemClock.elapsedRealtime() - (lK0 != null ? lK0.longValue() : Long.MAX_VALUE) < ((long) (this.recentMessageTime.length * 2500));
    }

    public final boolean isVideoUploadRequest(@Nullable ChatMessage chatMessage) {
        int i10;
        int i11;
        return chatMessage != null && ((i10 = chatMessage.type) == 0 || i10 == 4) && (((i11 = chatMessage.mediaType) == 123 || i11 == 102) && chatMessage.mediaValue != null);
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onConnect(@Nullable WsService wsService) {
        Log.d(this.TAG, "WS Connected");
        if (this.lastWsDisconnectTimeMillis == 0 || System.currentTimeMillis() - this.lastWsDisconnectTimeMillis <= this.CHAT_RESET_INTERVAL) {
            return;
        }
        this.lastWsDisconnectTimeMillis = 0L;
        dispatchChatMessageListReset();
        queryThreadCheckInfo((Set<Integer>) this.threadCheckQueue, true);
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onDisconnect(@Nullable WsService wsService, @Nullable Throwable th) {
        if (this.lastWsDisconnectTimeMillis == 0) {
            Log.d(this.TAG, "WS disconnect");
            this.lastWsDisconnectTimeMillis = System.currentTimeMillis();
        }
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(@Nullable Notification notification) {
        if (notification == null || !t.e(notification.action, "delete")) {
            return;
        }
        int size = this.messages.size();
        while (true) {
            size--;
            if (-1 >= size) {
                return;
            }
            ChatMessage chatMessageValueAt = this.messages.valueAt(size);
            if (Utils.isEqualsNotNull(chatMessageValueAt.messageId, notification.id)) {
                removeOutboundMessage(chatMessageValueAt.getClientRefIdTmp());
            }
        }
    }

    public final void onPostFailed(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
        t.j(req, "req");
        t.j(message, "message");
        Object objTag = req.tag();
        t.h(objTag, "null cannot be cast to non-null type com.narvii.model.ChatMessage");
        ChatMessage chatMessage = (ChatMessage) objTag;
        if (this.recalledMessages.get(chatMessage.getClientRefIdTmp())) {
            return;
        }
        NVToast.makeText(this.ctx.getContext(), message, 0).show();
        NVObject nVObjectM1622clone = chatMessage.m1622clone();
        t.h(nVObjectM1622clone, "null cannot be cast to non-null type com.narvii.model.ChatMessage");
        ChatMessage chatMessage2 = (ChatMessage) nVObjectM1622clone;
        chatMessage2._status = 2;
        chatMessage2._errorCode = i10;
        storeOutboundMessage(chatMessage2);
        sendNotification(getNdcIdFromMessage(chatMessage2), new Notification("update", chatMessage2));
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsError(@Nullable WsService wsService, @Nullable WsError wsError) {
        if (t.e(wsError, WsError.CONNECTION_LOST) && this.lastWsDisconnectTimeMillis == 0) {
            Log.d(this.TAG, "WS connection lost");
            this.lastWsDisconnectTimeMillis = System.currentTimeMillis();
        }
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsMessage(@Nullable WsService wsService, @Nullable WsMessage wsMessage) {
        ObjectNode objectNode;
        ChatMessage chatMessage;
        ChatMessage chatMessage2;
        ChatMessage chatMessage3;
        ChatMessage chatMessage4;
        ChatMessage chatMessage5;
        ChatMessage chatMessage6;
        if (wsMessage == null || t.e(wsMessage.tag, this.DONE) || wsMessage.type != 1000 || (objectNode = wsMessage.object) == null) {
            return;
        }
        ChatMessageDto chatMessageDto = (ChatMessageDto) JacksonUtils.readAs(objectNode.toString(), ChatMessageDto.class);
        sendChatMessageAck$default(this, chatMessageDto, false, 2, null);
        if (chatMessageDto != null && (chatMessage6 = chatMessageDto.chatMessage) != null && chatMessage6.isPermissionRelatedMessage()) {
            ChatMessage chatMessage7 = chatMessageDto.chatMessage;
            dispatchChannelPermissionChange(chatMessage7 != null ? chatMessage7.threadId : null, chatMessage7);
        } else if ((chatMessageDto != null && (chatMessage4 = chatMessageDto.chatMessage) != null && chatMessage4.type == 121) || (chatMessageDto != null && (chatMessage3 = chatMessageDto.chatMessage) != null && chatMessage3.type == 127)) {
            ChatMessage chatMessage8 = chatMessageDto.chatMessage;
            dispatchAnnouncementChange(chatMessage8 != null ? chatMessage8.threadId : null, chatMessage8);
        } else if ((chatMessageDto != null && (chatMessage2 = chatMessageDto.chatMessage) != null && chatMessage2.type == 125) || (chatMessageDto != null && (chatMessage = chatMessageDto.chatMessage) != null && chatMessage.type == 126)) {
            ChatMessage chatMessage9 = chatMessageDto.chatMessage;
            dispatchViewOnlyChange(chatMessage9 != null ? chatMessage9.threadId : null, chatMessage9);
        }
        String str = (chatMessageDto == null || (chatMessage5 = chatMessageDto.chatMessage) == null) ? null : chatMessage5.threadId;
        boolean z6 = str != null && this.guestThreadSet.contains(str);
        if (chatMessageDto != null) {
            dispatchGlobalOnNewMessage(chatMessageDto.ndcId, chatMessageDto);
            ChatMessage chatMessage10 = chatMessageDto.chatMessage;
            dispatchChatMessageListChange(chatMessage10 != null ? chatMessage10.threadId : null, chatMessageDto);
            if (!z6 || chatMessageDto.membershipStatus == 1) {
                dispatchNewMessageOnCommunityLevel(chatMessageDto.ndcId, chatMessageDto);
            }
        }
        handleQuitMessage(chatMessageDto);
        boolean z10 = chatMessageDto.chatMessage.type == 119;
        int i10 = chatMessageDto.membershipStatus;
        boolean z11 = i10 == 1 || i10 == 2;
        if (!z6 && !z10 && z11) {
            updateThreadCheckTable(chatMessageDto);
            return;
        }
        Log.d(WsService.TAG, "Is guest role in this thread " + str);
    }

    public final boolean parseLinkFirst(@Nullable ChatMessage chatMessage) {
        if (chatMessage == null || chatMessage.type != 0 || chatMessage.content == null || chatMessage.mediaValue != null || chatMessage.hasAttachment() || chatMessage.hasLinkSnippet()) {
            return false;
        }
        String strExtractUrl = UriUtils.extractUrl(chatMessage.content);
        if (TextUtils.isEmpty(strExtractUrl)) {
            return false;
        }
        chatMessage._linkParsing = true;
        LinkSnippetHelper linkSnippetHelper = new LinkSnippetHelper(getCurNvContext());
        t.g(strExtractUrl);
        linkSnippetHelper.getLinkSnippet(strExtractUrl, new LinkSnippetHandler(this, chatMessage, strExtractUrl, linkSnippetHelper));
        return true;
    }

    public final void pause() {
        this.localBroadcastManager.f(this.receiver);
        notificationCenter(this.curCid).unregisterListener(this);
    }

    @Nullable
    public final ChatMessage postMessage(int i10, @Nullable ChatMessage chatMessage) {
        if (chatMessage == null) {
            return null;
        }
        if (chatMessage.getClientRefIdTmp() == 0) {
            Log.e("post message clientRefId = 0");
        }
        if (chatMessage.threadId == null) {
            Log.e("post message threadId = null");
        }
        chatMessage._ndcId = i10;
        if (!sendChatRequest(i10, chatMessage)) {
            return this.messages.get(chatMessage.getClientRefIdTmp());
        }
        NVObject nVObjectM1622clone = chatMessage.m1622clone();
        t.h(nVObjectM1622clone, "null cannot be cast to non-null type com.narvii.model.ChatMessage");
        ChatMessage chatMessage2 = (ChatMessage) nVObjectM1622clone;
        chatMessage2._status = 1;
        storeOutboundMessage(chatMessage2);
        recordRecentMessage();
        sendNotification(i10, new Notification("new", chatMessage2));
        Date date = new Date();
        updateThreadReadAndActivityTime(i10, chatMessage.threadId, date, date);
        return chatMessage;
    }

    public final void queryThreadCheckInfo(@Nullable Set<Integer> set) {
        queryThreadCheckInfo$default(this, (Set) set, false, 2, (Object) null);
    }

    public final void readDraft() {
        if (this.drafts == null) {
            this.drafts = new DraftMap();
        }
        DraftMap draftMap = this.drafts;
        if (draftMap == null || !draftMap.isEmpty()) {
            return;
        }
        DraftMap draftMap2 = (DraftMap) JacksonUtils.readAs(this.chatDraftPrefs.getString(ChatServiceKt.KEY_PREF_CHAT_DRAFT, null), DraftMap.class);
        if (draftMap2 == null) {
            draftMap2 = new DraftMap();
        }
        this.drafts = draftMap2;
    }

    public final boolean recallMessage(int i10) {
        ChatMessage chatMessage = this.messages.get(i10);
        if (chatMessage == null) {
            return false;
        }
        removeOutboundMessage(i10);
        int i11 = chatMessage._status;
        if (i11 == 0) {
            sendDeleteMessageRequest(chatMessage);
        } else if (i11 == 1) {
            this.recalledMessages.put(i10, true);
        }
        sendNotification(getNdcIdFromMessage(chatMessage), new Notification("delete", chatMessage));
        return true;
    }

    public final void recordOutBoundCreatedTime(@Nullable ChatMessage chatMessage) {
        Date date = chatMessage != null ? chatMessage.createdTime : null;
        if (date == null) {
            return;
        }
        this.outboundMessageCreateTime.put(chatMessage.getClientRefIdTmp(), date);
    }

    public final void refresh(boolean z6) {
        AffiliationsService affiliationsService = (AffiliationsService) this.ctx.getService("affiliations");
        if ((affiliationsService != null ? affiliationsService.getTimeStamp() : null) != null || affiliationsService == null) {
            return;
        }
        affiliationsService.refresh(true, new Callback() { // from class: com.narvii.chat.core.g
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ChatService.refresh$lambda$12(this.f1867a, (AffiliationsService.AffiliationResponse) obj);
            }
        });
    }

    public final void removeCommunityLevelReceptor(int i10, @Nullable ChatMessageReceptor chatMessageReceptor) {
        EventDispatcher<ChatMessageReceptor> eventDispatcher;
        if (i10 < 0 || chatMessageReceptor == null || (eventDispatcher = this.communityLevelReceptors.get(i10)) == null) {
            return;
        }
        eventDispatcher.removeListener(chatMessageReceptor);
    }

    public final void removeGlobalChatMessageReceptor(@NotNull ChatMessageReceptor listener) {
        t.j(listener, "listener");
        this.globalLevelReceptors.removeListener(listener);
    }

    public final void removeGuestThreadId(@Nullable String str) {
        if (str != null) {
            this.guestThreadSet.remove(str);
        }
    }

    public final void removeInProcessUploadMedia(int i10) {
        this.inProcessUploadMediaIds.remove(Integer.valueOf(i10));
    }

    public final void removeLiveChannelPermissionListener(@Nullable String str, @Nullable ThreadConfigChangeListener threadConfigChangeListener) {
        EventDispatcher<ThreadConfigChangeListener> eventDispatcher;
        if (str == null || str.length() == 0 || (eventDispatcher = this.threadConfigDispatcher.get(str)) == null) {
            return;
        }
        eventDispatcher.removeListener(threadConfigChangeListener);
    }

    public final void removeThread(int i10, @Nullable String str) {
        ArrayMap<String, ThreadCheckInfo> curCommunityThreadCheckInfos;
        ThreadCheckInfo threadCheckInfo;
        if (str == null || str.length() == 0 || (threadCheckInfo = (curCommunityThreadCheckInfos = getCurCommunityThreadCheckInfos(i10)).get(str)) == null) {
            return;
        }
        boolean zHasUnreadMessage = threadCheckInfo.hasUnreadMessage();
        curCommunityThreadCheckInfos.remove(str);
        if (zHasUnreadMessage) {
            checkCurCommunityThreadCountChange(i10);
        }
    }

    public final void removeThreadLevelReceptor(@Nullable String str, @Nullable ChatMessageReceptor chatMessageReceptor) {
        EventDispatcher<ChatMessageReceptor> eventDispatcher;
        if (str == null || str.length() == 0 || chatMessageReceptor == null || (eventDispatcher = this.threadLevelReceptor.get(str)) == null) {
            return;
        }
        eventDispatcher.removeListener(chatMessageReceptor);
    }

    public final void removeVideoMessagePostListener(@Nullable String str, @Nullable VideoMessageProgressChangeListener videoMessageProgressChangeListener) {
        EventDispatcher<VideoMessageProgressChangeListener> eventDispatcher;
        if (str == null || str.length() == 0 || (eventDispatcher = this.videoMessageProgressDispatcher.get(str)) == null) {
            return;
        }
        eventDispatcher.removeListener(videoMessageProgressChangeListener);
    }

    public final void resume() {
        notificationCenter(this.curCid).registerListener(this);
        this.localBroadcastManager.c(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    public final void retryPost(int i10) {
        ChatMessage chatMessage = this.messages.get(i10);
        if (chatMessage == null) {
            Log.w("retryPost fail, message not found: " + i10);
            return;
        }
        if (chatMessage._status != 2) {
            Log.w("retryPost fail, message status != STATUS_FAILED");
            return;
        }
        int ndcIdFromMessage = getNdcIdFromMessage(chatMessage);
        if (sendChatRequest(ndcIdFromMessage, chatMessage)) {
            NVObject nVObjectM1622clone = chatMessage.m1622clone();
            t.h(nVObjectM1622clone, "null cannot be cast to non-null type com.narvii.model.ChatMessage");
            ChatMessage chatMessage2 = (ChatMessage) nVObjectM1622clone;
            chatMessage2._status = 1;
            storeOutboundMessage(chatMessage2);
            sendNotification(ndcIdFromMessage, new Notification("update", chatMessage2));
        }
    }

    public final void sendDeleteMessageRequest(@Nullable ChatMessage chatMessage) {
        if (chatMessage == null) {
            return;
        }
        ApiRequest apiRequestBuild = ApiRequest.builder().chatServer().delete().path("/chat/thread/" + chatMessage.threadId + "/message/" + chatMessage.messageId).communityId(getNdcIdFromMessage(chatMessage)).build();
        Object service = this.ctx.getService("api");
        t.i(service, "getService(...)");
        ((ApiService) service).exec(apiRequestBuild, ApiResponseListener.IGNORE_RESPONSE_LISTENER);
    }

    public final void setDraft(@NotNull String tid, @NotNull String msg) {
        DraftMap draftMap;
        t.j(tid, "tid");
        t.j(msg, "msg");
        if (StringUtils.isTrimEmpty(msg)) {
            DraftMap draftMap2 = this.drafts;
            if (draftMap2 != null) {
                return;
            }
            return;
        }
        DraftMap draftMap3 = this.drafts;
        if (draftMap3 != null && draftMap3.containsKey((Object) tid) && (draftMap = this.drafts) != null) {
        }
        DraftMap draftMap4 = this.drafts;
        if (draftMap4 != null) {
            draftMap4.put(tid, msg);
        }
    }

    public final void setReadTime(@Nullable String str, long j6) {
        if (str == null || str.length() == 0 || j6 <= 0) {
            return;
        }
        if (!Utils.isEqualsNotNull(str, this.setLatestTid) || j6 > this.setLatestTime) {
            this.setLatestTid = str;
            this.setLatestTime = j6;
            StringBuilder sb = new StringBuilder();
            String string = this.prefs.getString("lastReadTime", null);
            sb.append(str);
            sb.append('|');
            sb.append(j6);
            sb.append('|');
            if (!TextUtils.isEmpty(string)) {
                t.g(string);
                StringTokenizer stringTokenizer = new StringTokenizer(string, "|");
                int i10 = 0;
                while (true) {
                    int i11 = i10 + 1;
                    if (i10 < 9 && stringTokenizer.hasMoreTokens()) {
                        String strNextToken = stringTokenizer.nextToken();
                        if (!stringTokenizer.hasMoreTokens()) {
                            break;
                        }
                        String strNextToken2 = stringTokenizer.nextToken();
                        if (Utils.isEqualsNotNull(strNextToken, str)) {
                            try {
                                if (Long.parseLong(strNextToken2) >= j6) {
                                    return;
                                }
                            } catch (Exception unused) {
                                continue;
                            }
                        } else {
                            sb.append(strNextToken);
                            sb.append('|');
                            sb.append(strNextToken2);
                            sb.append('|');
                        }
                        i10 = i11;
                    } else {
                        break;
                    }
                }
            }
            this.prefs.edit().putString("lastReadTime", sb.toString()).apply();
        }
    }

    public final void storeDraft() {
        this.chatDraftPrefs.edit().clear().putString(ChatServiceKt.KEY_PREF_CHAT_DRAFT, JacksonUtils.writeAsString(this.drafts)).apply();
    }

    public final void storeOutboundMessage(@Nullable ChatMessage chatMessage) {
        if (chatMessage != null) {
            this.messages.put(chatMessage.getClientRefIdTmp(), chatMessage);
            Set<Integer> hashSet = this.outboundMessagesNdcIdsMapper.get(Integer.valueOf(chatMessage._ndcId));
            if (hashSet == null) {
                hashSet = new HashSet<>();
                this.outboundMessagesNdcIdsMapper.put(Integer.valueOf(chatMessage._ndcId), hashSet);
            }
            hashSet.add(Integer.valueOf(chatMessage.getClientRefIdTmp()));
        }
    }

    public final void updateLatestActivityTime(int i10, @Nullable String str, @Nullable Date date) {
        if (i10 < 0 || str == null || str.length() == 0 || date == null) {
            return;
        }
        Log.d(this.TAG, "update latest activity time for " + str + " with time " + date);
        ArrayMap<String, ThreadCheckInfo> curCommunityThreadCheckInfos = getCurCommunityThreadCheckInfos(i10);
        ThreadCheckInfo threadCheckInfo = curCommunityThreadCheckInfos.get(str);
        if (threadCheckInfo == null) {
            curCommunityThreadCheckInfos.put(str, new ThreadCheckInfo(str, date, null, null, 12, null));
            return;
        }
        boolean zHasUnreadMessage = threadCheckInfo.hasUnreadMessage();
        if (ChatHelperKt.isNewer(date, threadCheckInfo.getLatestActivityTime())) {
            threadCheckInfo.setLatestActivityTime(date);
        }
        if (zHasUnreadMessage ^ threadCheckInfo.hasUnreadMessage()) {
            checkCurCommunityThreadCountChange(i10);
        }
    }

    public final void updateReadTime(int i10, @Nullable String str, @Nullable Date date, boolean z6, @Nullable ChatThread chatThread) {
        if (i10 < 0 || str == null || str.length() == 0 || date == null) {
            return;
        }
        Log.d(this.TAG, "update read time for " + str + " with time " + date);
        ArrayMap<String, ThreadCheckInfo> curCommunityThreadCheckInfos = getCurCommunityThreadCheckInfos(i10);
        ThreadCheckInfo threadCheckInfo = curCommunityThreadCheckInfos.get(str);
        if (threadCheckInfo == null) {
            ThreadCheckInfo threadCheckInfo2 = new ThreadCheckInfo(str, chatThread != null ? chatThread.latestActivityTime : null, date, chatThread != null ? Integer.valueOf(chatThread.alertOption) : null);
            curCommunityThreadCheckInfos.put(str, threadCheckInfo2);
            if (threadCheckInfo2.hasUnreadMessage()) {
                checkCurCommunityThreadCountChange(i10);
                return;
            }
            return;
        }
        boolean zHasUnreadMessage = threadCheckInfo.hasUnreadMessage();
        if (z6 || ChatHelperKt.isNewer(date, threadCheckInfo.getLastReadTime())) {
            threadCheckInfo.setLastReadTime(date);
        }
        if (chatThread != null && ChatHelperKt.isNewer(chatThread.latestActivityTime, threadCheckInfo.getLatestActivityTime())) {
            threadCheckInfo.setLatestActivityTime(chatThread.latestActivityTime);
        }
        if (zHasUnreadMessage ^ threadCheckInfo.hasUnreadMessage()) {
            checkCurCommunityThreadCountChange(i10);
        }
    }

    public final void updateThreadReadAndActivityTime(int i10, @Nullable String str, @Nullable Date date, @Nullable Date date2) {
        if (i10 < 0 || str == null || str.length() == 0 || date2 == null) {
            return;
        }
        Log.d(this.TAG, "update read time for " + str + " with time " + date);
        Log.d(this.TAG, "update latest activity time for " + str + " with time " + date2);
        ArrayMap<String, ThreadCheckInfo> curCommunityThreadCheckInfos = getCurCommunityThreadCheckInfos(i10);
        ThreadCheckInfo threadCheckInfo = curCommunityThreadCheckInfos.get(str);
        if (threadCheckInfo == null) {
            curCommunityThreadCheckInfos.put(str, new ThreadCheckInfo(str, date2, date, null, 8, null));
            return;
        }
        boolean zHasUnreadMessage = threadCheckInfo.hasUnreadMessage();
        if (ChatHelperKt.isNewer(date2, threadCheckInfo.getLatestActivityTime())) {
            threadCheckInfo.setLatestActivityTime(date2);
        }
        if (ChatHelperKt.isNewer(date, threadCheckInfo.getLastReadTime())) {
            threadCheckInfo.setLastReadTime(date);
        }
        if (zHasUnreadMessage ^ threadCheckInfo.hasUnreadMessage()) {
            checkCurCommunityThreadCountChange(i10);
        }
    }

    private final NotificationCenter notificationCenter(int i10) {
        Object service = NVApplication.instance().getService(i10, "notification");
        t.i(service, "getService(...)");
        return (NotificationCenter) service;
    }

    private final void onMessagePostSuccess(ChatMessage chatMessage, ChatMessage chatMessage2) {
        chatMessage2.setClientRefIdTmp(chatMessage.getClientRefIdTmp());
        chatMessage2._status = 0;
        storeOutboundMessage(chatMessage2);
        sendNotification(getNdcIdFromMessage(chatMessage2), new Notification("update", chatMessage2));
        if (chatMessage2.type == 2) {
            try {
                MediaPlayer mediaPlayerCreate = MediaPlayer.create(this.ctx.getContext(), R.raw.voice_message_send_success);
                mediaPlayerCreate.setAudioStreamType(3);
                mediaPlayerCreate.start();
            } catch (Exception e) {
                Log.e(e.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPostFinished(ApiRequest apiRequest, MessageResponse messageResponse) {
        String str;
        Object objTag = apiRequest.tag();
        t.h(objTag, "null cannot be cast to non-null type com.narvii.model.ChatMessage");
        final ChatMessage chatMessage = (ChatMessage) objTag;
        String str2 = chatMessage.mediaValue;
        if (str2 != null && kotlin.text.t.K(str2, "photo", false, 2, null)) {
            photoManager$Amino_bundle().remove(chatMessage.mediaValue);
        }
        final ChatMessage chatMessage2 = messageResponse.message;
        LinkSummary firstLinkSnippet = chatMessage.getFirstLinkSnippet();
        if (firstLinkSnippet != null) {
            Media firstMedia = firstLinkSnippet.getFirstMedia();
            if (firstMedia != null && (str = firstMedia.url) != null) {
                t.g(str);
                if (kotlin.text.t.K(str, "photo://", false, 2, null)) {
                    photoManager$Amino_bundle().remove(firstMedia.url);
                }
            }
            LinkSummary firstLinkSnippet2 = chatMessage2.getFirstLinkSnippet();
            if (firstLinkSnippet2 != null) {
                Media firstMedia2 = firstLinkSnippet2.getFirstMedia();
                WeakReference<Bitmap> weakReference = this.bitmapCache.get(firstMedia.url);
                if (weakReference != null && firstMedia2 != null) {
                    HashMap<String, WeakReference<Bitmap>> map = this.bitmapCache;
                    String url = firstMedia2.url;
                    t.i(url, "url");
                    map.put(url, weakReference);
                    this.bitmapCache.remove(firstMedia.url);
                }
            }
        }
        if (this.recalledMessages.get(chatMessage.getClientRefIdTmp())) {
            sendDeleteMessageRequest(chatMessage2);
            Log.w("recall message " + chatMessage2);
            return;
        }
        MediaLoader mediaLoader = (MediaLoader) this.ctx.getService("mediaLoader");
        if (mediaLoader != null && chatMessage2.type == 2 && chatMessage.type == 2) {
            mediaLoader.cacheLocalFile(chatMessage2.mediaValue, chatMessage.mediaValue, new Callback() { // from class: com.narvii.chat.core.b
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    ChatService.onPostFinished$lambda$23(this.f1858a, chatMessage, chatMessage2, (Boolean) obj);
                }
            });
        } else {
            t.g(chatMessage2);
            onMessagePostSuccess(chatMessage, chatMessage2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendNotification(int i10, Notification notification) {
        Object service = NVApplication.instance().getService(i10, "notification");
        t.i(service, "getService(...)");
        NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) service, notification);
    }

    public final void onOpenCommunity() {
        readDraft();
    }

    public final void queryThreadCheckInfo(int i10, boolean z6) {
        if (z6 || isReadyToRequestThreadCheckForCurCommunity(i10)) {
            HashSet hashSet = new HashSet();
            hashSet.add(Integer.valueOf(i10));
            queryThreadCheckInfo(hashSet, z6);
        }
    }

    public final void sendChatMessageAck(@Nullable ChatMessageDto chatMessageDto, boolean z6) {
        if ((chatMessageDto != null ? chatMessageDto.chatMessage : null) == null) {
            return;
        }
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 1001;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, chatMessageDto.ndcId);
        ChatMessage chatMessage = chatMessageDto.chatMessage;
        objectNodeCreateObjectNode.put("threadId", chatMessage != null ? chatMessage.threadId : null);
        ChatMessage chatMessage2 = chatMessageDto.chatMessage;
        objectNodeCreateObjectNode.put(ChatMessageItemDetailFragment.KEY_MESSAGE_ID, chatMessage2 != null ? chatMessage2.messageId : null);
        objectNodeCreateObjectNode.put("markHasRead", z6);
        Date date = chatMessageDto.chatMessage.createdTime;
        if (date != null) {
            objectNodeCreateObjectNode.put("createdTime", DateTimeFormatter.formatISO8601(date));
        }
        wsRequest.object = objectNodeCreateObjectNode;
        if (z6) {
            int i10 = chatMessageDto.ndcId;
            ChatMessage chatMessage3 = chatMessageDto.chatMessage;
            updateReadTime$default(this, i10, chatMessage3.threadId, chatMessage3.createdTime, false, null, 24, null);
            ThreadUpdateObject threadUpdateObject = new ThreadUpdateObject();
            ChatThread chatThread = new ChatThread();
            ChatMessage chatMessage4 = chatMessageDto.chatMessage;
            chatThread.threadId = chatMessage4.threadId;
            chatThread.lastReadTime = chatMessage4.createdTime;
            threadUpdateObject.chatThread = chatThread;
            threadUpdateObject.action = 0;
            sendNotification(chatMessageDto.ndcId, new Notification("update", threadUpdateObject));
        }
        this.ws.sendRequest(wsRequest);
    }

    public final void queryThreadCheckInfo(@Nullable Set<Integer> set, boolean z6) {
        if (set == null || set.isEmpty()) {
            return;
        }
        if (!z6) {
            Iterator<Integer> it = set.iterator();
            while (it.hasNext()) {
                if (isReadyToRequestThreadCheckForCurCommunity(it.next().intValue())) {
                }
            }
            return;
        }
        Object service = this.ctx.getService("api");
        t.i(service, "getService(...)");
        ApiService apiService = (ApiService) service;
        StringBuilder sb = new StringBuilder();
        if (NVApplication.CLIENT_TYPE == 100) {
            sb.append("0");
        }
        Iterator<T> it2 = set.iterator();
        while (it2.hasNext()) {
            int iIntValue = ((Number) it2.next()).intValue();
            if (sb.length() > 0) {
                sb.append(kotlinx.serialization.json.internal.b.COMMA);
            }
            sb.append(iIntValue);
        }
        ApiRequest.Builder builderRetry = ApiRequest.builder().path("/chat/thread-check/human-readable").global().chatServer().retry(1);
        if (sb.length() > 0) {
            builderRetry.param("ndcIds", sb.toString());
        }
        this.communitiesIsRequestingThreadCheck.addAll(set);
        ApiRequest apiRequestBuild = builderRetry.build();
        this.threadCheckRequest = apiRequestBuild;
        apiService.exec(apiRequestBuild, new ApiResponseListener<GlobalThreadCheckResultMapResponse>(GlobalThreadCheckResultMapResponse.class) { // from class: com.narvii.chat.core.ChatService.queryThreadCheckInfo.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable GlobalThreadCheckResultMapResponse globalThreadCheckResultMapResponse) throws Exception {
                HashMap<Integer, List<ThreadCheckInfo>> threadCheckResultInCommunities;
                super.onFinish(apiRequest, globalThreadCheckResultMapResponse);
                long jCurrentTimeMillis = System.currentTimeMillis();
                if ((globalThreadCheckResultMapResponse != null ? globalThreadCheckResultMapResponse.getTreatedNdcIds() : null) != null) {
                    List<Integer> treatedNdcIds = globalThreadCheckResultMapResponse.getTreatedNdcIds();
                    if (treatedNdcIds != null) {
                        ChatService chatService = ChatService.this;
                        Iterator<T> it3 = treatedNdcIds.iterator();
                        while (it3.hasNext()) {
                            int iIntValue2 = ((Number) it3.next()).intValue();
                            chatService.lastThreadCheckTime.put(iIntValue2, Long.valueOf(jCurrentTimeMillis));
                            chatService.threadCheckInfosMapper.remove(iIntValue2);
                            chatService.threadCheckQueue.remove(Integer.valueOf(iIntValue2));
                        }
                    }
                } else if (globalThreadCheckResultMapResponse != null && (threadCheckResultInCommunities = globalThreadCheckResultMapResponse.getThreadCheckResultInCommunities()) != null) {
                    ChatService chatService2 = ChatService.this;
                    Iterator<Map.Entry<Integer, List<ThreadCheckInfo>>> it4 = threadCheckResultInCommunities.entrySet().iterator();
                    while (it4.hasNext()) {
                        int iIntValue3 = it4.next().getKey().intValue();
                        chatService2.lastThreadCheckTime.put(iIntValue3, Long.valueOf(jCurrentTimeMillis));
                        chatService2.threadCheckInfosMapper.remove(iIntValue3);
                        chatService2.threadCheckQueue.remove(Integer.valueOf(iIntValue3));
                    }
                }
                ChatService.this.updateThreadCheckTable(globalThreadCheckResultMapResponse);
                ChatService.this.printCurrentThreadCheckTable();
                ChatService.this.communitiesIsRequestingThreadCheck.clear();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                ChatService.this.communitiesIsRequestingThreadCheck.clear();
            }
        });
    }

    private final ThreadCheckInfo updateThreadCheckInfo(ArrayMap<String, ThreadCheckInfo> arrayMap, ChatThread chatThread) {
        if (chatThread == null || arrayMap == null) {
            return null;
        }
        ThreadCheckInfo threadCheckInfo = arrayMap.get(chatThread.threadId);
        if (threadCheckInfo == null) {
            ThreadCheckInfo threadCheckInfo2 = new ThreadCheckInfo(chatThread.threadId, chatThread.latestActivityTime, chatThread.lastReadTime, Integer.valueOf(chatThread.alertOption));
            arrayMap.put(chatThread.threadId, threadCheckInfo2);
            return threadCheckInfo2;
        }
        if (ChatHelperKt.isNewer(chatThread.latestActivityTime, threadCheckInfo.getLatestActivityTime())) {
            threadCheckInfo.setLatestActivityTime(chatThread.latestActivityTime);
        }
        if (ChatHelperKt.isNewer(chatThread.lastReadTime, threadCheckInfo.getLastReadTime())) {
            threadCheckInfo.setLastReadTime(chatThread.lastReadTime);
        }
        return threadCheckInfo;
    }

    public final void updateThreadCheckTable(int i10, @Nullable List<? extends ChatThread> list, boolean z6) {
        if (list == null || i10 < 0) {
            return;
        }
        ArrayMap<String, ThreadCheckInfo> curCommunityThreadCheckInfos = getCurCommunityThreadCheckInfos(i10);
        List<? extends ChatThread> list2 = list;
        boolean zHasUnreadMessage = false;
        for (ChatThread chatThread : list2) {
            if (containGuestThreadId(chatThread.threadId)) {
                removeGuestThreadId(chatThread.threadId);
            }
            ThreadCheckInfo threadCheckInfo = curCommunityThreadCheckInfos.get(chatThread.threadId);
            boolean zHasUnreadMessage2 = threadCheckInfo != null ? threadCheckInfo.hasUnreadMessage() : false;
            ThreadCheckInfo threadCheckInfoUpdateThreadCheckInfo = updateThreadCheckInfo(curCommunityThreadCheckInfos, chatThread);
            zHasUnreadMessage |= (threadCheckInfoUpdateThreadCheckInfo != null ? threadCheckInfoUpdateThreadCheckInfo.hasUnreadMessage() : false) ^ zHasUnreadMessage2;
        }
        if (z6) {
            HashSet hashSet = new HashSet();
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                hashSet.add(((ChatThread) it.next()).threadId);
            }
            Iterator<Map.Entry<String, ThreadCheckInfo>> it2 = curCommunityThreadCheckInfos.entrySet().iterator();
            while (it2.hasNext()) {
                if (!hashSet.contains(it2.next().getKey())) {
                    it2.remove();
                    zHasUnreadMessage = true;
                }
            }
        }
        printCurrentThreadCheckTable();
        if (zHasUnreadMessage) {
            checkCurCommunityThreadCountChange(i10);
        }
    }

    public final void updateThreadCheckTable(@Nullable ChatMessageDto chatMessageDto) {
        ChatMessage chatMessage;
        if (chatMessageDto == null || chatMessageDto.ndcId < 0 || (chatMessage = chatMessageDto.chatMessage) == null || !chatMessage.includedInSummary) {
            return;
        }
        if (this.myUid == null) {
            this.myUid = ((AccountService) this.ctx.getService("account")).getUserId();
        }
        ChatMessage chatMessage2 = chatMessageDto.chatMessage;
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(chatMessage2 != null ? chatMessage2.uid() : null, this.myUid);
        ArrayMap<String, ThreadCheckInfo> curCommunityThreadCheckInfos = getCurCommunityThreadCheckInfos(chatMessageDto.ndcId);
        ChatMessage chatMessage3 = chatMessageDto.chatMessage;
        Date date = chatMessage3.createdTime;
        String str = chatMessage3.threadId;
        ThreadCheckInfo threadCheckInfo = curCommunityThreadCheckInfos.get(str);
        if (threadCheckInfo == null) {
            ThreadCheckInfo threadCheckInfo2 = new ThreadCheckInfo(str, chatMessageDto.chatMessage.createdTime, null, null, 12, null);
            if (zIsEqualsNotNull) {
                threadCheckInfo2.setLastReadTime(chatMessageDto.chatMessage.createdTime);
            }
            curCommunityThreadCheckInfos.put(str, threadCheckInfo2);
            checkCurCommunityThreadCountChange(chatMessageDto.ndcId);
            return;
        }
        boolean zHasUnreadMessage = threadCheckInfo.hasUnreadMessage();
        if (ChatHelperKt.isNewer(date, threadCheckInfo.getLatestActivityTime())) {
            threadCheckInfo.setLatestActivityTime(date);
            if (zIsEqualsNotNull && ChatHelperKt.isNewer(date, threadCheckInfo.getLastReadTime())) {
                threadCheckInfo.setLastReadTime(date);
            }
        }
        if (threadCheckInfo.hasUnreadMessage() ^ zHasUnreadMessage) {
            checkCurCommunityThreadCountChange(chatMessageDto.ndcId);
        }
    }
}
