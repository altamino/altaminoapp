package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.AuthFailureError;
import com.android.volley.Cache;
import com.android.volley.ClientError;
import com.android.volley.Header;
import com.android.volley.Network;
import com.android.volley.NetworkError;
import com.android.volley.NetworkResponse;
import com.android.volley.NoConnectionError;
import com.android.volley.Request;
import com.android.volley.RetryPolicy;
import com.android.volley.ServerError;
import com.android.volley.TimeoutError;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes7.dex */
public class BasicNetwork implements Network {
    protected static final boolean DEBUG = VolleyLog.DEBUG;
    private static final int DEFAULT_POOL_SIZE = 4096;
    private static final int SLOW_REQUEST_THRESHOLD_MS = 3000;
    private final BaseHttpStack mBaseHttpStack;

    @Deprecated
    protected final HttpStack mHttpStack;
    protected final ByteArrayPool mPool;

    @Deprecated
    public BasicNetwork(HttpStack httpStack) {
        this(httpStack, new ByteArrayPool(4096));
    }

    @Deprecated
    public BasicNetwork(HttpStack httpStack, ByteArrayPool byteArrayPool) {
        this.mHttpStack = httpStack;
        this.mBaseHttpStack = new AdaptedHttpStack(httpStack);
        this.mPool = byteArrayPool;
    }

    private static List<Header> combineHeaders(List<Header> list, Cache.Entry entry) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            Iterator<Header> it = list.iterator();
            while (it.hasNext()) {
                treeSet.add(it.next().getName());
            }
        }
        ArrayList arrayList = new ArrayList(list);
        List<Header> list2 = entry.allResponseHeaders;
        if (list2 != null) {
            if (!list2.isEmpty()) {
                for (Header header : entry.allResponseHeaders) {
                    if (!treeSet.contains(header.getName())) {
                        arrayList.add(header);
                    }
                }
            }
        } else if (!entry.responseHeaders.isEmpty()) {
            for (Map.Entry<String, String> entry2 : entry.responseHeaders.entrySet()) {
                if (!treeSet.contains(entry2.getKey())) {
                    arrayList.add(new Header(entry2.getKey(), entry2.getValue()));
                }
            }
        }
        return arrayList;
    }

    @Deprecated
    protected static Map<String, String> convertHeaders(Header[] headerArr) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (int i10 = 0; i10 < headerArr.length; i10++) {
            treeMap.put(headerArr[i10].getName(), headerArr[i10].getValue());
        }
        return treeMap;
    }

    private Map<String, String> getCacheHeaders(Cache.Entry entry) {
        if (entry == null) {
            return Collections.emptyMap();
        }
        HashMap map = new HashMap();
        String str = entry.etag;
        if (str != null) {
            map.put("If-None-Match", str);
        }
        long j6 = entry.lastModified;
        if (j6 > 0) {
            map.put("If-Modified-Since", HttpHeaderParser.formatEpochAsRfc1123(j6));
        }
        return map;
    }

    private byte[] inputStreamToBytes(InputStream inputStream, int i10) throws ServerError, IOException {
        PoolingByteArrayOutputStream poolingByteArrayOutputStream = new PoolingByteArrayOutputStream(this.mPool, i10);
        try {
            if (inputStream == null) {
                throw new ServerError();
            }
            byte[] buf = this.mPool.getBuf(1024);
            while (true) {
                int i11 = inputStream.read(buf);
                if (i11 == -1) {
                    break;
                }
                poolingByteArrayOutputStream.write(buf, 0, i11);
            }
            byte[] byteArray = poolingByteArrayOutputStream.toByteArray();
            try {
                inputStream.close();
            } catch (IOException unused) {
                VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
            }
            this.mPool.returnBuf(buf);
            poolingByteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                    VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.mPool.returnBuf(null);
            poolingByteArrayOutputStream.close();
            throw th;
        }
    }

    private void logSlowRequests(long j6, Request<?> request, byte[] bArr, int i10) {
        if (DEBUG || j6 > 3000) {
            Object[] objArr = new Object[5];
            objArr[0] = request;
            objArr[1] = Long.valueOf(j6);
            objArr[2] = bArr != null ? Integer.valueOf(bArr.length) : "null";
            objArr[3] = Integer.valueOf(i10);
            objArr[4] = Integer.valueOf(request.getRetryPolicy().getCurrentRetryCount());
            VolleyLog.d("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16, types: [com.android.volley.toolbox.BasicNetwork] */
    @Override // com.android.volley.Network
    public NetworkResponse performRequest(Request<?> request) throws VolleyError {
        ?? r19;
        byte[] bArr;
        byte[] bArrInputStreamToBytes;
        ?? r1;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            List<Header> listEmptyList = Collections.emptyList();
            HttpResponse httpResponse = null;
            try {
                try {
                    HttpResponse httpResponseExecuteRequest = this.mBaseHttpStack.executeRequest(request, getCacheHeaders(request.getCacheEntry()));
                    try {
                        int statusCode = httpResponseExecuteRequest.getStatusCode();
                        List<Header> headers = httpResponseExecuteRequest.getHeaders();
                        if (statusCode == 304) {
                            Cache.Entry cacheEntry = request.getCacheEntry();
                            return cacheEntry == null ? new NetworkResponse(304, (byte[]) null, true, SystemClock.elapsedRealtime() - jElapsedRealtime, headers) : new NetworkResponse(304, cacheEntry.data, true, SystemClock.elapsedRealtime() - jElapsedRealtime, combineHeaders(headers, cacheEntry));
                        }
                        try {
                            InputStream content = httpResponseExecuteRequest.getContent();
                            if (content != null) {
                                try {
                                    bArrInputStreamToBytes = inputStreamToBytes(content, httpResponseExecuteRequest.getContentLength());
                                } catch (IOException e) {
                                    e = e;
                                    bArr = null;
                                    httpResponse = httpResponseExecuteRequest;
                                    r19 = headers;
                                }
                            } else {
                                bArrInputStreamToBytes = new byte[0];
                            }
                            byte[] bArr2 = bArrInputStreamToBytes;
                            try {
                                r1 = this;
                                r1.logSlowRequests(SystemClock.elapsedRealtime() - jElapsedRealtime, request, bArr2, statusCode);
                                try {
                                    if (statusCode < 200 || statusCode > 299) {
                                        throw new IOException();
                                    }
                                    return new NetworkResponse(statusCode, bArr2, false, SystemClock.elapsedRealtime() - jElapsedRealtime, headers);
                                } catch (IOException e2) {
                                    e = e2;
                                }
                            } catch (IOException e6) {
                                e = e6;
                                r1 = headers;
                            }
                            r19 = r1;
                            httpResponse = httpResponseExecuteRequest;
                            bArr = bArr2;
                        } catch (IOException e7) {
                            e = e7;
                            listEmptyList = headers;
                            r19 = listEmptyList;
                            bArr = null;
                            httpResponse = httpResponseExecuteRequest;
                        }
                        if (httpResponse == null) {
                            throw new NoConnectionError(e);
                        }
                        int statusCode2 = httpResponse.getStatusCode();
                        VolleyLog.e("Unexpected response code %d for %s", Integer.valueOf(statusCode2), request.getUrl());
                        if (bArr != null) {
                            NetworkResponse networkResponse = new NetworkResponse(statusCode2, bArr, false, SystemClock.elapsedRealtime() - jElapsedRealtime, (List<Header>) r19);
                            if (statusCode2 == 401 || statusCode2 == 403) {
                                attemptRetryOnException("auth", request, new AuthFailureError(networkResponse));
                            } else {
                                if (statusCode2 >= 400 && statusCode2 <= 499) {
                                    throw new ClientError(networkResponse);
                                }
                                if (statusCode2 < 500 || statusCode2 > 599) {
                                    throw new ServerError(networkResponse);
                                }
                                if (!request.shouldRetryServerErrors()) {
                                    throw new ServerError(networkResponse);
                                }
                                attemptRetryOnException("server", request, new ServerError(networkResponse));
                            }
                        } else {
                            attemptRetryOnException("network", request, new NetworkError());
                        }
                    } catch (IOException e10) {
                        e = e10;
                    }
                } catch (IOException e11) {
                    e = e11;
                    r19 = listEmptyList;
                    bArr = null;
                }
            } catch (MalformedURLException e12) {
                throw new RuntimeException("Bad URL " + request.getUrl(), e12);
            } catch (SocketTimeoutException unused) {
                attemptRetryOnException("socket", request, new TimeoutError());
            }
        }
    }

    private static void attemptRetryOnException(String str, Request<?> request, VolleyError volleyError) throws VolleyError {
        RetryPolicy retryPolicy = request.getRetryPolicy();
        int timeoutMs = request.getTimeoutMs();
        try {
            retryPolicy.retry(volleyError);
            request.addMarker(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(timeoutMs)));
        } catch (VolleyError e) {
            request.addMarker(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(timeoutMs)));
            throw e;
        }
    }

    protected void logError(String str, String str2, long j6) {
        VolleyLog.v("HTTP ERROR(%s) %d ms to fetch %s", str, Long.valueOf(SystemClock.elapsedRealtime() - j6), str2);
    }

    public BasicNetwork(BaseHttpStack baseHttpStack) {
        this(baseHttpStack, new ByteArrayPool(4096));
    }

    public BasicNetwork(BaseHttpStack baseHttpStack, ByteArrayPool byteArrayPool) {
        this.mBaseHttpStack = baseHttpStack;
        this.mHttpStack = baseHttpStack;
        this.mPool = byteArrayPool;
    }
}
