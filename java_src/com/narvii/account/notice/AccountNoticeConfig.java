package com.narvii.account.notice;

import java.util.List;

/* loaded from: classes2.dex */
public class AccountNoticeConfig {
    public boolean allowQuickOperation;
    public List<NoticeButtonInfo> operationList;
    public boolean showCommunity;
    public boolean showOperator;

    public static class NoticeButtonInfo {
        public static final int NOTICE_ACTION_TYPE_NO = 2;
        public static final int NOTICE_ACTION_TYPE_NONE = 0;
        public static final int NOTICE_ACTION_TYPE_YES = 1;
        public int operationType;
        public String text;

        public boolean isSupport() {
            int i = this.operationType;
            return i > 0 && i <= 2;
        }
    }
}
