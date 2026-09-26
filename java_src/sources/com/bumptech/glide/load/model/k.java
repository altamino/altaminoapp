package com.bumptech.glide.load.model;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.FileNotFoundException;

/* JADX INFO: loaded from: classes8.dex */
public final class k implements n<Uri, File> {
    private final Context context;

    public static final class a implements o<Uri, File> {
        private final Context context;

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Uri, File> b(r rVar) {
            return new k(this.context);
        }

        public a(Context context) {
            this.context = context;
        }
    }

    private static class b implements com.bumptech.glide.load.data.d<File> {
        private static final String[] PROJECTION = {"_data"};
        private final Context context;
        private final Uri uri;

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<File> a() {
            return File.class;
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public com.bumptech.glide.load.a c() {
            return com.bumptech.glide.load.a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public void d(@NonNull com.bumptech.glide.f fVar, @NonNull com.bumptech.glide.load.data.d.a<? super File> aVar) {
            Cursor cursorQuery = this.context.getContentResolver().query(this.uri, PROJECTION, null, null, null);
            String string = null;
            if (cursorQuery != null) {
                try {
                    string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data")) : null;
                    cursorQuery.close();
                } catch (Throwable th) {
                    cursorQuery.close();
                    throw th;
                }
            }
            if (!TextUtils.isEmpty(string)) {
                aVar.e(new File(string));
                return;
            }
            aVar.f(new FileNotFoundException("Failed to find file path for: " + this.uri));
        }

        b(Context context, Uri uri) {
            this.context = context;
            this.uri = uri;
        }
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<File> a(@NonNull Uri uri, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) {
        return new n.a<>(new z0.b(uri), new b(this.context, uri));
    }

    public k(Context context) {
        this.context = context;
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(@NonNull Uri uri) {
        return t0.b.b(uri);
    }
}
