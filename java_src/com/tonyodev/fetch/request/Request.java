package com.tonyodev.fetch.request;

import android.net.Uri;
import android.os.Environment;
import android.support.v4.util.ArrayMap;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class Request {
    private final String filePath;
    private final Map<String, String> headers;
    private int priority;
    private final String url;

    public Request(String str) {
        this(str, generateFileName(str));
    }

    public Request(String str, String str2) {
        this(str, generateDirectoryName(), str2);
    }

    public Request(String str, String str2, String str3) {
        this.headers = new ArrayMap();
        this.priority = 600;
        if (str == null || str.isEmpty()) {
            throw new NullPointerException("Url cannot be null or empty");
        }
        if (str2 == null || str2.isEmpty()) {
            throw new NullPointerException("directory path cannot be null or empty");
        }
        if (str3 == null || str3.isEmpty()) {
            throw new NullPointerException("File Name cannot be null or empty");
        }
        String scheme = Uri.parse(str).getScheme();
        if (scheme == null || (!scheme.equals("http") && !scheme.equals("https"))) {
            throw new IllegalArgumentException("Can only download HTTP/HTTPS URIs: " + str);
        }
        this.url = str;
        this.filePath = cleanFilePath(generateFilePath(str2, str3));
    }

    public String getUrl() {
        return this.url;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public List<Header> getHeaders() {
        ArrayList arrayList = new ArrayList(this.headers.size());
        for (String str : this.headers.keySet()) {
            arrayList.add(new Header(str, this.headers.get(str)));
        }
        return arrayList;
    }

    public int getPriority() {
        return this.priority;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<Header> it = getHeaders().iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            sb.append(",");
        }
        if (this.headers.size() > 0) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return "{url:" + this.url + " ,filePath:" + this.filePath + ",headers:{" + sb.toString() + "},priority:" + this.priority + "}";
    }

    private static String generateFileName(String str) {
        if (str == null) {
            throw new NullPointerException("Url cannot be null");
        }
        return new Date().getTime() + "_" + Uri.parse(str).getLastPathSegment();
    }

    private static String generateDirectoryName() {
        return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).toString();
    }

    private static String generateFilePath(String str, String str2) {
        if (Uri.parse(str2).getPathSegments().size() != 1) {
            return str2;
        }
        return str + "/" + str2;
    }

    private static String cleanFilePath(String str) {
        return str.replace("//", "/");
    }
}
