package com.airbnb.lottie.model;

import android.os.AsyncTask;
import com.airbnb.lottie.Cancellable;
import com.airbnb.lottie.LottieComposition;

/* loaded from: classes.dex */
public abstract class CompositionLoader<Params> extends AsyncTask<Params, Void, LottieComposition> implements Cancellable {
    @Override // com.airbnb.lottie.Cancellable
    public void cancel() {
        cancel(true);
    }
}
