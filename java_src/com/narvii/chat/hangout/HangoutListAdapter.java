package com.narvii.chat.hangout;

import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.thread.OnlineUserInfoInfo;
import com.narvii.chat.thread.ThreadListResponse;
import com.narvii.config.ConfigService;
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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class HangoutListAdapter extends NVPagedAdapter<ChatThread, ThreadListResponse> implements NotificationListener {
    protected Map<String, Community> communityMapping;
    private ConfigService configService;
    private Map<String, PlayList> playListMap;
    public String source;
    private Map<String, OnlineUserInfoInfo> userInfoMap;

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

    public HangoutListAdapter(NVContext nVContext) {
        super(nVContext);
        this.source = "Public chat";
        this.configService = (ConfigService) nVContext.getService("config");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<ChatThread> dataType() {
        return ChatThread.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends ThreadListResponse> responseType() {
        return ThreadListResponse.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        Map<String, Community> map;
        HangoutItem hangoutItem = (HangoutItem) createView(getViewLayoutId(), viewGroup, view);
        ChatThread chatThread = (ChatThread) obj;
        Map<String, PlayList> map2 = this.playListMap;
        hangoutItem.setThread(chatThread, map2 != null ? map2.get(chatThread.threadId) : null);
        Map<String, OnlineUserInfoInfo> map3 = this.userInfoMap;
        if (map3 != null && !map3.isEmpty()) {
            hangoutItem.setOnlineUserList(chatThread, this.userInfoMap.get(chatThread.id()));
        }
        if (this.configService.getCommunityId() == 0 && chatThread.publishToGlobal == 1 && (map = this.communityMapping) != null) {
            hangoutItem.setCommunityInfo(map.get(String.valueOf(chatThread.ndcId)));
        }
        return hangoutItem;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public void onPageResponse(ApiRequest apiRequest, ThreadListResponse threadListResponse, int i) {
        super.onPageResponse(apiRequest, (ApiRequest) threadListResponse, i);
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
                this.userInfoMap = new HashMap(map);
            } else {
                map2.putAll(map);
            }
        }
        Map<String, Community> map3 = threadListResponse.communityInfoMapping;
        if (map3 != null) {
            Map<String, Community> map4 = this.communityMapping;
            if (map4 == null) {
                this.communityMapping = new HashMap(map3);
            } else {
                map4.putAll(map3);
            }
        }
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (obj instanceof ChatThread) {
            ChatThread chatThread = (ChatThread) obj;
            logClickEvent(chatThread, ActSemantic.checkDetail);
            Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
            intent.putExtra("id", chatThread.threadId);
            intent.putExtra("thread", JacksonUtils.writeAsString(chatThread));
            intent.putExtra("Source", this.source);
            intent.putExtra("__communityId", chatThread.ndcId);
            Intent intent2 = new Intent("openHangout");
            intent2.putExtra("intent", intent);
            ensureLogin(intent2);
            return true;
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
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

    @Override // com.narvii.list.NVAdapter
    protected void onLoginResult(boolean z, Intent intent) {
        if (z && "openHangout".equals(intent.getAction())) {
            startActivity((Intent) intent.getParcelableExtra("intent"));
        } else {
            super.onLoginResult(z, intent);
        }
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
        int i = 0;
        int i2 = 0;
        boolean z = false;
        while (i < size && i2 < size2) {
            if (z) {
                int i3 = i;
                int i4 = 0;
                while (i4 < 2) {
                    if (tryAddToList(arrayList2, (ChatThread) arrayList.get(i3))) {
                        i4++;
                    }
                    i3++;
                    if (i3 >= size) {
                        break;
                    }
                }
                i = i3;
            } else {
                int i5 = i2;
                int i6 = 0;
                while (i6 < 2) {
                    if (tryAddToList(arrayList2, list.get(i5))) {
                        i6++;
                    }
                    i5++;
                    if (i5 >= size2) {
                        break;
                    }
                }
                i2 = i5;
            }
            z = !z;
        }
        if (i2 < size2) {
            while (i2 < size2) {
                tryAddToList(arrayList2, list.get(i2));
                i2++;
            }
        }
        if (i < size) {
            while (i < size) {
                tryAddToList(arrayList2, (ChatThread) arrayList.get(i));
                i++;
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
}
