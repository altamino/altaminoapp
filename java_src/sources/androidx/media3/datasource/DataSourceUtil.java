package androidx.media3.datasource;

import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;
import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public final class DataSourceUtil {
    public static void a(@Nullable DataSource dataSource) {
        if (dataSource != null) {
            try {
                dataSource.close();
            } catch (IOException unused) {
            }
        }
    }

    private DataSourceUtil() {
    }
}
