package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
public class n extends b<InputStream> {
    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public Class<InputStream> a() {
        return InputStream.class;
    }

    public n(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.load.data.b
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void e(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.load.data.b
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public InputStream f(AssetManager assetManager, String str) throws IOException {
        return assetManager.open(str);
    }
}
