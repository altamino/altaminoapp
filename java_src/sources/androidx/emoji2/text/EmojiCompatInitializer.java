package androidx.emoji2.text;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.WorkerThread;
import androidx.core.os.TraceCompat;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleInitializer;
import androidx.startup.AppInitializer;
import androidx.startup.Initializer;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public class EmojiCompatInitializer implements Initializer<Boolean> {
    private static final long STARTUP_THREAD_CREATION_DELAY_MS = 500;
    private static final String S_INITIALIZER_THREAD_NAME = "EmojiCompatInitializer";

    @RequiresApi
    static class BackgroundDefaultConfig extends EmojiCompat.Config {
        protected BackgroundDefaultConfig(Context context) {
            super(new BackgroundDefaultLoader(context));
            b(1);
        }
    }

    @RequiresApi
    static class BackgroundDefaultLoader implements EmojiCompat.MetadataRepoLoader {
        private final Context mContext;

        @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoader
        public void a(@NonNull final EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback) {
            final ThreadPoolExecutor threadPoolExecutorB = ConcurrencyHelpers.b(EmojiCompatInitializer.S_INITIALIZER_THREAD_NAME);
            threadPoolExecutorB.execute(new Runnable() { // from class: androidx.emoji2.text.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f199a.d(metadataRepoLoaderCallback, threadPoolExecutorB);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @WorkerThread
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void d(@NonNull final EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback, @NonNull final ThreadPoolExecutor threadPoolExecutor) {
            try {
                FontRequestEmojiCompatConfig fontRequestEmojiCompatConfigA = DefaultEmojiCompatConfig.a(this.mContext);
                if (fontRequestEmojiCompatConfigA == null) {
                    throw new RuntimeException("EmojiCompat font provider not available on this device.");
                }
                fontRequestEmojiCompatConfigA.c(threadPoolExecutor);
                fontRequestEmojiCompatConfigA.a().a(new EmojiCompat.MetadataRepoLoaderCallback() { // from class: androidx.emoji2.text.EmojiCompatInitializer.BackgroundDefaultLoader.1
                    @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
                    public void a(@Nullable Throwable th) {
                        try {
                            metadataRepoLoaderCallback.a(th);
                        } finally {
                            threadPoolExecutor.shutdown();
                        }
                    }

                    @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
                    public void b(@NonNull MetadataRepo metadataRepo) {
                        try {
                            metadataRepoLoaderCallback.b(metadataRepo);
                        } finally {
                            threadPoolExecutor.shutdown();
                        }
                    }
                });
            } catch (Throwable th) {
                metadataRepoLoaderCallback.a(th);
                threadPoolExecutor.shutdown();
            }
        }

        BackgroundDefaultLoader(Context context) {
            this.mContext = context.getApplicationContext();
        }
    }

    static class LoadEmojiCompatRunnable implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            try {
                TraceCompat.a("EmojiCompat.EmojiCompatInitializer.run");
                if (EmojiCompat.h()) {
                    EmojiCompat.b().k();
                }
            } finally {
                TraceCompat.b();
            }
        }

        LoadEmojiCompatRunnable() {
        }
    }

    @Override // androidx.startup.Initializer
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Boolean create(@NonNull Context context) {
        EmojiCompat.g(new BackgroundDefaultConfig(context));
        b(context);
        return Boolean.TRUE;
    }

    @Override // androidx.startup.Initializer
    @NonNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    @RequiresApi
    void b(@NonNull Context context) {
        final Lifecycle lifecycle = ((LifecycleOwner) AppInitializer.e(context).f(ProcessLifecycleInitializer.class)).getLifecycle();
        lifecycle.a(new DefaultLifecycleObserver() { // from class: androidx.emoji2.text.EmojiCompatInitializer.1
            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public /* synthetic */ void onCreate(LifecycleOwner lifecycleOwner) {
                androidx.lifecycle.c.a(this, lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public /* synthetic */ void onDestroy(LifecycleOwner lifecycleOwner) {
                androidx.lifecycle.c.b(this, lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public /* synthetic */ void onPause(LifecycleOwner lifecycleOwner) {
                androidx.lifecycle.c.c(this, lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public /* synthetic */ void onStart(LifecycleOwner lifecycleOwner) {
                androidx.lifecycle.c.e(this, lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public /* synthetic */ void onStop(LifecycleOwner lifecycleOwner) {
                androidx.lifecycle.c.f(this, lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onResume(@NonNull LifecycleOwner lifecycleOwner) {
                EmojiCompatInitializer.this.c();
                lifecycle.d(this);
            }
        });
    }

    @RequiresApi
    void c() {
        ConcurrencyHelpers.d().postDelayed(new LoadEmojiCompatRunnable(), 500L);
    }
}
