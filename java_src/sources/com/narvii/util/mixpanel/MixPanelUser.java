package com.narvii.util.mixpanel;

import androidx.compose.foundation.c;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class MixPanelUser {

    @NotNull
    private final String email;
    private final boolean isPremiumPlan;

    @NotNull
    private final String name;

    @NotNull
    private final String userId;

    public static /* synthetic */ MixPanelUser copy$default(MixPanelUser mixPanelUser, String str, String str2, String str3, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = mixPanelUser.userId;
        }
        if ((i10 & 2) != 0) {
            str2 = mixPanelUser.name;
        }
        if ((i10 & 4) != 0) {
            str3 = mixPanelUser.email;
        }
        if ((i10 & 8) != 0) {
            z6 = mixPanelUser.isPremiumPlan;
        }
        return mixPanelUser.copy(str, str2, str3, z6);
    }

    @NotNull
    public final String component1() {
        return this.userId;
    }

    @NotNull
    public final String component2() {
        return this.name;
    }

    @NotNull
    public final String component3() {
        return this.email;
    }

    public final boolean component4() {
        return this.isPremiumPlan;
    }

    @NotNull
    public final MixPanelUser copy(@NotNull String userId, @NotNull String name, @NotNull String email, boolean z6) {
        t.j(userId, "userId");
        t.j(name, "name");
        t.j(email, "email");
        return new MixPanelUser(userId, name, email, z6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MixPanelUser)) {
            return false;
        }
        MixPanelUser mixPanelUser = (MixPanelUser) obj;
        return t.e(this.userId, mixPanelUser.userId) && t.e(this.name, mixPanelUser.name) && t.e(this.email, mixPanelUser.email) && this.isPremiumPlan == mixPanelUser.isPremiumPlan;
    }

    @NotNull
    public final String getEmail() {
        return this.email;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        return (((((this.userId.hashCode() * 31) + this.name.hashCode()) * 31) + this.email.hashCode()) * 31) + c.a(this.isPremiumPlan);
    }

    public final boolean isPremiumPlan() {
        return this.isPremiumPlan;
    }

    @NotNull
    public String toString() {
        return "MixPanelUser(userId=" + this.userId + ", name=" + this.name + ", email=" + this.email + ", isPremiumPlan=" + this.isPremiumPlan + ')';
    }

    public MixPanelUser(@NotNull String userId, @NotNull String name, @NotNull String email, boolean z6) {
        t.j(userId, "userId");
        t.j(name, "name");
        t.j(email, "email");
        this.userId = userId;
        this.name = name;
        this.email = email;
        this.isPremiumPlan = z6;
    }
}
