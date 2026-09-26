package com.narvii.util;

import androidx.annotation.Nullable;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.userblock.UserBlockService;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class FilterHelper {
    protected NVContext context;
    protected boolean keepForLeaderAndCurator = false;
    protected boolean keepForLeader = false;
    protected boolean keepBlockedUser = false;
    protected boolean filterDeleted = false;
    protected boolean filterClosed = false;

    public <T extends NVObject> List<T> filter(List<T> list) {
        ArrayList arrayList = null;
        if (list == null) {
            return null;
        }
        User userProfile = (this.keepForLeaderAndCurator || this.keepForLeader) ? ((AccountService) this.context.getService("account")).getUserProfile() : null;
        int i10 = 0;
        for (T t5 : list) {
            if (isAccessibleToUser(t5, userProfile)) {
                if (arrayList != null) {
                    arrayList.add(t5);
                }
            } else if (arrayList == null) {
                arrayList = new ArrayList();
                for (int i11 = 0; i11 < i10; i11++) {
                    arrayList.add(list.get(i11));
                }
            }
            i10++;
        }
        return arrayList == null ? list : arrayList;
    }

    public FilterHelper filterClosed() {
        this.filterClosed = true;
        return this;
    }

    public FilterHelper filterDeleted() {
        this.filterDeleted = true;
        return this;
    }

    public FilterHelper keepBlockedUser() {
        this.keepBlockedUser = true;
        return this;
    }

    public FilterHelper keepForLeader() {
        this.keepForLeader = true;
        return this;
    }

    public FilterHelper keepForLeaderAndCurator() {
        this.keepForLeaderAndCurator = true;
        return this;
    }

    public boolean isAccessible(NVObject nVObject) {
        return isAccessibleToUser(nVObject, (this.keepForLeaderAndCurator || this.keepForLeader) ? ((AccountService) this.context.getService("account")).getUserProfile() : null);
    }

    protected boolean isAccessibleToUser(NVObject nVObject, User user) {
        NVContext nVContext = this.context;
        UserBlockService userBlockService = nVContext == null ? null : (UserBlockService) nVContext.getService("block");
        if (this.filterDeleted && nVObject.invisibleBecauseOfDeleted()) {
            return false;
        }
        if (this.filterClosed && nVObject.invisibleBecauseOfClosed()) {
            return false;
        }
        if (this.filterClosed || this.filterDeleted || (!this.keepForLeader ? !nVObject.isAccessibleByUser(user) : !nVObject.isAccessibleByLeader(user))) {
            return this.keepBlockedUser || userBlockService == null || !userBlockService.isBlocked(nVObject.uid());
        }
        return false;
    }

    public FilterHelper keepBlockedUser(boolean z6) {
        this.keepBlockedUser = z6;
        return this;
    }

    public FilterHelper(@Nullable NVContext nVContext) {
        this.context = nVContext;
    }
}
