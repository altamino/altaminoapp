package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"BanParcelableUsage"})
public final class ActivityResult implements Parcelable {

    @NonNull
    public static final Parcelable.Creator<ActivityResult> CREATOR = new Parcelable.Creator<ActivityResult>() { // from class: androidx.activity.result.ActivityResult.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ActivityResult createFromParcel(@NonNull Parcel parcel) {
            return new ActivityResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ActivityResult[] newArray(int i10) {
            return new ActivityResult[i10];
        }
    };

    @Nullable
    private final Intent mData;
    private final int mResultCode;

    public ActivityResult(int i10, @Nullable Intent intent) {
        this.mResultCode = i10;
        this.mData = intent;
    }

    @NonNull
    public static String g(int i10) {
        if (i10 != -1) {
            return i10 != 0 ? String.valueOf(i10) : "RESULT_CANCELED";
        }
        return "RESULT_OK";
    }

    @Nullable
    public Intent c() {
        return this.mData;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int e() {
        return this.mResultCode;
    }

    ActivityResult(Parcel parcel) {
        this.mResultCode = parcel.readInt();
        this.mData = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }

    public String toString() {
        return "ActivityResult{resultCode=" + g(this.mResultCode) + ", data=" + this.mData + b.END_OBJ;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeInt(this.mResultCode);
        parcel.writeInt(this.mData == null ? 0 : 1);
        Intent intent = this.mData;
        if (intent != null) {
            intent.writeToParcel(parcel, i10);
        }
    }
}
