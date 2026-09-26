package com.narvii.util.fileloader;

import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class FileLoaderRequest {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final Companion.Builder builder;

    public static final class Companion {

        public static final class Builder {
            private boolean applyCache;
            private boolean applyZipExtract;

            @Nullable
            private Object obj;
            private int rev;

            @NotNull
            private final String url;

            @NotNull
            public final Builder applyCache(boolean z6) {
                this.applyCache = z6;
                return this;
            }

            @NotNull
            public final Builder applyZipExtract(boolean z6) {
                this.applyZipExtract = z6;
                return this;
            }

            @NotNull
            public final Builder attachObject(@NotNull Object obj) {
                t.j(obj, "obj");
                this.obj = obj;
                return this;
            }

            public final boolean getApplyCache() {
                return this.applyCache;
            }

            public final boolean getApplyZipExtract() {
                return this.applyZipExtract;
            }

            @Nullable
            public final Object getObj() {
                return this.obj;
            }

            public final int getRev() {
                return this.rev;
            }

            @NotNull
            public final String getUrl() {
                return this.url;
            }

            @NotNull
            public final Builder rev(int i10) {
                this.rev = i10;
                return this;
            }

            public final void setApplyCache(boolean z6) {
                this.applyCache = z6;
            }

            public final void setApplyZipExtract(boolean z6) {
                this.applyZipExtract = z6;
            }

            public final void setObj(@Nullable Object obj) {
                this.obj = obj;
            }

            public final void setRev(int i10) {
                this.rev = i10;
            }

            @NotNull
            public final FileLoaderRequest build() {
                return new FileLoaderRequest(this);
            }

            public Builder(@NotNull String url) {
                t.j(url, "url");
                this.url = url;
                this.rev = -1;
                this.applyCache = true;
            }
        }

        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @NotNull
    public final Companion.Builder getBuilder() {
        return this.builder;
    }

    public FileLoaderRequest(@NotNull Companion.Builder builder) {
        t.j(builder, "builder");
        this.builder = builder;
    }

    public final boolean applyCache() {
        return this.builder.getApplyCache();
    }

    public final boolean applyZipExtract() {
        return this.builder.getApplyZipExtract();
    }

    @NotNull
    public final String getUrl() {
        return this.builder.getUrl();
    }
}
