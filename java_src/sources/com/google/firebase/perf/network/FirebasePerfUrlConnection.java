package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.firebase.perf.transport.k;
import com.google.firebase.perf.util.Timer;
import com.google.firebase.perf.util.m;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes9.dex */
public class FirebasePerfUrlConnection {
    @Keep
    public static Object getContent(URL url) throws IOException {
        return a(new m(url), k.k(), new Timer());
    }

    @Keep
    public static Object getContent(URL url, Class[] clsArr) throws IOException {
        return b(new m(url), clsArr, k.k(), new Timer());
    }

    @Keep
    public static Object instrument(Object obj) throws IOException {
        if (obj instanceof HttpsURLConnection) {
            return new d((HttpsURLConnection) obj, new Timer(), com.google.firebase.perf.metrics.h.e(k.k()));
        }
        return obj instanceof HttpURLConnection ? new c((HttpURLConnection) obj, new Timer(), com.google.firebase.perf.metrics.h.e(k.k())) : obj;
    }

    @Keep
    public static InputStream openStream(URL url) throws IOException {
        return c(new m(url), k.k(), new Timer());
    }

    private FirebasePerfUrlConnection() {
    }

    static Object a(m mVar, k kVar, Timer timer) throws IOException {
        timer.l();
        long jI = timer.i();
        com.google.firebase.perf.metrics.h hVarE = com.google.firebase.perf.metrics.h.e(kVar);
        try {
            URLConnection uRLConnectionA = mVar.a();
            if (uRLConnectionA instanceof HttpsURLConnection) {
                return new d((HttpsURLConnection) uRLConnectionA, timer, hVarE).getContent();
            }
            if (uRLConnectionA instanceof HttpURLConnection) {
                return new c((HttpURLConnection) uRLConnectionA, timer, hVarE).getContent();
            }
            return uRLConnectionA.getContent();
        } catch (IOException e) {
            hVarE.t(jI);
            hVarE.x(timer.g());
            hVarE.z(mVar.toString());
            j.d(hVarE);
            throw e;
        }
    }

    static Object b(m mVar, Class[] clsArr, k kVar, Timer timer) throws IOException {
        timer.l();
        long jI = timer.i();
        com.google.firebase.perf.metrics.h hVarE = com.google.firebase.perf.metrics.h.e(kVar);
        try {
            URLConnection uRLConnectionA = mVar.a();
            if (uRLConnectionA instanceof HttpsURLConnection) {
                return new d((HttpsURLConnection) uRLConnectionA, timer, hVarE).getContent(clsArr);
            }
            if (uRLConnectionA instanceof HttpURLConnection) {
                return new c((HttpURLConnection) uRLConnectionA, timer, hVarE).getContent(clsArr);
            }
            return uRLConnectionA.getContent(clsArr);
        } catch (IOException e) {
            hVarE.t(jI);
            hVarE.x(timer.g());
            hVarE.z(mVar.toString());
            j.d(hVarE);
            throw e;
        }
    }

    static InputStream c(m mVar, k kVar, Timer timer) throws IOException {
        timer.l();
        long jI = timer.i();
        com.google.firebase.perf.metrics.h hVarE = com.google.firebase.perf.metrics.h.e(kVar);
        try {
            URLConnection uRLConnectionA = mVar.a();
            if (uRLConnectionA instanceof HttpsURLConnection) {
                return new d((HttpsURLConnection) uRLConnectionA, timer, hVarE).getInputStream();
            }
            if (uRLConnectionA instanceof HttpURLConnection) {
                return new c((HttpURLConnection) uRLConnectionA, timer, hVarE).getInputStream();
            }
            return uRLConnectionA.getInputStream();
        } catch (IOException e) {
            hVarE.t(jI);
            hVarE.x(timer.g());
            hVarE.z(mVar.toString());
            j.d(hVarE);
            throw e;
        }
    }
}
