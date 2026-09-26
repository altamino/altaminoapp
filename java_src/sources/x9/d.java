package x9;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public abstract class d implements Serializable {
    private final List<Throwable> errors;
    private final String id;
    private final String name;
    private String originalUrl;
    private final int serviceId;
    private final String url;

    public d(int i10, String str, String str2, String str3, String str4) {
        this.errors = new ArrayList();
        this.serviceId = i10;
        this.id = str;
        this.url = str2;
        this.originalUrl = str3;
        this.name = str4;
    }

    public void a(Collection<Throwable> collection) {
        this.errors.addAll(collection);
    }

    public void b(Throwable th) {
        this.errors.add(th);
    }

    public String toString() {
        String str;
        if (this.url.equals(this.originalUrl)) {
            str = "";
        } else {
            str = " (originalUrl=\"" + this.originalUrl + "\")";
        }
        return getClass().getSimpleName() + "[url=\"" + this.url + "\"" + str + ", name=\"" + this.name + "\"]";
    }

    public d(int i10, org.schabi.newpipe.extractor.linkhandler.a aVar, String str) {
        this(i10, aVar.b(), aVar.d(), aVar.c(), str);
    }
}
