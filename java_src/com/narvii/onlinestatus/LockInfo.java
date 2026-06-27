package com.narvii.onlinestatus;

import android.view.View;

/* loaded from: classes3.dex */
public class LockInfo {
    public int iconId;
    public boolean locked;
    public View.OnClickListener onClickListener;
    public int textId;
    public int unlockDrawableId;

    public LockInfo(boolean z, int i, int i2, int i3, View.OnClickListener onClickListener) {
        this.locked = z;
        this.iconId = i;
        this.textId = i2;
        this.unlockDrawableId = i3;
        this.onClickListener = onClickListener;
        this.locked = z;
    }
}
