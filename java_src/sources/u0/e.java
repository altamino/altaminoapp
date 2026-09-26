package u0;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.model.n;
import com.bumptech.glide.load.model.o;
import com.bumptech.glide.load.model.r;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
public final class e<DataT> implements n<Uri, DataT> {
    private final Context context;
    private final Class<DataT> dataClass;
    private final n<File, DataT> fileDelegate;
    private final n<Uri, DataT> uriDelegate;

    private static abstract class a<DataT> implements o<Uri, DataT> {
        private final Context context;
        private final Class<DataT> dataClass;

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public final n<Uri, DataT> b(@NonNull r rVar) {
            return new e(this.context, rVar.d(File.class, this.dataClass), rVar.d(Uri.class, this.dataClass), this.dataClass);
        }

        a(Context context, Class<DataT> cls) {
            this.context = context;
            this.dataClass = cls;
        }
    }

    @RequiresApi
    public static final class b extends a<ParcelFileDescriptor> {
        public b(Context context) {
            super(context, ParcelFileDescriptor.class);
        }
    }

    @RequiresApi
    public static final class c extends a<InputStream> {
        public c(Context context) {
            super(context, InputStream.class);
        }
    }

    private static final class d<DataT> implements com.bumptech.glide.load.data.d<DataT> {
        private static final String[] PROJECTION = {"_data"};
        private final Context context;
        private final Class<DataT> dataClass;

        @Nullable
        private volatile com.bumptech.glide.load.data.d<DataT> delegate;
        private final n<File, DataT> fileDelegate;
        private final int height;
        private volatile boolean isCancelled;
        private final i options;
        private final Uri uri;
        private final n<Uri, DataT> uriDelegate;
        private final int width;

        @NonNull
        private File h(Uri uri) throws FileNotFoundException {
            Cursor cursor = null;
            try {
                Cursor cursorQuery = this.context.getContentResolver().query(uri, PROJECTION, null, null, null);
                if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                    throw new FileNotFoundException("Failed to media store entry for: " + uri);
                }
                String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                if (!TextUtils.isEmpty(string)) {
                    File file = new File(string);
                    cursorQuery.close();
                    return file;
                }
                throw new FileNotFoundException("File path was empty in media store for: " + uri);
            } catch (Throwable th) {
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<DataT> a() {
            return this.dataClass;
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
            this.isCancelled = true;
            com.bumptech.glide.load.data.d<DataT> dVar = this.delegate;
            if (dVar != null) {
                dVar.cancel();
            }
        }

        private boolean g() {
            return this.context.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0;
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
            com.bumptech.glide.load.data.d<DataT> dVar = this.delegate;
            if (dVar != null) {
                dVar.b();
            }
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public com.bumptech.glide.load.a c() {
            return com.bumptech.glide.load.a.LOCAL;
        }

        d(Context context, n<File, DataT> nVar, n<Uri, DataT> nVar2, Uri uri, int i10, int i11, i iVar, Class<DataT> cls) {
            this.context = context.getApplicationContext();
            this.fileDelegate = nVar;
            this.uriDelegate = nVar2;
            this.uri = uri;
            this.width = i10;
            this.height = i11;
            this.options = iVar;
            this.dataClass = cls;
        }

        @Nullable
        private n.a<DataT> e() throws FileNotFoundException {
            Uri requireOriginal;
            if (Environment.isExternalStorageLegacy()) {
                return this.fileDelegate.a(h(this.uri), this.width, this.height, this.options);
            }
            if (g()) {
                requireOriginal = MediaStore.setRequireOriginal(this.uri);
            } else {
                requireOriginal = this.uri;
            }
            return this.uriDelegate.a(requireOriginal, this.width, this.height, this.options);
        }

        @Nullable
        private com.bumptech.glide.load.data.d<DataT> f() throws FileNotFoundException {
            n.a<DataT> aVarE = e();
            if (aVarE != null) {
                return aVarE.fetcher;
            }
            return null;
        }

        @Override // com.bumptech.glide.load.data.d
        public void d(@NonNull com.bumptech.glide.f fVar, @NonNull com.bumptech.glide.load.data.d.a<? super DataT> aVar) {
            try {
                com.bumptech.glide.load.data.d<DataT> dVarF = f();
                if (dVarF == null) {
                    aVar.f(new IllegalArgumentException("Failed to build fetcher for: " + this.uri));
                    return;
                }
                this.delegate = dVarF;
                if (this.isCancelled) {
                    cancel();
                } else {
                    dVarF.d(fVar, aVar);
                }
            } catch (FileNotFoundException e) {
                aVar.f(e);
            }
        }
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<DataT> a(@NonNull Uri uri, int i10, int i11, @NonNull i iVar) {
        return new n.a<>(new z0.b(uri), new d(this.context, this.fileDelegate, this.uriDelegate, uri, i10, i11, iVar, this.dataClass));
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(@NonNull Uri uri) {
        return Build.VERSION.SDK_INT >= 29 && t0.b.b(uri);
    }

    e(Context context, n<File, DataT> nVar, n<Uri, DataT> nVar2, Class<DataT> cls) {
        this.context = context.getApplicationContext();
        this.fileDelegate = nVar;
        this.uriDelegate = nVar2;
        this.dataClass = cls;
    }
}
