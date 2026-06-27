package com.narvii.modulization.entry;

import com.narvii.util.JacksonUtils;

/* loaded from: classes3.dex */
public class EntrySetting {
    public boolean enabled;
    public Privilege privilege;

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public EntrySetting m49clone() {
        return (EntrySetting) JacksonUtils.readAs(JacksonUtils.writeAsString(this), EntrySetting.class);
    }

    public int getPrivilegeType() {
        Privilege privilege = this.privilege;
        if (privilege == null) {
            return -1;
        }
        return privilege.type;
    }

    public void setPrivilegeType(int i) {
        Privilege privilege = this.privilege;
        if (privilege == null) {
            return;
        }
        privilege.type = i;
    }

    public int getPrivilegeMinLevel() {
        Privilege privilege = this.privilege;
        if (privilege == null) {
            return -1;
        }
        return privilege.minLevel;
    }

    public void setPrivilegeMinLevel(int i) {
        Privilege privilege = this.privilege;
        if (privilege == null) {
            return;
        }
        privilege.minLevel = i;
    }
}
