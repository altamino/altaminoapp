package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes9.dex */
final class Pending {
    private int groupIndex;

    @NotNull
    private final HashMap<Integer, GroupInfo> groupInfos;

    @NotNull
    private final List<KeyInfo> keyInfos;

    @NotNull
    private final m keyMap$delegate;
    private final int startIndex;

    @NotNull
    private final List<KeyInfo> usedKeys;

    public final int a() {
        return this.groupIndex;
    }

    @NotNull
    public final List<KeyInfo> b() {
        return this.keyInfos;
    }

    public final int e() {
        return this.startIndex;
    }

    @NotNull
    public final List<KeyInfo> f() {
        return this.usedKeys;
    }

    public final void l(int i10) {
        this.groupIndex = i10;
    }

    public Pending(@NotNull List<KeyInfo> keyInfos, int i10) {
        t.j(keyInfos, "keyInfos");
        this.keyInfos = keyInfos;
        this.startIndex = i10;
        if (i10 < 0) {
            throw new IllegalArgumentException("Invalid start index".toString());
        }
        this.usedKeys = new ArrayList();
        HashMap<Integer, GroupInfo> map = new HashMap<>();
        int size = keyInfos.size();
        int iC = 0;
        for (int i11 = 0; i11 < size; i11++) {
            KeyInfo keyInfo = this.keyInfos.get(i11);
            map.put(Integer.valueOf(keyInfo.b()), new GroupInfo(i11, iC, keyInfo.c()));
            iC += keyInfo.c();
        }
        this.groupInfos = map;
        this.keyMap$delegate = o.a(new Pending$keyMap$2(this));
    }

    @NotNull
    public final HashMap<Object, LinkedHashSet<KeyInfo>> c() {
        return (HashMap) this.keyMap$delegate.getValue();
    }

    @Nullable
    public final KeyInfo d(int i10, @Nullable Object obj) {
        return (KeyInfo) ComposerKt.R(c(), obj != null ? new JoinedKey(Integer.valueOf(i10), obj) : Integer.valueOf(i10));
    }

    public final int g(@NotNull KeyInfo keyInfo) {
        t.j(keyInfo, "keyInfo");
        GroupInfo groupInfo = this.groupInfos.get(Integer.valueOf(keyInfo.b()));
        if (groupInfo != null) {
            return groupInfo.b();
        }
        return -1;
    }

    public final boolean h(@NotNull KeyInfo keyInfo) {
        t.j(keyInfo, "keyInfo");
        return this.usedKeys.add(keyInfo);
    }

    public final void i(@NotNull KeyInfo keyInfo, int i10) {
        t.j(keyInfo, "keyInfo");
        this.groupInfos.put(Integer.valueOf(keyInfo.b()), new GroupInfo(-1, i10, 0));
    }

    public final void j(int i10, int i11, int i12) {
        if (i10 > i11) {
            Collection<GroupInfo> collectionValues = this.groupInfos.values();
            t.i(collectionValues, "groupInfos.values");
            for (GroupInfo groupInfo : collectionValues) {
                int iB = groupInfo.b();
                if (i10 <= iB && iB < i10 + i12) {
                    groupInfo.e((iB - i10) + i11);
                } else if (i11 <= iB && iB < i10) {
                    groupInfo.e(iB + i12);
                }
            }
            return;
        }
        if (i11 > i10) {
            Collection<GroupInfo> collectionValues2 = this.groupInfos.values();
            t.i(collectionValues2, "groupInfos.values");
            for (GroupInfo groupInfo2 : collectionValues2) {
                int iB2 = groupInfo2.b();
                if (i10 <= iB2 && iB2 < i10 + i12) {
                    groupInfo2.e((iB2 - i10) + i11);
                } else if (i10 + 1 <= iB2 && iB2 < i11) {
                    groupInfo2.e(iB2 - i12);
                }
            }
        }
    }

    public final void k(int i10, int i11) {
        if (i10 > i11) {
            Collection<GroupInfo> collectionValues = this.groupInfos.values();
            t.i(collectionValues, "groupInfos.values");
            for (GroupInfo groupInfo : collectionValues) {
                int iC = groupInfo.c();
                if (iC == i10) {
                    groupInfo.f(i11);
                } else if (i11 <= iC && iC < i10) {
                    groupInfo.f(iC + 1);
                }
            }
            return;
        }
        if (i11 > i10) {
            Collection<GroupInfo> collectionValues2 = this.groupInfos.values();
            t.i(collectionValues2, "groupInfos.values");
            for (GroupInfo groupInfo2 : collectionValues2) {
                int iC2 = groupInfo2.c();
                if (iC2 == i10) {
                    groupInfo2.f(i11);
                } else if (i10 + 1 <= iC2 && iC2 < i11) {
                    groupInfo2.f(iC2 - 1);
                }
            }
        }
    }

    public final int m(@NotNull KeyInfo keyInfo) {
        t.j(keyInfo, "keyInfo");
        GroupInfo groupInfo = this.groupInfos.get(Integer.valueOf(keyInfo.b()));
        if (groupInfo != null) {
            return groupInfo.c();
        }
        return -1;
    }

    public final boolean n(int i10, int i11) {
        int iB;
        GroupInfo groupInfo = this.groupInfos.get(Integer.valueOf(i10));
        if (groupInfo == null) {
            return false;
        }
        int iB2 = groupInfo.b();
        int iA = i11 - groupInfo.a();
        groupInfo.d(i11);
        if (iA == 0) {
            return true;
        }
        Collection<GroupInfo> collectionValues = this.groupInfos.values();
        t.i(collectionValues, "groupInfos.values");
        for (GroupInfo groupInfo2 : collectionValues) {
            if (groupInfo2.b() >= iB2 && !t.e(groupInfo2, groupInfo) && (iB = groupInfo2.b() + iA) >= 0) {
                groupInfo2.e(iB);
            }
        }
        return true;
    }

    public final int o(@NotNull KeyInfo keyInfo) {
        t.j(keyInfo, "keyInfo");
        GroupInfo groupInfo = this.groupInfos.get(Integer.valueOf(keyInfo.b()));
        return groupInfo != null ? groupInfo.a() : keyInfo.c();
    }
}
