package androidx.emoji2.text;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.annotation.AnyThread;
import androidx.annotation.CheckResult;
import androidx.annotation.ColorInt;
import androidx.annotation.GuardedBy;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArraySet;
import androidx.core.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes4.dex */
@AnyThread
public class EmojiCompat {
    public static final String EDITOR_INFO_METAVERSION_KEY = "android.support.text.emoji.emojiCompat_metadataVersion";
    public static final String EDITOR_INFO_REPLACE_ALL_KEY = "android.support.text.emoji.emojiCompat_replaceAll";

    @RestrictTo
    static final int EMOJI_COUNT_UNLIMITED = Integer.MAX_VALUE;
    public static final int LOAD_STATE_DEFAULT = 3;
    public static final int LOAD_STATE_FAILED = 2;
    public static final int LOAD_STATE_LOADING = 0;
    public static final int LOAD_STATE_SUCCEEDED = 1;
    public static final int LOAD_STRATEGY_DEFAULT = 0;
    public static final int LOAD_STRATEGY_MANUAL = 1;
    private static final String NOT_INITIALIZED_ERROR_TEXT = "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.";
    public static final int REPLACE_STRATEGY_ALL = 1;
    public static final int REPLACE_STRATEGY_DEFAULT = 0;
    public static final int REPLACE_STRATEGY_NON_EXISTENT = 2;

    @GuardedBy
    private static volatile boolean sHasDoneDefaultConfigLookup;

    @Nullable
    @GuardedBy
    private static volatile EmojiCompat sInstance;

    @Nullable
    final int[] mEmojiAsDefaultStyleExceptions;
    private final int mEmojiSpanIndicatorColor;
    private final boolean mEmojiSpanIndicatorEnabled;
    private final GlyphChecker mGlyphChecker;

    @NonNull
    private final CompatInternal mHelper;

    @NonNull
    @GuardedBy
    private final Set<InitCallback> mInitCallbacks;

    @NonNull
    private final ReadWriteLock mInitLock = new ReentrantReadWriteLock();

    @GuardedBy
    private volatile int mLoadState = 3;

    @NonNull
    private final Handler mMainHandler = new Handler(Looper.getMainLooper());
    private final int mMetadataLoadStrategy;

    @NonNull
    final MetadataRepoLoader mMetadataLoader;
    final boolean mReplaceAll;
    final boolean mUseEmojiAsDefaultStyle;
    private static final Object INSTANCE_LOCK = new Object();
    private static final Object CONFIG_LOCK = new Object();

    private static class CompatInternal {
        final EmojiCompat mEmojiCompat;

        CharSequence b(@NonNull CharSequence charSequence, @IntRange int i10, @IntRange int i11, @IntRange int i12, boolean z6) {
            return charSequence;
        }

        void c(@NonNull EditorInfo editorInfo) {
        }

        void a() {
            this.mEmojiCompat.n();
        }

        CompatInternal(EmojiCompat emojiCompat) {
            this.mEmojiCompat = emojiCompat;
        }
    }

    @RequiresApi
    private static final class CompatInternal19 extends CompatInternal {
        private volatile MetadataRepo mMetadataRepo;
        private volatile EmojiProcessor mProcessor;

        @Override // androidx.emoji2.text.EmojiCompat.CompatInternal
        void a() {
            try {
                this.mEmojiCompat.mMetadataLoader.a(new MetadataRepoLoaderCallback() { // from class: androidx.emoji2.text.EmojiCompat.CompatInternal19.1
                    @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
                    public void a(@Nullable Throwable th) {
                        CompatInternal19.this.mEmojiCompat.m(th);
                    }

                    @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
                    public void b(@NonNull MetadataRepo metadataRepo) {
                        CompatInternal19.this.d(metadataRepo);
                    }
                });
            } catch (Throwable th) {
                this.mEmojiCompat.m(th);
            }
        }

        @Override // androidx.emoji2.text.EmojiCompat.CompatInternal
        CharSequence b(@NonNull CharSequence charSequence, int i10, int i11, int i12, boolean z6) {
            return this.mProcessor.h(charSequence, i10, i11, i12, z6);
        }

        @Override // androidx.emoji2.text.EmojiCompat.CompatInternal
        void c(@NonNull EditorInfo editorInfo) {
            editorInfo.extras.putInt(EmojiCompat.EDITOR_INFO_METAVERSION_KEY, this.mMetadataRepo.e());
            editorInfo.extras.putBoolean(EmojiCompat.EDITOR_INFO_REPLACE_ALL_KEY, this.mEmojiCompat.mReplaceAll);
        }

        void d(@NonNull MetadataRepo metadataRepo) {
            if (metadataRepo == null) {
                this.mEmojiCompat.m(new IllegalArgumentException("metadataRepo cannot be null"));
                return;
            }
            this.mMetadataRepo = metadataRepo;
            MetadataRepo metadataRepo2 = this.mMetadataRepo;
            SpanFactory spanFactory = new SpanFactory();
            GlyphChecker glyphChecker = this.mEmojiCompat.mGlyphChecker;
            EmojiCompat emojiCompat = this.mEmojiCompat;
            this.mProcessor = new EmojiProcessor(metadataRepo2, spanFactory, glyphChecker, emojiCompat.mUseEmojiAsDefaultStyle, emojiCompat.mEmojiAsDefaultStyleExceptions);
            this.mEmojiCompat.n();
        }

        CompatInternal19(EmojiCompat emojiCompat) {
            super(emojiCompat);
        }
    }

    public interface GlyphChecker {
        boolean a(@NonNull CharSequence charSequence, @IntRange int i10, @IntRange int i11, @IntRange int i12);
    }

    public static abstract class InitCallback {
        public void a(@Nullable Throwable th) {
        }

        public void b() {
        }
    }

    private static class ListenerDispatcher implements Runnable {
        private final List<InitCallback> mInitCallbacks;
        private final int mLoadState;
        private final Throwable mThrowable;

        ListenerDispatcher(@NonNull InitCallback initCallback, int i10) {
            this(Arrays.asList((InitCallback) Preconditions.j(initCallback, "initCallback cannot be null")), i10, null);
        }

        ListenerDispatcher(@NonNull Collection<InitCallback> collection, int i10) {
            this(collection, i10, null);
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.mInitCallbacks.size();
            int i10 = 0;
            if (this.mLoadState != 1) {
                while (i10 < size) {
                    this.mInitCallbacks.get(i10).a(this.mThrowable);
                    i10++;
                }
            } else {
                while (i10 < size) {
                    this.mInitCallbacks.get(i10).b();
                    i10++;
                }
            }
        }

        ListenerDispatcher(@NonNull Collection<InitCallback> collection, int i10, @Nullable Throwable th) {
            Preconditions.j(collection, "initCallbacks cannot be null");
            this.mInitCallbacks = new ArrayList(collection);
            this.mLoadState = i10;
            this.mThrowable = th;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface LoadStrategy {
    }

    public interface MetadataRepoLoader {
        void a(@NonNull MetadataRepoLoaderCallback metadataRepoLoaderCallback);
    }

    public static abstract class MetadataRepoLoaderCallback {
        public abstract void a(@Nullable Throwable th);

        public abstract void b(@NonNull MetadataRepo metadataRepo);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface ReplaceStrategy {
    }

    @RequiresApi
    @RestrictTo
    static class SpanFactory {
        EmojiSpan a(@NonNull EmojiMetadata emojiMetadata) {
            return new TypefaceEmojiSpan(emojiMetadata);
        }

        SpanFactory() {
        }
    }

    public static boolean h() {
        return sInstance != null;
    }

    @ColorInt
    @RestrictTo
    public int c() {
        return this.mEmojiSpanIndicatorColor;
    }

    @RestrictTo
    public boolean i() {
        return this.mEmojiSpanIndicatorEnabled;
    }

    @Nullable
    @CheckResult
    public CharSequence o(@Nullable CharSequence charSequence) {
        return p(charSequence, 0, charSequence == null ? 0 : charSequence.length());
    }

    @Nullable
    @CheckResult
    public CharSequence q(@Nullable CharSequence charSequence, @IntRange int i10, @IntRange int i11, @IntRange int i12) {
        return r(charSequence, i10, i11, i12, 0);
    }

    public static abstract class Config {

        @Nullable
        int[] mEmojiAsDefaultStyleExceptions;
        boolean mEmojiSpanIndicatorEnabled;

        @Nullable
        Set<InitCallback> mInitCallbacks;

        @NonNull
        final MetadataRepoLoader mMetadataLoader;
        boolean mReplaceAll;
        boolean mUseEmojiAsDefaultStyle;
        int mEmojiSpanIndicatorColor = -16711936;
        int mMetadataLoadStrategy = 0;

        @NonNull
        GlyphChecker mGlyphChecker = new EmojiProcessor.DefaultGlyphChecker();

        @NonNull
        protected final MetadataRepoLoader a() {
            return this.mMetadataLoader;
        }

        @NonNull
        public Config b(int i10) {
            this.mMetadataLoadStrategy = i10;
            return this;
        }

        protected Config(@NonNull MetadataRepoLoader metadataRepoLoader) {
            Preconditions.j(metadataRepoLoader, "metadataLoader cannot be null.");
            this.mMetadataLoader = metadataRepoLoader;
        }
    }

    @NonNull
    public static EmojiCompat b() {
        EmojiCompat emojiCompat;
        synchronized (INSTANCE_LOCK) {
            emojiCompat = sInstance;
            Preconditions.l(emojiCompat != null, NOT_INITIALIZED_ERROR_TEXT);
        }
        return emojiCompat;
    }

    @NonNull
    public static EmojiCompat g(@NonNull Config config) {
        EmojiCompat emojiCompat = sInstance;
        if (emojiCompat == null) {
            synchronized (INSTANCE_LOCK) {
                try {
                    emojiCompat = sInstance;
                    if (emojiCompat == null) {
                        emojiCompat = new EmojiCompat(config);
                        sInstance = emojiCompat;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return emojiCompat;
    }

    private void l() {
        this.mInitLock.writeLock().lock();
        try {
            if (this.mMetadataLoadStrategy == 0) {
                this.mLoadState = 0;
            }
            this.mInitLock.writeLock().unlock();
            if (d() == 0) {
                this.mHelper.a();
            }
        } catch (Throwable th) {
            this.mInitLock.writeLock().unlock();
            throw th;
        }
    }

    public int d() {
        this.mInitLock.readLock().lock();
        try {
            return this.mLoadState;
        } finally {
            this.mInitLock.readLock().unlock();
        }
    }

    public void k() {
        Preconditions.l(this.mMetadataLoadStrategy == 1, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        if (j()) {
            return;
        }
        this.mInitLock.writeLock().lock();
        try {
            if (this.mLoadState == 0) {
                this.mInitLock.writeLock().unlock();
                return;
            }
            this.mLoadState = 0;
            this.mInitLock.writeLock().unlock();
            this.mHelper.a();
        } catch (Throwable th) {
            this.mInitLock.writeLock().unlock();
            throw th;
        }
    }

    void m(@Nullable Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.mInitLock.writeLock().lock();
        try {
            this.mLoadState = 2;
            arrayList.addAll(this.mInitCallbacks);
            this.mInitCallbacks.clear();
            this.mInitLock.writeLock().unlock();
            this.mMainHandler.post(new ListenerDispatcher(arrayList, this.mLoadState, th));
        } catch (Throwable th2) {
            this.mInitLock.writeLock().unlock();
            throw th2;
        }
    }

    void n() {
        ArrayList arrayList = new ArrayList();
        this.mInitLock.writeLock().lock();
        try {
            this.mLoadState = 1;
            arrayList.addAll(this.mInitCallbacks);
            this.mInitCallbacks.clear();
            this.mInitLock.writeLock().unlock();
            this.mMainHandler.post(new ListenerDispatcher(arrayList, this.mLoadState));
        } catch (Throwable th) {
            this.mInitLock.writeLock().unlock();
            throw th;
        }
    }

    public void s(@NonNull InitCallback initCallback) {
        Preconditions.j(initCallback, "initCallback cannot be null");
        this.mInitLock.writeLock().lock();
        try {
            if (this.mLoadState == 1 || this.mLoadState == 2) {
                this.mMainHandler.post(new ListenerDispatcher(initCallback, this.mLoadState));
            } else {
                this.mInitCallbacks.add(initCallback);
            }
        } finally {
            this.mInitLock.writeLock().unlock();
        }
    }

    public void t(@NonNull InitCallback initCallback) {
        Preconditions.j(initCallback, "initCallback cannot be null");
        this.mInitLock.writeLock().lock();
        try {
            this.mInitCallbacks.remove(initCallback);
        } finally {
            this.mInitLock.writeLock().unlock();
        }
    }

    private EmojiCompat(@NonNull Config config) {
        this.mReplaceAll = config.mReplaceAll;
        this.mUseEmojiAsDefaultStyle = config.mUseEmojiAsDefaultStyle;
        this.mEmojiAsDefaultStyleExceptions = config.mEmojiAsDefaultStyleExceptions;
        this.mEmojiSpanIndicatorEnabled = config.mEmojiSpanIndicatorEnabled;
        this.mEmojiSpanIndicatorColor = config.mEmojiSpanIndicatorColor;
        this.mMetadataLoader = config.mMetadataLoader;
        this.mMetadataLoadStrategy = config.mMetadataLoadStrategy;
        this.mGlyphChecker = config.mGlyphChecker;
        ArraySet arraySet = new ArraySet();
        this.mInitCallbacks = arraySet;
        Set<InitCallback> set = config.mInitCallbacks;
        if (set != null && !set.isEmpty()) {
            arraySet.addAll(config.mInitCallbacks);
        }
        this.mHelper = new CompatInternal19(this);
        l();
    }

    public static boolean e(@NonNull InputConnection inputConnection, @NonNull Editable editable, @IntRange int i10, @IntRange int i11, boolean z6) {
        return EmojiProcessor.c(inputConnection, editable, i10, i11, z6);
    }

    public static boolean f(@NonNull Editable editable, int i10, @NonNull KeyEvent keyEvent) {
        return EmojiProcessor.d(editable, i10, keyEvent);
    }

    private boolean j() {
        if (d() == 1) {
            return true;
        }
        return false;
    }

    @Nullable
    @CheckResult
    public CharSequence p(@Nullable CharSequence charSequence, @IntRange int i10, @IntRange int i11) {
        return q(charSequence, i10, i11, Integer.MAX_VALUE);
    }

    @Nullable
    @CheckResult
    public CharSequence r(@Nullable CharSequence charSequence, @IntRange int i10, @IntRange int i11, @IntRange int i12, int i13) {
        boolean z6;
        boolean z10;
        boolean z11;
        boolean z12;
        Preconditions.l(j(), "Not initialized yet");
        Preconditions.g(i10, "start cannot be negative");
        Preconditions.g(i11, "end cannot be negative");
        Preconditions.g(i12, "maxEmojiCount cannot be negative");
        boolean z13 = false;
        if (i10 <= i11) {
            z6 = true;
        } else {
            z6 = false;
        }
        Preconditions.b(z6, "start should be <= than end");
        if (charSequence == null) {
            return null;
        }
        if (i10 <= charSequence.length()) {
            z10 = true;
        } else {
            z10 = false;
        }
        Preconditions.b(z10, "start should be < than charSequence length");
        if (i11 <= charSequence.length()) {
            z11 = true;
        } else {
            z11 = false;
        }
        Preconditions.b(z11, "end should be < than charSequence length");
        if (charSequence.length() != 0 && i10 != i11) {
            if (i13 != 1) {
                if (i13 != 2) {
                    z13 = this.mReplaceAll;
                }
                z12 = z13;
            } else {
                z12 = true;
            }
            return this.mHelper.b(charSequence, i10, i11, i12, z12);
        }
        return charSequence;
    }

    public void u(@NonNull EditorInfo editorInfo) {
        if (j() && editorInfo != null) {
            if (editorInfo.extras == null) {
                editorInfo.extras = new Bundle();
            }
            this.mHelper.c(editorInfo);
        }
    }
}
