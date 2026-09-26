package com.google.firebase.perf.network;

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
public final class c extends HttpURLConnection {
    private final g delegate;

    @Override // java.net.URLConnection
    public Object getContent() throws IOException {
        return this.delegate.f();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderField(int i10) {
        return this.delegate.r(i10);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(int i10) {
        this.delegate.S(i10);
    }

    @Override // java.net.URLConnection
    public void addRequestProperty(String str, String str2) {
        this.delegate.a(str, str2);
    }

    @Override // java.net.URLConnection
    public void connect() throws IOException {
        this.delegate.b();
    }

    @Override // java.net.HttpURLConnection
    public void disconnect() {
        this.delegate.c();
    }

    public boolean equals(Object obj) {
        return this.delegate.equals(obj);
    }

    @Override // java.net.URLConnection
    public boolean getAllowUserInteraction() {
        return this.delegate.d();
    }

    @Override // java.net.URLConnection
    public int getConnectTimeout() {
        return this.delegate.e();
    }

    @Override // java.net.URLConnection
    public Object getContent(Class[] clsArr) throws IOException {
        return this.delegate.g(clsArr);
    }

    @Override // java.net.URLConnection
    public String getContentEncoding() {
        return this.delegate.h();
    }

    @Override // java.net.URLConnection
    public int getContentLength() {
        return this.delegate.i();
    }

    @Override // java.net.URLConnection
    public long getContentLengthLong() {
        return this.delegate.j();
    }

    @Override // java.net.URLConnection
    public String getContentType() {
        return this.delegate.k();
    }

    @Override // java.net.URLConnection
    public long getDate() {
        return this.delegate.l();
    }

    @Override // java.net.URLConnection
    public boolean getDefaultUseCaches() {
        return this.delegate.m();
    }

    @Override // java.net.URLConnection
    public boolean getDoInput() {
        return this.delegate.n();
    }

    @Override // java.net.URLConnection
    public boolean getDoOutput() {
        return this.delegate.o();
    }

    @Override // java.net.HttpURLConnection
    public InputStream getErrorStream() {
        return this.delegate.p();
    }

    @Override // java.net.URLConnection
    public long getExpiration() {
        return this.delegate.q();
    }

    @Override // java.net.URLConnection
    public String getHeaderField(String str) {
        return this.delegate.s(str);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public long getHeaderFieldDate(String str, long j6) {
        return this.delegate.t(str, j6);
    }

    @Override // java.net.URLConnection
    public int getHeaderFieldInt(String str, int i10) {
        return this.delegate.u(str, i10);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderFieldKey(int i10) {
        return this.delegate.v(i10);
    }

    @Override // java.net.URLConnection
    public long getHeaderFieldLong(String str, long j6) {
        return this.delegate.w(str, j6);
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getHeaderFields() {
        return this.delegate.x();
    }

    @Override // java.net.URLConnection
    public long getIfModifiedSince() {
        return this.delegate.y();
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() throws IOException {
        return this.delegate.z();
    }

    @Override // java.net.HttpURLConnection
    public boolean getInstanceFollowRedirects() {
        return this.delegate.A();
    }

    @Override // java.net.URLConnection
    public long getLastModified() {
        return this.delegate.B();
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() throws IOException {
        return this.delegate.C();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public Permission getPermission() throws IOException {
        return this.delegate.D();
    }

    @Override // java.net.URLConnection
    public int getReadTimeout() {
        return this.delegate.E();
    }

    @Override // java.net.HttpURLConnection
    public String getRequestMethod() {
        return this.delegate.F();
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getRequestProperties() {
        return this.delegate.G();
    }

    @Override // java.net.URLConnection
    public String getRequestProperty(String str) {
        return this.delegate.H(str);
    }

    @Override // java.net.HttpURLConnection
    public int getResponseCode() throws IOException {
        return this.delegate.I();
    }

    @Override // java.net.HttpURLConnection
    public String getResponseMessage() throws IOException {
        return this.delegate.J();
    }

    @Override // java.net.URLConnection
    public URL getURL() {
        return this.delegate.K();
    }

    @Override // java.net.URLConnection
    public boolean getUseCaches() {
        return this.delegate.L();
    }

    public int hashCode() {
        return this.delegate.hashCode();
    }

    @Override // java.net.URLConnection
    public void setAllowUserInteraction(boolean z6) {
        this.delegate.M(z6);
    }

    @Override // java.net.HttpURLConnection
    public void setChunkedStreamingMode(int i10) {
        this.delegate.N(i10);
    }

    @Override // java.net.URLConnection
    public void setConnectTimeout(int i10) {
        this.delegate.O(i10);
    }

    @Override // java.net.URLConnection
    public void setDefaultUseCaches(boolean z6) {
        this.delegate.P(z6);
    }

    @Override // java.net.URLConnection
    public void setDoInput(boolean z6) {
        this.delegate.Q(z6);
    }

    @Override // java.net.URLConnection
    public void setDoOutput(boolean z6) {
        this.delegate.R(z6);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(long j6) {
        this.delegate.T(j6);
    }

    @Override // java.net.URLConnection
    public void setIfModifiedSince(long j6) {
        this.delegate.U(j6);
    }

    @Override // java.net.HttpURLConnection
    public void setInstanceFollowRedirects(boolean z6) {
        this.delegate.V(z6);
    }

    @Override // java.net.URLConnection
    public void setReadTimeout(int i10) {
        this.delegate.W(i10);
    }

    @Override // java.net.HttpURLConnection
    public void setRequestMethod(String str) throws ProtocolException {
        this.delegate.X(str);
    }

    @Override // java.net.URLConnection
    public void setRequestProperty(String str, String str2) {
        this.delegate.Y(str, str2);
    }

    @Override // java.net.URLConnection
    public void setUseCaches(boolean z6) {
        this.delegate.Z(z6);
    }

    @Override // java.net.URLConnection
    public String toString() {
        return this.delegate.toString();
    }

    @Override // java.net.HttpURLConnection
    public boolean usingProxy() {
        return this.delegate.b0();
    }

    c(HttpURLConnection httpURLConnection, Timer timer, com.google.firebase.perf.metrics.h hVar) {
        super(httpURLConnection.getURL());
        this.delegate = new g(httpURLConnection, timer, hVar);
    }
}
