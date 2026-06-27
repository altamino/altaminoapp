package com.narvii.userblock;

import java.util.List;

/* loaded from: classes.dex */
public interface UserBlockService {
    boolean isBlocked(String str);

    boolean isInBlockedList(String str);

    void refresh(boolean z);

    void updateBlockList(List<String> list, List<String> list2);
}
