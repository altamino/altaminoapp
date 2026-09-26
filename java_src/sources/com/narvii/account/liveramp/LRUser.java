package com.narvii.account.liveramp;

import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class LRUser {

    @Nullable
    private final String email;

    @Nullable
    private final String phone;

    /* JADX WARN: Multi-variable type inference failed */
    public LRUser() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ LRUser copy$default(LRUser lRUser, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = lRUser.email;
        }
        if ((i10 & 2) != 0) {
            str2 = lRUser.phone;
        }
        return lRUser.copy(str, str2);
    }

    @Nullable
    public final String component1() {
        return this.email;
    }

    @Nullable
    public final String component2() {
        return this.phone;
    }

    @NotNull
    public final LRUser copy(@Nullable String str, @Nullable String str2) {
        return new LRUser(str, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LRUser)) {
            return false;
        }
        LRUser lRUser = (LRUser) obj;
        return t.e(this.email, lRUser.email) && t.e(this.phone, lRUser.phone);
    }

    @Nullable
    public final String getEmail() {
        return this.email;
    }

    @Nullable
    public final String getPhone() {
        return this.phone;
    }

    public int hashCode() {
        String str = this.email;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.phone;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "LRUser(email=" + this.email + ", phone=" + this.phone + ')';
    }

    public LRUser(@Nullable String str, @Nullable String str2) {
        this.email = str;
        this.phone = str2;
    }

    public /* synthetic */ LRUser(String str, String str2, int i10, k kVar) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2);
    }
}
