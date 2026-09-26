package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes10.dex */
public class ObservableLong extends BaseObservableField implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableLong> CREATOR = new Parcelable.Creator<ObservableLong>() { // from class: androidx.databinding.ObservableLong.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ObservableLong createFromParcel(Parcel parcel) {
            return new ObservableLong(parcel.readLong());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ObservableLong[] newArray(int i10) {
            return new ObservableLong[i10];
        }
    };
    static final long serialVersionUID = 1;
    private long mValue;

    public ObservableLong(long j6) {
        this.mValue = j6;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ObservableLong() {
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.mValue);
    }

    public ObservableLong(Observable... observableArr) {
        super(observableArr);
    }
}
