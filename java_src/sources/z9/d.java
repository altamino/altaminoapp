package z9;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class d {
    private final String latestUrl;
    private final String responseBody;
    private final int responseCode;
    private final Map<String, List<String>> responseHeaders;
    private final String responseMessage;

    public String b() {
        return this.latestUrl;
    }

    public String c() {
        return this.responseBody;
    }

    public int d() {
        return this.responseCode;
    }

    public String e() {
        return this.responseMessage;
    }

    public String a(String str) {
        for (Map.Entry<String, List<String>> entry : this.responseHeaders.entrySet()) {
            String key = entry.getKey();
            if (key != null && key.equalsIgnoreCase(str) && !entry.getValue().isEmpty()) {
                return entry.getValue().get(0);
            }
        }
        return null;
    }

    public d(int i10, String str, Map<String, List<String>> map, String str2, String str3) {
        this.responseCode = i10;
        this.responseMessage = str;
        this.responseHeaders = map == null ? Collections.emptyMap() : map;
        this.responseBody = str2 == null ? "" : str2;
        this.latestUrl = str3;
    }
}
