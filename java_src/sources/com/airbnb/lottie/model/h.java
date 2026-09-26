package com.airbnb.lottie.model;

import android.content.res.Resources;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public final class h extends b<JSONObject> {
    private final com.airbnb.lottie.h loadedListener;
    private final Resources res;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.airbnb.lottie.e doInBackground(JSONObject... jSONObjectArr) {
        return com.airbnb.lottie.e.b.f(this.res, jSONObjectArr[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(com.airbnb.lottie.e eVar) {
        this.loadedListener.a(eVar);
    }

    public h(Resources resources, com.airbnb.lottie.h hVar) {
        this.res = resources;
        this.loadedListener = hVar;
    }
}
