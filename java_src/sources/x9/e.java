package x9;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class e implements Serializable {
    private final a infoType;
    private final String name;
    private final int serviceId;
    private List<c> thumbnails = Collections.emptyList();
    private final String url;

    public enum a {
        STREAM,
        PLAYLIST,
        CHANNEL,
        COMMENT
    }

    public a a() {
        return this.infoType;
    }

    public String b() {
        return this.name;
    }

    public int c() {
        return this.serviceId;
    }

    public List<c> d() {
        return this.thumbnails;
    }

    public String e() {
        return this.url;
    }

    public void f(List<c> list) {
        this.thumbnails = list;
    }

    public e(a aVar, int i10, String str, String str2) {
        this.infoType = aVar;
        this.serviceId = i10;
        this.url = str;
        this.name = str2;
    }

    public String toString() {
        return getClass().getSimpleName() + "[url=\"" + this.url + "\", name=\"" + this.name + "\"]";
    }
}
