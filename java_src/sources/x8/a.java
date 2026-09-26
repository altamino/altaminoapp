package x8;

import java.security.Permission;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
public class a extends Permission {
    public static final String DEFAULT_RANDOM = "defaultRandomConfig";
    public static final String GLOBAL_CONFIG = "globalConfig";
    public static final String THREAD_LOCAL_CONFIG = "threadLocalConfig";
    private final Set<String> actions;

    public a(String str) {
        super(str);
        HashSet hashSet = new HashSet();
        this.actions = hashSet;
        hashSet.add(str);
    }

    public boolean equals(Object obj) {
        return (obj instanceof a) && this.actions.equals(((a) obj).actions);
    }

    @Override // java.security.Permission
    public String getActions() {
        return this.actions.toString();
    }

    public int hashCode() {
        return this.actions.hashCode();
    }

    @Override // java.security.Permission
    public boolean implies(Permission permission) {
        if (!(permission instanceof a)) {
            return false;
        }
        a aVar = (a) permission;
        return getName().equals(aVar.getName()) || this.actions.containsAll(aVar.actions);
    }
}
