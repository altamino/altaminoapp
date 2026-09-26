package androidx.media3.datasource.cache;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public class ContentMetadataMutations {
    private final Map<String, Object> editedValues = new HashMap();
    private final List<String> removedValues = new ArrayList();

    private ContentMetadataMutations a(String str, Object obj) {
        this.editedValues.put((String) Assertions.e(str), Assertions.e(obj));
        this.removedValues.remove(str);
        return this;
    }

    public static ContentMetadataMutations g(ContentMetadataMutations contentMetadataMutations, long j6) {
        return contentMetadataMutations.e(ContentMetadata.KEY_CONTENT_LENGTH, j6);
    }

    public static ContentMetadataMutations h(ContentMetadataMutations contentMetadataMutations, @Nullable Uri uri) {
        return uri == null ? contentMetadataMutations.d(ContentMetadata.KEY_REDIRECTED_URI) : contentMetadataMutations.f(ContentMetadata.KEY_REDIRECTED_URI, uri.toString());
    }

    public Map<String, Object> b() {
        HashMap map = new HashMap(this.editedValues);
        for (Map.Entry entry : map.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                entry.setValue(Arrays.copyOf(bArr, bArr.length));
            }
        }
        return Collections.unmodifiableMap(map);
    }

    public List<String> c() {
        return Collections.unmodifiableList(new ArrayList(this.removedValues));
    }

    public ContentMetadataMutations d(String str) {
        this.removedValues.add(str);
        this.editedValues.remove(str);
        return this;
    }

    public ContentMetadataMutations e(String str, long j6) {
        return a(str, Long.valueOf(j6));
    }

    public ContentMetadataMutations f(String str, String str2) {
        return a(str, str2);
    }
}
