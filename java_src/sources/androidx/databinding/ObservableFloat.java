package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ObservableFloat extends BaseObservableField implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableFloat> CREATOR = new Parcelable.Creator<ObservableFloat>() { // from class: androidx.databinding.ObservableFloat.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ObservableFloat createFromParcel(Parcel parcel) {
            return new ObservableFloat(parcel.readFloat());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ObservableFloat[] newArray(int i10) {
            return new ObservableFloat[i10];
        }
    };
    static final long serialVersionUID = 1;
    private float mValue;

    public ObservableFloat(float f) {
        this.mValue = f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ObservableFloat() {
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeFloat(this.mValue);
    }

    public ObservableFloat(Observable... observableArr) {
        super(observableArr);
    }
}
