package com.bumptech.glide.load.model;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: loaded from: classes7.dex */
public class u<Data> implements n<String, Data> {
    private final n<Uri, Data> uriLoader;

    public static final class a implements o<String, AssetFileDescriptor> {
        @Override // com.bumptech.glide.load.model.o
        public n<String, AssetFileDescriptor> b(@NonNull r rVar) {
            return new u(rVar.d(Uri.class, AssetFileDescriptor.class));
        }
    }

    public static class b implements o<String, ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<String, ParcelFileDescriptor> b(@NonNull r rVar) {
            return new u(rVar.d(Uri.class, ParcelFileDescriptor.class));
        }
    }

    public static class c implements o<String, InputStream> {
        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<String, InputStream> b(@NonNull r rVar) {
            return new u(rVar.d(Uri.class, InputStream.class));
        }
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(@NonNull String str) {
        return true;
    }

    private static Uri f(String str) {
        return Uri.fromFile(new File(str));
    }

    public u(n<Uri, Data> nVar) {
        this.uriLoader = nVar;
    }

    @Nullable
    private static Uri e(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.charAt(0) == '/') {
            return f(str);
        }
        Uri uri = Uri.parse(str);
        if (uri.getScheme() == null) {
            return f(str);
        }
        return uri;
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<Data> a(@NonNull String str, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) {
        Uri uriE = e(str);
        if (uriE != null && this.uriLoader.b(uriE)) {
            return this.uriLoader.a(uriE, i10, i11, iVar);
        }
        return null;
    }
}
