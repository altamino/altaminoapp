package com.narvii.chat.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.media.MediaPlayer;
import android.os.SystemClock;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.BasicNetwork;
import com.android.volley.toolbox.NoCache;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.account.AccountService;
import com.narvii.account.AuidService;
import com.narvii.amino.mastes.R;
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
import com.narvii.config.ConfigService;
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
import kotlin.TypeCastException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: ChatService.kt */
/* loaded from: classes.dex */
public final class ChatService implements WsService.WsListener, NotificationListener {
    public static final Companion Companion = new Companion(null);
    private final int CHAT_RESET_INTERVAL;
    private final Tag DONE;
    private final String TAG;
    private final int THREAD_CHECK_REQUEST_MIN_INTERVAL;
    public final HashMap<String, WeakReference<Bitmap>> bitmapCache;
    private final ChatHelper chaHelper;
    private final SharedPreferences chatDraftPrefs;
    private final HashSet<Integer> communitiesIsRequestingThreadCheck;
    private final SparseArray<EventDispatcher<ChatMessageReceptor>> communityLevelReceptors;
    private final NVContext ctx;
    private int curCid;
    private NVContext curCommunityContext;
    private DraftMap drafts;
    private final EventDispatcher<ChatMessageReceptor> globalLevelReceptors;
    private final HashSet<String> guestThreadSet;
    private final ArrayList<Integer> inProcessUploadMediaIds;
    private final SparseArray<Long> lastThreadCheckTime;
    private long lastWsDisconnectTimeMillis;
    private final LocalBroadcastManager localBroadcastManager;
    private final SparseArray<ChatMessage> messages;
    private String myUid;
    private final SparseArray<Date> outboundMessageCreateTime;
    private final HashMap<Integer, Set<Integer>> outboundMessagesNdcIdsMapper;
    private final File photoDir;
    private boolean photoTouched;
    private final ChatService$postListener$1 postListener;
    private final SharedPreferences prefs;
    private final SparseBooleanArray recalledMessages;
    private final BroadcastReceiver receiver;
    private final long[] recentMessageTime;
    private final RequestQueue serialRequestQueue;
    private String setLatestTid;
    private long setLatestTime;
    private final SparseArray<ArrayMap<String, ThreadCheckInfo>> threadCheckInfosMapper;
    private final HashSet<Integer> threadCheckQueue;
    private ApiRequest threadCheckRequest;
    private final Runnable threadCheckRunnable;
    private final HashMap<String, EventDispatcher<ThreadConfigChangeListener>> threadConfigDispatcher;
    private final HashMap<String, EventDispatcher<ChatMessageReceptor>> threadLevelReceptor;
    private final SparseArray<Integer> unreadChatCountMapper;
    private final HashMap<String, EventDispatcher<VideoMessageProgressChangeListener>> videoMessageProgressDispatcher;
    private final SparseArray<Integer> videoUploadPercents;
    private final WsService ws;

    /* compiled from: ChatService.kt */
    /* loaded from: classes2.dex */
    public interface ChatMessageReceptor {
        void onNewChatMessage(int i, ChatMessageDto chatMessageDto);

        void onResetChatMessageList();

        void onUnreadThreadCountChanged(int i);
    }

    /* compiled from: ChatService.kt */
    /* loaded from: classes2.dex */
    public interface VideoMessageProgressChangeListener {
        void onProgressUpdate(int i, int i2);
    }

    public final boolean isSendTooFast() {
        return false;
    }

    public final ChatMessage postMessage(ChatMessage chatMessage) {
        return postMessage$default(this, 0, chatMessage, 1, null);
    }

    public final void queryThreadCheckInfo(int i) {
        queryThreadCheckInfo$default(this, i, false, 2, (Object) null);
    }

    public final void queryThreadCheckInfo(Set<Integer> set) {
        queryThreadCheckInfo$default(this, (Set) set, false, 2, (Object) null);
    }

    public ChatService(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        this.DONE = new Tag("done");
        String name = ChatService.class.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "ChatService::class.java.name");
        this.TAG = name;
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
        this.videoUploadPercents = new SparseArray<>();
        this.videoMessageProgressDispatcher = new HashMap<>();
        this.threadConfigDispatcher = new HashMap<>();
        this.guestThreadSet = new HashSet<>();
        Object service = this.ctx.getService("ws");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"ws\")");
        this.ws = (WsService) service;
        this.ws.listeners.addListener(this);
        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(this.ctx.getContext());
        Intrinsics.checkExpressionValueIsNotNull(localBroadcastManager, "LocalBroadcastManager.getInstance(ctx.context)");
        this.localBroadcastManager = localBroadcastManager;
        Context context = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
        this.chaHelper = new ChatHelper(context);
        SharedPreferences sharedPreferences = this.ctx.getContext().getSharedPreferences("chat", 0);
        Intrinsics.checkExpressionValueIsNotNull(sharedPreferences, "ctx.context.getSharedPreferences(\"chat\", 0)");
        this.prefs = sharedPreferences;
        SharedPreferences sharedPreferences2 = this.ctx.getContext().getSharedPreferences(ChatServiceKt.KEY_PREF_CHAT_DRAFT, 0);
        Intrinsics.checkExpressionValueIsNotNull(sharedPreferences2, "ctx.context.getSharedPreferences(\"chat_draft\", 0)");
        this.chatDraftPrefs = sharedPreferences2;
        Context context2 = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "ctx.context");
        this.photoDir = new File(new File(context2.getFilesDir(), "photo"), "chat");
        this.serialRequestQueue = new RequestQueue(new NoCache(), new BasicNetwork(new ProxyStack(this.ctx)), 1);
        this.serialRequestQueue.start();
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.chat.core.ChatService$receiver$1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context3, Intent intent) {
                Intrinsics.checkParameterIsNotNull(context3, "context");
                Intrinsics.checkParameterIsNotNull(intent, "intent");
                if (Intrinsics.areEqual(AccountService.ACTION_ACCOUNT_CHANGED, intent.getAction())) {
                    AccountService account = (AccountService) this.this$0.getCtx().getService("account");
                    ChatService chatService = this.this$0;
                    Intrinsics.checkExpressionValueIsNotNull(account, "account");
                    chatService.myUid = account.getUserId();
                    if (!account.hasAccount() && this.this$0.threadCheckRequest != null) {
                        Object service2 = this.this$0.getCtx().getService("api");
                        Intrinsics.checkExpressionValueIsNotNull(service2, "ctx.getService(\"api\")");
                        ((ApiService) service2).abort(this.this$0.threadCheckRequest);
                    }
                    this.this$0.clear();
                    if (NVApplication.CLIENT_TYPE == 101) {
                        ConfigService config = (ConfigService) this.this$0.getCtx().getService("config");
                        Intrinsics.checkExpressionValueIsNotNull(config, "config");
                        this.this$0.dispatchUnreadCountChangeOnCommunityLevel(config.getCommunityId());
                    }
                }
            }
        };
        this.threadCheckRunnable = new Runnable() { // from class: com.narvii.chat.core.ChatService$threadCheckRunnable$1
            @Override // java.lang.Runnable
            public final void run() {
                ChatService chatService = this.this$0;
                ChatService.queryThreadCheckInfo$default(chatService, (Set) chatService.threadCheckQueue, false, 2, (Object) null);
            }
        };
        this.postListener = new ChatService$postListener$1(this, MessageResponse.class);
        this.drafts = new DraftMap();
        this.recentMessageTime = new long[3];
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final int getCurCid() {
        return this.curCid;
    }

    public final void setCurCid(int i) {
        this.curCid = i;
    }

    public final NVContext getCurCommunityContext() {
        return this.curCommunityContext;
    }

    public final void setCurCommunityContext(NVContext nVContext) {
        this.curCommunityContext = nVContext;
    }

    /* compiled from: ChatService.kt */
    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int generateClientRefId() {
            return (int) ((System.currentTimeMillis() / 10) % 1000000000);
        }
    }

    public final File getPhotoDir() {
        this.photoDir.mkdirs();
        this.photoTouched = true;
        return this.photoDir;
    }

    public final void resume() {
        notificationCenter(this.curCid).registerListener(this);
        this.localBroadcastManager.registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    public final void pause() {
        this.localBroadcastManager.unregisterReceiver(this.receiver);
        notificationCenter(this.curCid).unregisterListener(this);
    }

    public final void onOpenCommunity() {
        readDraft();
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

    public final void clearCommunityLevelData(int i) {
        Set<Integer> set = this.outboundMessagesNdcIdsMapper.get(Integer.valueOf(i));
        if (set != null) {
            Intrinsics.checkExpressionValueIsNotNull(set, "outboundMessagesNdcIdsMapper[ndcId] ?: return");
            Iterator<T> it = set.iterator();
            while (it.hasNext()) {
                int iIntValue = ((Number) it.next()).intValue();
                this.outboundMessageCreateTime.remove(iIntValue);
                this.messages.remove(iIntValue);
            }
            storeDraft();
        }
    }

    public final BroadcastReceiver getReceiver$Amino_bundle() {
        return this.receiver;
    }

    public final void addGlobalChatMessageReceptor(ChatMessageReceptor listener) {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        this.globalLevelReceptors.addListener(listener);
    }

    public final void removeGlobalChatMessageReceptor(ChatMessageReceptor listener) {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        this.globalLevelReceptors.removeListener(listener);
    }

    public final void dispatchGlobalThreadCountChange() {
        this.globalLevelReceptors.dispatch(new Callback<ChatMessageReceptor>() { // from class: com.narvii.chat.core.ChatService.dispatchGlobalThreadCountChange.1
            @Override // com.narvii.util.Callback
            public final void call(ChatMessageReceptor chatMessageReceptor) {
                chatMessageReceptor.onUnreadThreadCountChanged(0);
            }
        });
    }

    public final void dispatchGlobalOnNewMessage(final int i, final ChatMessageDto chatMessageDto) {
        Intrinsics.checkParameterIsNotNull(chatMessageDto, "chatMessageDto");
        this.globalLevelReceptors.dispatch(new Callback<ChatMessageReceptor>() { // from class: com.narvii.chat.core.ChatService.dispatchGlobalOnNewMessage.1
            @Override // com.narvii.util.Callback
            public final void call(ChatMessageReceptor chatMessageReceptor) {
                chatMessageReceptor.onNewChatMessage(i, chatMessageDto);
            }
        });
    }

    public final void addCommunityLevelReceptor(int i, ChatMessageReceptor chatMessageReceptor) {
        if (i < 0 || chatMessageReceptor == null) {
            return;
        }
        EventDispatcher<ChatMessageReceptor> eventDispatcher = this.communityLevelReceptors.get(i);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(chatMessageReceptor);
        this.communityLevelReceptors.put(i, eventDispatcher);
    }

    public final void removeCommunityLevelReceptor(int i, ChatMessageReceptor chatMessageReceptor) {
        EventDispatcher<ChatMessageReceptor> eventDispatcher;
        if (i < 0 || chatMessageReceptor == null || (eventDispatcher = this.communityLevelReceptors.get(i)) == null) {
            return;
        }
        eventDispatcher.removeListener(chatMessageReceptor);
    }

    public final void dispatchNewMessageOnCommunityLevel(final int i, final ChatMessageDto chatMessageDto) {
        EventDispatcher<ChatMessageReceptor> eventDispatcher;
        if (i < 0 || chatMessageDto == null || (eventDispatcher = this.communityLevelReceptors.get(i)) == null) {
            return;
        }
        Log.d(this.TAG, "dispatchNewMessageOnCommunityLevel --> " + i);
        eventDispatcher.dispatch(new Callback<ChatMessageReceptor>() { // from class: com.narvii.chat.core.ChatService.dispatchNewMessageOnCommunityLevel.1
            @Override // com.narvii.util.Callback
            public final void call(ChatMessageReceptor chatMessageReceptor) {
                chatMessageReceptor.onNewChatMessage(i, chatMessageDto);
            }
        });
    }

    public final void dispatchUnreadCountChangeOnCommunityLevel(final int i) {
        EventDispatcher<ChatMessageReceptor> eventDispatcher;
        if (i >= 0 && (eventDispatcher = this.communityLevelReceptors.get(i)) != null) {
            Log.d(this.TAG, "dispatchUnreadCountChangeOnCommunityLevel --> " + i);
            eventDispatcher.dispatch(new Callback<ChatMessageReceptor>() { // from class: com.narvii.chat.core.ChatService.dispatchUnreadCountChangeOnCommunityLevel.1
                @Override // com.narvii.util.Callback
                public final void call(ChatMessageReceptor chatMessageReceptor) {
                    chatMessageReceptor.onUnreadThreadCountChanged(i);
                }
            });
        }
    }

    public final void addThreadLvelRecptor(String str, ChatMessageReceptor chatMessageReceptor) {
        if ((str == null || str.length() == 0) || chatMessageReceptor == null) {
            return;
        }
        EventDispatcher<ChatMessageReceptor> eventDispatcher = this.threadLevelReceptor.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(chatMessageReceptor);
        if (str != null) {
            this.threadLevelReceptor.put(str, eventDispatcher);
        }
    }

    public final void removeThreadLevelReceptor(String str, ChatMessageReceptor chatMessageReceptor) {
        EventDispatcher<ChatMessageReceptor> eventDispatcher;
        if ((str == null || str.length() == 0) || chatMessageReceptor == null || (eventDispatcher = this.threadLevelReceptor.get(str)) == null) {
            return;
        }
        Intrinsics.checkExpressionValueIsNotNull(eventDispatcher, "threadLevelReceptor[threatId] ?: return");
        eventDispatcher.removeListener(chatMessageReceptor);
    }

    private final void dispatchChatMessageListChange(String str, final ChatMessageDto chatMessageDto) {
        if ((str == null || str.length() == 0) || chatMessageDto == null) {
            return;
        }
        EventDispatcher<ChatMessageReceptor> eventDispatcher = this.threadLevelReceptor.get(str);
        Log.d(this.TAG, "dispatchChatMessageListChange --> " + str);
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback<ChatMessageReceptor>() { // from class: com.narvii.chat.core.ChatService.dispatchChatMessageListChange.1
                @Override // com.narvii.util.Callback
                public final void call(ChatMessageReceptor chatMessageReceptor) {
                    ChatMessageDto chatMessageDto2 = chatMessageDto;
                    chatMessageReceptor.onNewChatMessage(chatMessageDto2.ndcId, chatMessageDto2);
                }
            });
        }
    }

    private final void dispatchChatMessageListReset() {
        Log.d(this.TAG, "dispatchChatMessageListReset");
        Iterator<EventDispatcher<ChatMessageReceptor>> it = this.threadLevelReceptor.values().iterator();
        while (it.hasNext()) {
            it.next().dispatch(new Callback<ChatMessageReceptor>() { // from class: com.narvii.chat.core.ChatService.dispatchChatMessageListReset.1
                @Override // com.narvii.util.Callback
                public final void call(ChatMessageReceptor chatMessageReceptor) {
                    chatMessageReceptor.onResetChatMessageList();
                }
            });
        }
    }

    public final void updateThreadCheckTable(GlobalThreadCheckResultMapResponse globalThreadCheckResultMapResponse) {
        boolean z;
        if ((globalThreadCheckResultMapResponse != null ? globalThreadCheckResultMapResponse.getThreadCheckResultInCommunities() : null) == null) {
            return;
        }
        HashMap<Integer, List<ThreadCheckInfo>> threadCheckResultInCommunities = globalThreadCheckResultMapResponse.getThreadCheckResultInCommunities();
        boolean z2 = false;
        if (threadCheckResultInCommunities != null) {
            loop0: while (true) {
                for (Map.Entry<Integer, List<ThreadCheckInfo>> entry : threadCheckResultInCommunities.entrySet()) {
                    int iIntValue = entry.getKey().intValue();
                    List<ThreadCheckInfo> value = entry.getValue();
                    Integer num = this.unreadChatCountMapper.get(iIntValue);
                    ArrayMap<String, ThreadCheckInfo> curCommunityThreadCheckInfos = getCurCommunityThreadCheckInfos(iIntValue);
                    Iterator<T> it = value.iterator();
                    int i = 0;
                    while (true) {
                        int i2 = 1;
                        if (!it.hasNext()) {
                            break;
                        }
                        ThreadCheckInfo threadCheckInfoUpdateThreadCheckInfo = updateThreadCheckInfo(curCommunityThreadCheckInfos, (ThreadCheckInfo) it.next());
                        if (threadCheckInfoUpdateThreadCheckInfo == null || !threadCheckInfoUpdateThreadCheckInfo.hasUnreadMessage()) {
                            i2 = 0;
                        }
                        i += i2;
                    }
                    this.unreadChatCountMapper.put(iIntValue, Integer.valueOf(i));
                    z = z || num == null || num.intValue() != i;
                }
            }
            z2 = z;
        }
        if (z2) {
            dispatchGlobalThreadCountChange();
            if (NVApplication.CLIENT_TYPE == 101) {
                ConfigService config = (ConfigService) this.ctx.getService("config");
                Intrinsics.checkExpressionValueIsNotNull(config, "config");
                dispatchUnreadCountChangeOnCommunityLevel(config.getCommunityId());
            }
        }
    }

    public final void updateThreadCheckTable(int i, List<? extends ChatThread> list, boolean z) {
        if (list == null || i < 0) {
            return;
        }
        ArrayMap<String, ThreadCheckInfo> curCommunityThreadCheckInfos = getCurCommunityThreadCheckInfos(i);
        boolean zHasUnreadMessage = false;
        for (ChatThread chatThread : list) {
            if (containGuestThreadId(chatThread.threadId)) {
                removeGuestThreadId(chatThread.threadId);
            }
            ThreadCheckInfo threadCheckInfo = curCommunityThreadCheckInfos.get(chatThread.threadId);
            boolean zHasUnreadMessage2 = threadCheckInfo != null ? threadCheckInfo.hasUnreadMessage() : false;
            ThreadCheckInfo threadCheckInfoUpdateThreadCheckInfo = updateThreadCheckInfo(curCommunityThreadCheckInfos, chatThread);
            zHasUnreadMessage |= (threadCheckInfoUpdateThreadCheckInfo != null ? threadCheckInfoUpdateThreadCheckInfo.hasUnreadMessage() : false) ^ zHasUnreadMessage2;
        }
        if (z) {
            HashSet hashSet = new HashSet();
            Iterator<T> it = list.iterator();
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
            checkCurCommunityThreadCountChange(i);
        }
    }

    public final void updateThreadCheckTable(ChatMessageDto chatMessageDto) {
        ChatMessage chatMessage;
        if (chatMessageDto == null || chatMessageDto.ndcId < 0 || (chatMessage = chatMessageDto.chatMessage) == null || !chatMessage.includedInSummary) {
            return;
        }
        if (this.myUid == null) {
            AccountService accountService = (AccountService) this.ctx.getService("account");
            Intrinsics.checkExpressionValueIsNotNull(accountService, "accountService");
            this.myUid = accountService.getUserId();
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

    public final int getUnreadChatCountInCurCommunity(int i) {
        if (this.unreadChatCountMapper.indexOfKey(i) >= 0) {
            Integer num = this.unreadChatCountMapper.get(i);
            Intrinsics.checkExpressionValueIsNotNull(num, "unreadChatCountMapper.get(cid)");
            return num.intValue();
        }
        return buildUnreadThreadMapper(i);
    }

    public final int getAllUnreadThreadCount() {
        int size = this.unreadChatCountMapper.size();
        int iIntValue = 0;
        for (int i = 0; i < size; i++) {
            Integer numValueAt = this.unreadChatCountMapper.valueAt(i);
            Intrinsics.checkExpressionValueIsNotNull(numValueAt, "unreadChatCountMapper.valueAt(i)");
            iIntValue += numValueAt.intValue();
        }
        return iIntValue;
    }

    private final void checkCurCommunityThreadCountChange(int i) {
        if (i < 0) {
            return;
        }
        Integer num = this.unreadChatCountMapper.get(i);
        int iBuildUnreadThreadMapper = buildUnreadThreadMapper(i);
        if (num != null && iBuildUnreadThreadMapper == num.intValue()) {
            return;
        }
        dispatchUnreadCountChangeOnCommunityLevel(i);
        dispatchGlobalThreadCountChange();
    }

    public static /* synthetic */ void updateReadTime$default(ChatService chatService, int i, String str, Date date, boolean z, ChatThread chatThread, int i2, Object obj) {
        boolean z2 = (i2 & 8) != 0 ? false : z;
        if ((i2 & 16) != 0) {
            chatThread = null;
        }
        chatService.updateReadTime(i, str, date, z2, chatThread);
    }

    public final void updateReadTime(int i, String str, Date date, boolean z, ChatThread chatThread) {
        if (i >= 0) {
            if ((str == null || str.length() == 0) || date == null) {
                return;
            }
            Log.d(this.TAG, "update read time for " + str + " with time " + date);
            ArrayMap<String, ThreadCheckInfo> curCommunityThreadCheckInfos = getCurCommunityThreadCheckInfos(i);
            ThreadCheckInfo threadCheckInfo = curCommunityThreadCheckInfos.get(str);
            if (threadCheckInfo == null) {
                ThreadCheckInfo threadCheckInfo2 = new ThreadCheckInfo(str, chatThread != null ? chatThread.latestActivityTime : null, date, chatThread != null ? Integer.valueOf(chatThread.alertOption) : null);
                curCommunityThreadCheckInfos.put(str, threadCheckInfo2);
                if (threadCheckInfo2.hasUnreadMessage()) {
                    checkCurCommunityThreadCountChange(i);
                    return;
                }
                return;
            }
            boolean zHasUnreadMessage = threadCheckInfo.hasUnreadMessage();
            if (z || ChatHelperKt.isNewer(date, threadCheckInfo.getLastReadTime())) {
                threadCheckInfo.setLastReadTime(date);
            }
            if (chatThread != null && ChatHelperKt.isNewer(chatThread.latestActivityTime, threadCheckInfo.getLatestActivityTime())) {
                threadCheckInfo.setLatestActivityTime(chatThread.latestActivityTime);
            }
            if (zHasUnreadMessage ^ threadCheckInfo.hasUnreadMessage()) {
                checkCurCommunityThreadCountChange(i);
            }
        }
    }

    public final void updateLatestActivityTime(int i, String str, Date date) {
        if (i >= 0) {
            if ((str == null || str.length() == 0) || date == null) {
                return;
            }
            Log.d(this.TAG, "update latest activity time for " + str + " with time " + date);
            ArrayMap<String, ThreadCheckInfo> curCommunityThreadCheckInfos = getCurCommunityThreadCheckInfos(i);
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
                checkCurCommunityThreadCountChange(i);
            }
        }
    }

    public final void updateThreadReadAndActivityTime(int i, String str, Date date, Date date2) {
        if (i >= 0) {
            if ((str == null || str.length() == 0) || date2 == null) {
                return;
            }
            Log.d(this.TAG, "update read time for " + str + " with time " + date);
            Log.d(this.TAG, "update latest activity time for " + str + " with time " + date2);
            ArrayMap<String, ThreadCheckInfo> curCommunityThreadCheckInfos = getCurCommunityThreadCheckInfos(i);
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
                checkCurCommunityThreadCountChange(i);
            }
        }
    }

    public final void removeThread(int i, String str) {
        ArrayMap<String, ThreadCheckInfo> curCommunityThreadCheckInfos;
        ThreadCheckInfo threadCheckInfo;
        if ((str == null || str.length() == 0) || (threadCheckInfo = (curCommunityThreadCheckInfos = getCurCommunityThreadCheckInfos(i)).get(str)) == null) {
            return;
        }
        boolean zHasUnreadMessage = threadCheckInfo != null ? threadCheckInfo.hasUnreadMessage() : false;
        curCommunityThreadCheckInfos.remove(str);
        if (zHasUnreadMessage) {
            checkCurCommunityThreadCountChange(i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void handleQuitMessage(com.narvii.chat.util.ChatMessageDto r5) {
        /*
            r4 = this;
            r0 = 0
            if (r5 == 0) goto L6
            com.narvii.model.ChatMessage r1 = r5.chatMessage
            goto L7
        L6:
            r1 = r0
        L7:
            if (r1 != 0) goto La
            return
        La:
            com.narvii.model.ChatMessage r1 = r5.chatMessage
            int r2 = r1.type
            r3 = 102(0x66, float:1.43E-43)
            if (r2 == r3) goto L20
            java.lang.String r2 = "message"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2)
            boolean r2 = r1.isThreadDestroyMessage()
            if (r2 == 0) goto L1e
            goto L20
        L1e:
            r2 = 0
            goto L21
        L20:
            r2 = 1
        L21:
            if (r2 == 0) goto L61
            com.narvii.app.NVContext r2 = r4.ctx
            java.lang.String r3 = "account"
            java.lang.Object r2 = r2.getService(r3)
            com.narvii.account.AccountService r2 = (com.narvii.account.AccountService) r2
            if (r2 == 0) goto L33
            java.lang.String r0 = r2.getUserId()
        L33:
            java.lang.String r2 = r1.uid()
            boolean r0 = com.narvii.util.Utils.isEqualsNotNull(r0, r2)
            if (r0 != 0) goto L43
            int r0 = r1.type
            r2 = 118(0x76, float:1.65E-43)
            if (r0 != r2) goto L61
        L43:
            int r0 = r5.ndcId
            java.lang.String r1 = r1.threadId
            r4.removeThread(r0, r1)
            com.narvii.model.ChatThread r0 = new com.narvii.model.ChatThread
            r0.<init>()
            com.narvii.model.ChatMessage r1 = r5.chatMessage
            java.lang.String r1 = r1.threadId
            r0.threadId = r1
            com.narvii.notification.Notification r1 = new com.narvii.notification.Notification
            java.lang.String r2 = "delete"
            r1.<init>(r2, r0)
            int r5 = r5.ndcId
            r4.sendNotification(r5, r1)
        L61:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.core.ChatService.handleQuitMessage(com.narvii.chat.util.ChatMessageDto):void");
    }

    public final void refresh(boolean z) {
        AffiliationsService affiliationsService = (AffiliationsService) this.ctx.getService("affiliations");
        if ((affiliationsService != null ? affiliationsService.getTimeStamp() : null) != null || affiliationsService == null) {
            return;
        }
        affiliationsService.refresh(true, new Callback<AffiliationsService.AffiliationResponse>() { // from class: com.narvii.chat.core.ChatService.refresh.1
            @Override // com.narvii.util.Callback
            public final void call(AffiliationsService.AffiliationResponse affiliationResponse) {
                HashSet hashSet = new HashSet();
                Iterator<Integer> it = affiliationResponse.affiliations.iterator();
                while (it.hasNext()) {
                    hashSet.add(it.next());
                }
                ChatService.this.queryThreadCheckInfo((Set<Integer>) hashSet, false);
            }
        });
    }

    public final void addThreadCheckQueue(int i) {
        if (this.communitiesIsRequestingThreadCheck.contains(Integer.valueOf(i)) || !isReadyToRequestThreadCheckForCurCommunity(i)) {
            return;
        }
        this.threadCheckQueue.add(Integer.valueOf(i));
        Utils.handler.removeCallbacks(this.threadCheckRunnable);
        Utils.handler.postDelayed(this.threadCheckRunnable, 400L);
    }

    public final Runnable getThreadCheckRunnable() {
        return this.threadCheckRunnable;
    }

    public final boolean isReadyToRequestThreadCheckForCurCommunity(int i) {
        if (this.lastThreadCheckTime.get(i) != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Long l = this.lastThreadCheckTime.get(i);
            Intrinsics.checkExpressionValueIsNotNull(l, "lastThreadCheckTime.get(ndcId)");
            if (jCurrentTimeMillis - l.longValue() <= this.THREAD_CHECK_REQUEST_MIN_INTERVAL) {
                return false;
            }
        }
        return true;
    }

    public static /* synthetic */ void queryThreadCheckInfo$default(ChatService chatService, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        chatService.queryThreadCheckInfo(i, z);
    }

    public final void queryThreadCheckInfo(int i, boolean z) {
        if (z || isReadyToRequestThreadCheckForCurCommunity(i)) {
            HashSet hashSet = new HashSet();
            hashSet.add(Integer.valueOf(i));
            queryThreadCheckInfo(hashSet, z);
        }
    }

    public static /* synthetic */ void queryThreadCheckInfo$default(ChatService chatService, Set set, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        chatService.queryThreadCheckInfo((Set<Integer>) set, z);
    }

    public final void queryThreadCheckInfo(Set<Integer> set, boolean z) {
        boolean z2;
        if (set == null || set.isEmpty()) {
            return;
        }
        if (!z) {
            Iterator<Integer> it = set.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z2 = true;
                    break;
                } else if (isReadyToRequestThreadCheckForCurCommunity(it.next().intValue())) {
                    z2 = false;
                    break;
                }
            }
            if (z2) {
                return;
            }
        }
        Object service = this.ctx.getService("api");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"api\")");
        ApiService apiService = (ApiService) service;
        StringBuilder sb = new StringBuilder();
        if (NVApplication.CLIENT_TYPE == 100) {
            sb.append("0");
        }
        Iterator<T> it2 = set.iterator();
        while (it2.hasNext()) {
            int iIntValue = ((Number) it2.next()).intValue();
            if (sb.length() > 0) {
                sb.append(',');
            }
            sb.append(iIntValue);
        }
        ApiRequest.Builder builderRetry = ApiRequest.builder().path("/chat/thread-check/human-readable").global().chatServer().retry(1);
        if (sb.length() > 0) {
            builderRetry.param("ndcIds", sb.toString());
        }
        this.communitiesIsRequestingThreadCheck.addAll(set);
        this.threadCheckRequest = builderRetry.build();
        apiService.exec(this.threadCheckRequest, new ApiResponseListener<GlobalThreadCheckResultMapResponse>(GlobalThreadCheckResultMapResponse.class) { // from class: com.narvii.chat.core.ChatService.queryThreadCheckInfo.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, GlobalThreadCheckResultMapResponse globalThreadCheckResultMapResponse) throws Exception {
                HashMap<Integer, List<ThreadCheckInfo>> threadCheckResultInCommunities;
                List<Integer> treatedNdcIds;
                super.onFinish(apiRequest, (ApiRequest) globalThreadCheckResultMapResponse);
                long jCurrentTimeMillis = System.currentTimeMillis();
                if ((globalThreadCheckResultMapResponse != null ? globalThreadCheckResultMapResponse.getTreatedNdcIds() : null) != null) {
                    if (globalThreadCheckResultMapResponse != null && (treatedNdcIds = globalThreadCheckResultMapResponse.getTreatedNdcIds()) != null) {
                        Iterator<T> it3 = treatedNdcIds.iterator();
                        while (it3.hasNext()) {
                            int iIntValue2 = ((Number) it3.next()).intValue();
                            ChatService.this.lastThreadCheckTime.put(iIntValue2, Long.valueOf(jCurrentTimeMillis));
                            ChatService.this.threadCheckInfosMapper.remove(iIntValue2);
                            ChatService.this.threadCheckQueue.remove(Integer.valueOf(iIntValue2));
                        }
                    }
                } else if (globalThreadCheckResultMapResponse != null && (threadCheckResultInCommunities = globalThreadCheckResultMapResponse.getThreadCheckResultInCommunities()) != null) {
                    for (Map.Entry<Integer, List<ThreadCheckInfo>> entry : threadCheckResultInCommunities.entrySet()) {
                        int iIntValue3 = entry.getKey().intValue();
                        entry.getValue();
                        ChatService.this.lastThreadCheckTime.put(iIntValue3, Long.valueOf(jCurrentTimeMillis));
                        ChatService.this.threadCheckInfosMapper.remove(iIntValue3);
                        ChatService.this.threadCheckQueue.remove(Integer.valueOf(iIntValue3));
                    }
                }
                ChatService.this.updateThreadCheckTable(globalThreadCheckResultMapResponse);
                ChatService.this.printCurrentThreadCheckTable();
                ChatService.this.communitiesIsRequestingThreadCheck.clear();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                ChatService.this.communitiesIsRequestingThreadCheck.clear();
            }
        });
    }

    public final void addGuestThreadId(String str) {
        if (str != null) {
            this.guestThreadSet.add(str);
        }
    }

    public final void removeGuestThreadId(String str) {
        if (str != null) {
            this.guestThreadSet.remove(str);
        }
    }

    public final boolean containGuestThreadId(String str) {
        if (str == null) {
            return false;
        }
        return this.guestThreadSet.contains(str);
    }

    public final NVContext getCurNvContext() {
        NVContext nVContext = this.curCommunityContext;
        if (nVContext != null) {
            if (nVContext != null) {
                return nVContext;
            }
            Intrinsics.throwNpe();
            throw null;
        }
        if (this.curCid != 0) {
            return new CommunityContext(NVApplication.instance(), this.curCid);
        }
        NVApplication nVApplicationInstance = NVApplication.instance();
        Intrinsics.checkExpressionValueIsNotNull(nVApplicationInstance, "NVApplication.instance()");
        return nVApplicationInstance;
    }

    public final Date getThreadLastReadTime(int i, String str) {
        ThreadCheckInfo threadCheckInfo;
        if ((str == null || str.length() == 0) || (threadCheckInfo = getCurCommunityThreadCheckInfos(i).get(str)) == null) {
            return null;
        }
        return threadCheckInfo.getLastReadTime();
    }

    public final boolean isCurThreadUnread(int i, String str) {
        ThreadCheckInfo threadCheckInfo;
        if ((str == null || str.length() == 0) || (threadCheckInfo = getCurCommunityThreadCheckInfos(i).get(str)) == null) {
            return false;
        }
        return threadCheckInfo.hasUnreadMessage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getNdcIdFromMessage(ChatMessage chatMessage) {
        int i = chatMessage._ndcId;
        return i == 0 ? this.curCid : i;
    }

    private final NotificationCenter notificationCenter(int i) {
        Object service = NVApplication.instance().getService(i, "notification");
        Intrinsics.checkExpressionValueIsNotNull(service, "NVApplication.instance()…vice(cid, \"notification\")");
        return (NotificationCenter) service;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendNotification(int i, Notification notification) {
        Object service = NVApplication.instance().getService(i, "notification");
        Intrinsics.checkExpressionValueIsNotNull(service, "NVApplication.instance()…vice(cid, \"notification\")");
        NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) service, notification);
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

    private final int buildUnreadThreadMapper(int i) {
        ArrayMap<String, ThreadCheckInfo> arrayMap = this.threadCheckInfosMapper.get(i);
        int i2 = 0;
        if (arrayMap == null) {
            this.unreadChatCountMapper.put(i, 0);
            return 0;
        }
        Collection<ThreadCheckInfo> collectionValues = arrayMap.values();
        Intrinsics.checkExpressionValueIsNotNull(collectionValues, "currentCommunityMapper.values");
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            if (((ThreadCheckInfo) it.next()).hasUnreadMessage()) {
                i2++;
            }
        }
        this.unreadChatCountMapper.put(i, Integer.valueOf(i2));
        return i2;
    }

    private final ArrayMap<String, ThreadCheckInfo> getCurCommunityThreadCheckInfos(int i) {
        ArrayMap<String, ThreadCheckInfo> arrayMap = this.threadCheckInfosMapper.get(i);
        if (arrayMap != null) {
            return arrayMap;
        }
        ArrayMap<String, ThreadCheckInfo> arrayMap2 = new ArrayMap<>();
        this.threadCheckInfosMapper.put(i, arrayMap2);
        return arrayMap2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void printCurrentThreadCheckTable() {
        Collection<ThreadCheckInfo> collectionValues;
        StringBuilder sb = new StringBuilder();
        sb.append("\n-------------------Thread Check table ------------------\n");
        int size = this.threadCheckInfosMapper.size();
        for (int i = 0; i < size; i++) {
            int iKeyAt = this.threadCheckInfosMapper.keyAt(i);
            ArrayMap<String, ThreadCheckInfo> arrayMapValueAt = this.threadCheckInfosMapper.valueAt(i);
            if (arrayMapValueAt != null && (collectionValues = arrayMapValueAt.values()) != null) {
                for (ThreadCheckInfo threadCheckInfo : collectionValues) {
                    StringBuilder sb2 = new StringBuilder();
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    Object[] objArr = {Integer.valueOf(iKeyAt)};
                    String str = String.format("%10d", Arrays.copyOf(objArr, objArr.length));
                    Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(format, *args)");
                    sb2.append(str);
                    sb2.append(' ');
                    StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                    Object[] objArr2 = {threadCheckInfo.getThreadId()};
                    String str2 = String.format("%40s", Arrays.copyOf(objArr2, objArr2.length));
                    Intrinsics.checkExpressionValueIsNotNull(str2, "java.lang.String.format(format, *args)");
                    sb2.append(str2);
                    sb2.append(' ');
                    StringCompanionObject stringCompanionObject3 = StringCompanionObject.INSTANCE;
                    Object[] objArr3 = {threadCheckInfo.getLatestActivityTime()};
                    String str3 = String.format("%40s", Arrays.copyOf(objArr3, objArr3.length));
                    Intrinsics.checkExpressionValueIsNotNull(str3, "java.lang.String.format(format, *args)");
                    sb2.append(str3);
                    sb2.append(' ');
                    StringCompanionObject stringCompanionObject4 = StringCompanionObject.INSTANCE;
                    Object[] objArr4 = {threadCheckInfo.getLastReadTime()};
                    String str4 = String.format("%40s", Arrays.copyOf(objArr4, objArr4.length));
                    Intrinsics.checkExpressionValueIsNotNull(str4, "java.lang.String.format(format, *args)");
                    sb2.append(str4);
                    sb2.append("     ");
                    sb2.append(threadCheckInfo.getAlertOption());
                    sb2.append('\n');
                    sb.append(sb2.toString());
                }
            }
        }
        Log.d(this.TAG, sb.toString());
    }

    public final void storeOutboundMessage(ChatMessage chatMessage) {
        if (chatMessage != null) {
            this.messages.put(chatMessage.clientRefId, chatMessage);
            Set<Integer> hashSet = this.outboundMessagesNdcIdsMapper.get(Integer.valueOf(chatMessage._ndcId));
            if (hashSet == null) {
                hashSet = new HashSet<>();
                this.outboundMessagesNdcIdsMapper.put(Integer.valueOf(chatMessage._ndcId), hashSet);
            }
            hashSet.add(Integer.valueOf(chatMessage.clientRefId));
        }
    }

    public final void removeOutboundMessage(int i) {
        Set<Integer> set;
        ChatMessage chatMessage = this.messages.get(i);
        this.messages.remove(i);
        if (chatMessage == null || (set = this.outboundMessagesNdcIdsMapper.get(Integer.valueOf(chatMessage._ndcId))) == null) {
            return;
        }
        set.remove(Integer.valueOf(i));
    }

    public final List<ChatMessage> getOutboundMessages(String str) {
        if (str == null || str.length() == 0) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = null;
        int size = this.messages.size();
        for (int i = 0; i < size; i++) {
            ChatMessage chatMessageValueAt = this.messages.valueAt(i);
            if (Utils.isEqualsNotNull(chatMessageValueAt.threadId, str)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(chatMessageValueAt);
            }
        }
        return arrayList != null ? arrayList : CollectionsKt__CollectionsKt.emptyList();
    }

    public final PhotoManager photoManager$Amino_bundle() {
        this.photoTouched = true;
        Object service = this.ctx.getService("photo");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"photo\")");
        return (PhotoManager) service;
    }

    public static /* synthetic */ ChatMessage postMessage$default(ChatService chatService, int i, ChatMessage chatMessage, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = chatService.curCid;
        }
        return chatService.postMessage(i, chatMessage);
    }

    public final ChatMessage postMessage(int i, ChatMessage chatMessage) {
        if (chatMessage == null) {
            return null;
        }
        if (chatMessage.clientRefId == 0) {
            Log.e("post message clientRefId = 0");
        }
        if (chatMessage.threadId == null) {
            Log.e("post message threadId = null");
        }
        chatMessage._ndcId = i;
        if (!sendChatRequest(i, chatMessage)) {
            return this.messages.get(chatMessage.clientRefId);
        }
        NVObject nVObjectM46clone = chatMessage.m46clone();
        if (nVObjectM46clone == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatMessage");
        }
        ChatMessage chatMessage2 = (ChatMessage) nVObjectM46clone;
        chatMessage2._status = 1;
        storeOutboundMessage(chatMessage2);
        recordRecentMessage();
        sendNotification(i, new Notification("new", chatMessage2));
        Date date = new Date();
        updateThreadReadAndActivityTime(i, chatMessage.threadId, date, date);
        return chatMessage;
    }

    public final boolean recallMessage(int i) {
        ChatMessage chatMessage = this.messages.get(i);
        if (chatMessage == null) {
            return false;
        }
        removeOutboundMessage(i);
        int i2 = chatMessage._status;
        if (i2 == 0) {
            sendDeleteMessageRequest(chatMessage);
        } else if (i2 == 1) {
            this.recalledMessages.put(i, true);
        }
        sendNotification(getNdcIdFromMessage(chatMessage), new Notification("delete", chatMessage));
        return true;
    }

    public final void retryPost(int i) {
        ChatMessage chatMessage = this.messages.get(i);
        if (chatMessage == null) {
            Log.w("retryPost fail, message not found: " + i);
            return;
        }
        if (chatMessage._status != 2) {
            Log.w("retryPost fail, message status != STATUS_FAILED");
            return;
        }
        int ndcIdFromMessage = getNdcIdFromMessage(chatMessage);
        if (sendChatRequest(ndcIdFromMessage, chatMessage)) {
            NVObject nVObjectM46clone = chatMessage.m46clone();
            if (nVObjectM46clone == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatMessage");
            }
            ChatMessage chatMessage2 = (ChatMessage) nVObjectM46clone;
            chatMessage2._status = 1;
            storeOutboundMessage(chatMessage2);
            sendNotification(ndcIdFromMessage, new Notification("update", chatMessage2));
        }
    }

    private final boolean sendChatRequest(int i, ChatMessage chatMessage) {
        if (chatMessage == null) {
            return false;
        }
        if (parseLinkFirst(chatMessage)) {
            return true;
        }
        ApiRequest apiRequestBuildRequest = buildRequest(i, chatMessage);
        if (apiRequestBuildRequest == null) {
            ChatService$postListener$1 chatService$postListener$1 = this.postListener;
            ApiRequest apiRequestBuild = ApiRequest.builder().tag(chatMessage).build();
            Intrinsics.checkExpressionValueIsNotNull(apiRequestBuild, "ApiRequest.builder().tag(message).build()");
            String string = this.ctx.getContext().getString(R.string.api_request_fail);
            Intrinsics.checkExpressionValueIsNotNull(string, "ctx.context.getString(R.string.api_request_fail)");
            chatService$postListener$1.onFail(apiRequestBuild, 0, null, string, null, null);
            return false;
        }
        Object service = this.ctx.getService("api");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"api\")");
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

    public final void recordOutBoundCreatedTime(ChatMessage chatMessage) {
        Date date;
        if (chatMessage == null || (date = chatMessage.createdTime) == null) {
            return;
        }
        this.outboundMessageCreateTime.put(chatMessage.clientRefId, date);
    }

    public final Date getOutBoundCreatedTime(ChatMessage chatMessage) {
        if (chatMessage == null) {
            return null;
        }
        return this.outboundMessageCreateTime.get(chatMessage.clientRefId);
    }

    public final boolean parseLinkFirst(ChatMessage chatMessage) {
        if (chatMessage == null || chatMessage.type != 0 || chatMessage.content == null || chatMessage.mediaValue != null || chatMessage.hasAttachment() || chatMessage.hasLinkSnippet()) {
            return false;
        }
        String link = UriUtils.extractUrl(chatMessage.content);
        if (TextUtils.isEmpty(link)) {
            return false;
        }
        chatMessage._linkParsing = true;
        LinkSnippetHelper linkSnippetHelper = new LinkSnippetHelper(getCurNvContext());
        Intrinsics.checkExpressionValueIsNotNull(link, "link");
        linkSnippetHelper.getLinkSnippet(link, new LinkSnippetHandler(this, chatMessage, link, linkSnippetHelper));
        return true;
    }

    public final void sendDeleteMessageRequest(ChatMessage chatMessage) {
        if (chatMessage == null) {
            return;
        }
        ApiRequest apiRequestBuild = ApiRequest.builder().chatServer().delete().path("/chat/thread/" + chatMessage.threadId + "/message/" + chatMessage.messageId).communityId(getNdcIdFromMessage(chatMessage)).build();
        Object service = this.ctx.getService("api");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"api\")");
        ((ApiService) service).exec(apiRequestBuild, ApiResponseListener.IGNORE_RESPONSE_LISTENER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPostFinished(ApiRequest apiRequest, MessageResponse messageResponse) throws IllegalStateException {
        String str;
        Object objTag = apiRequest.tag();
        if (objTag == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatMessage");
        }
        final ChatMessage chatMessage = (ChatMessage) objTag;
        String str2 = chatMessage.mediaValue;
        if (str2 != null && StringsKt__StringsJVMKt.startsWith$default(str2, "photo", false, 2, null)) {
            photoManager$Amino_bundle().remove(chatMessage.mediaValue);
        }
        final ChatMessage msg = messageResponse.message;
        LinkSummary firstLinkSnippet = chatMessage.getFirstLinkSnippet();
        if (firstLinkSnippet != null) {
            Media firstMedia = firstLinkSnippet.getFirstMedia();
            if (firstMedia != null && (str = firstMedia.url) != null && StringsKt__StringsJVMKt.startsWith$default(str, "photo://", false, 2, null)) {
                photoManager$Amino_bundle().remove(firstMedia.url);
            }
            Intrinsics.checkExpressionValueIsNotNull(msg, "msg");
            LinkSummary firstLinkSnippet2 = msg.getFirstLinkSnippet();
            if (firstLinkSnippet2 != null) {
                Media firstMedia2 = firstLinkSnippet2.getFirstMedia();
                WeakReference<Bitmap> weakReference = this.bitmapCache.get(firstMedia.url);
                if (weakReference != null && firstMedia2 != null) {
                    HashMap<String, WeakReference<Bitmap>> map = this.bitmapCache;
                    String str3 = firstMedia2.url;
                    Intrinsics.checkExpressionValueIsNotNull(str3, "media.url");
                    map.put(str3, weakReference);
                    this.bitmapCache.remove(firstMedia.url);
                }
            }
        }
        if (this.recalledMessages.get(chatMessage.clientRefId)) {
            sendDeleteMessageRequest(msg);
            Log.w("recall message " + msg);
            return;
        }
        MediaLoader mediaLoader = (MediaLoader) this.ctx.getService("mediaLoader");
        if (mediaLoader != null && msg.type == 2 && chatMessage.type == 2) {
            mediaLoader.cacheLocalFile(msg.mediaValue, chatMessage.mediaValue, new Callback<Boolean>() { // from class: com.narvii.chat.core.ChatService.onPostFinished.2
                @Override // com.narvii.util.Callback
                public final void call(Boolean bool) {
                    Utils.post(new Runnable() { // from class: com.narvii.chat.core.ChatService.onPostFinished.2.1
                        @Override // java.lang.Runnable
                        public final void run() throws IllegalStateException {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            ChatService chatService = ChatService.this;
                            ChatMessage chatMessage2 = chatMessage;
                            ChatMessage msg2 = msg;
                            Intrinsics.checkExpressionValueIsNotNull(msg2, "msg");
                            chatService.onMessagePostSuccess(chatMessage2, msg2);
                        }
                    });
                }
            });
        } else {
            Intrinsics.checkExpressionValueIsNotNull(msg, "msg");
            onMessagePostSuccess(chatMessage, msg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onMessagePostSuccess(ChatMessage chatMessage, ChatMessage chatMessage2) throws IllegalStateException {
        chatMessage2.clientRefId = chatMessage.clientRefId;
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

    public final void onPostFailed(ApiRequest req, int i, List<? extends NameValuePair> list, String message, ApiResponse apiResponse, Throwable th) {
        Intrinsics.checkParameterIsNotNull(req, "req");
        Intrinsics.checkParameterIsNotNull(message, "message");
        Object objTag = req.tag();
        if (objTag == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatMessage");
        }
        ChatMessage chatMessage = (ChatMessage) objTag;
        if (this.recalledMessages.get(chatMessage.clientRefId)) {
            return;
        }
        NVToast.makeText(this.ctx.getContext(), message, 0).show();
        NVObject nVObjectM46clone = chatMessage.m46clone();
        if (nVObjectM46clone == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatMessage");
        }
        ChatMessage chatMessage2 = (ChatMessage) nVObjectM46clone;
        chatMessage2._status = 2;
        chatMessage2._errorCode = i;
        storeOutboundMessage(chatMessage2);
        sendNotification(getNdcIdFromMessage(chatMessage2), new Notification("update", chatMessage2));
    }

    /* compiled from: ChatService.kt */
    /* loaded from: classes2.dex */
    private final class LinkSnippetHandler implements LinkSnippetListener {
        private boolean finished;
        private String link;
        private LinkSnippetHelper linkSnippetHelper;
        private ChatMessage msg;
        final /* synthetic */ ChatService this$0;

        public LinkSnippetHandler(ChatService chatService, ChatMessage msg, String link, LinkSnippetHelper linkSnippetHelper) {
            Intrinsics.checkParameterIsNotNull(msg, "msg");
            Intrinsics.checkParameterIsNotNull(link, "link");
            this.this$0 = chatService;
            this.msg = msg;
            this.link = link;
            this.linkSnippetHelper = linkSnippetHelper;
        }

        public final ChatMessage getMsg() {
            return this.msg;
        }

        public final void setMsg(ChatMessage chatMessage) {
            Intrinsics.checkParameterIsNotNull(chatMessage, "<set-?>");
            this.msg = chatMessage;
        }

        public final String getLink() {
            return this.link;
        }

        public final void setLink(String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            this.link = str;
        }

        public final LinkSnippetHelper getLinkSnippetHelper() {
            return this.linkSnippetHelper;
        }

        public final void setLinkSnippetHelper(LinkSnippetHelper linkSnippetHelper) {
            this.linkSnippetHelper = linkSnippetHelper;
        }

        public final boolean getFinished$Amino_bundle() {
            return this.finished;
        }

        public final void setFinished$Amino_bundle(boolean z) {
            this.finished = z;
        }

        @Override // com.narvii.link.LinkSnippetListener
        public boolean isFinished() {
            return this.finished;
        }

        @Override // com.narvii.link.LinkSnippetListener
        public void onFinish(Media media) {
            if (this.finished) {
                return;
            }
            this.finished = true;
            LinkSnippetHelper linkSnippetHelper = this.linkSnippetHelper;
            if (linkSnippetHelper != null) {
                linkSnippetHelper.removeTimeoutRunnable();
            }
            NVObject nVObjectM46clone = this.msg.m46clone();
            if (nVObjectM46clone == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatMessage");
            }
            ChatMessage chatMessage = (ChatMessage) nVObjectM46clone;
            if (media != null) {
                if (chatMessage.extensions == null) {
                    chatMessage.extensions = JacksonUtils.createObjectNode();
                }
                LinkSummary linkSummary = new LinkSummary();
                linkSummary.mediaList = new ArrayList();
                linkSummary.mediaList.add(media);
                linkSummary.link = this.link;
                ArrayList arrayList = new ArrayList();
                arrayList.add(linkSummary);
                chatMessage.extensions.put("linkSnippetList", JacksonUtils.DEFAULT_MAPPER.valueToTree(arrayList));
            }
            chatMessage._linkParsing = false;
            chatMessage._status = 1;
            this.this$0.storeOutboundMessage(chatMessage);
            Notification notification = new Notification("update", chatMessage);
            ChatService chatService = this.this$0;
            chatService.sendNotification(chatService.getNdcIdFromMessage(chatMessage), notification);
            ChatService chatService2 = this.this$0;
            ApiRequest apiRequestBuildRequest = chatService2.buildRequest(chatService2.getNdcIdFromMessage(chatMessage), chatMessage);
            if (apiRequestBuildRequest == null) {
                ChatService$postListener$1 chatService$postListener$1 = this.this$0.postListener;
                ApiRequest apiRequestBuild = ApiRequest.builder().tag(chatMessage).build();
                Intrinsics.checkExpressionValueIsNotNull(apiRequestBuild, "ApiRequest.builder().tag(msg).build()");
                String string = this.this$0.getCtx().getContext().getString(R.string.api_request_fail);
                Intrinsics.checkExpressionValueIsNotNull(string, "ctx.context.getString(R.string.api_request_fail)");
                chatService$postListener$1.onFail(apiRequestBuild, 0, null, string, null, null);
                return;
            }
            Object service = this.this$0.getCtx().getService("api");
            Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"api\")");
            ((ApiService) service).exec(apiRequestBuildRequest, this.this$0.postListener, this.this$0.serialRequestQueue);
            this.this$0.recordOutBoundCreatedTime(chatMessage);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0124  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.narvii.util.http.ApiRequest buildRequest(int r21, com.narvii.model.ChatMessage r22) {
        /*
            Method dump skipped, instructions count: 713
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.core.ChatService.buildRequest(int, com.narvii.model.ChatMessage):com.narvii.util.http.ApiRequest");
    }

    public static /* synthetic */ void buildBaseRequestNode$default(ChatService chatService, ChatMessage chatMessage, ObjectNode objectNode, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        chatService.buildBaseRequestNode(chatMessage, objectNode, z);
    }

    public final void buildBaseRequestNode(ChatMessage chatMessage, ObjectNode node, boolean z) {
        Intrinsics.checkParameterIsNotNull(node, "node");
        if (chatMessage == null) {
            return;
        }
        if (!TextUtils.isEmpty(chatMessage.getReplyMessageId())) {
            node.put("replyMessageId", chatMessage.getReplyMessageId());
        }
        node.put("type", chatMessage.type);
        node.put("content", chatMessage.content);
        node.put("clientRefId", chatMessage.clientRefId);
        node.put("attachedObject", JacksonUtils.nodePath(chatMessage.extensions, "attachedObjectInfo"));
        int i = chatMessage.mediaType;
        if (i != 0) {
            node.put("mediaType", i);
            if (TextUtils.isEmpty(chatMessage.mediaValue) || !z) {
                return;
            }
            node.put("mediaValue", chatMessage.mediaValue);
        }
    }

    private final ApiRequest buildVideoChatRequest(int i, ChatMessage chatMessage, ObjectNode objectNode) {
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
        ApiRequest.Builder builderCommunityId = ApiRequest.builder().post().chatServer().path("/chat/thread/" + chatMessage.threadId + "/message").communityId(i);
        if (path != null && path.exists()) {
            builderCommunityId.addPart(new ApiRequest.FilePart("cover.jpg", path));
        }
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("contentType", MimeTypes.VIDEO_MP4);
        objectNodeCreateObjectNode.put("cover", "cover.jpg");
        objectNodeCreateObjectNode.put("video", "video.mp4");
        objectNode.put("videoUpload", objectNodeCreateObjectNode);
        builderCommunityId.contentTypeMultiPart().addPart(new ApiRequest.FormPart(ApiRequest.MULTIPART_NAME_PAYLOAD, objectNode.toString())).addPart(new ApiRequest.FilePart("video.mp4", path2));
        builderCommunityId.tag(chatMessage);
        builderCommunityId.timeout(60000);
        return builderCommunityId.build();
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (notification != null && Intrinsics.areEqual(notification.action, "delete")) {
            for (int size = this.messages.size() - 1; size >= 0; size--) {
                ChatMessage chatMessageValueAt = this.messages.valueAt(size);
                if (Utils.isEqualsNotNull(chatMessageValueAt.messageId, notification.id)) {
                    removeOutboundMessage(chatMessageValueAt.clientRefId);
                }
            }
        }
    }

    public final void addInProcessUploadMedia(int i) {
        if (this.inProcessUploadMediaIds.contains(Integer.valueOf(i))) {
            return;
        }
        this.inProcessUploadMediaIds.add(Integer.valueOf(i));
    }

    public final void removeInProcessUploadMedia(int i) {
        this.inProcessUploadMediaIds.remove(Integer.valueOf(i));
    }

    public final boolean isMediaUploadingStillInProcess(int i) {
        return this.inProcessUploadMediaIds.contains(Integer.valueOf(i));
    }

    public final long getReadTime(String str) {
        if (str == null || str.length() == 0) {
            return 0L;
        }
        String string = this.prefs.getString("lastReadTime", null);
        if (TextUtils.isEmpty(string)) {
            return 0L;
        }
        if (string != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(string, "|");
            while (stringTokenizer.hasMoreTokens()) {
                String strNextToken = stringTokenizer.nextToken();
                if (!stringTokenizer.hasMoreTokens()) {
                    break;
                }
                String strNextToken2 = stringTokenizer.nextToken();
                if (Utils.isEqualsNotNull(str, strNextToken)) {
                    return Long.parseLong(strNextToken2);
                }
            }
            return 0L;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    public final void setReadTime(String str, long j) {
        int i = 0;
        if ((str == null || str.length() == 0) || j <= 0) {
            return;
        }
        if (!Utils.isEqualsNotNull(str, this.setLatestTid) || j > this.setLatestTime) {
            this.setLatestTid = str;
            this.setLatestTime = j;
            StringBuilder sb = new StringBuilder();
            String string = this.prefs.getString("lastReadTime", null);
            sb.append(str);
            sb.append('|');
            sb.append(j);
            sb.append('|');
            if (!TextUtils.isEmpty(string)) {
                if (string != null) {
                    StringTokenizer stringTokenizer = new StringTokenizer(string, "|");
                    while (true) {
                        int i2 = i + 1;
                        if (i < 9 && stringTokenizer.hasMoreTokens()) {
                            String strNextToken = stringTokenizer.nextToken();
                            if (!stringTokenizer.hasMoreTokens()) {
                                break;
                            }
                            String strNextToken2 = stringTokenizer.nextToken();
                            if (Utils.isEqualsNotNull(strNextToken, str)) {
                                try {
                                    if (Long.parseLong(strNextToken2) >= j) {
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
                                Intrinsics.checkExpressionValueIsNotNull(sb, "sb.append(`val`).append('|')");
                            }
                            i = i2;
                        } else {
                            break;
                        }
                    }
                } else {
                    Intrinsics.throwNpe();
                    throw null;
                }
            }
            this.prefs.edit().putString("lastReadTime", sb.toString()).apply();
        }
    }

    /* compiled from: ChatService.kt */
    /* loaded from: classes2.dex */
    public static final class DraftMap extends LinkedHashMap<String, String> {
        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsKey(Object obj) {
            if (obj instanceof String) {
                return containsKey((String) obj);
            }
            return false;
        }

        public /* bridge */ boolean containsKey(String str) {
            return super.containsKey((Object) str);
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsValue(Object obj) {
            if (obj instanceof String) {
                return containsValue((String) obj);
            }
            return false;
        }

        public /* bridge */ boolean containsValue(String str) {
            return super.containsValue((Object) str);
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Set<Map.Entry<String, String>> entrySet() {
            return getEntries();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Object get(Object obj) {
            if (obj instanceof String) {
                return get((String) obj);
            }
            return null;
        }

        public /* bridge */ String get(String str) {
            return (String) super.get((Object) str);
        }

        public /* bridge */ Set getEntries() {
            return super.entrySet();
        }

        public /* bridge */ Set getKeys() {
            return super.keySet();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.Map
        public final /* bridge */ Object getOrDefault(Object obj, Object obj2) {
            return obj instanceof String ? getOrDefault((String) obj, (String) obj2) : obj2;
        }

        public /* bridge */ String getOrDefault(String str, String str2) {
            return (String) super.getOrDefault((Object) str, str2);
        }

        public /* bridge */ int getSize() {
            return super.size();
        }

        public /* bridge */ Collection getValues() {
            return super.values();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Set<String> keySet() {
            return getKeys();
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Object remove(Object obj) {
            if (obj instanceof String) {
                return remove((String) obj);
            }
            return null;
        }

        public /* bridge */ String remove(String str) {
            return (String) super.remove((Object) str);
        }

        @Override // java.util.HashMap, java.util.Map
        public final /* bridge */ boolean remove(Object obj, Object obj2) {
            if (!(obj != null ? obj instanceof String : true)) {
                return false;
            }
            if (obj2 != null ? obj2 instanceof String : true) {
                return remove((String) obj, (String) obj2);
            }
            return false;
        }

        public /* bridge */ boolean remove(String str, String str2) {
            return super.remove((Object) str, (Object) str2);
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ int size() {
            return getSize();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Collection<String> values() {
            return getValues();
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<String, String> entry) {
            return size() > 100;
        }
    }

    public final String getDraft(String str) {
        DraftMap draftMap;
        if ((str == null || str.length() == 0) || (draftMap = this.drafts) == null) {
            return null;
        }
        return (String) draftMap.get((Object) str);
    }

    public final void setDraft(String tid, String msg) {
        DraftMap draftMap;
        Intrinsics.checkParameterIsNotNull(tid, "tid");
        Intrinsics.checkParameterIsNotNull(msg, "msg");
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

    public final void storeDraft() {
        this.chatDraftPrefs.edit().clear().putString(ChatServiceKt.KEY_PREF_CHAT_DRAFT, JacksonUtils.writeAsString(this.drafts)).apply();
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

    private final void recordRecentMessage() {
        int iIndexOf;
        if (ArraysKt___ArraysKt.min(this.recentMessageTime) != null) {
            long[] jArr = this.recentMessageTime;
            Long lMin = ArraysKt___ArraysKt.min(jArr);
            if (lMin == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            iIndexOf = ArraysKt___ArraysKt.indexOf(jArr, lMin.longValue());
        } else {
            iIndexOf = 0;
        }
        this.recentMessageTime[iIndexOf] = SystemClock.elapsedRealtime();
    }

    public final long getLatestSendElapse() {
        Long lMax = ArraysKt___ArraysKt.max(this.recentMessageTime);
        long jLongValue = lMax != null ? lMax.longValue() : 0L;
        if (jLongValue == 0) {
            return Long.MAX_VALUE;
        }
        return SystemClock.elapsedRealtime() - jLongValue;
    }

    public static /* synthetic */ void sendChatMessageAck$default(ChatService chatService, int i, ChatMessage chatMessage, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        chatService.sendChatMessageAck(i, chatMessage, z);
    }

    public final void sendChatMessageAck(int i, ChatMessage chatMessage, boolean z) {
        if (i < 0 || chatMessage == null) {
            return;
        }
        ChatMessageDto chatMessageDto = new ChatMessageDto();
        chatMessageDto.chatMessage = chatMessage;
        chatMessageDto.ndcId = i;
        sendChatMessageAck(chatMessageDto, z);
    }

    public static /* synthetic */ void sendChatMessageAck$default(ChatService chatService, ChatMessageDto chatMessageDto, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        chatService.sendChatMessageAck(chatMessageDto, z);
    }

    public final void sendChatMessageAck(ChatMessageDto chatMessageDto, boolean z) {
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
        objectNodeCreateObjectNode.put("markHasRead", z);
        Date date = chatMessageDto.chatMessage.createdTime;
        if (date != null) {
            objectNodeCreateObjectNode.put("createdTime", DateTimeFormatter.formatISO8601(date));
        }
        wsRequest.object = objectNodeCreateObjectNode;
        if (z) {
            int i = chatMessageDto.ndcId;
            ChatMessage chatMessage3 = chatMessageDto.chatMessage;
            updateReadTime$default(this, i, chatMessage3.threadId, chatMessage3.createdTime, false, null, 24, null);
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

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsMessage(WsService wsService, WsMessage wsMessage) {
        ObjectNode objectNode;
        ChatMessage chatMessage;
        ChatMessage chatMessage2;
        ChatMessage chatMessage3;
        ChatMessage chatMessage4;
        ChatMessage chatMessage5;
        ChatMessage chatMessage6;
        if (wsMessage == null || Intrinsics.areEqual(wsMessage.tag, this.DONE) || wsMessage.type != 1000 || (objectNode = wsMessage.object) == null) {
            return;
        }
        ChatMessageDto chatMessageDto = (ChatMessageDto) JacksonUtils.readAs(objectNode.toString(), ChatMessageDto.class);
        if (NVApplication.CLIENT_TYPE == 101) {
            Object service = this.ctx.getService("config");
            Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService<ConfigService>(\"config\")");
            if (((ConfigService) service).getCommunityId() != chatMessageDto.ndcId) {
                return;
            }
        }
        sendChatMessageAck$default(this, chatMessageDto, false, 2, null);
        if (chatMessageDto != null && (chatMessage6 = chatMessageDto.chatMessage) != null && chatMessage6.isPermissionRelatedMessage()) {
            ChatMessage chatMessage7 = chatMessageDto.chatMessage;
            dispatchChannelPermissionChange(chatMessage7 != null ? chatMessage7.threadId : null, chatMessageDto.chatMessage);
        } else if ((chatMessageDto != null && (chatMessage4 = chatMessageDto.chatMessage) != null && chatMessage4.type == 121) || (chatMessageDto != null && (chatMessage3 = chatMessageDto.chatMessage) != null && chatMessage3.type == 127)) {
            ChatMessage chatMessage8 = chatMessageDto.chatMessage;
            dispatchAnnouncementChange(chatMessage8 != null ? chatMessage8.threadId : null, chatMessageDto.chatMessage);
        } else if ((chatMessageDto != null && (chatMessage2 = chatMessageDto.chatMessage) != null && chatMessage2.type == 125) || (chatMessageDto != null && (chatMessage = chatMessageDto.chatMessage) != null && chatMessage.type == 126)) {
            ChatMessage chatMessage9 = chatMessageDto.chatMessage;
            dispatchViewOnlyChange(chatMessage9 != null ? chatMessage9.threadId : null, chatMessageDto.chatMessage);
        }
        String str = (chatMessageDto == null || (chatMessage5 = chatMessageDto.chatMessage) == null) ? null : chatMessage5.threadId;
        boolean z = str != null && this.guestThreadSet.contains(str);
        if (chatMessageDto != null) {
            dispatchGlobalOnNewMessage(chatMessageDto.ndcId, chatMessageDto);
            ChatMessage chatMessage10 = chatMessageDto.chatMessage;
            dispatchChatMessageListChange(chatMessage10 != null ? chatMessage10.threadId : null, chatMessageDto);
            if (!z || chatMessageDto.membershipStatus == 1) {
                dispatchNewMessageOnCommunityLevel(chatMessageDto.ndcId, chatMessageDto);
            }
        }
        handleQuitMessage(chatMessageDto);
        boolean z2 = chatMessageDto.chatMessage.type == 119;
        int i = chatMessageDto.membershipStatus;
        boolean z3 = i == 1 || i == 2;
        if (!z && !z2 && z3) {
            updateThreadCheckTable(chatMessageDto);
            return;
        }
        Log.d(WsService.TAG, "Is guest role in this thread " + str);
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onConnect(WsService wsService) {
        Log.d(this.TAG, "WS Connected");
        if (this.lastWsDisconnectTimeMillis == 0 || System.currentTimeMillis() - this.lastWsDisconnectTimeMillis <= this.CHAT_RESET_INTERVAL) {
            return;
        }
        this.lastWsDisconnectTimeMillis = 0L;
        dispatchChatMessageListReset();
        queryThreadCheckInfo((Set<Integer>) this.threadCheckQueue, true);
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onDisconnect(WsService wsService, Throwable th) {
        if (this.lastWsDisconnectTimeMillis == 0) {
            Log.d(this.TAG, "WS disconnect");
            this.lastWsDisconnectTimeMillis = System.currentTimeMillis();
        }
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsError(WsService wsService, WsError wsError) {
        if (Intrinsics.areEqual(wsError, WsError.CONNECTION_LOST) && this.lastWsDisconnectTimeMillis == 0) {
            Log.d(this.TAG, "WS connection lost");
            this.lastWsDisconnectTimeMillis = System.currentTimeMillis();
        }
    }

    /* compiled from: ChatService.kt */
    /* loaded from: classes2.dex */
    public final class VideoMessagePostListener extends ApiResponseProgressListener<MessageResponse> {
        private ChatMessage chatMessage;
        final /* synthetic */ ChatService this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public VideoMessagePostListener(ChatService chatService, Class<? extends MessageResponse> clazz, ChatMessage chatMessage) {
            super(clazz);
            Intrinsics.checkParameterIsNotNull(clazz, "clazz");
            Intrinsics.checkParameterIsNotNull(chatMessage, "chatMessage");
            this.this$0 = chatService;
            this.chatMessage = chatMessage;
        }

        public final ChatMessage getChatMessage() {
            return this.chatMessage;
        }

        public final void setChatMessage(ChatMessage chatMessage) {
            Intrinsics.checkParameterIsNotNull(chatMessage, "<set-?>");
            this.chatMessage = chatMessage;
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest req, MessageResponse resp) throws Exception {
            Intrinsics.checkParameterIsNotNull(req, "req");
            Intrinsics.checkParameterIsNotNull(resp, "resp");
            super.onFinish(req, (ApiRequest) resp);
            this.this$0.onPostFinished(req, resp);
            this.this$0.videoUploadPercents.put(this.chatMessage.clientRefId, 100);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest req, int i, List<? extends NameValuePair> list, String message, ApiResponse apiResponse, Throwable t) {
            Intrinsics.checkParameterIsNotNull(req, "req");
            Intrinsics.checkParameterIsNotNull(message, "message");
            Intrinsics.checkParameterIsNotNull(t, "t");
            super.onFail(req, i, list, message, apiResponse, t);
            this.this$0.onPostFailed(req, i, list, message, apiResponse, t);
            this.this$0.videoUploadPercents.put(this.chatMessage.clientRefId, 0);
        }

        @Override // com.narvii.util.http.PostProgressListener
        public void onPostProgress(int i, int i2) {
            Log.i("chat_video_upload_progress", String.valueOf(i) + "/" + i2);
            if (this.chatMessage.clientRefId != 0) {
                int i3 = i2 == 0 ? 0 : (int) ((i * 100.0f) / i2);
                this.this$0.videoUploadPercents.put(this.chatMessage.clientRefId, Integer.valueOf(i3));
                ChatService chatService = this.this$0;
                ChatMessage chatMessage = this.chatMessage;
                chatService.dispatchVideoMessagePostProgressChange(chatMessage.threadId, chatMessage.clientRefId, i3);
            }
        }
    }

    public final boolean isVideoUploadRequest(ChatMessage chatMessage) {
        int i;
        int i2;
        return chatMessage != null && ((i = chatMessage.type) == 0 || i == 4) && (((i2 = chatMessage.mediaType) == 123 || i2 == 102) && chatMessage.mediaValue != null);
    }

    private final ApiResponseListener<MessageResponse> getVideoMessagePostListener(ChatMessage chatMessage) {
        return new VideoMessagePostListener(this, MessageResponse.class, chatMessage);
    }

    public final void addVideoMessagePostListener(String str, VideoMessageProgressChangeListener videoMessageProgressChangeListener) {
        if ((str == null || str.length() == 0) || videoMessageProgressChangeListener == null) {
            return;
        }
        EventDispatcher<VideoMessageProgressChangeListener> eventDispatcher = this.videoMessageProgressDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(videoMessageProgressChangeListener);
        if (str != null) {
            this.videoMessageProgressDispatcher.put(str, eventDispatcher);
        }
    }

    public final void removeVideoMessagePostListener(String str, VideoMessageProgressChangeListener videoMessageProgressChangeListener) {
        EventDispatcher<VideoMessageProgressChangeListener> eventDispatcher;
        if ((str == null || str.length() == 0) || (eventDispatcher = this.videoMessageProgressDispatcher.get(str)) == null) {
            return;
        }
        Intrinsics.checkExpressionValueIsNotNull(eventDispatcher, "videoMessageProgressDisp…r.get(threadId) ?: return");
        eventDispatcher.removeListener(videoMessageProgressChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void dispatchVideoMessagePostProgressChange(String str, final int i, final int i2) {
        EventDispatcher<VideoMessageProgressChangeListener> eventDispatcher;
        if ((str == null || str.length() == 0) || (eventDispatcher = this.videoMessageProgressDispatcher.get(str)) == null) {
            return;
        }
        Intrinsics.checkExpressionValueIsNotNull(eventDispatcher, "videoMessageProgressDisp…r.get(threadId) ?: return");
        eventDispatcher.dispatch(new Callback<VideoMessageProgressChangeListener>() { // from class: com.narvii.chat.core.ChatService.dispatchVideoMessagePostProgressChange.1
            @Override // com.narvii.util.Callback
            public final void call(VideoMessageProgressChangeListener videoMessageProgressChangeListener) {
                videoMessageProgressChangeListener.onProgressUpdate(i, i2);
            }
        });
    }

    public final int getCurVideoUploadProgress(ChatMessage chatMessage) {
        if (chatMessage == null) {
            return 0;
        }
        int i = chatMessage._status;
        if (i == 0) {
            return 100;
        }
        if (i == 2 || this.videoUploadPercents.indexOfKey(chatMessage.clientRefId) < 0) {
            return 0;
        }
        Integer num = this.videoUploadPercents.get(chatMessage.clientRefId);
        Intrinsics.checkExpressionValueIsNotNull(num, "videoUploadPercents.get(message.clientRefId)");
        return num.intValue();
    }

    public final void addLiveChannelPermissionListener(String str, ThreadConfigChangeListener threadConfigChangeListener) {
        if ((str == null || str.length() == 0) || threadConfigChangeListener == null) {
            return;
        }
        EventDispatcher<ThreadConfigChangeListener> eventDispatcher = this.threadConfigDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(threadConfigChangeListener);
        if (str != null) {
            this.threadConfigDispatcher.put(str, eventDispatcher);
        }
    }

    public final void removeLiveChannelPermissionListener(String str, ThreadConfigChangeListener threadConfigChangeListener) {
        EventDispatcher<ThreadConfigChangeListener> eventDispatcher;
        if ((str == null || str.length() == 0) || (eventDispatcher = this.threadConfigDispatcher.get(str)) == null) {
            return;
        }
        Intrinsics.checkExpressionValueIsNotNull(eventDispatcher, "threadConfigDispatcher.get(threadId) ?: return");
        eventDispatcher.removeListener(threadConfigChangeListener);
    }

    private final void dispatchChannelPermissionChange(String str, ChatMessage chatMessage) {
        EventDispatcher<ThreadConfigChangeListener> eventDispatcher;
        if ((str == null || str.length() == 0) || chatMessage == null || (eventDispatcher = this.threadConfigDispatcher.get(str)) == null) {
            return;
        }
        Intrinsics.checkExpressionValueIsNotNull(eventDispatcher, "threadConfigDispatcher.get(threadId) ?: return");
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = 1;
        int i = chatMessage.type;
        if (i == 124) {
            ref$IntRef.element = 3;
        } else if (i == 123) {
            ref$IntRef.element = 2;
        } else if (i == 122) {
            ref$IntRef.element = 1;
        }
        eventDispatcher.dispatch(new Callback<ThreadConfigChangeListener>() { // from class: com.narvii.chat.core.ChatService.dispatchChannelPermissionChange.1
            @Override // com.narvii.util.Callback
            public final void call(ThreadConfigChangeListener threadConfigChangeListener) {
                threadConfigChangeListener.onLivePermissionChanged(ref$IntRef.element);
            }
        });
    }

    private final void dispatchViewOnlyChange(String str, final ChatMessage chatMessage) {
        EventDispatcher<ThreadConfigChangeListener> eventDispatcher;
        if ((str == null || str.length() == 0) || chatMessage == null || (eventDispatcher = this.threadConfigDispatcher.get(str)) == null) {
            return;
        }
        Intrinsics.checkExpressionValueIsNotNull(eventDispatcher, "threadConfigDispatcher.get(threadId) ?: return");
        eventDispatcher.dispatch(new Callback<ThreadConfigChangeListener>() { // from class: com.narvii.chat.core.ChatService.dispatchViewOnlyChange.1
            @Override // com.narvii.util.Callback
            public final void call(ThreadConfigChangeListener threadConfigChangeListener) {
                threadConfigChangeListener.viewOnlyChanged(chatMessage.type == 125);
            }
        });
    }

    private final void dispatchAnnouncementChange(String str, final ChatMessage chatMessage) {
        EventDispatcher<ThreadConfigChangeListener> eventDispatcher;
        if ((str == null || str.length() == 0) || chatMessage == null || (eventDispatcher = this.threadConfigDispatcher.get(str)) == null) {
            return;
        }
        Intrinsics.checkExpressionValueIsNotNull(eventDispatcher, "threadConfigDispatcher.get(threadId) ?: return");
        eventDispatcher.dispatch(new Callback<ThreadConfigChangeListener>() { // from class: com.narvii.chat.core.ChatService.dispatchAnnouncementChange.1
            @Override // com.narvii.util.Callback
            public final void call(ThreadConfigChangeListener threadConfigChangeListener) {
                threadConfigChangeListener.announcementPinBehaviorChanged(chatMessage.type == 121);
            }
        });
    }
}
