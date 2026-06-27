package com.narvii.photos;

/* loaded from: classes3.dex */
public class PhotoUploadSpec {
    public String[] headers;
    public String target;
    public String uri;
    public boolean original = false;
    public int quality = 80;
    public boolean keepPng = false;

    public static Builder builder(String str) {
        return new Builder(str);
    }

    public PhotoUploadSpec(String str) {
        this.uri = str;
    }

    public static class Builder {
        PhotoUploadSpec photoUploadSpec;

        public Builder(String str) {
            this.photoUploadSpec = new PhotoUploadSpec(str);
        }

        public Builder target(String str) {
            this.photoUploadSpec.target = str;
            return this;
        }

        public Builder original(boolean z) {
            this.photoUploadSpec.original = z;
            return this;
        }

        public Builder quality(int i) {
            this.photoUploadSpec.quality = i;
            return this;
        }

        public Builder keepPng() {
            this.photoUploadSpec.keepPng = true;
            return this;
        }

        public Builder headers(String[] strArr) {
            this.photoUploadSpec.headers = strArr;
            return this;
        }

        public PhotoUploadSpec build() {
            return this.photoUploadSpec;
        }
    }
}
