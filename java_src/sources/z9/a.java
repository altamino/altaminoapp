package z9;

import aa.j;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.http.entity.mime.MIME;
import org.schabi.newpipe.extractor.localization.i;
import x9.p;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {
    public abstract d execute(b bVar) throws j, IOException;

    public d get(String str) throws j, IOException {
        return get(str, null, p.c());
    }

    public d head(String str) throws j, IOException {
        return head(str, null);
    }

    public d post(String str, Map<String, List<String>> map, byte[] bArr) throws j, IOException {
        return post(str, map, bArr, p.c());
    }

    public d postWithContentType(String str, Map<String, List<String>> map, byte[] bArr, i iVar, String str2) throws j, IOException {
        HashMap map2 = new HashMap();
        if (map != null) {
            map2.putAll(map);
        }
        map2.put(MIME.CONTENT_TYPE, Collections.singletonList(str2));
        return post(str, map2, bArr, iVar);
    }

    public d postWithContentTypeJson(String str, Map<String, List<String>> map, byte[] bArr, i iVar) throws j, IOException {
        return postWithContentType(str, map, bArr, iVar, "application/json");
    }

    public d get(String str, i iVar) throws j, IOException {
        return get(str, null, iVar);
    }

    public d head(String str, Map<String, List<String>> map) throws j, IOException {
        return execute(b.e().i(str).j(map).g());
    }

    public d post(String str, Map<String, List<String>> map, byte[] bArr, i iVar) throws j, IOException {
        return execute(b.e().l(str, bArr).j(map).k(iVar).g());
    }

    public d postWithContentTypeJson(String str, Map<String, List<String>> map, byte[] bArr) throws j, IOException {
        return postWithContentTypeJson(str, map, bArr, p.c());
    }

    public d get(String str, Map<String, List<String>> map) throws j, IOException {
        return get(str, map, p.c());
    }

    public d get(String str, Map<String, List<String>> map, i iVar) throws j, IOException {
        return execute(b.e().h(str).j(map).k(iVar).g());
    }

    public d postWithContentType(String str, Map<String, List<String>> map, byte[] bArr, String str2) throws j, IOException {
        return postWithContentType(str, map, bArr, p.c(), str2);
    }
}
