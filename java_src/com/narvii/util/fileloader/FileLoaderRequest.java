package com.narvii.util.fileloader;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FileLoaderRequest.kt */
/* loaded from: classes3.dex */
public final class FileLoaderRequest {
    public static final Companion Companion = new Companion(null);
    private final Companion.Builder builder;

    public FileLoaderRequest(Companion.Builder builder) {
        Intrinsics.checkParameterIsNotNull(builder, "builder");
        this.builder = builder;
    }

    public final Companion.Builder getBuilder() {
        return this.builder;
    }

    public final String getUrl() {
        return this.builder.getUrl();
    }

    public final boolean applyCache() {
        return this.builder.getApplyCache();
    }

    public final boolean applyZipExtract() {
        return this.builder.getApplyZipExtract();
    }

    /* compiled from: FileLoaderRequest.kt */
    public static final class Companion {

        /* compiled from: FileLoaderRequest.kt */
        public static final class Builder {
            private boolean applyCache;
            private boolean applyZipExtract;
            private Object obj;
            private int rev;
            private final String url;

            public Builder(String url) {
                Intrinsics.checkParameterIsNotNull(url, "url");
                this.url = url;
                this.rev = -1;
                this.applyCache = true;
            }

            public final String getUrl() {
                return this.url;
            }

            public final int getRev() {
                return this.rev;
            }

            public final void setRev(int i) {
                this.rev = i;
            }

            public final boolean getApplyCache() {
                return this.applyCache;
            }

            public final void setApplyCache(boolean z) {
                this.applyCache = z;
            }

            public final boolean getApplyZipExtract() {
                return this.applyZipExtract;
            }

            public final void setApplyZipExtract(boolean z) {
                this.applyZipExtract = z;
            }

            public final Object getObj() {
                return this.obj;
            }

            public final void setObj(Object obj) {
                this.obj = obj;
            }

            public final Builder rev(int i) {
                this.rev = i;
                return this;
            }

            public final Builder applyCache(boolean z) {
                this.applyCache = z;
                return this;
            }

            public final Builder applyZipExtract(boolean z) {
                this.applyZipExtract = z;
                return this;
            }

            public final Builder attachObject(Object obj) {
                Intrinsics.checkParameterIsNotNull(obj, "obj");
                this.obj = obj;
                return this;
            }

            public final FileLoaderRequest build() {
                return new FileLoaderRequest(this);
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
