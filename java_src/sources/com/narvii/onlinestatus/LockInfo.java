package com.narvii.onlinestatus;

import android.view.View;

/* JADX INFO: loaded from: classes11.dex */
public class LockInfo {
    public int iconId;
    public boolean locked;
    public View.OnClickListener onClickListener;
    public int textId;
    public int unlockDrawableId;

    public LockInfo(boolean z6, int i10, int i11, int i12, View.OnClickListener onClickListener) {
        this.iconId = i10;
        this.textId = i11;
        this.unlockDrawableId = i12;
        this.onClickListener = onClickListener;
        this.locked = z6;
    }
}
