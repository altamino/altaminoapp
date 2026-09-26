package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.startup.Initializer;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public class ProfileInstallerInitializer implements Initializer<Result> {
    private static final int DELAY_MS = 5000;

    public static class Result {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi
    static class Choreographer16Impl {
        private Choreographer16Impl() {
        }

        @DoNotInline
        public static void c(final Runnable runnable) {
            Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: androidx.profileinstaller.g
                @Override // android.view.Choreographer.FrameCallback
                public final void doFrame(long j6) {
                    runnable.run();
                }
            });
        }
    }

    @RequiresApi
    private static class Handler28Impl {
        private Handler28Impl() {
        }

        @DoNotInline
        public static Handler a(Looper looper) {
            return Handler.createAsync(looper);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void j(@NonNull final Context context) {
        new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new Runnable() { // from class: androidx.profileinstaller.f
            @Override // java.lang.Runnable
            public final void run() {
                ProfileInstaller.i(context);
            }
        });
    }

    @Override // androidx.startup.Initializer
    @NonNull
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Result create(@NonNull Context context) {
        if (Build.VERSION.SDK_INT < 24) {
            return new Result();
        }
        e(context.getApplicationContext());
        return new Result();
    }

    @RequiresApi
    void e(@NonNull final Context context) {
        Choreographer16Impl.c(new Runnable() { // from class: androidx.profileinstaller.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f760a.g(context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public void g(@NonNull final Context context) {
        (Build.VERSION.SDK_INT >= 28 ? Handler28Impl.a(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new Runnable() { // from class: androidx.profileinstaller.e
            @Override // java.lang.Runnable
            public final void run() {
                ProfileInstallerInitializer.j(context);
            }
        }, new Random().nextInt(Math.max(1000, 1)) + 5000);
    }

    @Override // androidx.startup.Initializer
    @NonNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        return Collections.emptyList();
    }
}
