package com.narvii.sharedfolder;

import java.util.HashSet;

/* JADX INFO: loaded from: classes8.dex */
public class HideDetailStatusManager {
    boolean hideDetail = false;
    HashSet<OnHideStatusChangedListener> onHideStatusChangedListenerList = new HashSet<>();

    interface OnHideStatusChangedListener {
        void onHideDetail(boolean z6);
    }

    public boolean isHideDetail() {
        return this.hideDetail;
    }

    public void register(OnHideStatusChangedListener onHideStatusChangedListener) {
        this.onHideStatusChangedListenerList.add(onHideStatusChangedListener);
    }

    public void setHideDetail(boolean z6) {
        this.hideDetail = z6;
        for (OnHideStatusChangedListener onHideStatusChangedListener : this.onHideStatusChangedListenerList) {
            if (onHideStatusChangedListener != null) {
                onHideStatusChangedListener.onHideDetail(z6);
            }
        }
    }

    public void unRegister(OnHideStatusChangedListener onHideStatusChangedListener) {
        this.onHideStatusChangedListenerList.remove(onHideStatusChangedListener);
    }
}
