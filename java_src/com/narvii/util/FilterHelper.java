package com.narvii.util;

import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.userblock.UserBlockService;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class FilterHelper {
    protected NVContext context;
    protected boolean keepForLeaderAndCurator = false;
    protected boolean keepForLeader = false;
    protected boolean keepBlockedUser = false;
    protected boolean filterDeleted = false;
    protected boolean filterClosed = false;

    public FilterHelper(NVContext nVContext) {
        this.context = nVContext;
    }

    public FilterHelper keepForLeaderAndCurator() {
        this.keepForLeaderAndCurator = true;
        return this;
    }

    public FilterHelper keepForLeader() {
        this.keepForLeader = true;
        return this;
    }

    public FilterHelper keepBlockedUser() {
        this.keepBlockedUser = true;
        return this;
    }

    public FilterHelper keepBlockedUser(boolean z) {
        this.keepBlockedUser = z;
        return this;
    }

    public FilterHelper filterDeleted() {
        this.filterDeleted = true;
        return this;
    }

    public FilterHelper filterClosed() {
        this.filterClosed = true;
        return this;
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

    public boolean isAccessible(NVObject nVObject) {
        return isAccessibleToUser(nVObject, (this.keepForLeaderAndCurator || this.keepForLeader) ? ((AccountService) this.context.getService("account")).getUserProfile() : null);
    }

    public <T extends NVObject> List<T> filter(List<T> list) {
        ArrayList arrayList = null;
        if (list == null) {
            return null;
        }
        User userProfile = (this.keepForLeaderAndCurator || this.keepForLeader) ? ((AccountService) this.context.getService("account")).getUserProfile() : null;
        int i = 0;
        for (T t : list) {
            if (isAccessibleToUser(t, userProfile)) {
                if (arrayList != null) {
                    arrayList.add(t);
                }
            } else if (arrayList == null) {
                arrayList = new ArrayList();
                for (int i2 = 0; i2 < i; i2++) {
                    arrayList.add(list.get(i2));
                }
            }
            i++;
        }
        return arrayList == null ? list : arrayList;
    }
}
