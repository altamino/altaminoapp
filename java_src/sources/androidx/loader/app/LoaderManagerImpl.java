package androidx.loader.app;

import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import androidx.core.util.DebugUtils;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.j;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.loader.content.Loader;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes4.dex */
class LoaderManagerImpl extends LoaderManager {
    static boolean DEBUG = false;
    static final String TAG = "LoaderManager";

    @NonNull
    private final LifecycleOwner mLifecycleOwner;

    @NonNull
    private final LoaderViewModel mLoaderViewModel;

    public static class LoaderInfo<D> extends MutableLiveData<D> implements Loader.OnLoadCompleteListener<D> {

        @Nullable
        private final Bundle mArgs;
        private final int mId;
        private LifecycleOwner mLifecycleOwner;

        @NonNull
        private final Loader<D> mLoader;
        private LoaderObserver<D> mObserver;
        private Loader<D> mPriorLoader;

        @NonNull
        Loader<D> s() {
            return this.mLoader;
        }

        @Override // androidx.loader.content.Loader.OnLoadCompleteListener
        public void a(@NonNull Loader<D> loader, @Nullable D d) {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "onLoadComplete: " + this);
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                p(d);
                return;
            }
            if (LoaderManagerImpl.DEBUG) {
                Log.w(LoaderManagerImpl.TAG, "onLoadComplete was incorrectly called on a background thread");
            }
            m(d);
        }

        @Override // androidx.lifecycle.LiveData
        protected void k() {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "  Starting: " + this);
            }
            this.mLoader.startLoading();
        }

        @Override // androidx.lifecycle.LiveData
        protected void l() {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "  Stopping: " + this);
            }
            this.mLoader.stopLoading();
        }

        @MainThread
        Loader<D> q(boolean z6) {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "  Destroying: " + this);
            }
            this.mLoader.cancelLoad();
            this.mLoader.abandon();
            LoaderObserver<D> loaderObserver = this.mObserver;
            if (loaderObserver != null) {
                n(loaderObserver);
                if (z6) {
                    loaderObserver.c();
                }
            }
            this.mLoader.unregisterListener(this);
            if ((loaderObserver == null || loaderObserver.b()) && !z6) {
                return this.mLoader;
            }
            this.mLoader.reset();
            return this.mPriorLoader;
        }

        void t() {
            LifecycleOwner lifecycleOwner = this.mLifecycleOwner;
            LoaderObserver<D> loaderObserver = this.mObserver;
            if (lifecycleOwner == null || loaderObserver == null) {
                return;
            }
            super.n(loaderObserver);
            i(lifecycleOwner, loaderObserver);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.mId);
            sb.append(" : ");
            DebugUtils.a(this.mLoader, sb);
            sb.append("}}");
            return sb.toString();
        }

        @NonNull
        @MainThread
        Loader<D> u(@NonNull LifecycleOwner lifecycleOwner, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
            LoaderObserver<D> loaderObserver = new LoaderObserver<>(this.mLoader, loaderCallbacks);
            i(lifecycleOwner, loaderObserver);
            LoaderObserver<D> loaderObserver2 = this.mObserver;
            if (loaderObserver2 != null) {
                n(loaderObserver2);
            }
            this.mLifecycleOwner = lifecycleOwner;
            this.mObserver = loaderObserver;
            return this.mLoader;
        }

        LoaderInfo(int i10, @Nullable Bundle bundle, @NonNull Loader<D> loader, @Nullable Loader<D> loader2) {
            this.mId = i10;
            this.mArgs = bundle;
            this.mLoader = loader;
            this.mPriorLoader = loader2;
            loader.registerListener(i10, this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        public void n(@NonNull Observer<? super D> observer) {
            super.n(observer);
            this.mLifecycleOwner = null;
            this.mObserver = null;
        }

        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        public void p(D d) {
            super.p(d);
            Loader<D> loader = this.mPriorLoader;
            if (loader != null) {
                loader.reset();
                this.mPriorLoader = null;
            }
        }

        public void r(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.mId);
            printWriter.print(" mArgs=");
            printWriter.println(this.mArgs);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.mLoader);
            this.mLoader.dump(str + "  ", fileDescriptor, printWriter, strArr);
            if (this.mObserver != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.mObserver);
                this.mObserver.a(str + "  ", printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(s().dataToString(f()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(h());
        }
    }

    static class LoaderObserver<D> implements Observer<D> {

        @NonNull
        private final LoaderManager.LoaderCallbacks<D> mCallback;
        private boolean mDeliveredData = false;

        @NonNull
        private final Loader<D> mLoader;

        boolean b() {
            return this.mDeliveredData;
        }

        @MainThread
        void c() {
            if (this.mDeliveredData) {
                if (LoaderManagerImpl.DEBUG) {
                    Log.v(LoaderManagerImpl.TAG, "  Resetting: " + this.mLoader);
                }
                this.mCallback.onLoaderReset(this.mLoader);
            }
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(@Nullable D d) {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "  onLoadFinished in " + this.mLoader + ": " + this.mLoader.dataToString(d));
            }
            this.mCallback.onLoadFinished(this.mLoader, d);
            this.mDeliveredData = true;
        }

        public String toString() {
            return this.mCallback.toString();
        }

        LoaderObserver(@NonNull Loader<D> loader, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
            this.mLoader = loader;
            this.mCallback = loaderCallbacks;
        }

        public void a(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.mDeliveredData);
        }
    }

    static class LoaderViewModel extends ViewModel {
        private static final ViewModelProvider.Factory FACTORY = new ViewModelProvider.Factory() { // from class: androidx.loader.app.LoaderManagerImpl.LoaderViewModel.1
            @Override // androidx.lifecycle.ViewModelProvider.Factory
            public /* synthetic */ ViewModel create(Class cls, CreationExtras creationExtras) {
                return j.b(this, cls, creationExtras);
            }

            @Override // androidx.lifecycle.ViewModelProvider.Factory
            @NonNull
            public <T extends ViewModel> T create(@NonNull Class<T> cls) {
                return new LoaderViewModel();
            }
        };
        private SparseArrayCompat<LoaderInfo> mLoaders = new SparseArrayCompat<>();
        private boolean mCreatingLoader = false;

        void d() {
            this.mCreatingLoader = false;
        }

        boolean g() {
            return this.mCreatingLoader;
        }

        void j() {
            this.mCreatingLoader = true;
        }

        @NonNull
        static LoaderViewModel e(ViewModelStore viewModelStore) {
            return (LoaderViewModel) new ViewModelProvider(viewModelStore, FACTORY).a(LoaderViewModel.class);
        }

        public void b(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.mLoaders.r() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                for (int i10 = 0; i10 < this.mLoaders.r(); i10++) {
                    LoaderInfo loaderInfoS = this.mLoaders.s(i10);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.mLoaders.n(i10));
                    printWriter.print(": ");
                    printWriter.println(loaderInfoS.toString());
                    loaderInfoS.r(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }

        <D> LoaderInfo<D> f(int i10) {
            return this.mLoaders.j(i10);
        }

        void h() {
            int iR = this.mLoaders.r();
            for (int i10 = 0; i10 < iR; i10++) {
                this.mLoaders.s(i10).t();
            }
        }

        void i(int i10, @NonNull LoaderInfo loaderInfo) {
            this.mLoaders.o(i10, loaderInfo);
        }

        LoaderViewModel() {
        }

        @Override // androidx.lifecycle.ViewModel
        protected void onCleared() {
            super.onCleared();
            int iR = this.mLoaders.r();
            for (int i10 = 0; i10 < iR; i10++) {
                this.mLoaders.s(i10).q(true);
            }
            this.mLoaders.c();
        }
    }

    @NonNull
    @MainThread
    private <D> Loader<D> e(int i10, @Nullable Bundle bundle, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks, @Nullable Loader<D> loader) {
        try {
            this.mLoaderViewModel.j();
            Loader<D> loaderOnCreateLoader = loaderCallbacks.onCreateLoader(i10, bundle);
            if (loaderOnCreateLoader == null) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
            }
            if (loaderOnCreateLoader.getClass().isMemberClass() && !Modifier.isStatic(loaderOnCreateLoader.getClass().getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + loaderOnCreateLoader);
            }
            LoaderInfo loaderInfo = new LoaderInfo(i10, bundle, loaderOnCreateLoader, loader);
            if (DEBUG) {
                Log.v(TAG, "  Created new loader " + loaderInfo);
            }
            this.mLoaderViewModel.i(i10, loaderInfo);
            this.mLoaderViewModel.d();
            return loaderInfo.u(this.mLifecycleOwner, loaderCallbacks);
        } catch (Throwable th) {
            this.mLoaderViewModel.d();
            throw th;
        }
    }

    @Override // androidx.loader.app.LoaderManager
    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.mLoaderViewModel.b(str, fileDescriptor, printWriter, strArr);
    }

    @Override // androidx.loader.app.LoaderManager
    @NonNull
    @MainThread
    public <D> Loader<D> c(int i10, @Nullable Bundle bundle, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (this.mLoaderViewModel.g()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
        LoaderInfo<D> loaderInfoF = this.mLoaderViewModel.f(i10);
        if (DEBUG) {
            Log.v(TAG, "initLoader in " + this + ": args=" + bundle);
        }
        if (loaderInfoF == null) {
            return e(i10, bundle, loaderCallbacks, null);
        }
        if (DEBUG) {
            Log.v(TAG, "  Re-using existing loader " + loaderInfoF);
        }
        return loaderInfoF.u(this.mLifecycleOwner, loaderCallbacks);
    }

    @Override // androidx.loader.app.LoaderManager
    public void d() {
        this.mLoaderViewModel.h();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        DebugUtils.a(this.mLifecycleOwner, sb);
        sb.append("}}");
        return sb.toString();
    }

    LoaderManagerImpl(@NonNull LifecycleOwner lifecycleOwner, @NonNull ViewModelStore viewModelStore) {
        this.mLifecycleOwner = lifecycleOwner;
        this.mLoaderViewModel = LoaderViewModel.e(viewModelStore);
    }
}
