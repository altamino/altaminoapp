package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes9.dex */
public class ObservableDouble extends BaseObservableField implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableDouble> CREATOR = new Parcelable.Creator<ObservableDouble>() { // from class: androidx.databinding.ObservableDouble.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ObservableDouble createFromParcel(Parcel parcel) {
            return new ObservableDouble(parcel.readDouble());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ObservableDouble[] newArray(int i10) {
            return new ObservableDouble[i10];
        }
    };
    static final long serialVersionUID = 1;
    private double mValue;

    public ObservableDouble(double d) {
        this.mValue = d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ObservableDouble() {
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeDouble(this.mValue);
    }

    public ObservableDouble(Observable... observableArr) {
        super(observableArr);
    }
}
