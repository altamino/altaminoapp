package androidx.browser.browseractions;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.core.content.FileProvider;
import androidx.core.util.AtomicFile;
import com.google.common.util.concurrent.k;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@RestrictTo
@Deprecated
public final class BrowserServiceFileProvider extends FileProvider {
    private static final String AUTHORITY_SUFFIX = ".image_provider";
    private static final String CLIP_DATA_LABEL = "image_provider_uris";
    private static final String CONTENT_SCHEME = "content";
    private static final String FILE_EXTENSION = ".png";
    private static final String FILE_SUB_DIR = "image_provider";
    private static final String FILE_SUB_DIR_NAME = "image_provider_images/";
    private static final String LAST_CLEANUP_TIME_KEY = "last_cleanup_time";
    private static final String TAG = "BrowserServiceFP";
    static Object sFileCleanupLock = new Object();

    private static class FileCleanupTask extends AsyncTask<Void, Void, Void> {
        private static final long CLEANUP_REQUIRED_TIME_SPAN;
        private static final long DELETION_FAILED_REATTEMPT_DURATION;
        private static final long IMAGE_RETENTION_DURATION;
        private final Context mAppContext;

        static {
            TimeUnit timeUnit = TimeUnit.DAYS;
            IMAGE_RETENTION_DURATION = timeUnit.toMillis(7L);
            CLEANUP_REQUIRED_TIME_SPAN = timeUnit.toMillis(7L);
            DELETION_FAILED_REATTEMPT_DURATION = timeUnit.toMillis(1L);
        }

        private static boolean c(SharedPreferences sharedPreferences) {
            return System.currentTimeMillis() > sharedPreferences.getLong(BrowserServiceFileProvider.LAST_CLEANUP_TIME_KEY, System.currentTimeMillis()) + CLEANUP_REQUIRED_TIME_SPAN;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            SharedPreferences sharedPreferences = this.mAppContext.getSharedPreferences(this.mAppContext.getPackageName() + BrowserServiceFileProvider.AUTHORITY_SUFFIX, 0);
            if (!c(sharedPreferences)) {
                return null;
            }
            synchronized (BrowserServiceFileProvider.sFileCleanupLock) {
                try {
                    File file = new File(this.mAppContext.getFilesDir(), BrowserServiceFileProvider.FILE_SUB_DIR);
                    if (!file.exists()) {
                        return null;
                    }
                    File[] fileArrListFiles = file.listFiles();
                    long jCurrentTimeMillis = System.currentTimeMillis() - IMAGE_RETENTION_DURATION;
                    boolean z6 = true;
                    for (File file2 : fileArrListFiles) {
                        if (b(file2) && file2.lastModified() < jCurrentTimeMillis && !file2.delete()) {
                            Log.e(BrowserServiceFileProvider.TAG, "Fail to delete image: " + file2.getAbsoluteFile());
                            z6 = false;
                        }
                    }
                    long jCurrentTimeMillis2 = z6 ? System.currentTimeMillis() : (System.currentTimeMillis() - CLEANUP_REQUIRED_TIME_SPAN) + DELETION_FAILED_REATTEMPT_DURATION;
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putLong(BrowserServiceFileProvider.LAST_CLEANUP_TIME_KEY, jCurrentTimeMillis2);
                    editorEdit.apply();
                    return null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        FileCleanupTask(Context context) {
            this.mAppContext = context.getApplicationContext();
        }

        private static boolean b(File file) {
            return file.getName().endsWith("..png");
        }
    }

    private static class FileSaveTask extends AsyncTask<String, Void, Void> {
        private final Context mAppContext;
        private final Bitmap mBitmap;
        private final Uri mFileUri;
        private final String mFilename;
        private final ResolvableFuture<Uri> mResultFuture;

        private void c(File file) {
            FileOutputStream fileOutputStreamD;
            AtomicFile atomicFile = new AtomicFile(file);
            try {
                fileOutputStreamD = atomicFile.d();
                try {
                    this.mBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStreamD);
                    fileOutputStreamD.close();
                    atomicFile.b(fileOutputStreamD);
                    this.mResultFuture.q(this.mFileUri);
                } catch (IOException e) {
                    e = e;
                    atomicFile.a(fileOutputStreamD);
                    this.mResultFuture.r(e);
                }
            } catch (IOException e2) {
                e = e2;
                fileOutputStreamD = null;
            }
        }

        private void d() {
            File file = new File(this.mAppContext.getFilesDir(), BrowserServiceFileProvider.FILE_SUB_DIR);
            synchronized (BrowserServiceFileProvider.sFileCleanupLock) {
                try {
                    if (!file.exists() && !file.mkdir()) {
                        this.mResultFuture.r(new IOException("Could not create file directory."));
                        return;
                    }
                    File file2 = new File(file, this.mFilename + BrowserServiceFileProvider.FILE_EXTENSION);
                    if (file2.exists()) {
                        this.mResultFuture.q(this.mFileUri);
                    } else {
                        c(file2);
                    }
                    file2.setLastModified(System.currentTimeMillis());
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r5) {
            new FileCleanupTask(this.mAppContext).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(String... strArr) {
            d();
            return null;
        }
    }

    @NonNull
    public static k<Bitmap> a(@NonNull final ContentResolver contentResolver, @NonNull final Uri uri) {
        final ResolvableFuture resolvableFutureU = ResolvableFuture.u();
        AsyncTask.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: androidx.browser.browseractions.BrowserServiceFileProvider.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(uri, "r");
                    if (parcelFileDescriptorOpenFileDescriptor == null) {
                        resolvableFutureU.r(new FileNotFoundException());
                        return;
                    }
                    Bitmap bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                    parcelFileDescriptorOpenFileDescriptor.close();
                    if (bitmapDecodeFileDescriptor == null) {
                        resolvableFutureU.r(new IOException("File could not be decoded."));
                    } else {
                        resolvableFutureU.q(bitmapDecodeFileDescriptor);
                    }
                } catch (IOException e) {
                    resolvableFutureU.r(e);
                }
            }
        });
        return resolvableFutureU;
    }
}
