package com.narvii.livelayer;

import com.narvii.app.NVContext;
import com.narvii.livelayer.ws.LiveLayerEventListener;
import com.narvii.model.User;
import com.narvii.util.CollectionUtils;
import com.narvii.util.FilterHelper;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class LiveLayerDataSource {
    public static final int QUEUE_MAX_SIZE = 20;
    public static final int USER_LIST_MAX_SIZE = 20;
    public Runnable checkRunnable;
    public Runnable correctMembersCountRunnable;
    int currentMembersCount;
    FilterHelper filterHelper;
    public LiveLayerEventListener liveLayerEventListener;
    ILiveLayerView liveLayerView;
    boolean shared;
    int stagingMembersCount;
    private LinkedList<User> userList;
    private LinkedList<User> userQueue;

    public LiveLayerDataSource(NVContext nVContext) {
        this(nVContext, false);
    }

    public int getCurrentMembersCount() {
        return this.currentMembersCount;
    }

    public ILiveLayerView getLiveLayerView() {
        return this.liveLayerView;
    }

    public int getStagingMembersCount() {
        return this.stagingMembersCount;
    }

    public LinkedList<User> getUserList() {
        return this.userList;
    }

    public LinkedList<User> getUserQueue() {
        return this.userQueue;
    }

    public void setCurrentMembersCount(int i10) {
        this.currentMembersCount = i10;
    }

    public void setLiveLayerView(ILiveLayerView iLiveLayerView) {
        this.liveLayerView = iLiveLayerView;
    }

    public void setShared(boolean z6) {
        this.shared = z6;
    }

    public void setUserList(LinkedList<User> linkedList) {
        this.userList = linkedList;
    }

    public LiveLayerDataSource(NVContext nVContext, boolean z6) {
        this.userList = new LinkedList<>();
        this.userQueue = new LinkedList<>();
        this.correctMembersCountRunnable = new Runnable() { // from class: com.narvii.livelayer.LiveLayerDataSource.1
            @Override // java.lang.Runnable
            public void run() {
                LiveLayerDataSource liveLayerDataSource = LiveLayerDataSource.this;
                int i10 = liveLayerDataSource.currentMembersCount;
                int i11 = liveLayerDataSource.stagingMembersCount;
                if (i10 != i11) {
                    liveLayerDataSource.currentMembersCount = i11;
                    ILiveLayerView iLiveLayerView = liveLayerDataSource.liveLayerView;
                    if (iLiveLayerView != null) {
                        iLiveLayerView.onMembersCountChanged(i10);
                    }
                }
            }
        };
        this.checkRunnable = new Runnable() { // from class: com.narvii.livelayer.LiveLayerDataSource.2
            @Override // java.lang.Runnable
            public void run() {
                LiveLayerDataSource.this.checkUserJoined();
            }
        };
        this.liveLayerEventListener = new LiveLayerEventListener() { // from class: com.narvii.livelayer.LiveLayerDataSource.3
            @Override // com.narvii.livelayer.ws.LiveLayerEventListener
            public void onUserLeft(String str, List<User> list, int i10) {
            }

            @Override // com.narvii.livelayer.ws.LiveLayerEventListener
            public void onUserJoined(String str, List<User> list, int i10) {
                LiveLayerDataSource.this.filterJoinedUserList(list);
                List listFilter = LiveLayerDataSource.this.filterHelper.filter(list);
                if (listFilter == null) {
                    listFilter = new ArrayList();
                }
                ILiveLayerView iLiveLayerView = LiveLayerDataSource.this.liveLayerView;
                if (iLiveLayerView != null && (iLiveLayerView.getAvatarCount() < LiveLayerDataSource.this.liveLayerView.getMinAvatarCount() || i10 < LiveLayerDataSource.this.liveLayerView.getMinAvatarCount())) {
                    LiveLayerDataSource.this.getUserQueue().clear();
                    Iterator it = listFilter.iterator();
                    while (it.hasNext()) {
                        LiveLayerDataSource.this.addUserIntoList((User) it.next());
                    }
                    LiveLayerDataSource liveLayerDataSource = LiveLayerDataSource.this;
                    liveLayerDataSource.liveLayerView.setUserList(liveLayerDataSource.getUserList(), i10);
                    return;
                }
                Iterator it2 = listFilter.iterator();
                while (it2.hasNext()) {
                    LiveLayerDataSource.this.addUsersIntoQueue((User) it2.next());
                }
                LiveLayerDataSource liveLayerDataSource2 = LiveLayerDataSource.this;
                liveLayerDataSource2.stagingMembersCount = (i10 - liveLayerDataSource2.getUserQueue().size()) + 1;
                LiveLayerDataSource liveLayerDataSource3 = LiveLayerDataSource.this;
                if (liveLayerDataSource3.stagingMembersCount < 0) {
                    liveLayerDataSource3.stagingMembersCount = 0;
                }
                ILiveLayerView iLiveLayerView2 = liveLayerDataSource3.liveLayerView;
                if (iLiveLayerView2 != null) {
                    liveLayerDataSource3.stagingMembersCount = Math.max(liveLayerDataSource3.stagingMembersCount, iLiveLayerView2.getAvatarCount() + 1);
                }
                Utils.postDelayed(LiveLayerDataSource.this.checkRunnable, 2000L);
            }
        };
        this.shared = z6;
        this.filterHelper = new FilterHelper(nVContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addUserIntoList(User user) {
        this.userList.addFirst(user);
        if (this.userList.size() > 20) {
            this.userList.removeLast();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addUsersIntoQueue(User user) {
        this.userQueue.addLast(user);
        if (this.userQueue.size() > 20) {
            this.userQueue.removeFirst();
        }
    }

    public void checkUserJoined() {
        ILiveLayerView iLiveLayerView;
        if (CollectionUtils.isEmpty(this.userQueue) || (iLiveLayerView = this.liveLayerView) == null || iLiveLayerView.disallowNewUserCome()) {
            return;
        }
        this.liveLayerView.onUserJoined(this.userQueue.get(0));
    }

    public void moveFromQueueIntoList(User user) {
        this.userQueue.remove(user);
        addUserIntoList(user);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void filterJoinedUserList(List<User> list) {
        if (!CollectionUtils.isEmpty(list)) {
            Iterator<User> it = list.iterator();
            while (it.hasNext()) {
                User next = it.next();
                boolean zContainsId = Utils.containsId(getUserList(), next.id());
                if (!zContainsId) {
                    zContainsId = Utils.containsId(getUserQueue(), next.id());
                }
                if (zContainsId) {
                    it.remove();
                }
            }
        }
    }

    public void dispatchData(LinkedList<User> linkedList, int i10) {
        getUserQueue().clear();
        setUserList(linkedList);
        setCurrentMembersCount(i10);
        ILiveLayerView iLiveLayerView = this.liveLayerView;
        if (iLiveLayerView != null) {
            iLiveLayerView.setUserList(linkedList, i10);
        }
    }
}
