package com.bumptech.glide.load.model;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.InputStream;

/* JADX INFO: loaded from: classes8.dex */
public class s<Data> implements n<Integer, Data> {
    private static final String TAG = "ResourceLoader";
    private final Resources resources;
    private final n<Uri, Data> uriLoader;

    public static final class a implements o<Integer, AssetFileDescriptor> {
        private final Resources resources;

        @Override // com.bumptech.glide.load.model.o
        public n<Integer, AssetFileDescriptor> b(r rVar) {
            return new s(this.resources, rVar.d(Uri.class, AssetFileDescriptor.class));
        }

        public a(Resources resources) {
            this.resources = resources;
        }
    }

    public static class b implements o<Integer, ParcelFileDescriptor> {
        private final Resources resources;

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Integer, ParcelFileDescriptor> b(r rVar) {
            return new s(this.resources, rVar.d(Uri.class, ParcelFileDescriptor.class));
        }

        public b(Resources resources) {
            this.resources = resources;
        }
    }

    public static class c implements o<Integer, InputStream> {
        private final Resources resources;

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Integer, InputStream> b(r rVar) {
            return new s(this.resources, rVar.d(Uri.class, InputStream.class));
        }

        public c(Resources resources) {
            this.resources = resources;
        }
    }

    public static class d implements o<Integer, Uri> {
        private final Resources resources;

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Integer, Uri> b(r rVar) {
            return new s(this.resources, v.c());
        }

        public d(Resources resources) {
            this.resources = resources;
        }
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public boolean b(@NonNull Integer num) {
        return true;
    }

    @Nullable
    private Uri d(Integer num) {
        try {
            return Uri.parse("android.resource://" + this.resources.getResourcePackageName(num.intValue()) + '/' + this.resources.getResourceTypeName(num.intValue()) + '/' + this.resources.getResourceEntryName(num.intValue()));
        } catch (Resources.NotFoundException e) {
            if (!Log.isLoggable(TAG, 5)) {
                return null;
            }
            Log.w(TAG, "Received invalid resource id: " + num, e);
            return null;
        }
    }

    public s(Resources resources, n<Uri, Data> nVar) {
        this.resources = resources;
        this.uriLoader = nVar;
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<Data> a(@NonNull Integer num, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) {
        Uri uriD = d(num);
        if (uriD == null) {
            return null;
        }
        return this.uriLoader.a(uriD, i10, i11, iVar);
    }
}
