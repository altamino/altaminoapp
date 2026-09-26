package com.narvii.photos;

/* JADX INFO: loaded from: classes9.dex */
public class PhotoUploadSpec {
    public String[] headers;
    public String target;
    public String uri;
    public boolean original = false;
    public int quality = 80;
    public boolean keepPng = false;

    public static class Builder {
        PhotoUploadSpec photoUploadSpec;

        public PhotoUploadSpec build() {
            return this.photoUploadSpec;
        }

        public Builder headers(String[] strArr) {
            this.photoUploadSpec.headers = strArr;
            return this;
        }

        public Builder keepPng() {
            this.photoUploadSpec.keepPng = true;
            return this;
        }

        public Builder original(boolean z6) {
            this.photoUploadSpec.original = z6;
            return this;
        }

        public Builder quality(int i10) {
            this.photoUploadSpec.quality = i10;
            return this;
        }

        public Builder target(String str) {
            this.photoUploadSpec.target = str;
            return this;
        }

        public Builder(String str) {
            this.photoUploadSpec = new PhotoUploadSpec(str);
        }
    }

    public static Builder builder(String str) {
        return new Builder(str);
    }

    public PhotoUploadSpec(String str) {
        this.uri = str;
    }
}
