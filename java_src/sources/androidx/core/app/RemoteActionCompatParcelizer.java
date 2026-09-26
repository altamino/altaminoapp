package androidx.core.app;

import android.app.PendingIntent;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcel;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo
public class RemoteActionCompatParcelizer {
    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcel versionedParcel) {
        versionedParcel.x(false, false);
        versionedParcel.M(remoteActionCompat.mIcon, 1);
        versionedParcel.D(remoteActionCompat.mTitle, 2);
        versionedParcel.D(remoteActionCompat.mContentDescription, 3);
        versionedParcel.H(remoteActionCompat.mActionIntent, 4);
        versionedParcel.z(remoteActionCompat.mEnabled, 5);
        versionedParcel.z(remoteActionCompat.mShouldShowIcon, 6);
    }

    public static RemoteActionCompat read(VersionedParcel versionedParcel) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.mIcon = (IconCompat) versionedParcel.v(remoteActionCompat.mIcon, 1);
        remoteActionCompat.mTitle = versionedParcel.l(remoteActionCompat.mTitle, 2);
        remoteActionCompat.mContentDescription = versionedParcel.l(remoteActionCompat.mContentDescription, 3);
        remoteActionCompat.mActionIntent = (PendingIntent) versionedParcel.r(remoteActionCompat.mActionIntent, 4);
        remoteActionCompat.mEnabled = versionedParcel.h(remoteActionCompat.mEnabled, 5);
        remoteActionCompat.mShouldShowIcon = versionedParcel.h(remoteActionCompat.mShouldShowIcon, 6);
        return remoteActionCompat;
    }
}
