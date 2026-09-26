package androidx.media;

import android.annotation.SuppressLint;
import android.media.AudioAttributes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
@RestrictTo
public class AudioAttributesImplApi21 implements AudioAttributesImpl {

    @RestrictTo
    public AudioAttributes mAudioAttributes;

    @RestrictTo
    public int mLegacyStreamType;

    @RequiresApi
    static class Builder implements AudioAttributesImpl.Builder {
        final AudioAttributes.Builder mFwkBuilder;

        Builder() {
            this.mFwkBuilder = new AudioAttributes.Builder();
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        @NonNull
        public AudioAttributesImpl build() {
            return new AudioAttributesImplApi21(this.mFwkBuilder.build());
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        @NonNull
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Builder b(int i10) {
            this.mFwkBuilder.setLegacyStreamType(i10);
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        @NonNull
        @SuppressLint({"WrongConstant"})
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Builder a(int i10) {
            if (i10 == 16) {
                i10 = 12;
            }
            this.mFwkBuilder.setUsage(i10);
            return this;
        }

        Builder(Object obj) {
            this.mFwkBuilder = new AudioAttributes.Builder((AudioAttributes) obj);
        }
    }

    @RestrictTo
    public AudioAttributesImplApi21() {
        this.mLegacyStreamType = -1;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int b() {
        return this.mLegacyStreamType;
    }

    @Override // androidx.media.AudioAttributesImpl
    @Nullable
    public Object d() {
        return this.mAudioAttributes;
    }

    AudioAttributesImplApi21(AudioAttributes audioAttributes) {
        this(audioAttributes, -1);
    }

    @Override // androidx.media.AudioAttributesImpl
    public int a() {
        return this.mAudioAttributes.getFlags();
    }

    @Override // androidx.media.AudioAttributesImpl
    public int c() {
        return this.mAudioAttributes.getUsage();
    }

    public boolean equals(Object obj) {
        if (obj instanceof AudioAttributesImplApi21) {
            return this.mAudioAttributes.equals(((AudioAttributesImplApi21) obj).mAudioAttributes);
        }
        return false;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getContentType() {
        return this.mAudioAttributes.getContentType();
    }

    public int hashCode() {
        return this.mAudioAttributes.hashCode();
    }

    @NonNull
    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.mAudioAttributes;
    }

    AudioAttributesImplApi21(AudioAttributes audioAttributes, int i10) {
        this.mAudioAttributes = audioAttributes;
        this.mLegacyStreamType = i10;
    }
}
