package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.core.graphics.TypefaceCompatUtil;
import androidx.core.os.TraceCompat;
import androidx.core.provider.FontRequest;
import androidx.core.provider.FontsContractCompat;
import androidx.core.util.Preconditions;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes7.dex */
public class FontRequestEmojiCompatConfig extends EmojiCompat.Config {
    private static final FontProviderHelper DEFAULT_FONTS_CONTRACT = new FontProviderHelper();

    public static class ExponentialBackoffRetryPolicy extends RetryPolicy {
        private long mRetryOrigin;
        private final long mTotalMs;

        @Override // androidx.emoji2.text.FontRequestEmojiCompatConfig.RetryPolicy
        public long a() {
            if (this.mRetryOrigin == 0) {
                this.mRetryOrigin = SystemClock.uptimeMillis();
                return 0L;
            }
            long jUptimeMillis = SystemClock.uptimeMillis() - this.mRetryOrigin;
            if (jUptimeMillis > this.mTotalMs) {
                return -1L;
            }
            return Math.min(Math.max(jUptimeMillis, 1000L), this.mTotalMs - jUptimeMillis);
        }

        public ExponentialBackoffRetryPolicy(long j6) {
            this.mTotalMs = j6;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class FontRequestMetadataLoader implements EmojiCompat.MetadataRepoLoader {
        private static final String S_TRACE_BUILD_TYPEFACE = "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface";

        @Nullable
        @GuardedBy
        EmojiCompat.MetadataRepoLoaderCallback mCallback;

        @NonNull
        private final Context mContext;

        @Nullable
        @GuardedBy
        private Executor mExecutor;

        @NonNull
        private final FontProviderHelper mFontProviderHelper;

        @NonNull
        private final Object mLock = new Object();

        @Nullable
        @GuardedBy
        private Handler mMainHandler;

        @Nullable
        @GuardedBy
        private Runnable mMainHandlerLoadCallback;

        @Nullable
        @GuardedBy
        private ThreadPoolExecutor mMyThreadPoolExecutor;

        @Nullable
        @GuardedBy
        private ContentObserver mObserver;

        @NonNull
        private final FontRequest mRequest;

        @Nullable
        @GuardedBy
        private RetryPolicy mRetryPolicy;

        private void b() {
            synchronized (this.mLock) {
                try {
                    this.mCallback = null;
                    ContentObserver contentObserver = this.mObserver;
                    if (contentObserver != null) {
                        this.mFontProviderHelper.d(this.mContext, contentObserver);
                        this.mObserver = null;
                    }
                    Handler handler = this.mMainHandler;
                    if (handler != null) {
                        handler.removeCallbacks(this.mMainHandlerLoadCallback);
                    }
                    this.mMainHandler = null;
                    ThreadPoolExecutor threadPoolExecutor = this.mMyThreadPoolExecutor;
                    if (threadPoolExecutor != null) {
                        threadPoolExecutor.shutdown();
                    }
                    this.mExecutor = null;
                    this.mMyThreadPoolExecutor = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @WorkerThread
        private FontsContractCompat.FontInfo e() {
            try {
                FontsContractCompat.FontFamilyResult fontFamilyResultB = this.mFontProviderHelper.b(this.mContext, this.mRequest);
                if (fontFamilyResultB.c() == 0) {
                    FontsContractCompat.FontInfo[] fontInfoArrB = fontFamilyResultB.b();
                    if (fontInfoArrB == null || fontInfoArrB.length == 0) {
                        throw new RuntimeException("fetchFonts failed (empty result)");
                    }
                    return fontInfoArrB[0];
                }
                throw new RuntimeException("fetchFonts failed (" + fontFamilyResultB.c() + ")");
            } catch (PackageManager.NameNotFoundException e) {
                throw new RuntimeException("provider not found", e);
            }
        }

        @RequiresApi
        @WorkerThread
        private void f(Uri uri, long j6) {
            synchronized (this.mLock) {
                try {
                    Handler handlerD = this.mMainHandler;
                    if (handlerD == null) {
                        handlerD = ConcurrencyHelpers.d();
                        this.mMainHandler = handlerD;
                    }
                    if (this.mObserver == null) {
                        ContentObserver contentObserver = new ContentObserver(handlerD) { // from class: androidx.emoji2.text.FontRequestEmojiCompatConfig.FontRequestMetadataLoader.1
                            @Override // android.database.ContentObserver
                            public void onChange(boolean z6, Uri uri2) {
                                FontRequestMetadataLoader.this.d();
                            }
                        };
                        this.mObserver = contentObserver;
                        this.mFontProviderHelper.c(this.mContext, uri, contentObserver);
                    }
                    if (this.mMainHandlerLoadCallback == null) {
                        this.mMainHandlerLoadCallback = new Runnable() { // from class: androidx.emoji2.text.e
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f203a.d();
                            }
                        };
                    }
                    handlerD.postDelayed(this.mMainHandlerLoadCallback, j6);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoader
        @RequiresApi
        public void a(@NonNull EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback) {
            Preconditions.j(metadataRepoLoaderCallback, "LoaderCallback cannot be null");
            synchronized (this.mLock) {
                this.mCallback = metadataRepoLoaderCallback;
            }
            d();
        }

        @RequiresApi
        @WorkerThread
        void c() {
            synchronized (this.mLock) {
                try {
                    if (this.mCallback == null) {
                        return;
                    }
                    try {
                        FontsContractCompat.FontInfo fontInfoE = e();
                        int iB = fontInfoE.b();
                        if (iB == 2) {
                            synchronized (this.mLock) {
                                try {
                                    RetryPolicy retryPolicy = this.mRetryPolicy;
                                    if (retryPolicy != null) {
                                        long jA = retryPolicy.a();
                                        if (jA >= 0) {
                                            f(fontInfoE.d(), jA);
                                            return;
                                        }
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        if (iB != 0) {
                            throw new RuntimeException("fetchFonts result is not OK. (" + iB + ")");
                        }
                        try {
                            TraceCompat.a(S_TRACE_BUILD_TYPEFACE);
                            Typeface typefaceA = this.mFontProviderHelper.a(this.mContext, fontInfoE);
                            ByteBuffer byteBufferF = TypefaceCompatUtil.f(this.mContext, null, fontInfoE.d());
                            if (byteBufferF == null || typefaceA == null) {
                                throw new RuntimeException("Unable to open file.");
                            }
                            MetadataRepo metadataRepoB = MetadataRepo.b(typefaceA, byteBufferF);
                            TraceCompat.b();
                            synchronized (this.mLock) {
                                try {
                                    EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback = this.mCallback;
                                    if (metadataRepoLoaderCallback != null) {
                                        metadataRepoLoaderCallback.b(metadataRepoB);
                                    }
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                            b();
                        } catch (Throwable th3) {
                            TraceCompat.b();
                            throw th3;
                        }
                    } catch (Throwable th4) {
                        synchronized (this.mLock) {
                            try {
                                EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback2 = this.mCallback;
                                if (metadataRepoLoaderCallback2 != null) {
                                    metadataRepoLoaderCallback2.a(th4);
                                }
                                b();
                            } catch (Throwable th5) {
                                throw th5;
                            }
                        }
                    }
                } catch (Throwable th6) {
                    throw th6;
                }
            }
        }

        @RequiresApi
        void d() {
            synchronized (this.mLock) {
                try {
                    if (this.mCallback == null) {
                        return;
                    }
                    if (this.mExecutor == null) {
                        ThreadPoolExecutor threadPoolExecutorB = ConcurrencyHelpers.b("emojiCompat");
                        this.mMyThreadPoolExecutor = threadPoolExecutorB;
                        this.mExecutor = threadPoolExecutorB;
                    }
                    this.mExecutor.execute(new Runnable() { // from class: androidx.emoji2.text.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f202a.c();
                        }
                    });
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void g(@NonNull Executor executor) {
            synchronized (this.mLock) {
                this.mExecutor = executor;
            }
        }

        FontRequestMetadataLoader(@NonNull Context context, @NonNull FontRequest fontRequest, @NonNull FontProviderHelper fontProviderHelper) {
            Preconditions.j(context, "Context cannot be null");
            Preconditions.j(fontRequest, "FontRequest cannot be null");
            this.mContext = context.getApplicationContext();
            this.mRequest = fontRequest;
            this.mFontProviderHelper = fontProviderHelper;
        }
    }

    public static abstract class RetryPolicy {
        public abstract long a();
    }

    public FontRequestEmojiCompatConfig(@NonNull Context context, @NonNull FontRequest fontRequest) {
        super(new FontRequestMetadataLoader(context, fontRequest, DEFAULT_FONTS_CONTRACT));
    }

    @RestrictTo
    public static class FontProviderHelper {
        @Nullable
        public Typeface a(@NonNull Context context, @NonNull FontsContractCompat.FontInfo fontInfo) throws PackageManager.NameNotFoundException {
            return FontsContractCompat.a(context, null, new FontsContractCompat.FontInfo[]{fontInfo});
        }

        @NonNull
        public FontsContractCompat.FontFamilyResult b(@NonNull Context context, @NonNull FontRequest fontRequest) throws PackageManager.NameNotFoundException {
            return FontsContractCompat.b(context, null, fontRequest);
        }

        public void c(@NonNull Context context, @NonNull Uri uri, @NonNull ContentObserver contentObserver) {
            context.getContentResolver().registerContentObserver(uri, false, contentObserver);
        }

        public void d(@NonNull Context context, @NonNull ContentObserver contentObserver) {
            context.getContentResolver().unregisterContentObserver(contentObserver);
        }
    }

    @RestrictTo
    public FontRequestEmojiCompatConfig(@NonNull Context context, @NonNull FontRequest fontRequest, @NonNull FontProviderHelper fontProviderHelper) {
        super(new FontRequestMetadataLoader(context, fontRequest, fontProviderHelper));
    }

    @NonNull
    public FontRequestEmojiCompatConfig c(@NonNull Executor executor) {
        ((FontRequestMetadataLoader) a()).g(executor);
        return this;
    }
}
