package com.narvii.modulization.entry;

import com.narvii.util.JacksonUtils;

/* JADX INFO: loaded from: classes9.dex */
public class EntrySetting {
    public boolean enabled;
    public Privilege privilege;

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public EntrySetting m1625clone() {
        return (EntrySetting) JacksonUtils.readAs(JacksonUtils.writeAsString(this), getClass());
    }

    public int getPrivilegeMinLevel() {
        Privilege privilege = this.privilege;
        if (privilege == null) {
            return -1;
        }
        return privilege.minLevel;
    }

    public int getPrivilegeType() {
        Privilege privilege = this.privilege;
        if (privilege == null) {
            return -1;
        }
        return privilege.type;
    }

    public void setPrivilegeMinLevel(int i10) {
        Privilege privilege = this.privilege;
        if (privilege == null) {
            return;
        }
        privilege.minLevel = i10;
    }

    public void setPrivilegeType(int i10) {
        Privilege privilege = this.privilege;
        if (privilege == null) {
            return;
        }
        privilege.type = i10;
    }
}
