package com.narvii.wallet.membership;

import androidx.annotation.DrawableRes;
import androidx.annotation.StringRes;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class Privilege extends NVObjectAdapter {
    private final int content;
    private final int icon;
    private final int title;

    public static /* synthetic */ Privilege copy$default(Privilege privilege, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i10 = privilege.icon;
        }
        if ((i13 & 2) != 0) {
            i11 = privilege.title;
        }
        if ((i13 & 4) != 0) {
            i12 = privilege.content;
        }
        return privilege.copy(i10, i11, i12);
    }

    public final int component1() {
        return this.icon;
    }

    public final int component2() {
        return this.title;
    }

    public final int component3() {
        return this.content;
    }

    @NotNull
    public final Privilege copy(@DrawableRes int i10, @StringRes int i11, @StringRes int i12) {
        return new Privilege(i10, i11, i12);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Privilege)) {
            return false;
        }
        Privilege privilege = (Privilege) obj;
        return this.icon == privilege.icon && this.title == privilege.title && this.content == privilege.content;
    }

    public final int getContent() {
        return this.content;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final int getTitle() {
        return this.title;
    }

    @Override // com.narvii.model.NVObject
    public int hashCode() {
        return (((this.icon * 31) + this.title) * 31) + this.content;
    }

    @NotNull
    public String toString() {
        return "Privilege(icon=" + this.icon + ", title=" + this.title + ", content=" + this.content + ")";
    }

    public Privilege(@DrawableRes int i10, @StringRes int i11, @StringRes int i12) {
        this.icon = i10;
        this.title = i11;
        this.content = i12;
    }
}
