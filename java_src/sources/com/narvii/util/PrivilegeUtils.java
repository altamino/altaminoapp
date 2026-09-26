package com.narvii.util;

import com.narvii.model.User;
import com.narvii.modulization.entry.Privilege;

/* JADX INFO: loaded from: classes7.dex */
public class PrivilegeUtils {
    public static boolean visibleToUser(Privilege privilege, User user) {
        if (privilege == null || user == null) {
            return false;
        }
        int i10 = privilege.type;
        if (i10 == 1 || i10 == 2) {
            return true;
        }
        if (i10 != 3) {
            return false;
        }
        return user.isCurator();
    }
}
