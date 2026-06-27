package com.airbnb.lottie.model;

import android.content.res.Resources;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.OnCompositionLoadedListener;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class JsonCompositionLoader extends CompositionLoader<JSONObject> {
    private final OnCompositionLoadedListener loadedListener;
    private final Resources res;

    public JsonCompositionLoader(Resources resources, OnCompositionLoadedListener onCompositionLoadedListener) {
        this.res = resources;
        this.loadedListener = onCompositionLoadedListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public LottieComposition doInBackground(JSONObject... jSONObjectArr) {
        return LottieComposition.Factory.fromJsonSync(this.res, jSONObjectArr[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(LottieComposition lottieComposition) {
        this.loadedListener.onCompositionLoaded(lottieComposition);
    }
}
