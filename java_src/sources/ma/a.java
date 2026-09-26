package ma;

import java.io.Serializable;

/* JADX INFO: loaded from: classes10.dex */
final class a implements Serializable {
    private final String content;
    private boolean isUrl;
    private final org.schabi.newpipe.extractor.services.youtube.a itagItem;

    String a() {
        return this.content;
    }

    boolean b() {
        return this.isUrl;
    }

    org.schabi.newpipe.extractor.services.youtube.a c() {
        return this.itagItem;
    }

    void d(boolean z6) {
        this.isUrl = z6;
    }

    a(String str, org.schabi.newpipe.extractor.services.youtube.a aVar) {
        this.content = str;
        this.itagItem = aVar;
    }
}
