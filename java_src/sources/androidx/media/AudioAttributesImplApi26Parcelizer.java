package androidx.media;

import android.media.AudioAttributes;
import androidx.annotation.RestrictTo;
import androidx.versionedparcelable.VersionedParcel;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public class AudioAttributesImplApi26Parcelizer {
    public static void write(AudioAttributesImplApi26 audioAttributesImplApi26, VersionedParcel versionedParcel) {
        versionedParcel.x(false, false);
        versionedParcel.H(audioAttributesImplApi26.mAudioAttributes, 1);
        versionedParcel.F(audioAttributesImplApi26.mLegacyStreamType, 2);
    }

    public static AudioAttributesImplApi26 read(VersionedParcel versionedParcel) {
        AudioAttributesImplApi26 audioAttributesImplApi26 = new AudioAttributesImplApi26();
        audioAttributesImplApi26.mAudioAttributes = (AudioAttributes) versionedParcel.r(audioAttributesImplApi26.mAudioAttributes, 1);
        audioAttributesImplApi26.mLegacyStreamType = versionedParcel.p(audioAttributesImplApi26.mLegacyStreamType, 2);
        return audioAttributesImplApi26;
    }
}
