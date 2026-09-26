package com.google.android.material.navigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.SubMenuBuilder;
import com.google.android.material.internal.ParcelableSparseArray;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo
public class NavigationBarPresenter implements MenuPresenter {
    private int id;
    private MenuBuilder menu;
    private c menuView;
    private boolean updateSuspended = false;

    static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        @Nullable
        ParcelableSparseArray badgeSavedStates;
        int selectedItemId;

        class a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            @NonNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }

            a() {
            }
        }

        SavedState() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        SavedState(@NonNull Parcel parcel) {
            this.selectedItemId = parcel.readInt();
            this.badgeSavedStates = (ParcelableSparseArray) parcel.readParcelable(getClass().getClassLoader());
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            parcel.writeInt(this.selectedItemId);
            parcel.writeParcelable(this.badgeSavedStates, 0);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void a(@Nullable MenuBuilder menuBuilder, boolean z6) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean b(@Nullable MenuBuilder menuBuilder, @Nullable MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean e() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean f(@Nullable MenuBuilder menuBuilder, @Nullable MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.id;
    }

    public void i(int i10) {
        this.id = i10;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean k(@Nullable SubMenuBuilder subMenuBuilder) {
        return false;
    }

    public void l(@NonNull c cVar) {
        this.menuView = cVar;
    }

    public void m(boolean z6) {
        this.updateSuspended = z6;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    @NonNull
    public Parcelable c() {
        SavedState savedState = new SavedState();
        savedState.selectedItemId = this.menuView.getSelectedItemId();
        savedState.badgeSavedStates = com.google.android.material.badge.c.c(this.menuView.getBadgeDrawables());
        return savedState;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void d(boolean z6) {
        if (this.updateSuspended) {
            return;
        }
        if (z6) {
            this.menuView.d();
        } else {
            this.menuView.m();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void g(@NonNull Context context, @NonNull MenuBuilder menuBuilder) {
        this.menu = menuBuilder;
        this.menuView.a(menuBuilder);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void j(@NonNull Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.menuView.l(savedState.selectedItemId);
            this.menuView.k(com.google.android.material.badge.c.b(this.menuView.getContext(), savedState.badgeSavedStates));
        }
    }
}
