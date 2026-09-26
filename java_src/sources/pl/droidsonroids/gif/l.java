package pl.droidsonroids.gif;

/* JADX INFO: loaded from: classes8.dex */
abstract class l implements Runnable {
    final b mGifDrawable;

    abstract void a();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.mGifDrawable.e()) {
                return;
            }
            a();
        } catch (Throwable th) {
            Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            if (defaultUncaughtExceptionHandler != null) {
                defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
            }
            throw th;
        }
    }

    l(b bVar) {
        this.mGifDrawable = bVar;
    }
}
