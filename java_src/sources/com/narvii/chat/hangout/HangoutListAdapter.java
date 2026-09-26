package com.narvii.chat.hangout;

import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.thread.OnlineUserInfoInfo;
import com.narvii.chat.thread.ThreadListResponse;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.livelayer.detailview.OnlineChatThread;
import com.narvii.logging.ActSemantic;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.PlayList;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class HangoutListAdapter extends NVPagedAdapter<ChatThread, ThreadListResponse> implements NotificationListener {
    protected Map<String, Community> communityMapping;
    private ConfigService configService;
    private Map<String, PlayList> playListMap;
    public String source;
    private Map<String, OnlineUserInfoInfo> userInfoMap;

    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<ChatThread> dataType() {
        return ChatThread.class;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
    public String getAreaName() {
        return "Chats";
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        return 0;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 1;
    }

    protected int getViewLayoutId() {
        return R.layout.chat_hangout_item;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int pageSize() {
        return 25;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends ThreadListResponse> responseType() {
        return ThreadListResponse.class;
    }

    private boolean tryAddToList(ArrayList<ChatThread> arrayList, ChatThread chatThread) {
        if (chatThread == null || Utils.containsId(arrayList, chatThread.id())) {
            return false;
        }
        arrayList.add(chatThread);
        return true;
    }

    void mergeThreadList(List<OnlineChatThread> list, Map<String, PlayList> map, Map<String, OnlineUserInfoInfo> map2) {
        if (list == null || list.isEmpty()) {
            notifyDataSetChanged();
            return;
        }
        ArrayList arrayList = (ArrayList) rawList();
        ArrayList<ChatThread> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        int size2 = list.size();
        int i10 = 0;
        int i11 = 0;
        boolean z6 = false;
        while (i10 < size && i11 < size2) {
            if (z6) {
                int i12 = 0;
                while (i12 < 2) {
                    if (tryAddToList(arrayList2, (ChatThread) arrayList.get(i10))) {
                        i12++;
                    }
                    i10++;
                    if (i10 >= size) {
                        break;
                    }
                }
            } else {
                int i13 = 0;
                while (i13 < 2) {
                    if (tryAddToList(arrayList2, list.get(i11))) {
                        i13++;
                    }
                    i11++;
                    if (i11 >= size2) {
                        break;
                    }
                }
            }
            z6 = !z6;
        }
        if (i11 < size2) {
            while (i11 < size2) {
                tryAddToList(arrayList2, list.get(i11));
                i11++;
            }
        }
        if (i10 < size) {
            while (i10 < size) {
                tryAddToList(arrayList2, (ChatThread) arrayList.get(i10));
                i10++;
            }
        }
        setList(arrayList2);
        if (map2 != null) {
            Map<String, OnlineUserInfoInfo> map3 = this.userInfoMap;
            if (map3 == null) {
                this.userInfoMap = new HashMap(map2);
            } else {
                map3.putAll(map2);
            }
        }
        if (map != null) {
            Map<String, PlayList> map4 = this.playListMap;
            if (map4 == null) {
                this.playListMap = new HashMap(map);
            } else {
                map4.putAll(map);
            }
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        ArrayList<T> arrayList = this._list;
        if (arrayList != 0 && !arrayList.isEmpty()) {
            ArrayList<ChatThread> arrayList2 = new ArrayList<>();
            Iterator it = this._list.iterator();
            while (it.hasNext()) {
                tryAddToList(arrayList2, (ChatThread) it.next());
            }
            setList(arrayList2);
        }
        super.notifyDataSetChanged();
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (!(obj instanceof ChatThread)) {
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }
        ChatThread chatThread = (ChatThread) obj;
        logClickEvent(chatThread, ActSemantic.checkDetail);
        Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
        intent.putExtra("id", chatThread.threadId);
        intent.putExtra("thread", JacksonUtils.writeAsString(chatThread));
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
        intent.putExtra("__communityId", chatThread.ndcId);
        Intent intent2 = new Intent("openHangout");
        intent2.putExtra("intent", intent);
        ensureLogin(intent2);
        return true;
    }

    @Override // com.narvii.list.NVAdapter
    protected void onLoginResult(boolean z6, Intent intent) {
        if (z6 && "openHangout".equals(intent.getAction())) {
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, (Intent) intent.getParcelableExtra("intent"));
        } else {
            super.onLoginResult(z6, intent);
        }
    }

    public void onNotification(Notification notification) {
        Object obj = notification.obj;
        if ((obj instanceof ChatThread) && ((ChatThread) obj).type == 2) {
            String str = notification.action;
            if (str == "new" || str == "update" || str == "edit") {
                editList(notification, false);
            } else {
                refresh(0, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public void onPageResponse(ApiRequest apiRequest, ThreadListResponse threadListResponse, int i10) {
        super.onPageResponse(apiRequest, threadListResponse, i10);
        if (threadListResponse == null) {
            return;
        }
        List<ChatThread> list = threadListResponse.threadList;
        if (list != null && threadListResponse.playlistInThreadList != null) {
            for (ChatThread chatThread : list) {
                if (this.playListMap == null) {
                    this.playListMap = new HashMap();
                }
                PlayList playList = threadListResponse.playlistInThreadList.get(chatThread.threadId);
                if (playList != null) {
                    this.playListMap.put(chatThread.threadId, playList);
                } else {
                    this.playListMap.remove(chatThread.threadId);
                }
            }
        }
        Map<String, OnlineUserInfoInfo> map = threadListResponse.userInfoInThread;
        if (map != null) {
            Map<String, OnlineUserInfoInfo> map2 = this.userInfoMap;
            if (map2 == null) {
                this.userInfoMap = new HashMap(threadListResponse.userInfoInThread);
            } else {
                map2.putAll(map);
            }
        }
        Map<String, Community> map3 = threadListResponse.communityInfoMapping;
        if (map3 != null) {
            Map<String, Community> map4 = this.communityMapping;
            if (map4 == null) {
                this.communityMapping = new HashMap(threadListResponse.communityInfoMapping);
            } else {
                map4.putAll(map3);
            }
        }
    }

    public HangoutListAdapter(NVContext nVContext) {
        super(nVContext);
        this.source = "Public chat";
        this.configService = (ConfigService) nVContext.getService("config");
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        PlayList playList;
        Map<String, Community> map;
        HangoutItem hangoutItem = (HangoutItem) createView(getViewLayoutId(), viewGroup, view);
        ChatThread chatThread = (ChatThread) obj;
        Map<String, PlayList> map2 = this.playListMap;
        if (map2 != null) {
            playList = map2.get(chatThread.threadId);
        } else {
            playList = null;
        }
        hangoutItem.setThread(chatThread, playList);
        Map<String, OnlineUserInfoInfo> map3 = this.userInfoMap;
        if (map3 != null && !map3.isEmpty()) {
            hangoutItem.setOnlineUserList(chatThread, this.userInfoMap.get(chatThread.id()));
        }
        if (this.configService.getCommunityId() == 0 && chatThread.publishToGlobal == 1 && (map = this.communityMapping) != null) {
            hangoutItem.setCommunityInfo(map.get(String.valueOf(chatThread.ndcId)));
        }
        return hangoutItem;
    }
}
