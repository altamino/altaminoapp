package com.narvii.chat.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.global.GlobalChatThread;
import com.narvii.chat.thread.ThreadListResponse;
import com.narvii.model.ChatThread;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class GlobalChatService {
    private static final int MAX_RECENT_CHAT_COUNT = 20;
    private static final String PREF_KEY_RECENT_CHAT_LIST = "globalRecentChatList_";
    private static final long RECENT_CHAT_FLUSH_INTERVAL = 60000;
    private static final long THREAD_UNREAD_UPDATE_INTERVAL = 600000;
    private AccountService accountService;
    private ApiService apiService;
    private ChatService chatService;
    private long lastRecentChatFlushTime;
    private Date lastThreadUnreadRecordUpdateTime;
    private NVContext nvContext;
    private SharedPreferences prefs;
    private ArrayList<GlobalChatThread> recentChatList;
    private BroadcastReceiver requireAccountReceiver;
    private ArrayList<RecentChatListChangedListener> recentChatListListener = new ArrayList<>();
    public ArrayList<String> recentChatThreadIdList = new ArrayList<>();
    private HashMap<String, Boolean> unreadRecordMap = new HashMap<>();

    public interface RecentChatListChangedListener {
        void onRecentChatListChanged(ArrayList<GlobalChatThread> arrayList);

        void onRedDotChanged(ArrayList<GlobalChatThread> arrayList);
    }

    public static class RecentChatResult {
        public ArrayList<ChatThread> chatThreads;
        public String errorMessage;
    }

    public GlobalChatService(NVContext nVContext) {
        this.nvContext = nVContext;
        this.apiService = (ApiService) nVContext.getService("api");
        this.prefs = (SharedPreferences) nVContext.getService("prefs");
        this.accountService = (AccountService) nVContext.getService("account");
        this.chatService = (ChatService) nVContext.getService("chat");
        AsyncTask.execute(new Runnable() { // from class: com.narvii.chat.util.-$$Lambda$GlobalChatService$r36Op79os3myKbMcaywEtAtAmuE
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.loadRecentChatList();
            }
        });
        this.requireAccountReceiver = new BroadcastReceiver() { // from class: com.narvii.chat.util.GlobalChatService.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (!GlobalChatService.this.accountService.hasAccount()) {
                    if (GlobalChatService.this.recentChatList != null) {
                        GlobalChatService.this.recentChatThreadIdList.clear();
                        GlobalChatService.this.recentChatList.clear();
                        GlobalChatService.this.notifyChanges();
                        return;
                    }
                    return;
                }
                GlobalChatService.this.loadRecentChatList();
                GlobalChatService.this.notifyChanges();
            }
        };
        LocalBroadcastManager.getInstance(nVContext.getContext()).registerReceiver(this.requireAccountReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    public ArrayList<GlobalChatThread> getRecentChatList() {
        return loadRecentChatList();
    }

    public void addRecentChatChangedListener(RecentChatListChangedListener recentChatListChangedListener) {
        if (recentChatListChangedListener == null || this.recentChatListListener.contains(recentChatListChangedListener)) {
            return;
        }
        this.recentChatListListener.add(recentChatListChangedListener);
    }

    public boolean removeRecentChatChangedListener(RecentChatListChangedListener recentChatListChangedListener) {
        return this.recentChatListListener.remove(recentChatListChangedListener);
    }

    public void addRecentChat(GlobalChatThread globalChatThread) {
        if (globalChatThread == null || !this.accountService.hasAccount()) {
            return;
        }
        String key = globalChatThread.getKey();
        ArrayList<GlobalChatThread> arrayListLoadRecentChatList = loadRecentChatList();
        int i = -1;
        int i2 = 0;
        while (true) {
            if (i2 >= arrayListLoadRecentChatList.size()) {
                break;
            }
            GlobalChatThread globalChatThread2 = arrayListLoadRecentChatList.get(i2);
            if (globalChatThread2 != null && TextUtils.equals(globalChatThread2.getKey(), key)) {
                i = i2;
                break;
            }
            i2++;
        }
        if (i == 0) {
            return;
        }
        if (i > 0) {
            arrayListLoadRecentChatList.remove(i);
        } else if (arrayListLoadRecentChatList.size() == 20) {
            arrayListLoadRecentChatList.remove(19);
        }
        arrayListLoadRecentChatList.add(0, globalChatThread);
        if (!this.recentChatThreadIdList.contains(globalChatThread.chatThreadId)) {
            this.recentChatThreadIdList.add(globalChatThread.chatThreadId);
        }
        flush();
        notifyChanges();
    }

    public void removeCommunity(int i) {
        if (this.accountService.hasAccount()) {
            ArrayList arrayList = new ArrayList();
            ArrayList<GlobalChatThread> arrayListLoadRecentChatList = loadRecentChatList();
            for (int i2 = 0; i2 < arrayListLoadRecentChatList.size(); i2++) {
                GlobalChatThread globalChatThread = arrayListLoadRecentChatList.get(i2);
                if (globalChatThread != null && globalChatThread.communityId == i) {
                    arrayList.add(globalChatThread);
                }
            }
            arrayListLoadRecentChatList.removeAll(arrayList);
            Iterator<GlobalChatThread> it = arrayListLoadRecentChatList.iterator();
            while (it.hasNext()) {
                this.recentChatThreadIdList.remove(it.next().chatThreadId);
            }
            flush();
            notifyChanges();
        }
    }

    public void removeRecentChat(GlobalChatThread globalChatThread) {
        if (globalChatThread == null || !this.accountService.hasAccount()) {
            return;
        }
        String key = globalChatThread.getKey();
        ArrayList<GlobalChatThread> arrayListLoadRecentChatList = loadRecentChatList();
        int i = 0;
        while (true) {
            if (i >= arrayListLoadRecentChatList.size()) {
                i = -1;
                break;
            }
            GlobalChatThread globalChatThread2 = arrayListLoadRecentChatList.get(i);
            if (globalChatThread2 != null && TextUtils.equals(globalChatThread2.getKey(), key)) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        arrayListLoadRecentChatList.remove(i);
        this.recentChatThreadIdList.remove(globalChatThread.chatThreadId);
        flush();
        notifyChanges();
    }

    public void destroy() {
        this.recentChatListListener.clear();
        this.recentChatList.clear();
        this.recentChatThreadIdList.clear();
        LocalBroadcastManager.getInstance(this.nvContext.getContext()).unregisterReceiver(this.requireAccountReceiver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyChanges() {
        Iterator<RecentChatListChangedListener> it = this.recentChatListListener.iterator();
        while (it.hasNext()) {
            RecentChatListChangedListener next = it.next();
            if (next != null) {
                next.onRecentChatListChanged(this.recentChatList);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyRedDotChanges() {
        Iterator<RecentChatListChangedListener> it = this.recentChatListListener.iterator();
        while (it.hasNext()) {
            RecentChatListChangedListener next = it.next();
            if (next != null) {
                next.onRedDotChanged(this.recentChatList);
            }
        }
    }

    private String getPrefKey() {
        if (!this.accountService.hasAccount()) {
            return null;
        }
        return PREF_KEY_RECENT_CHAT_LIST + this.accountService.getUserId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<GlobalChatThread> loadRecentChatList() {
        ArrayList listAs;
        if (!this.accountService.hasAccount()) {
            return new ArrayList<>();
        }
        ArrayList<GlobalChatThread> arrayList = this.recentChatList;
        if (arrayList != null) {
            return arrayList;
        }
        String string = this.prefs.getString(getPrefKey(), null);
        if (TextUtils.isEmpty(string)) {
            listAs = new ArrayList();
        } else {
            listAs = JacksonUtils.readListAs(string, GlobalChatThread.class);
        }
        this.recentChatList = new ArrayList<>();
        if (listAs != null) {
            Iterator it = listAs.iterator();
            while (it.hasNext()) {
                GlobalChatThread globalChatThread = (GlobalChatThread) it.next();
                ChatThread chatThread = globalChatThread.chatThread;
                if (chatThread == null) {
                    this.recentChatList.add(globalChatThread);
                } else {
                    this.recentChatList.add(GlobalChatThread.newGlobalChatThread(chatThread, globalChatThread.communityId, this.nvContext.getContext()));
                }
                this.recentChatThreadIdList.add(globalChatThread.chatThreadId);
            }
        }
        return this.recentChatList;
    }

    private void recordRecentChatList() {
        ArrayList<GlobalChatThread> arrayList = this.recentChatList;
        if (arrayList == null) {
            return;
        }
        String strWriteAsString = JacksonUtils.writeAsString(arrayList);
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        String prefKey = getPrefKey();
        if (TextUtils.isEmpty(prefKey)) {
            return;
        }
        if (this.prefs.contains(prefKey)) {
            editorEdit.remove(prefKey);
        }
        editorEdit.putString(prefKey, strWriteAsString).apply();
    }

    public boolean flush() {
        return flush(false);
    }

    public boolean flush(boolean z) {
        long time = new Date().getTime();
        if (z) {
            recordRecentChatList();
            this.lastRecentChatFlushTime = time;
            return true;
        }
        if (time - this.lastRecentChatFlushTime <= 60000) {
            return false;
        }
        recordRecentChatList();
        this.lastRecentChatFlushTime = time;
        return true;
    }

    public boolean isThreadUnread(String str) {
        Boolean bool;
        if (TextUtils.isEmpty(str) || (bool = this.unreadRecordMap.get(str)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public void tryUpdateChatThreadUnread(boolean z) {
        if (!z && this.lastThreadUnreadRecordUpdateTime != null && new Date().getTime() - this.lastThreadUnreadRecordUpdateTime.getTime() < 600000) {
            updateThreadUnreadStatus();
        } else {
            updateChatThreadUnread();
        }
    }

    private void updateThreadUnreadStatus() {
        ArrayList<GlobalChatThread> arrayList = this.recentChatList;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        Iterator<GlobalChatThread> it = this.recentChatList.iterator();
        boolean z = false;
        while (it.hasNext()) {
            GlobalChatThread next = it.next();
            boolean zIsCurThreadUnread = this.chatService.isCurThreadUnread(next.communityId, next.chatThreadId);
            z = z || ((this.unreadRecordMap.containsKey(next.chatThreadId) ? this.unreadRecordMap.get(next.chatThreadId).booleanValue() : false) ^ zIsCurThreadUnread);
            this.unreadRecordMap.put(next.chatThreadId, Boolean.valueOf(zIsCurThreadUnread));
        }
        if (z) {
            notifyChanges();
        }
    }

    private void updateChatThreadUnread() {
        ArrayList<GlobalChatThread> arrayList = this.recentChatList;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        Iterator<GlobalChatThread> it = this.recentChatList.iterator();
        while (it.hasNext()) {
            GlobalChatThread next = it.next();
            if (next != null) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(next.chatThreadId);
            }
        }
        this.apiService.exec(ApiRequest.builder().chatServer().path("/chat/thread").param("type", "exist-multi").param("q", sb.toString()).build(), new ApiResponseListener<ThreadListResponse>(ThreadListResponse.class) { // from class: com.narvii.chat.util.GlobalChatService.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ThreadListResponse threadListResponse) throws Exception {
                List<ChatThread> list;
                super.onFinish(apiRequest, (ApiRequest) threadListResponse);
                if (threadListResponse == null || (list = threadListResponse.threadList) == null || list.isEmpty()) {
                    return;
                }
                ChatHelper chatHelper = new ChatHelper(GlobalChatService.this.nvContext.getContext());
                for (ChatThread chatThread : threadListResponse.threadList) {
                    if (chatThread != null) {
                        GlobalChatService.this.unreadRecordMap.put(chatThread.id(), Boolean.valueOf(chatHelper.isThreadUnread(chatThread)));
                    }
                }
                GlobalChatService.this.notifyChanges();
            }
        });
        this.lastThreadUnreadRecordUpdateTime = new Date();
    }

    public void getRecentChatList(final Callback<RecentChatResult> callback) {
        ArrayList<GlobalChatThread> arrayList = this.recentChatList;
        if (arrayList == null || arrayList.isEmpty()) {
            RecentChatResult recentChatResult = new RecentChatResult();
            recentChatResult.chatThreads = new ArrayList<>();
            callback.call(recentChatResult);
            return;
        }
        StringBuilder sb = new StringBuilder();
        Iterator<GlobalChatThread> it = this.recentChatList.iterator();
        while (it.hasNext()) {
            GlobalChatThread next = it.next();
            if (next != null) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(next.chatThreadId);
            }
        }
        this.apiService.exec(ApiRequest.builder().chatServer().path("/chat/thread").param("type", "exist-multi").param("q", sb.toString()).build(), new ApiResponseListener<ThreadListResponse>(ThreadListResponse.class) { // from class: com.narvii.chat.util.GlobalChatService.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ThreadListResponse threadListResponse) throws Exception {
                List<ChatThread> list;
                super.onFinish(apiRequest, (ApiRequest) threadListResponse);
                if (threadListResponse != null && (list = threadListResponse.threadList) != null && !list.isEmpty()) {
                    ChatHelper chatHelper = new ChatHelper(GlobalChatService.this.nvContext.getContext());
                    for (ChatThread chatThread : threadListResponse.threadList) {
                        if (chatThread != null) {
                            GlobalChatService.this.unreadRecordMap.put(chatThread.id(), Boolean.valueOf(chatHelper.isThreadUnread(chatThread)));
                        }
                    }
                    RecentChatResult recentChatResult2 = new RecentChatResult();
                    recentChatResult2.chatThreads = new ArrayList<>(threadListResponse.threadList);
                    callback.call(recentChatResult2);
                    GlobalChatService.this.notifyRedDotChanges();
                    return;
                }
                RecentChatResult recentChatResult3 = new RecentChatResult();
                recentChatResult3.chatThreads = new ArrayList<>(threadListResponse.threadList);
                callback.call(recentChatResult3);
                GlobalChatService.this.notifyRedDotChanges();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                RecentChatResult recentChatResult2 = new RecentChatResult();
                recentChatResult2.errorMessage = str;
                recentChatResult2.chatThreads = new ArrayList<>();
                callback.call(recentChatResult2);
            }
        });
        this.lastThreadUnreadRecordUpdateTime = new Date();
    }
}
