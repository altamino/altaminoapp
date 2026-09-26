package androidx.media3.datasource;

import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;
import com.google.common.base.p;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.net.SocketTimeoutException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface HttpDataSource extends DataSource {

    @UnstableApi
    public static final p<String> REJECT_PAYWALL_TYPES = new p() { // from class: androidx.media3.datasource.e
        @Override // com.google.common.base.p
        public final boolean apply(Object obj) {
            return f.a((String) obj);
        }
    };

    @UnstableApi
    public static abstract class BaseFactory implements Factory {
        private final RequestProperties defaultRequestProperties = new RequestProperties();

        protected abstract HttpDataSource b(RequestProperties requestProperties);

        @Override // androidx.media3.datasource.DataSource.Factory
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HttpDataSource createDataSource() {
            return b(this.defaultRequestProperties);
        }
    }

    public static final class CleartextNotPermittedException extends HttpDataSourceException {
        @UnstableApi
        public CleartextNotPermittedException(IOException iOException, DataSpec dataSpec) {
            super("Cleartext HTTP traffic not permitted. See https://developer.android.com/guide/topics/media/issues/cleartext-not-permitted", iOException, dataSpec, 2007, 1);
        }
    }

    public interface Factory extends DataSource.Factory {
    }

    public static class HttpDataSourceException extends DataSourceException {
        public static final int TYPE_CLOSE = 3;
        public static final int TYPE_OPEN = 1;
        public static final int TYPE_READ = 2;

        @UnstableApi
        public final DataSpec dataSpec;
        public final int type;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Type {
        }

        @UnstableApi
        @Deprecated
        public HttpDataSourceException(DataSpec dataSpec, int i10) {
            this(dataSpec, 2000, i10);
        }

        private static int b(int i10, int i11) {
            if (i10 == 2000 && i11 == 1) {
                return 2001;
            }
            return i10;
        }

        @UnstableApi
        public HttpDataSourceException(DataSpec dataSpec, int i10, int i11) {
            super(b(i10, i11));
            this.dataSpec = dataSpec;
            this.type = i11;
        }

        @UnstableApi
        @Deprecated
        public HttpDataSourceException(String str, DataSpec dataSpec, int i10) {
            this(str, dataSpec, 2000, i10);
        }

        @UnstableApi
        public static HttpDataSourceException c(IOException iOException, DataSpec dataSpec, int i10) {
            int i11;
            String message = iOException.getMessage();
            if (iOException instanceof SocketTimeoutException) {
                i11 = 2002;
            } else if (iOException instanceof InterruptedIOException) {
                i11 = 1004;
            } else if (message != null && com.google.common.base.c.e(message).matches("cleartext.*not permitted.*")) {
                i11 = 2007;
            } else {
                i11 = 2001;
            }
            if (i11 == 2007) {
                return new CleartextNotPermittedException(iOException, dataSpec);
            }
            return new HttpDataSourceException(iOException, dataSpec, i11, i10);
        }

        @UnstableApi
        public HttpDataSourceException(String str, DataSpec dataSpec, int i10, int i11) {
            super(str, b(i10, i11));
            this.dataSpec = dataSpec;
            this.type = i11;
        }

        @UnstableApi
        @Deprecated
        public HttpDataSourceException(IOException iOException, DataSpec dataSpec, int i10) {
            this(iOException, dataSpec, 2000, i10);
        }

        @UnstableApi
        public HttpDataSourceException(IOException iOException, DataSpec dataSpec, int i10, int i11) {
            super(iOException, b(i10, i11));
            this.dataSpec = dataSpec;
            this.type = i11;
        }

        @UnstableApi
        @Deprecated
        public HttpDataSourceException(String str, IOException iOException, DataSpec dataSpec, int i10) {
            this(str, iOException, dataSpec, 2000, i10);
        }

        @UnstableApi
        public HttpDataSourceException(String str, @Nullable IOException iOException, DataSpec dataSpec, int i10, int i11) {
            super(str, iOException, b(i10, i11));
            this.dataSpec = dataSpec;
            this.type = i11;
        }
    }

    public static final class InvalidContentTypeException extends HttpDataSourceException {
        public final String contentType;

        @UnstableApi
        public InvalidContentTypeException(String str, DataSpec dataSpec) {
            super("Invalid content type: " + str, dataSpec, 2003, 1);
            this.contentType = str;
        }
    }

    public static final class InvalidResponseCodeException extends HttpDataSourceException {

        @UnstableApi
        public final Map<String, List<String>> headerFields;
        public final byte[] responseBody;
        public final int responseCode;

        @Nullable
        public final String responseMessage;

        @UnstableApi
        public InvalidResponseCodeException(int i10, @Nullable String str, @Nullable IOException iOException, Map<String, List<String>> map, DataSpec dataSpec, byte[] bArr) {
            super("Response code: " + i10, iOException, dataSpec, 2004, 1);
            this.responseCode = i10;
            this.responseMessage = str;
            this.headerFields = map;
            this.responseBody = bArr;
        }
    }

    @UnstableApi
    public static final class RequestProperties {
        private final Map<String, String> requestProperties = new HashMap();

        @Nullable
        private Map<String, String> requestPropertiesSnapshot;

        public synchronized Map<String, String> a() {
            try {
                if (this.requestPropertiesSnapshot == null) {
                    this.requestPropertiesSnapshot = Collections.unmodifiableMap(new HashMap(this.requestProperties));
                }
            } catch (Throwable th) {
                throw th;
            }
            return this.requestPropertiesSnapshot;
        }
    }
}
