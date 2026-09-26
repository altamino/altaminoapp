package z9;

import androidx.browser.trusted.sharing.ShareTarget;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.schabi.newpipe.extractor.localization.i;

/* JADX INFO: loaded from: classes7.dex */
public class b {
    private final byte[] dataToSend;
    private final Map<String, List<String>> headers;
    private final String httpMethod;
    private final i localization;
    private final String url;

    public static final class a {
        private byte[] dataToSend;
        private String httpMethod;
        private i localization;
        private String url;
        private final Map<String, List<String>> headers = new LinkedHashMap();
        private boolean automaticLocalizationHeader = true;

        public a h(String str) {
            this.httpMethod = ShareTarget.METHOD_GET;
            this.url = str;
            return this;
        }

        public a i(String str) {
            this.httpMethod = "HEAD";
            this.url = str;
            return this;
        }

        public a k(i iVar) {
            this.localization = iVar;
            return this;
        }

        public a l(String str, byte[] bArr) {
            this.httpMethod = "POST";
            this.url = str;
            this.dataToSend = bArr;
            return this;
        }

        public b g() {
            return new b(this);
        }

        public a j(Map<String, List<String>> map) {
            this.headers.clear();
            if (map != null) {
                this.headers.putAll(map);
            }
            return this;
        }
    }

    public byte[] a() {
        return this.dataToSend;
    }

    public Map<String, List<String>> c() {
        return this.headers;
    }

    public String d() {
        return this.httpMethod;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.httpMethod.equals(bVar.httpMethod) && this.url.equals(bVar.url) && this.headers.equals(bVar.headers) && Arrays.equals(this.dataToSend, bVar.dataToSend) && Objects.equals(this.localization, bVar.localization);
    }

    public String f() {
        return this.url;
    }

    public int hashCode() {
        return (Objects.hash(this.httpMethod, this.url, this.headers, this.localization) * 31) + Arrays.hashCode(this.dataToSend);
    }

    public b(String str, String str2, Map<String, List<String>> map, byte[] bArr, i iVar, boolean z6) {
        Objects.requireNonNull(str, "Request's httpMethod is null");
        this.httpMethod = str;
        Objects.requireNonNull(str2, "Request's url is null");
        this.url = str2;
        this.dataToSend = bArr;
        this.localization = iVar;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (map != null) {
            linkedHashMap.putAll(map);
        }
        if (z6 && iVar != null) {
            linkedHashMap.putAll(b(iVar));
        }
        this.headers = Collections.unmodifiableMap(linkedHashMap);
    }

    public static Map<String, List<String>> b(i iVar) {
        if (iVar == null) {
            return Collections.emptyMap();
        }
        String strE = iVar.e();
        if (!iVar.d().isEmpty()) {
            strE = iVar.g() + ", " + strE + ";q=0.9";
        }
        return Collections.singletonMap("Accept-Language", Collections.singletonList(strE));
    }

    public static a e() {
        return new a();
    }

    private b(a aVar) {
        this(aVar.httpMethod, aVar.url, aVar.headers, aVar.dataToSend, aVar.localization, aVar.automaticLocalizationHeader);
    }
}
