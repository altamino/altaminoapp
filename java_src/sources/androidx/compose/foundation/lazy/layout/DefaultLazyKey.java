package androidx.compose.foundation.lazy.layout;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@SuppressLint({"BanParcelableUsage"})
final class DefaultLazyKey implements Parcelable {
    private final int index;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final Parcelable.Creator<DefaultLazyKey> CREATOR = new Parcelable.Creator<DefaultLazyKey>() { // from class: androidx.compose.foundation.lazy.layout.DefaultLazyKey$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public DefaultLazyKey createFromParcel(@NotNull Parcel parcel) {
            t.j(parcel, "parcel");
            return new DefaultLazyKey(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public DefaultLazyKey[] newArray(int i10) {
            return new DefaultLazyKey[i10];
        }
    };

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DefaultLazyKey) && this.index == ((DefaultLazyKey) obj).index;
    }

    public int hashCode() {
        return this.index;
    }

    @NotNull
    public String toString() {
        return "DefaultLazyKey(index=" + this.index + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i10) {
        t.j(parcel, "parcel");
        parcel.writeInt(this.index);
    }

    public DefaultLazyKey(int i10) {
        this.index = i10;
    }
}
