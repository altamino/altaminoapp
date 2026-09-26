package androidx.loader.content;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContentResolverCompat;
import androidx.core.os.CancellationSignal;
import androidx.core.os.OperationCanceledException;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class CursorLoader extends AsyncTaskLoader<Cursor> {
    CancellationSignal mCancellationSignal;
    Cursor mCursor;
    final Loader<Cursor>.ForceLoadContentObserver mObserver;
    String[] mProjection;
    String mSelection;
    String[] mSelectionArgs;
    String mSortOrder;
    Uri mUri;

    public CursorLoader(@NonNull Context context) {
        super(context);
        this.mObserver = new Loader.ForceLoadContentObserver();
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Cursor loadInBackground() {
        synchronized (this) {
            if (isLoadInBackgroundCanceled()) {
                throw new OperationCanceledException();
            }
            this.mCancellationSignal = new CancellationSignal();
        }
        try {
            Cursor cursorA = ContentResolverCompat.a(getContext().getContentResolver(), this.mUri, this.mProjection, this.mSelection, this.mSelectionArgs, this.mSortOrder, this.mCancellationSignal);
            if (cursorA != null) {
                try {
                    cursorA.getCount();
                    cursorA.registerContentObserver(this.mObserver);
                } catch (RuntimeException e) {
                    cursorA.close();
                    throw e;
                }
            }
            synchronized (this) {
                this.mCancellationSignal = null;
            }
            return cursorA;
        } catch (Throwable th) {
            synchronized (this) {
                this.mCancellationSignal = null;
                throw th;
            }
        }
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void onCanceled(Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return;
        }
        cursor.close();
    }

    @Override // androidx.loader.content.Loader
    protected void onStartLoading() {
        Cursor cursor = this.mCursor;
        if (cursor != null) {
            deliverResult(cursor);
        }
        if (takeContentChanged() || this.mCursor == null) {
            forceLoad();
        }
    }

    public CursorLoader(@NonNull Context context, @NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        super(context);
        this.mObserver = new Loader.ForceLoadContentObserver();
        this.mUri = uri;
        this.mProjection = strArr;
        this.mSelection = str;
        this.mSelectionArgs = strArr2;
        this.mSortOrder = str2;
    }

    @Override // androidx.loader.content.Loader
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void deliverResult(Cursor cursor) {
        if (isReset()) {
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        Cursor cursor2 = this.mCursor;
        this.mCursor = cursor;
        if (isStarted()) {
            super.deliverResult(cursor);
        }
        if (cursor2 != null && cursor2 != cursor && !cursor2.isClosed()) {
            cursor2.close();
        }
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public void cancelLoadInBackground() {
        super.cancelLoadInBackground();
        synchronized (this) {
            try {
                CancellationSignal cancellationSignal = this.mCancellationSignal;
                if (cancellationSignal != null) {
                    cancellationSignal.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.loader.content.AsyncTaskLoader, androidx.loader.content.Loader
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("mUri=");
        printWriter.println(this.mUri);
        printWriter.print(str);
        printWriter.print("mProjection=");
        printWriter.println(Arrays.toString(this.mProjection));
        printWriter.print(str);
        printWriter.print("mSelection=");
        printWriter.println(this.mSelection);
        printWriter.print(str);
        printWriter.print("mSelectionArgs=");
        printWriter.println(Arrays.toString(this.mSelectionArgs));
        printWriter.print(str);
        printWriter.print("mSortOrder=");
        printWriter.println(this.mSortOrder);
        printWriter.print(str);
        printWriter.print("mCursor=");
        printWriter.println(this.mCursor);
        printWriter.print(str);
        printWriter.print("mContentChanged=");
        printWriter.println(this.mContentChanged);
    }

    @Override // androidx.loader.content.Loader
    protected void onReset() {
        super.onReset();
        onStopLoading();
        Cursor cursor = this.mCursor;
        if (cursor != null && !cursor.isClosed()) {
            this.mCursor.close();
        }
        this.mCursor = null;
    }

    @Override // androidx.loader.content.Loader
    protected void onStopLoading() {
        cancelLoad();
    }
}
