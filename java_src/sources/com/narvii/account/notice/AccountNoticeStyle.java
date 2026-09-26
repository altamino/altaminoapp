package com.narvii.account.notice;

import androidx.core.view.ViewCompat;
import com.narvii.util.StringUtils;

/* JADX INFO: loaded from: classes10.dex */
public class AccountNoticeStyle {
    public String backgroundColor;

    public int getBackgroundColor() {
        String str = this.backgroundColor;
        return str == null ? ViewCompat.MEASURED_STATE_MASK : StringUtils.parseColor(str);
    }
}
