package androidx.media;

import androidx.annotation.RestrictTo;
import androidx.versionedparcelable.VersionedParcel;

/* JADX INFO: loaded from: classes11.dex */
@RestrictTo
public class AudioAttributesImplBaseParcelizer {
    public static void write(AudioAttributesImplBase audioAttributesImplBase, VersionedParcel versionedParcel) {
        versionedParcel.x(false, false);
        versionedParcel.F(audioAttributesImplBase.mUsage, 1);
        versionedParcel.F(audioAttributesImplBase.mContentType, 2);
        versionedParcel.F(audioAttributesImplBase.mFlags, 3);
        versionedParcel.F(audioAttributesImplBase.mLegacyStream, 4);
    }

    public static AudioAttributesImplBase read(VersionedParcel versionedParcel) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.mUsage = versionedParcel.p(audioAttributesImplBase.mUsage, 1);
        audioAttributesImplBase.mContentType = versionedParcel.p(audioAttributesImplBase.mContentType, 2);
        audioAttributesImplBase.mFlags = versionedParcel.p(audioAttributesImplBase.mFlags, 3);
        audioAttributesImplBase.mLegacyStream = versionedParcel.p(audioAttributesImplBase.mLegacyStream, 4);
        return audioAttributesImplBase;
    }
}
