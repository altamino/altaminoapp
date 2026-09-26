package androidx.webkit;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import android.webkit.WebResourceResponse;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.core.util.Pair;
import androidx.webkit.internal.AssetHelper;
import com.google.firebase.sessions.settings.c;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class WebViewAssetLoader {
    public static final String DEFAULT_DOMAIN = "appassets.androidplatform.net";
    private static final String TAG = "WebViewAssetLoader";
    private final List<PathMatcher> mMatchers;

    public static final class Builder {
        private String mDomain = WebViewAssetLoader.DEFAULT_DOMAIN;

        @NonNull
        private final List<Pair<String, PathHandler>> mHandlerList = new ArrayList();
        private boolean mHttpAllowed;

        @NonNull
        public Builder c(@NonNull String str) {
            this.mDomain = str;
            return this;
        }

        @NonNull
        public Builder a(@NonNull String str, @NonNull PathHandler pathHandler) {
            this.mHandlerList.add(Pair.a(str, pathHandler));
            return this;
        }

        @NonNull
        public WebViewAssetLoader b() {
            ArrayList arrayList = new ArrayList();
            for (Pair<String, PathHandler> pair : this.mHandlerList) {
                arrayList.add(new PathMatcher(this.mDomain, pair.first, this.mHttpAllowed, pair.second));
            }
            return new WebViewAssetLoader(arrayList);
        }
    }

    public static final class InternalStoragePathHandler implements PathHandler {
        private static final String[] FORBIDDEN_DATA_DIRS = {"app_webview/", "databases/", "lib/", "shared_prefs/", "code_cache/"};

        @NonNull
        private final File mDirectory;

        private boolean b(@NonNull Context context) throws IOException {
            String strA = AssetHelper.a(this.mDirectory);
            String strA2 = AssetHelper.a(context.getCacheDir());
            String strA3 = AssetHelper.a(AssetHelper.c(context));
            if ((!strA.startsWith(strA2) && !strA.startsWith(strA3)) || strA.equals(strA2) || strA.equals(strA3)) {
                return false;
            }
            for (String str : FORBIDDEN_DATA_DIRS) {
                if (strA.startsWith(strA3 + str)) {
                    return false;
                }
            }
            return true;
        }

        @Override // androidx.webkit.WebViewAssetLoader.PathHandler
        @NonNull
        @WorkerThread
        public WebResourceResponse a(@NonNull String str) {
            try {
                File fileB = AssetHelper.b(this.mDirectory, str);
                if (fileB != null) {
                    return new WebResourceResponse(AssetHelper.f(str), null, AssetHelper.i(fileB));
                }
                Log.e(WebViewAssetLoader.TAG, String.format("The requested file: %s is outside the mounted directory: %s", str, this.mDirectory));
                return new WebResourceResponse(null, null, null);
            } catch (IOException e) {
                Log.e(WebViewAssetLoader.TAG, "Error opening the requested path: " + str, e);
            }
        }

        public InternalStoragePathHandler(@NonNull Context context, @NonNull File file) {
            try {
                this.mDirectory = new File(AssetHelper.a(file));
                if (b(context)) {
                    return;
                }
                throw new IllegalArgumentException("The given directory \"" + file + "\" doesn't exist under an allowed app internal storage directory");
            } catch (IOException e) {
                throw new IllegalArgumentException("Failed to resolve the canonical path for the given directory: " + file.getPath(), e);
            }
        }
    }

    public interface PathHandler {
        @Nullable
        @WorkerThread
        WebResourceResponse a(@NonNull String str);
    }

    @VisibleForTesting
    static class PathMatcher {
        static final String HTTPS_SCHEME = "https";
        static final String HTTP_SCHEME = "http";

        @NonNull
        final String mAuthority;

        @NonNull
        final PathHandler mHandler;
        final boolean mHttpEnabled;

        @NonNull
        final String mPath;

        @NonNull
        @WorkerThread
        public String a(@NonNull String str) {
            return str.replaceFirst(this.mPath, "");
        }

        PathMatcher(@NonNull String str, @NonNull String str2, boolean z6, @NonNull PathHandler pathHandler) {
            if (!str2.isEmpty() && str2.charAt(0) == '/') {
                if (str2.endsWith(c.FORWARD_SLASH_STRING)) {
                    this.mAuthority = str;
                    this.mPath = str2;
                    this.mHttpEnabled = z6;
                    this.mHandler = pathHandler;
                    return;
                }
                throw new IllegalArgumentException("Path should end with a slash '/'");
            }
            throw new IllegalArgumentException("Path should start with a slash '/'.");
        }

        @Nullable
        @WorkerThread
        public PathHandler b(@NonNull Uri uri) {
            if (uri.getScheme().equals("http") && !this.mHttpEnabled) {
                return null;
            }
            if ((!uri.getScheme().equals("http") && !uri.getScheme().equals("https")) || !uri.getAuthority().equals(this.mAuthority) || !uri.getPath().startsWith(this.mPath)) {
                return null;
            }
            return this.mHandler;
        }
    }

    public static final class ResourcesPathHandler implements PathHandler {
        private AssetHelper mAssetHelper;

        @Override // androidx.webkit.WebViewAssetLoader.PathHandler
        @Nullable
        @WorkerThread
        public WebResourceResponse a(@NonNull String str) {
            try {
                return new WebResourceResponse(AssetHelper.f(str), null, this.mAssetHelper.j(str));
            } catch (Resources.NotFoundException e) {
                Log.e(WebViewAssetLoader.TAG, "Resource not found from the path: " + str, e);
                return new WebResourceResponse(null, null, null);
            } catch (IOException e2) {
                Log.e(WebViewAssetLoader.TAG, "Error opening resource from the path: " + str, e2);
                return new WebResourceResponse(null, null, null);
            }
        }

        public ResourcesPathHandler(@NonNull Context context) {
            this.mAssetHelper = new AssetHelper(context);
        }
    }

    public static final class AssetsPathHandler implements PathHandler {
        private AssetHelper mAssetHelper;

        @Override // androidx.webkit.WebViewAssetLoader.PathHandler
        @Nullable
        @WorkerThread
        public WebResourceResponse a(@NonNull String str) {
            try {
                return new WebResourceResponse(AssetHelper.f(str), null, this.mAssetHelper.h(str));
            } catch (IOException e) {
                Log.e(WebViewAssetLoader.TAG, "Error opening asset path: " + str, e);
                return new WebResourceResponse(null, null, null);
            }
        }

        public AssetsPathHandler(@NonNull Context context) {
            this.mAssetHelper = new AssetHelper(context);
        }
    }

    @Nullable
    @WorkerThread
    public WebResourceResponse a(@NonNull Uri uri) {
        WebResourceResponse webResourceResponseA;
        for (PathMatcher pathMatcher : this.mMatchers) {
            PathHandler pathHandlerB = pathMatcher.b(uri);
            if (pathHandlerB != null && (webResourceResponseA = pathHandlerB.a(pathMatcher.a(uri.getPath()))) != null) {
                return webResourceResponseA;
            }
        }
        return null;
    }

    WebViewAssetLoader(@NonNull List<PathMatcher> list) {
        this.mMatchers = list;
    }
}
