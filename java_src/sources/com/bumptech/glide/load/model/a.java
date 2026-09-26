package com.bumptech.glide.load.model;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import java.io.InputStream;

/* JADX INFO: loaded from: classes8.dex */
public class a<Data> implements n<Uri, Data> {
    private static final String ASSET_PATH_SEGMENT = "android_asset";
    private static final String ASSET_PREFIX = "file:///android_asset/";
    private static final int ASSET_PREFIX_LENGTH = 22;
    private final AssetManager assetManager;
    private final InterfaceC0130a<Data> factory;

    /* JADX INFO: renamed from: com.bumptech.glide.load.model.a$a, reason: collision with other inner class name */
    public interface InterfaceC0130a<Data> {
        com.bumptech.glide.load.data.d<Data> a(AssetManager assetManager, String str);
    }

    public static class b implements o<Uri, ParcelFileDescriptor>, InterfaceC0130a<ParcelFileDescriptor> {
        private final AssetManager assetManager;

        @Override // com.bumptech.glide.load.model.a.InterfaceC0130a
        public com.bumptech.glide.load.data.d<ParcelFileDescriptor> a(AssetManager assetManager, String str) {
            return new com.bumptech.glide.load.data.h(assetManager, str);
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Uri, ParcelFileDescriptor> b(r rVar) {
            return new a(this.assetManager, this);
        }

        public b(AssetManager assetManager) {
            this.assetManager = assetManager;
        }
    }

    public static class c implements o<Uri, InputStream>, InterfaceC0130a<InputStream> {
        private final AssetManager assetManager;

        @Override // com.bumptech.glide.load.model.a.InterfaceC0130a
        public com.bumptech.glide.load.data.d<InputStream> a(AssetManager assetManager, String str) {
            return new com.bumptech.glide.load.data.n(assetManager, str);
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Uri, InputStream> b(r rVar) {
            return new a(this.assetManager, this);
        }

        public c(AssetManager assetManager) {
            this.assetManager = assetManager;
        }
    }

    public a(AssetManager assetManager, InterfaceC0130a<Data> interfaceC0130a) {
        this.assetManager = assetManager;
        this.factory = interfaceC0130a;
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<Data> a(@NonNull Uri uri, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) {
        return new n.a<>(new z0.b(uri), this.factory.a(this.assetManager, uri.toString().substring(ASSET_PREFIX_LENGTH)));
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(@NonNull Uri uri) {
        if (!"file".equals(uri.getScheme()) || uri.getPathSegments().isEmpty() || !"android_asset".equals(uri.getPathSegments().get(0))) {
            return false;
        }
        return true;
    }
}
