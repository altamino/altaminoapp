package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.versionedparcelable.VersionedParcel;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo
public class IconCompatParcelizer {
    public static void write(IconCompat iconCompat, VersionedParcel versionedParcel) {
        versionedParcel.x(true, true);
        iconCompat.z(versionedParcel.f());
        int i10 = iconCompat.mType;
        if (-1 != i10) {
            versionedParcel.F(i10, 1);
        }
        byte[] bArr = iconCompat.mData;
        if (bArr != null) {
            versionedParcel.B(bArr, 2);
        }
        Parcelable parcelable = iconCompat.mParcelable;
        if (parcelable != null) {
            versionedParcel.H(parcelable, 3);
        }
        int i11 = iconCompat.mInt1;
        if (i11 != 0) {
            versionedParcel.F(i11, 4);
        }
        int i12 = iconCompat.mInt2;
        if (i12 != 0) {
            versionedParcel.F(i12, 5);
        }
        ColorStateList colorStateList = iconCompat.mTintList;
        if (colorStateList != null) {
            versionedParcel.H(colorStateList, 6);
        }
        String str = iconCompat.mTintModeStr;
        if (str != null) {
            versionedParcel.J(str, 7);
        }
        String str2 = iconCompat.mString1;
        if (str2 != null) {
            versionedParcel.J(str2, 8);
        }
    }

    public static IconCompat read(VersionedParcel versionedParcel) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.mType = versionedParcel.p(iconCompat.mType, 1);
        iconCompat.mData = versionedParcel.j(iconCompat.mData, 2);
        iconCompat.mParcelable = versionedParcel.r(iconCompat.mParcelable, 3);
        iconCompat.mInt1 = versionedParcel.p(iconCompat.mInt1, 4);
        iconCompat.mInt2 = versionedParcel.p(iconCompat.mInt2, 5);
        iconCompat.mTintList = (ColorStateList) versionedParcel.r(iconCompat.mTintList, 6);
        iconCompat.mTintModeStr = versionedParcel.t(iconCompat.mTintModeStr, 7);
        iconCompat.mString1 = versionedParcel.t(iconCompat.mString1, 8);
        iconCompat.y();
        return iconCompat;
    }
}
