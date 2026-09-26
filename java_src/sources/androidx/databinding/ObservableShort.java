package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes7.dex */
public class ObservableShort extends BaseObservableField implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableShort> CREATOR = new Parcelable.Creator<ObservableShort>() { // from class: androidx.databinding.ObservableShort.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ObservableShort createFromParcel(Parcel parcel) {
            return new ObservableShort((short) parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ObservableShort[] newArray(int i10) {
            return new ObservableShort[i10];
        }
    };
    static final long serialVersionUID = 1;
    private short mValue;

    public ObservableShort(short s) {
        this.mValue = s;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ObservableShort() {
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.mValue);
    }

    public ObservableShort(Observable... observableArr) {
        super(observableArr);
    }
}
