package com.airbnb.lottie.model;

import android.content.res.Resources;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.OnCompositionLoadedListener;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class FileCompositionLoader extends CompositionLoader<InputStream> {
    private final OnCompositionLoadedListener loadedListener;
    private final Resources res;

    public FileCompositionLoader(Resources resources, OnCompositionLoadedListener onCompositionLoadedListener) {
        this.res = resources;
        this.loadedListener = onCompositionLoadedListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public LottieComposition doInBackground(InputStream... inputStreamArr) {
        return LottieComposition.Factory.fromInputStream(this.res, inputStreamArr[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(LottieComposition lottieComposition) {
        this.loadedListener.onCompositionLoaded(lottieComposition);
    }
}
