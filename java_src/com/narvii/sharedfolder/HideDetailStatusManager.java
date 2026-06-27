package com.narvii.sharedfolder;

import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class HideDetailStatusManager {
    boolean hideDetail = false;
    HashSet<OnHideStatusChangedListener> onHideStatusChangedListenerList = new HashSet<>();

    interface OnHideStatusChangedListener {
        void onHideDetail(boolean z);
    }

    public boolean isHideDetail() {
        return this.hideDetail;
    }

    public void setHideDetail(boolean z) {
        this.hideDetail = z;
        Iterator<OnHideStatusChangedListener> it = this.onHideStatusChangedListenerList.iterator();
        while (it.hasNext()) {
            OnHideStatusChangedListener next = it.next();
            if (next != null) {
                next.onHideDetail(z);
            }
        }
    }

    public void register(OnHideStatusChangedListener onHideStatusChangedListener) {
        this.onHideStatusChangedListenerList.add(onHideStatusChangedListener);
    }

    public void unRegister(OnHideStatusChangedListener onHideStatusChangedListener) {
        this.onHideStatusChangedListenerList.remove(onHideStatusChangedListener);
    }
}
