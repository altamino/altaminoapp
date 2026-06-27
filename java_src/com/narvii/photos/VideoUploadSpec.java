package com.narvii.photos;

/* loaded from: classes3.dex */
public class VideoUploadSpec {
    public String[] headers;
    public String target;
    public String uri;

    public static Builder builder(String str) {
        return new Builder(str);
    }

    public VideoUploadSpec(String str) {
        this.uri = str;
    }

    public static class Builder {
        VideoUploadSpec spec;

        public Builder(String str) {
            this.spec = new VideoUploadSpec(str);
        }

        public Builder target(String str) {
            this.spec.target = str;
            return this;
        }

        public Builder headers(String[] strArr) {
            this.spec.headers = strArr;
            return this;
        }

        public VideoUploadSpec build() {
            return this.spec;
        }
    }
}
