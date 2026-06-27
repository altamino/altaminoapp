package com.narvii.account.notice;

import android.support.v4.view.ViewCompat;
import com.narvii.util.StringUtils;

/* loaded from: classes2.dex */
public class AccountNoticeStyle {
    public String backgroundColor;

    public int getBackgroundColor() {
        String str = this.backgroundColor;
        return str == null ? ViewCompat.MEASURED_STATE_MASK : StringUtils.parseColor(str);
    }
}
