package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import android.util.Log;
import androidx.annotation.NonNull;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b<T> implements d<T> {
    private static final String TAG = "AssetPathFetcher";
    private final AssetManager assetManager;
    private final String assetPath;
    private T data;

    @Override // com.bumptech.glide.load.data.d
    public void cancel() {
    }

    protected abstract void e(T t5) throws IOException;

    protected abstract T f(AssetManager assetManager, String str) throws IOException;

    @Override // com.bumptech.glide.load.data.d
    public void b() {
        T t5 = this.data;
        if (t5 == null) {
            return;
        }
        try {
            e(t5);
        } catch (IOException unused) {
        }
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public com.bumptech.glide.load.a c() {
        return com.bumptech.glide.load.a.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.d
    public void d(@NonNull com.bumptech.glide.f fVar, @NonNull d.a<? super T> aVar) {
        try {
            T tF = f(this.assetManager, this.assetPath);
            this.data = tF;
            aVar.e(tF);
        } catch (IOException e) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Failed to load data from asset manager", e);
            }
            aVar.f(e);
        }
    }

    public b(AssetManager assetManager, String str) {
        this.assetManager = assetManager;
        this.assetPath = str;
    }
}
