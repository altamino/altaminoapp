package com.google.firebase.perf.network;

import android.os.Build;
import androidx.browser.trusted.sharing.ShareTarget;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.security.Permission;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes11.dex */
class g {
    private static final String USER_AGENT_PROPERTY = "User-Agent";
    private static final y4.a logger = y4.a.e();
    private final HttpURLConnection httpUrlConnection;
    private final com.google.firebase.perf.metrics.h networkMetricBuilder;
    private long timeRequestedInMicros = -1;
    private long timeToResponseInitiatedInMicros = -1;
    private final Timer timer;

    private void a0() {
        if (this.timeRequestedInMicros == -1) {
            this.timer.l();
            long jI = this.timer.i();
            this.timeRequestedInMicros = jI;
            this.networkMetricBuilder.t(jI);
        }
        String strF = F();
        if (strF != null) {
            this.networkMetricBuilder.n(strF);
        } else if (o()) {
            this.networkMetricBuilder.n("POST");
        } else {
            this.networkMetricBuilder.n(ShareTarget.METHOD_GET);
        }
    }

    public boolean A() {
        return this.httpUrlConnection.getInstanceFollowRedirects();
    }

    public OutputStream C() throws IOException {
        try {
            OutputStream outputStream = this.httpUrlConnection.getOutputStream();
            return outputStream != null ? new b(outputStream, this.networkMetricBuilder, this.timer) : outputStream;
        } catch (IOException e) {
            this.networkMetricBuilder.x(this.timer.g());
            j.d(this.networkMetricBuilder);
            throw e;
        }
    }

    public Permission D() throws IOException {
        try {
            return this.httpUrlConnection.getPermission();
        } catch (IOException e) {
            this.networkMetricBuilder.x(this.timer.g());
            j.d(this.networkMetricBuilder);
            throw e;
        }
    }

    public int E() {
        return this.httpUrlConnection.getReadTimeout();
    }

    public String F() {
        return this.httpUrlConnection.getRequestMethod();
    }

    public Map<String, List<String>> G() {
        return this.httpUrlConnection.getRequestProperties();
    }

    public String H(String str) {
        return this.httpUrlConnection.getRequestProperty(str);
    }

    public URL K() {
        return this.httpUrlConnection.getURL();
    }

    public boolean L() {
        return this.httpUrlConnection.getUseCaches();
    }

    public void M(boolean z6) {
        this.httpUrlConnection.setAllowUserInteraction(z6);
    }

    public void N(int i10) {
        this.httpUrlConnection.setChunkedStreamingMode(i10);
    }

    public void O(int i10) {
        this.httpUrlConnection.setConnectTimeout(i10);
    }

    public void P(boolean z6) {
        this.httpUrlConnection.setDefaultUseCaches(z6);
    }

    public void Q(boolean z6) {
        this.httpUrlConnection.setDoInput(z6);
    }

    public void R(boolean z6) {
        this.httpUrlConnection.setDoOutput(z6);
    }

    public void S(int i10) {
        this.httpUrlConnection.setFixedLengthStreamingMode(i10);
    }

    public void T(long j6) {
        this.httpUrlConnection.setFixedLengthStreamingMode(j6);
    }

    public void U(long j6) {
        this.httpUrlConnection.setIfModifiedSince(j6);
    }

    public void V(boolean z6) {
        this.httpUrlConnection.setInstanceFollowRedirects(z6);
    }

    public void W(int i10) {
        this.httpUrlConnection.setReadTimeout(i10);
    }

    public void X(String str) throws ProtocolException {
        this.httpUrlConnection.setRequestMethod(str);
    }

    public void Y(String str, String str2) {
        if (USER_AGENT_PROPERTY.equalsIgnoreCase(str)) {
            this.networkMetricBuilder.A(str2);
        }
        this.httpUrlConnection.setRequestProperty(str, str2);
    }

    public void Z(boolean z6) {
        this.httpUrlConnection.setUseCaches(z6);
    }

    public void a(String str, String str2) {
        this.httpUrlConnection.addRequestProperty(str, str2);
    }

    public void b() throws IOException {
        if (this.timeRequestedInMicros == -1) {
            this.timer.l();
            long jI = this.timer.i();
            this.timeRequestedInMicros = jI;
            this.networkMetricBuilder.t(jI);
        }
        try {
            this.httpUrlConnection.connect();
        } catch (IOException e) {
            this.networkMetricBuilder.x(this.timer.g());
            j.d(this.networkMetricBuilder);
            throw e;
        }
    }

    public boolean b0() {
        return this.httpUrlConnection.usingProxy();
    }

    public void c() {
        this.networkMetricBuilder.x(this.timer.g());
        this.networkMetricBuilder.c();
        this.httpUrlConnection.disconnect();
    }

    public boolean d() {
        return this.httpUrlConnection.getAllowUserInteraction();
    }

    public int e() {
        return this.httpUrlConnection.getConnectTimeout();
    }

    public boolean equals(Object obj) {
        return this.httpUrlConnection.equals(obj);
    }

    public int hashCode() {
        return this.httpUrlConnection.hashCode();
    }

    public boolean m() {
        return this.httpUrlConnection.getDefaultUseCaches();
    }

    public boolean n() {
        return this.httpUrlConnection.getDoInput();
    }

    public boolean o() {
        return this.httpUrlConnection.getDoOutput();
    }

    public String toString() {
        return this.httpUrlConnection.toString();
    }

    public long y() {
        return this.httpUrlConnection.getIfModifiedSince();
    }

    public g(HttpURLConnection httpURLConnection, Timer timer, com.google.firebase.perf.metrics.h hVar) {
        this.httpUrlConnection = httpURLConnection;
        this.networkMetricBuilder = hVar;
        this.timer = timer;
        hVar.z(httpURLConnection.getURL().toString());
    }

    public long B() {
        a0();
        return this.httpUrlConnection.getLastModified();
    }

    public int I() throws IOException {
        a0();
        if (this.timeToResponseInitiatedInMicros == -1) {
            long jG = this.timer.g();
            this.timeToResponseInitiatedInMicros = jG;
            this.networkMetricBuilder.y(jG);
        }
        try {
            int responseCode = this.httpUrlConnection.getResponseCode();
            this.networkMetricBuilder.o(responseCode);
            return responseCode;
        } catch (IOException e) {
            this.networkMetricBuilder.x(this.timer.g());
            j.d(this.networkMetricBuilder);
            throw e;
        }
    }

    public String J() throws IOException {
        a0();
        if (this.timeToResponseInitiatedInMicros == -1) {
            long jG = this.timer.g();
            this.timeToResponseInitiatedInMicros = jG;
            this.networkMetricBuilder.y(jG);
        }
        try {
            String responseMessage = this.httpUrlConnection.getResponseMessage();
            this.networkMetricBuilder.o(this.httpUrlConnection.getResponseCode());
            return responseMessage;
        } catch (IOException e) {
            this.networkMetricBuilder.x(this.timer.g());
            j.d(this.networkMetricBuilder);
            throw e;
        }
    }

    public Object f() throws IOException {
        a0();
        this.networkMetricBuilder.o(this.httpUrlConnection.getResponseCode());
        try {
            Object content = this.httpUrlConnection.getContent();
            if (content instanceof InputStream) {
                this.networkMetricBuilder.u(this.httpUrlConnection.getContentType());
                return new a((InputStream) content, this.networkMetricBuilder, this.timer);
            }
            this.networkMetricBuilder.u(this.httpUrlConnection.getContentType());
            this.networkMetricBuilder.v(this.httpUrlConnection.getContentLength());
            this.networkMetricBuilder.x(this.timer.g());
            this.networkMetricBuilder.c();
            return content;
        } catch (IOException e) {
            this.networkMetricBuilder.x(this.timer.g());
            j.d(this.networkMetricBuilder);
            throw e;
        }
    }

    public Object g(Class[] clsArr) throws IOException {
        a0();
        this.networkMetricBuilder.o(this.httpUrlConnection.getResponseCode());
        try {
            Object content = this.httpUrlConnection.getContent(clsArr);
            if (content instanceof InputStream) {
                this.networkMetricBuilder.u(this.httpUrlConnection.getContentType());
                return new a((InputStream) content, this.networkMetricBuilder, this.timer);
            }
            this.networkMetricBuilder.u(this.httpUrlConnection.getContentType());
            this.networkMetricBuilder.v(this.httpUrlConnection.getContentLength());
            this.networkMetricBuilder.x(this.timer.g());
            this.networkMetricBuilder.c();
            return content;
        } catch (IOException e) {
            this.networkMetricBuilder.x(this.timer.g());
            j.d(this.networkMetricBuilder);
            throw e;
        }
    }

    public String h() {
        a0();
        return this.httpUrlConnection.getContentEncoding();
    }

    public int i() {
        a0();
        return this.httpUrlConnection.getContentLength();
    }

    public long j() {
        a0();
        if (Build.VERSION.SDK_INT >= 24) {
            return this.httpUrlConnection.getContentLengthLong();
        }
        return 0L;
    }

    public String k() {
        a0();
        return this.httpUrlConnection.getContentType();
    }

    public long l() {
        a0();
        return this.httpUrlConnection.getDate();
    }

    public InputStream p() {
        a0();
        try {
            this.networkMetricBuilder.o(this.httpUrlConnection.getResponseCode());
        } catch (IOException unused) {
            logger.a("IOException thrown trying to obtain the response code");
        }
        InputStream errorStream = this.httpUrlConnection.getErrorStream();
        if (errorStream != null) {
            return new a(errorStream, this.networkMetricBuilder, this.timer);
        }
        return errorStream;
    }

    public long q() {
        a0();
        return this.httpUrlConnection.getExpiration();
    }

    public String r(int i10) {
        a0();
        return this.httpUrlConnection.getHeaderField(i10);
    }

    public String s(String str) {
        a0();
        return this.httpUrlConnection.getHeaderField(str);
    }

    public long t(String str, long j6) {
        a0();
        return this.httpUrlConnection.getHeaderFieldDate(str, j6);
    }

    public int u(String str, int i10) {
        a0();
        return this.httpUrlConnection.getHeaderFieldInt(str, i10);
    }

    public String v(int i10) {
        a0();
        return this.httpUrlConnection.getHeaderFieldKey(i10);
    }

    public long w(String str, long j6) {
        a0();
        if (Build.VERSION.SDK_INT >= 24) {
            return this.httpUrlConnection.getHeaderFieldLong(str, j6);
        }
        return 0L;
    }

    public Map<String, List<String>> x() {
        a0();
        return this.httpUrlConnection.getHeaderFields();
    }

    public InputStream z() throws IOException {
        a0();
        this.networkMetricBuilder.o(this.httpUrlConnection.getResponseCode());
        this.networkMetricBuilder.u(this.httpUrlConnection.getContentType());
        try {
            InputStream inputStream = this.httpUrlConnection.getInputStream();
            if (inputStream != null) {
                return new a(inputStream, this.networkMetricBuilder, this.timer);
            }
            return inputStream;
        } catch (IOException e) {
            this.networkMetricBuilder.x(this.timer.g());
            j.d(this.networkMetricBuilder);
            throw e;
        }
    }
}
