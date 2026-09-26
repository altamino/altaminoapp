package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes11.dex */
public class ObservableChar extends BaseObservableField implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableChar> CREATOR = new Parcelable.Creator<ObservableChar>() { // from class: androidx.databinding.ObservableChar.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ObservableChar createFromParcel(Parcel parcel) {
            return new ObservableChar((char) parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ObservableChar[] newArray(int i10) {
            return new ObservableChar[i10];
        }
    };
    static final long serialVersionUID = 1;
    private char mValue;

    public ObservableChar(char c7) {
        this.mValue = c7;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ObservableChar() {
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.mValue);
    }

    public ObservableChar(Observable... observableArr) {
        super(observableArr);
    }
}
