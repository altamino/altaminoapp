package com.narvii.util;

import com.narvii.model.User;
import com.narvii.modulization.entry.Privilege;

/* loaded from: classes3.dex */
public class PrivilegeUtils {
    public static boolean visibleToUser(Privilege privilege, User user) {
        if (privilege == null || user == null) {
            return false;
        }
        int i = privilege.type;
        if (i == 1 || i == 2) {
            return true;
        }
        if (i != 3) {
            return false;
        }
        return user.isCurator();
    }
}
