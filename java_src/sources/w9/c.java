package w9;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class c implements d {
    private static final List EMPTY_LIST = Collections.unmodifiableList(new ArrayList());
    private byte[] content;
    private List headers;
    private String type;

    public c(String str, List list, byte[] bArr) {
        this.type = str;
        this.headers = Collections.unmodifiableList(list);
        this.content = bArr;
    }

    @Override // w9.d
    public c a() throws a {
        return this;
    }

    public byte[] b() {
        return this.content;
    }

    public List c() {
        return this.headers;
    }

    public String d() {
        return this.type;
    }

    public c(String str, byte[] bArr) {
        this(str, EMPTY_LIST, bArr);
    }
}
