package com.narvii.userblock;

import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public interface UserBlockService {
    boolean isBlocked(String str);

    boolean isInBlockedList(String str);

    void refresh(boolean z6);

    void updateBlockList(List<String> list, List<String> list2);
}
