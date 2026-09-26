package com.narvii.permisson;

import android.view.View;
import e8.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class RationaleDialogConfig {

    @Nullable
    private final String message;

    @Nullable
    private final l<View, l0> onNegativeListener;

    @Nullable
    private final l<View, l0> onPositiveListener;

    @NotNull
    private final String permissionName;

    @Nullable
    private final String title;

    /* JADX WARN: Multi-variable type inference failed */
    public RationaleDialogConfig(@NotNull String permissionName, @Nullable String str, @Nullable String str2, @Nullable l<? super View, l0> lVar, @Nullable l<? super View, l0> lVar2) {
        t.j(permissionName, "permissionName");
        this.permissionName = permissionName;
        this.title = str;
        this.message = str2;
        this.onPositiveListener = lVar;
        this.onNegativeListener = lVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RationaleDialogConfig copy$default(RationaleDialogConfig rationaleDialogConfig, String str, String str2, String str3, l lVar, l lVar2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = rationaleDialogConfig.permissionName;
        }
        if ((i10 & 2) != 0) {
            str2 = rationaleDialogConfig.title;
        }
        String str4 = str2;
        if ((i10 & 4) != 0) {
            str3 = rationaleDialogConfig.message;
        }
        String str5 = str3;
        if ((i10 & 8) != 0) {
            lVar = rationaleDialogConfig.onPositiveListener;
        }
        l lVar3 = lVar;
        if ((i10 & 16) != 0) {
            lVar2 = rationaleDialogConfig.onNegativeListener;
        }
        return rationaleDialogConfig.copy(str, str4, str5, lVar3, lVar2);
    }

    @NotNull
    public final String component1() {
        return this.permissionName;
    }

    @Nullable
    public final String component2() {
        return this.title;
    }

    @Nullable
    public final String component3() {
        return this.message;
    }

    @Nullable
    public final l<View, l0> component4() {
        return this.onPositiveListener;
    }

    @Nullable
    public final l<View, l0> component5() {
        return this.onNegativeListener;
    }

    @NotNull
    public final RationaleDialogConfig copy(@NotNull String permissionName, @Nullable String str, @Nullable String str2, @Nullable l<? super View, l0> lVar, @Nullable l<? super View, l0> lVar2) {
        t.j(permissionName, "permissionName");
        return new RationaleDialogConfig(permissionName, str, str2, lVar, lVar2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RationaleDialogConfig)) {
            return false;
        }
        RationaleDialogConfig rationaleDialogConfig = (RationaleDialogConfig) obj;
        return t.e(this.permissionName, rationaleDialogConfig.permissionName) && t.e(this.title, rationaleDialogConfig.title) && t.e(this.message, rationaleDialogConfig.message) && t.e(this.onPositiveListener, rationaleDialogConfig.onPositiveListener) && t.e(this.onNegativeListener, rationaleDialogConfig.onNegativeListener);
    }

    @Nullable
    public final String getMessage() {
        return this.message;
    }

    @Nullable
    public final l<View, l0> getOnNegativeListener() {
        return this.onNegativeListener;
    }

    @Nullable
    public final l<View, l0> getOnPositiveListener() {
        return this.onPositiveListener;
    }

    @NotNull
    public final String getPermissionName() {
        return this.permissionName;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int iHashCode = this.permissionName.hashCode() * 31;
        String str = this.title;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.message;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        l<View, l0> lVar = this.onPositiveListener;
        int iHashCode4 = (iHashCode3 + (lVar == null ? 0 : lVar.hashCode())) * 31;
        l<View, l0> lVar2 = this.onNegativeListener;
        return iHashCode4 + (lVar2 != null ? lVar2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "RationaleDialogConfig(permissionName=" + this.permissionName + ", title=" + this.title + ", message=" + this.message + ", onPositiveListener=" + this.onPositiveListener + ", onNegativeListener=" + this.onNegativeListener + ')';
    }

    public /* synthetic */ RationaleDialogConfig(String str, String str2, String str3, l lVar, l lVar2, int i10, k kVar) {
        this(str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : str3, lVar, lVar2);
    }
}
