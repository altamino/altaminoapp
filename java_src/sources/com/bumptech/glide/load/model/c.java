package com.bumptech.glide.load.model;

import android.util.Log;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public class c implements com.bumptech.glide.load.d<ByteBuffer> {
    private static final String TAG = "ByteBufferEncoder";

    @Override // com.bumptech.glide.load.d
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean a(@NonNull ByteBuffer byteBuffer, @NonNull File file, @NonNull com.bumptech.glide.load.i iVar) throws Throwable {
        try {
            com.bumptech.glide.util.a.e(byteBuffer, file);
            return true;
        } catch (IOException e) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Failed to write data", e);
            }
            return false;
        }
    }
}
