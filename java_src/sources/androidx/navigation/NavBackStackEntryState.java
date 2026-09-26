package androidx.navigation;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.lifecycle.Lifecycle;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"BanParcelableUsage"})
public final class NavBackStackEntryState implements Parcelable {

    @Nullable
    private final Bundle args;
    private final int destinationId;

    @NotNull
    private final String id;

    @NotNull
    private final Bundle savedState;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final Parcelable.Creator<NavBackStackEntryState> CREATOR = new Parcelable.Creator<NavBackStackEntryState>() { // from class: androidx.navigation.NavBackStackEntryState$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NavBackStackEntryState createFromParcel(@NotNull Parcel inParcel) {
            t.j(inParcel, "inParcel");
            return new NavBackStackEntryState(inParcel);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public NavBackStackEntryState[] newArray(int i10) {
            return new NavBackStackEntryState[i10];
        }
    };

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public NavBackStackEntryState(@NotNull NavBackStackEntry entry) {
        t.j(entry, "entry");
        this.id = entry.g();
        this.destinationId = entry.f().p();
        this.args = entry.d();
        Bundle bundle = new Bundle();
        this.savedState = bundle;
        entry.j(bundle);
    }

    public final int c() {
        return this.destinationId;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NotNull
    public final String e() {
        return this.id;
    }

    @NotNull
    public final NavBackStackEntry g(@NotNull Context context, @NotNull NavDestination destination, @NotNull Lifecycle.State hostLifecycleState, @Nullable NavControllerViewModel navControllerViewModel) {
        t.j(context, "context");
        t.j(destination, "destination");
        t.j(hostLifecycleState, "hostLifecycleState");
        Bundle bundle = this.args;
        if (bundle != null) {
            bundle.setClassLoader(context.getClassLoader());
        } else {
            bundle = null;
        }
        return NavBackStackEntry.Companion.a(context, destination, bundle, hostLifecycleState, navControllerViewModel, this.id, this.savedState);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i10) {
        t.j(parcel, "parcel");
        parcel.writeString(this.id);
        parcel.writeInt(this.destinationId);
        parcel.writeBundle(this.args);
        parcel.writeBundle(this.savedState);
    }

    public NavBackStackEntryState(@NotNull Parcel inParcel) {
        t.j(inParcel, "inParcel");
        String string = inParcel.readString();
        t.g(string);
        this.id = string;
        this.destinationId = inParcel.readInt();
        this.args = inParcel.readBundle(NavBackStackEntryState.class.getClassLoader());
        Bundle bundle = inParcel.readBundle(NavBackStackEntryState.class.getClassLoader());
        t.g(bundle);
        this.savedState = bundle;
    }
}
