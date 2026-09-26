package com.bumptech.glide.load.resource.gif;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.v;
import com.bumptech.glide.load.l;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public class d implements l<c> {
    private static final String TAG = "GifEncoder";

    @Override // com.bumptech.glide.load.l
    @NonNull
    public com.bumptech.glide.load.c b(@NonNull com.bumptech.glide.load.i iVar) {
        return com.bumptech.glide.load.c.SOURCE;
    }

    @Override // com.bumptech.glide.load.d
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean a(@NonNull v<c> vVar, @NonNull File file, @NonNull com.bumptech.glide.load.i iVar) throws Throwable {
        try {
            com.bumptech.glide.util.a.e(vVar.get().c(), file);
            return true;
        } catch (IOException e) {
            if (Log.isLoggable(TAG, 5)) {
                Log.w(TAG, "Failed to encode GIF drawable data", e);
            }
            return false;
        }
    }
}
