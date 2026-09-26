package androidx.media;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.media.browse.MediaBrowser;
import android.media.session.MediaSession;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.service.media.MediaBrowserService;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.core.app.BundleCompat;
import androidx.core.util.Pair;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class MediaBrowserServiceCompat extends Service {
    private static final float EPSILON = 1.0E-5f;

    @RestrictTo
    public static final String KEY_MEDIA_ITEM = "media_item";

    @RestrictTo
    public static final String KEY_SEARCH_RESULTS = "search_results";

    @RestrictTo
    public static final int RESULT_ERROR = -1;
    static final int RESULT_FLAG_ON_LOAD_ITEM_NOT_IMPLEMENTED = 2;
    static final int RESULT_FLAG_ON_SEARCH_NOT_IMPLEMENTED = 4;
    static final int RESULT_FLAG_OPTION_NOT_HANDLED = 1;

    @RestrictTo
    public static final int RESULT_OK = 0;

    @RestrictTo
    public static final int RESULT_PROGRESS_UPDATE = 1;
    public static final String SERVICE_INTERFACE = "android.media.browse.MediaBrowserService";
    ConnectionRecord mCurConnection;
    private MediaBrowserServiceImpl mImpl;
    MediaSessionCompat.Token mSession;
    static final String TAG = "MBServiceCompat";
    static final boolean DEBUG = Log.isLoggable(TAG, 3);
    final ConnectionRecord mConnectionFromFwk = new ConnectionRecord(MediaSessionManager.RemoteUserInfo.LEGACY_CONTROLLER, -1, -1, null, null);
    final ArrayList<ConnectionRecord> mPendingConnections = new ArrayList<>();
    final ArrayMap<IBinder, ConnectionRecord> mConnections = new ArrayMap<>();
    final ServiceHandler mHandler = new ServiceHandler();

    public static final class BrowserRoot {
        public static final String EXTRA_OFFLINE = "android.service.media.extra.OFFLINE";
        public static final String EXTRA_RECENT = "android.service.media.extra.RECENT";
        public static final String EXTRA_SUGGESTED = "android.service.media.extra.SUGGESTED";

        @Deprecated
        public static final String EXTRA_SUGGESTION_KEYWORDS = "android.service.media.extra.SUGGESTION_KEYWORDS";
        private final Bundle mExtras;
        private final String mRootId;

        public Bundle c() {
            return this.mExtras;
        }

        public String d() {
            return this.mRootId;
        }

        public BrowserRoot(@NonNull String str, @Nullable Bundle bundle) {
            if (str != null) {
                this.mRootId = str;
                this.mExtras = bundle;
                return;
            }
            throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead");
        }
    }

    private class ConnectionRecord implements IBinder.DeathRecipient {
        public final MediaSessionManager.RemoteUserInfo browserInfo;
        public final ServiceCallbacks callbacks;
        public final int pid;
        public final String pkg;
        public BrowserRoot root;
        public final Bundle rootHints;
        public final HashMap<String, List<Pair<IBinder, Bundle>>> subscriptions = new HashMap<>();
        public final int uid;

        ConnectionRecord(String str, int i10, int i11, Bundle bundle, ServiceCallbacks serviceCallbacks) {
            this.pkg = str;
            this.pid = i10;
            this.uid = i11;
            this.browserInfo = new MediaSessionManager.RemoteUserInfo(str, i10, i11);
            this.rootHints = bundle;
            this.callbacks = serviceCallbacks;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            MediaBrowserServiceCompat.this.mHandler.post(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ConnectionRecord.1
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = ConnectionRecord.this;
                    MediaBrowserServiceCompat.this.mConnections.remove(connectionRecord.callbacks.asBinder());
                }
            });
        }
    }

    interface MediaBrowserServiceImpl {
        IBinder onBind(Intent intent);

        void onCreate();
    }

    @RequiresApi
    class MediaBrowserServiceImplApi21 implements MediaBrowserServiceImpl {
        Messenger mMessenger;
        final List<Bundle> mRootExtrasList = new ArrayList();
        MediaBrowserService mServiceFwk;

        /* JADX INFO: renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1, reason: invalid class name */
        /* JADX INFO: loaded from: classes9.dex */
        class AnonymousClass1 implements Runnable {
            final /* synthetic */ MediaBrowserServiceImplApi21 this$1;
            final /* synthetic */ MediaSessionCompat.Token val$token;

            @Override // java.lang.Runnable
            public void run() {
                this.this$1.d(this.val$token);
            }
        }

        /* JADX INFO: renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$3, reason: invalid class name */
        /* JADX INFO: loaded from: classes9.dex */
        class AnonymousClass3 implements Runnable {
            final /* synthetic */ MediaBrowserServiceImplApi21 this$1;
            final /* synthetic */ Bundle val$options;
            final /* synthetic */ String val$parentId;

            @Override // java.lang.Runnable
            public void run() {
                Iterator<IBinder> it = MediaBrowserServiceCompat.this.mConnections.keySet().iterator();
                while (it.hasNext()) {
                    this.this$1.a(MediaBrowserServiceCompat.this.mConnections.get(it.next()), this.val$parentId, this.val$options);
                }
            }
        }

        /* JADX INFO: renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4, reason: invalid class name */
        /* JADX INFO: loaded from: classes9.dex */
        class AnonymousClass4 implements Runnable {
            final /* synthetic */ MediaBrowserServiceImplApi21 this$1;
            final /* synthetic */ Bundle val$options;
            final /* synthetic */ String val$parentId;
            final /* synthetic */ MediaSessionManager.RemoteUserInfo val$remoteUserInfo;

            @Override // java.lang.Runnable
            public void run() {
                for (int i10 = 0; i10 < MediaBrowserServiceCompat.this.mConnections.size(); i10++) {
                    ConnectionRecord connectionRecordP = MediaBrowserServiceCompat.this.mConnections.p(i10);
                    if (connectionRecordP.browserInfo.equals(this.val$remoteUserInfo)) {
                        this.this$1.a(connectionRecordP, this.val$parentId, this.val$options);
                    }
                }
            }
        }

        @RequiresApi
        class MediaBrowserServiceApi21 extends MediaBrowserService {
            MediaBrowserServiceApi21(Context context) {
                attachBaseContext(context);
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result) {
                MediaBrowserServiceImplApi21.this.c(str, new ResultWrapper<>(result));
            }

            @Override // android.service.media.MediaBrowserService
            @SuppressLint({"SyntheticAccessor"})
            public MediaBrowserService.BrowserRoot onGetRoot(String str, int i10, Bundle bundle) {
                Bundle bundle2;
                MediaSessionCompat.a(bundle);
                MediaBrowserServiceImplApi21 mediaBrowserServiceImplApi21 = MediaBrowserServiceImplApi21.this;
                if (bundle == null) {
                    bundle2 = null;
                } else {
                    bundle2 = new Bundle(bundle);
                }
                BrowserRoot browserRootB = mediaBrowserServiceImplApi21.b(str, i10, bundle2);
                if (browserRootB == null) {
                    return null;
                }
                return new MediaBrowserService.BrowserRoot(browserRootB.mRootId, browserRootB.mExtras);
            }
        }

        public BrowserRoot b(String str, int i10, Bundle bundle) {
            Bundle bundleC;
            int i11 = -1;
            if (bundle == null || bundle.getInt(MediaBrowserProtocol.EXTRA_CLIENT_VERSION, 0) == 0) {
                bundleC = null;
            } else {
                bundle.remove(MediaBrowserProtocol.EXTRA_CLIENT_VERSION);
                this.mMessenger = new Messenger(MediaBrowserServiceCompat.this.mHandler);
                bundleC = new Bundle();
                bundleC.putInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 2);
                BundleCompat.b(bundleC, MediaBrowserProtocol.EXTRA_MESSENGER_BINDER, this.mMessenger.getBinder());
                MediaSessionCompat.Token token = MediaBrowserServiceCompat.this.mSession;
                if (token != null) {
                    android.support.v4.media.session.b bVarE = token.e();
                    BundleCompat.b(bundleC, MediaBrowserProtocol.EXTRA_SESSION_BINDER, bVarE == null ? null : bVarE.asBinder());
                } else {
                    this.mRootExtrasList.add(bundleC);
                }
                i11 = bundle.getInt(MediaBrowserProtocol.EXTRA_CALLING_PID, -1);
                bundle.remove(MediaBrowserProtocol.EXTRA_CALLING_PID);
            }
            ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.new ConnectionRecord(str, i11, i10, bundle, null);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.mCurConnection = connectionRecord;
            BrowserRoot browserRootE = mediaBrowserServiceCompat.e(str, i10, bundle);
            MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat2.mCurConnection = null;
            if (browserRootE == null) {
                return null;
            }
            if (this.mMessenger != null) {
                mediaBrowserServiceCompat2.mPendingConnections.add(connectionRecord);
            }
            if (bundleC == null) {
                bundleC = browserRootE.c();
            } else if (browserRootE.c() != null) {
                bundleC.putAll(browserRootE.c());
            }
            return new BrowserRoot(browserRootE.d(), bundleC);
        }

        MediaBrowserServiceImplApi21() {
        }

        void a(ConnectionRecord connectionRecord, String str, Bundle bundle) {
            List<Pair<IBinder, Bundle>> list = connectionRecord.subscriptions.get(str);
            if (list != null) {
                for (Pair<IBinder, Bundle> pair : list) {
                    if (MediaBrowserCompatUtils.b(bundle, pair.second)) {
                        MediaBrowserServiceCompat.this.m(str, connectionRecord, pair.second, bundle);
                    }
                }
            }
        }

        public void c(String str, final ResultWrapper<List<Parcel>> resultWrapper) {
            Result<List<MediaBrowserCompat.MediaItem>> result = new Result<List<MediaBrowserCompat.MediaItem>>(str) { // from class: androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21.2
                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // androidx.media.MediaBrowserServiceCompat.Result
                /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
                public void d(@Nullable List<MediaBrowserCompat.MediaItem> list) {
                    ArrayList arrayList;
                    if (list != null) {
                        arrayList = new ArrayList(list.size());
                        for (MediaBrowserCompat.MediaItem mediaItem : list) {
                            Parcel parcelObtain = Parcel.obtain();
                            mediaItem.writeToParcel(parcelObtain, 0);
                            arrayList.add(parcelObtain);
                        }
                    } else {
                        arrayList = null;
                    }
                    resultWrapper.b(arrayList);
                }
            };
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.mCurConnection = mediaBrowserServiceCompat.mConnectionFromFwk;
            mediaBrowserServiceCompat.f(str, result);
            MediaBrowserServiceCompat.this.mCurConnection = null;
        }

        void d(MediaSessionCompat.Token token) {
            if (!this.mRootExtrasList.isEmpty()) {
                android.support.v4.media.session.b bVarE = token.e();
                if (bVarE != null) {
                    Iterator<Bundle> it = this.mRootExtrasList.iterator();
                    while (it.hasNext()) {
                        BundleCompat.b(it.next(), MediaBrowserProtocol.EXTRA_SESSION_BINDER, bVarE.asBinder());
                    }
                }
                this.mRootExtrasList.clear();
            }
            this.mServiceFwk.setSessionToken((MediaSession.Token) token.h());
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public IBinder onBind(Intent intent) {
            return this.mServiceFwk.onBind(intent);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void onCreate() {
            MediaBrowserServiceApi21 mediaBrowserServiceApi21 = new MediaBrowserServiceApi21(MediaBrowserServiceCompat.this);
            this.mServiceFwk = mediaBrowserServiceApi21;
            mediaBrowserServiceApi21.onCreate();
        }
    }

    @RequiresApi
    class MediaBrowserServiceImplApi23 extends MediaBrowserServiceImplApi21 {

        class MediaBrowserServiceApi23 extends MediaBrowserServiceImplApi21.MediaBrowserServiceApi21 {
            MediaBrowserServiceApi23(Context context) {
                super(context);
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadItem(String str, MediaBrowserService.Result<MediaBrowser.MediaItem> result) {
                MediaBrowserServiceImplApi23.this.e(str, new ResultWrapper<>(result));
            }
        }

        MediaBrowserServiceImplApi23() {
            super();
        }

        public void e(String str, final ResultWrapper<Parcel> resultWrapper) {
            Result<MediaBrowserCompat.MediaItem> result = new Result<MediaBrowserCompat.MediaItem>(str) { // from class: androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi23.1
                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // androidx.media.MediaBrowserServiceCompat.Result
                /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
                public void d(@Nullable MediaBrowserCompat.MediaItem mediaItem) {
                    if (mediaItem == null) {
                        resultWrapper.b(null);
                        return;
                    }
                    Parcel parcelObtain = Parcel.obtain();
                    mediaItem.writeToParcel(parcelObtain, 0);
                    resultWrapper.b(parcelObtain);
                }
            };
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.mCurConnection = mediaBrowserServiceCompat.mConnectionFromFwk;
            mediaBrowserServiceCompat.h(str, result);
            MediaBrowserServiceCompat.this.mCurConnection = null;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21, androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void onCreate() {
            MediaBrowserServiceApi23 mediaBrowserServiceApi23 = new MediaBrowserServiceApi23(MediaBrowserServiceCompat.this);
            this.mServiceFwk = mediaBrowserServiceApi23;
            mediaBrowserServiceApi23.onCreate();
        }
    }

    @RequiresApi
    class MediaBrowserServiceImplApi26 extends MediaBrowserServiceImplApi23 {

        class MediaBrowserServiceApi26 extends MediaBrowserServiceImplApi23.MediaBrowserServiceApi23 {
            MediaBrowserServiceApi26(Context context) {
                super(context);
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result, Bundle bundle) {
                MediaSessionCompat.a(bundle);
                MediaBrowserServiceImplApi26 mediaBrowserServiceImplApi26 = MediaBrowserServiceImplApi26.this;
                MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat.mCurConnection = mediaBrowserServiceCompat.mConnectionFromFwk;
                mediaBrowserServiceImplApi26.f(str, new ResultWrapper<>(result), bundle);
                MediaBrowserServiceCompat.this.mCurConnection = null;
            }
        }

        MediaBrowserServiceImplApi26() {
            super();
        }

        public void f(String str, final ResultWrapper<List<Parcel>> resultWrapper, final Bundle bundle) {
            Result<List<MediaBrowserCompat.MediaItem>> result = new Result<List<MediaBrowserCompat.MediaItem>>(str) { // from class: androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi26.1
                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // androidx.media.MediaBrowserServiceCompat.Result
                /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
                public void d(@Nullable List<MediaBrowserCompat.MediaItem> list) {
                    if (list == null) {
                        resultWrapper.b(null);
                        return;
                    }
                    if ((a() & 1) != 0) {
                        list = MediaBrowserServiceCompat.this.b(list, bundle);
                    }
                    ArrayList arrayList = new ArrayList(list.size());
                    for (MediaBrowserCompat.MediaItem mediaItem : list) {
                        Parcel parcelObtain = Parcel.obtain();
                        mediaItem.writeToParcel(parcelObtain, 0);
                        arrayList.add(parcelObtain);
                    }
                    resultWrapper.b(arrayList);
                }
            };
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.mCurConnection = mediaBrowserServiceCompat.mConnectionFromFwk;
            mediaBrowserServiceCompat.g(str, result, bundle);
            MediaBrowserServiceCompat.this.mCurConnection = null;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi23, androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21, androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void onCreate() {
            MediaBrowserServiceApi26 mediaBrowserServiceApi26 = new MediaBrowserServiceApi26(MediaBrowserServiceCompat.this);
            this.mServiceFwk = mediaBrowserServiceApi26;
            mediaBrowserServiceApi26.onCreate();
        }
    }

    @RequiresApi
    class MediaBrowserServiceImplApi28 extends MediaBrowserServiceImplApi26 {
        MediaBrowserServiceImplApi28() {
            super();
        }
    }

    class MediaBrowserServiceImplBase implements MediaBrowserServiceImpl {
        private Messenger mMessenger;
        final /* synthetic */ MediaBrowserServiceCompat this$0;

        /* JADX INFO: renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1, reason: invalid class name */
        /* JADX INFO: loaded from: classes8.dex */
        class AnonymousClass1 implements Runnable {
            final /* synthetic */ MediaBrowserServiceImplBase this$1;
            final /* synthetic */ MediaSessionCompat.Token val$token;

            @Override // java.lang.Runnable
            public void run() {
                Iterator<ConnectionRecord> it = this.this$1.this$0.mConnections.values().iterator();
                while (it.hasNext()) {
                    ConnectionRecord next = it.next();
                    try {
                        next.callbacks.c(next.root.d(), this.val$token, next.root.c());
                    } catch (RemoteException unused) {
                        Log.w(MediaBrowserServiceCompat.TAG, "Connection for " + next.pkg + " is no longer valid.");
                        it.remove();
                    }
                }
            }
        }

        /* JADX INFO: renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2, reason: invalid class name */
        /* JADX INFO: loaded from: classes8.dex */
        class AnonymousClass2 implements Runnable {
            final /* synthetic */ MediaBrowserServiceImplBase this$1;
            final /* synthetic */ Bundle val$options;
            final /* synthetic */ String val$parentId;

            @Override // java.lang.Runnable
            public void run() {
                Iterator<IBinder> it = this.this$1.this$0.mConnections.keySet().iterator();
                while (it.hasNext()) {
                    this.this$1.a(this.this$1.this$0.mConnections.get(it.next()), this.val$parentId, this.val$options);
                }
            }
        }

        /* JADX INFO: renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3, reason: invalid class name */
        /* JADX INFO: loaded from: classes8.dex */
        class AnonymousClass3 implements Runnable {
            final /* synthetic */ MediaBrowserServiceImplBase this$1;
            final /* synthetic */ Bundle val$options;
            final /* synthetic */ String val$parentId;
            final /* synthetic */ MediaSessionManager.RemoteUserInfo val$remoteUserInfo;

            @Override // java.lang.Runnable
            public void run() {
                for (int i10 = 0; i10 < this.this$1.this$0.mConnections.size(); i10++) {
                    ConnectionRecord connectionRecordP = this.this$1.this$0.mConnections.p(i10);
                    if (connectionRecordP.browserInfo.equals(this.val$remoteUserInfo)) {
                        this.this$1.a(connectionRecordP, this.val$parentId, this.val$options);
                        return;
                    }
                }
            }
        }

        void a(ConnectionRecord connectionRecord, String str, Bundle bundle) {
            List<Pair<IBinder, Bundle>> list = connectionRecord.subscriptions.get(str);
            if (list != null) {
                for (Pair<IBinder, Bundle> pair : list) {
                    if (MediaBrowserCompatUtils.b(bundle, pair.second)) {
                        this.this$0.m(str, connectionRecord, pair.second, bundle);
                    }
                }
            }
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public IBinder onBind(Intent intent) {
            if (MediaBrowserServiceCompat.SERVICE_INTERFACE.equals(intent.getAction())) {
                return this.mMessenger.getBinder();
            }
            return null;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void onCreate() {
            this.mMessenger = new Messenger(this.this$0.mHandler);
        }
    }

    public static class Result<T> {
        private final Object mDebug;
        private boolean mDetachCalled;
        private int mFlags;
        private boolean mSendErrorCalled;
        private boolean mSendResultCalled;

        int a() {
            return this.mFlags;
        }

        boolean b() {
            return this.mDetachCalled || this.mSendResultCalled || this.mSendErrorCalled;
        }

        void d(@Nullable T t5) {
        }

        void g(int i10) {
            this.mFlags = i10;
        }

        void c(@Nullable Bundle bundle) {
            throw new UnsupportedOperationException("It is not supported to send an error for " + this.mDebug);
        }

        public void e(@Nullable Bundle bundle) {
            if (!this.mSendResultCalled && !this.mSendErrorCalled) {
                this.mSendErrorCalled = true;
                c(bundle);
            } else {
                throw new IllegalStateException("sendError() called when either sendResult() or sendError() had already been called for: " + this.mDebug);
            }
        }

        public void f(@Nullable T t5) {
            if (!this.mSendResultCalled && !this.mSendErrorCalled) {
                this.mSendResultCalled = true;
                d(t5);
            } else {
                throw new IllegalStateException("sendResult() called when either sendResult() or sendError() had already been called for: " + this.mDebug);
            }
        }

        Result(Object obj) {
            this.mDebug = obj;
        }
    }

    @RequiresApi
    static class ResultWrapper<T> {
        MediaBrowserService.Result mResultFwk;

        List<MediaBrowser.MediaItem> a(List<Parcel> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            for (Parcel parcel : list) {
                parcel.setDataPosition(0);
                arrayList.add((MediaBrowser.MediaItem) MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            }
            return arrayList;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void b(T t5) {
            if (t5 instanceof List) {
                this.mResultFwk.sendResult(a((List) t5));
                return;
            }
            if (!(t5 instanceof Parcel)) {
                this.mResultFwk.sendResult(null);
                return;
            }
            Parcel parcel = (Parcel) t5;
            parcel.setDataPosition(0);
            this.mResultFwk.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
            parcel.recycle();
        }

        ResultWrapper(MediaBrowserService.Result result) {
            this.mResultFwk = result;
        }
    }

    private class ServiceBinderImpl {
        ServiceBinderImpl() {
        }

        public void a(final String str, final IBinder iBinder, final Bundle bundle, final ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.mHandler.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.3
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.mConnections.get(serviceCallbacks.asBinder());
                    if (connectionRecord != null) {
                        MediaBrowserServiceCompat.this.a(str, connectionRecord, iBinder, bundle);
                        return;
                    }
                    Log.w(MediaBrowserServiceCompat.TAG, "addSubscription for callback that isn't registered id=" + str);
                }
            });
        }

        public void b(final String str, final int i10, final int i11, final Bundle bundle, final ServiceCallbacks serviceCallbacks) {
            if (MediaBrowserServiceCompat.this.c(str, i11)) {
                MediaBrowserServiceCompat.this.mHandler.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.1
                    @Override // java.lang.Runnable
                    public void run() {
                        IBinder iBinderAsBinder = serviceCallbacks.asBinder();
                        MediaBrowserServiceCompat.this.mConnections.remove(iBinderAsBinder);
                        ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.new ConnectionRecord(str, i10, i11, bundle, serviceCallbacks);
                        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                        mediaBrowserServiceCompat.mCurConnection = connectionRecord;
                        BrowserRoot browserRootE = mediaBrowserServiceCompat.e(str, i11, bundle);
                        connectionRecord.root = browserRootE;
                        MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                        mediaBrowserServiceCompat2.mCurConnection = null;
                        if (browserRootE != null) {
                            try {
                                mediaBrowserServiceCompat2.mConnections.put(iBinderAsBinder, connectionRecord);
                                iBinderAsBinder.linkToDeath(connectionRecord, 0);
                                if (MediaBrowserServiceCompat.this.mSession != null) {
                                    serviceCallbacks.c(connectionRecord.root.d(), MediaBrowserServiceCompat.this.mSession, connectionRecord.root.c());
                                    return;
                                }
                                return;
                            } catch (RemoteException unused) {
                                Log.w(MediaBrowserServiceCompat.TAG, "Calling onConnect() failed. Dropping client. pkg=" + str);
                                MediaBrowserServiceCompat.this.mConnections.remove(iBinderAsBinder);
                                return;
                            }
                        }
                        Log.i(MediaBrowserServiceCompat.TAG, "No root for client " + str + " from service " + getClass().getName());
                        try {
                            serviceCallbacks.b();
                        } catch (RemoteException unused2) {
                            Log.w(MediaBrowserServiceCompat.TAG, "Calling onConnectFailed() failed. Ignoring. pkg=" + str);
                        }
                    }
                });
                return;
            }
            throw new IllegalArgumentException("Package/uid mismatch: uid=" + i11 + " package=" + str);
        }

        public void c(final ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.mHandler.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.2
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecordRemove = MediaBrowserServiceCompat.this.mConnections.remove(serviceCallbacks.asBinder());
                    if (connectionRecordRemove != null) {
                        connectionRecordRemove.callbacks.asBinder().unlinkToDeath(connectionRecordRemove, 0);
                    }
                }
            });
        }

        public void e(final ServiceCallbacks serviceCallbacks, final String str, final int i10, final int i11, final Bundle bundle) {
            MediaBrowserServiceCompat.this.mHandler.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.6
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord;
                    IBinder iBinderAsBinder = serviceCallbacks.asBinder();
                    MediaBrowserServiceCompat.this.mConnections.remove(iBinderAsBinder);
                    Iterator<ConnectionRecord> it = MediaBrowserServiceCompat.this.mPendingConnections.iterator();
                    while (true) {
                        connectionRecord = null;
                        if (!it.hasNext()) {
                            break;
                        }
                        ConnectionRecord next = it.next();
                        if (next.uid == i11) {
                            connectionRecord = (TextUtils.isEmpty(str) || i10 <= 0) ? MediaBrowserServiceCompat.this.new ConnectionRecord(next.pkg, next.pid, next.uid, bundle, serviceCallbacks) : null;
                            it.remove();
                            break;
                        }
                    }
                    if (connectionRecord == null) {
                        connectionRecord = MediaBrowserServiceCompat.this.new ConnectionRecord(str, i10, i11, bundle, serviceCallbacks);
                    }
                    MediaBrowserServiceCompat.this.mConnections.put(iBinderAsBinder, connectionRecord);
                    try {
                        iBinderAsBinder.linkToDeath(connectionRecord, 0);
                    } catch (RemoteException unused) {
                        Log.w(MediaBrowserServiceCompat.TAG, "IBinder is already dead.");
                    }
                }
            });
        }

        public void f(final String str, final IBinder iBinder, final ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.mHandler.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.4
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.mConnections.get(serviceCallbacks.asBinder());
                    if (connectionRecord == null) {
                        Log.w(MediaBrowserServiceCompat.TAG, "removeSubscription for callback that isn't registered id=" + str);
                        return;
                    }
                    if (MediaBrowserServiceCompat.this.p(str, connectionRecord, iBinder)) {
                        return;
                    }
                    Log.w(MediaBrowserServiceCompat.TAG, "removeSubscription called for " + str + " which is not subscribed");
                }
            });
        }

        public void i(final ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.mHandler.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.7
                @Override // java.lang.Runnable
                public void run() {
                    IBinder iBinderAsBinder = serviceCallbacks.asBinder();
                    ConnectionRecord connectionRecordRemove = MediaBrowserServiceCompat.this.mConnections.remove(iBinderAsBinder);
                    if (connectionRecordRemove != null) {
                        iBinderAsBinder.unlinkToDeath(connectionRecordRemove, 0);
                    }
                }
            });
        }

        public void d(final String str, final ResultReceiver resultReceiver, final ServiceCallbacks serviceCallbacks) {
            if (!TextUtils.isEmpty(str) && resultReceiver != null) {
                MediaBrowserServiceCompat.this.mHandler.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.5
                    @Override // java.lang.Runnable
                    public void run() {
                        ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.mConnections.get(serviceCallbacks.asBinder());
                        if (connectionRecord != null) {
                            MediaBrowserServiceCompat.this.n(str, connectionRecord, resultReceiver);
                            return;
                        }
                        Log.w(MediaBrowserServiceCompat.TAG, "getMediaItem for callback that isn't registered id=" + str);
                    }
                });
            }
        }

        public void g(final String str, final Bundle bundle, final ResultReceiver resultReceiver, final ServiceCallbacks serviceCallbacks) {
            if (!TextUtils.isEmpty(str) && resultReceiver != null) {
                MediaBrowserServiceCompat.this.mHandler.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.8
                    @Override // java.lang.Runnable
                    public void run() {
                        ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.mConnections.get(serviceCallbacks.asBinder());
                        if (connectionRecord != null) {
                            MediaBrowserServiceCompat.this.o(str, bundle, connectionRecord, resultReceiver);
                            return;
                        }
                        Log.w(MediaBrowserServiceCompat.TAG, "search for callback that isn't registered query=" + str);
                    }
                });
            }
        }

        public void h(final String str, final Bundle bundle, final ResultReceiver resultReceiver, final ServiceCallbacks serviceCallbacks) {
            if (!TextUtils.isEmpty(str) && resultReceiver != null) {
                MediaBrowserServiceCompat.this.mHandler.a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.9
                    @Override // java.lang.Runnable
                    public void run() {
                        ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.mConnections.get(serviceCallbacks.asBinder());
                        if (connectionRecord != null) {
                            MediaBrowserServiceCompat.this.l(str, bundle, connectionRecord, resultReceiver);
                            return;
                        }
                        Log.w(MediaBrowserServiceCompat.TAG, "sendCustomAction for callback that isn't registered action=" + str + ", extras=" + bundle);
                    }
                });
            }
        }
    }

    private interface ServiceCallbacks {
        void a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2) throws RemoteException;

        IBinder asBinder();

        void b() throws RemoteException;

        void c(String str, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException;
    }

    private static class ServiceCallbacksCompat implements ServiceCallbacks {
        final Messenger mCallbacks;

        @Override // androidx.media.MediaBrowserServiceCompat.ServiceCallbacks
        public void b() throws RemoteException {
            d(2, null);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.ServiceCallbacks
        public void a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2) throws RemoteException {
            Bundle bundle3 = new Bundle();
            bundle3.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            bundle3.putBundle(MediaBrowserProtocol.DATA_OPTIONS, bundle);
            bundle3.putBundle(MediaBrowserProtocol.DATA_NOTIFY_CHILDREN_CHANGED_OPTIONS, bundle2);
            if (list != null) {
                bundle3.putParcelableArrayList(MediaBrowserProtocol.DATA_MEDIA_ITEM_LIST, list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
            }
            d(3, bundle3);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.ServiceCallbacks
        public IBinder asBinder() {
            return this.mCallbacks.getBinder();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.ServiceCallbacks
        public void c(String str, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 2);
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            bundle2.putParcelable(MediaBrowserProtocol.DATA_MEDIA_SESSION_TOKEN, token);
            bundle2.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, bundle);
            d(1, bundle2);
        }

        ServiceCallbacksCompat(Messenger messenger) {
            this.mCallbacks = messenger;
        }

        private void d(int i10, Bundle bundle) throws RemoteException {
            Message messageObtain = Message.obtain();
            messageObtain.what = i10;
            messageObtain.arg1 = 2;
            messageObtain.setData(bundle);
            this.mCallbacks.send(messageObtain);
        }
    }

    private final class ServiceHandler extends Handler {
        private final ServiceBinderImpl mServiceBinderImpl;

        ServiceHandler() {
            this.mServiceBinderImpl = MediaBrowserServiceCompat.this.new ServiceBinderImpl();
        }

        public void a(Runnable runnable) {
            if (Thread.currentThread() == getLooper().getThread()) {
                runnable.run();
            } else {
                post(runnable);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Bundle data = message.getData();
            switch (message.what) {
                case 1:
                    Bundle bundle = data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS);
                    MediaSessionCompat.a(bundle);
                    this.mServiceBinderImpl.b(data.getString(MediaBrowserProtocol.DATA_PACKAGE_NAME), data.getInt(MediaBrowserProtocol.DATA_CALLING_PID), data.getInt(MediaBrowserProtocol.DATA_CALLING_UID), bundle, new ServiceCallbacksCompat(message.replyTo));
                    break;
                case 2:
                    this.mServiceBinderImpl.c(new ServiceCallbacksCompat(message.replyTo));
                    break;
                case 3:
                    Bundle bundle2 = data.getBundle(MediaBrowserProtocol.DATA_OPTIONS);
                    MediaSessionCompat.a(bundle2);
                    this.mServiceBinderImpl.a(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), BundleCompat.a(data, MediaBrowserProtocol.DATA_CALLBACK_TOKEN), bundle2, new ServiceCallbacksCompat(message.replyTo));
                    break;
                case 4:
                    this.mServiceBinderImpl.f(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), BundleCompat.a(data, MediaBrowserProtocol.DATA_CALLBACK_TOKEN), new ServiceCallbacksCompat(message.replyTo));
                    break;
                case 5:
                    this.mServiceBinderImpl.d(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), (ResultReceiver) data.getParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER), new ServiceCallbacksCompat(message.replyTo));
                    break;
                case 6:
                    Bundle bundle3 = data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS);
                    MediaSessionCompat.a(bundle3);
                    this.mServiceBinderImpl.e(new ServiceCallbacksCompat(message.replyTo), data.getString(MediaBrowserProtocol.DATA_PACKAGE_NAME), data.getInt(MediaBrowserProtocol.DATA_CALLING_PID), data.getInt(MediaBrowserProtocol.DATA_CALLING_UID), bundle3);
                    break;
                case 7:
                    this.mServiceBinderImpl.i(new ServiceCallbacksCompat(message.replyTo));
                    break;
                case 8:
                    Bundle bundle4 = data.getBundle(MediaBrowserProtocol.DATA_SEARCH_EXTRAS);
                    MediaSessionCompat.a(bundle4);
                    this.mServiceBinderImpl.g(data.getString(MediaBrowserProtocol.DATA_SEARCH_QUERY), bundle4, (ResultReceiver) data.getParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER), new ServiceCallbacksCompat(message.replyTo));
                    break;
                case 9:
                    Bundle bundle5 = data.getBundle(MediaBrowserProtocol.DATA_CUSTOM_ACTION_EXTRAS);
                    MediaSessionCompat.a(bundle5);
                    this.mServiceBinderImpl.h(data.getString(MediaBrowserProtocol.DATA_CUSTOM_ACTION), bundle5, (ResultReceiver) data.getParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER), new ServiceCallbacksCompat(message.replyTo));
                    break;
                default:
                    Log.w(MediaBrowserServiceCompat.TAG, "Unhandled message: " + message + "\n  Service version: 2\n  Client version: " + message.arg1);
                    break;
            }
        }

        @Override // android.os.Handler
        public boolean sendMessageAtTime(Message message, long j6) {
            Bundle data = message.getData();
            data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            data.putInt(MediaBrowserProtocol.DATA_CALLING_UID, Binder.getCallingUid());
            int callingPid = Binder.getCallingPid();
            if (callingPid > 0) {
                data.putInt(MediaBrowserProtocol.DATA_CALLING_PID, callingPid);
            } else if (!data.containsKey(MediaBrowserProtocol.DATA_CALLING_PID)) {
                data.putInt(MediaBrowserProtocol.DATA_CALLING_PID, -1);
            }
            return super.sendMessageAtTime(message, j6);
        }
    }

    boolean c(String str, int i10) {
        if (str == null) {
            return false;
        }
        for (String str2 : getPackageManager().getPackagesForUid(i10)) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public void d(@NonNull String str, Bundle bundle, @NonNull Result<Bundle> result) {
        result.e(null);
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Nullable
    public abstract BrowserRoot e(@NonNull String str, int i10, @Nullable Bundle bundle);

    public abstract void f(@NonNull String str, @NonNull Result<List<MediaBrowserCompat.MediaItem>> result);

    public void g(@NonNull String str, @NonNull Result<List<MediaBrowserCompat.MediaItem>> result, @NonNull Bundle bundle) {
        result.g(1);
        f(str, result);
    }

    public void h(String str, @NonNull Result<MediaBrowserCompat.MediaItem> result) {
        result.g(2);
        result.f(null);
    }

    public void i(@NonNull String str, Bundle bundle, @NonNull Result<List<MediaBrowserCompat.MediaItem>> result) {
        result.g(4);
        result.f(null);
    }

    @RestrictTo
    public void j(String str, Bundle bundle) {
    }

    @RestrictTo
    public void k(String str) {
    }

    boolean p(String str, ConnectionRecord connectionRecord, IBinder iBinder) {
        boolean z6 = false;
        try {
            if (iBinder != null) {
                List<Pair<IBinder, Bundle>> list = connectionRecord.subscriptions.get(str);
                if (list != null) {
                    Iterator<Pair<IBinder, Bundle>> it = list.iterator();
                    while (it.hasNext()) {
                        if (iBinder == it.next().first) {
                            it.remove();
                            z6 = true;
                        }
                    }
                    if (list.size() == 0) {
                        connectionRecord.subscriptions.remove(str);
                    }
                }
            } else if (connectionRecord.subscriptions.remove(str) != null) {
                z6 = true;
            }
            this.mCurConnection = connectionRecord;
            k(str);
            this.mCurConnection = null;
            return z6;
        } catch (Throwable th) {
            this.mCurConnection = connectionRecord;
            k(str);
            this.mCurConnection = null;
            throw th;
        }
    }

    void a(String str, ConnectionRecord connectionRecord, IBinder iBinder, Bundle bundle) {
        List<Pair<IBinder, Bundle>> arrayList = connectionRecord.subscriptions.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        for (Pair<IBinder, Bundle> pair : arrayList) {
            if (iBinder == pair.first && MediaBrowserCompatUtils.a(bundle, pair.second)) {
                return;
            }
        }
        arrayList.add(new Pair<>(iBinder, bundle));
        connectionRecord.subscriptions.put(str, arrayList);
        m(str, connectionRecord, bundle, null);
        this.mCurConnection = connectionRecord;
        j(str, bundle);
        this.mCurConnection = null;
    }

    List<MediaBrowserCompat.MediaItem> b(List<MediaBrowserCompat.MediaItem> list, Bundle bundle) {
        if (list == null) {
            return null;
        }
        int i10 = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
        int i11 = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
        if (i10 == -1 && i11 == -1) {
            return list;
        }
        int i12 = i11 * i10;
        int size = i12 + i11;
        if (i10 < 0 || i11 < 1 || i12 >= list.size()) {
            return Collections.emptyList();
        }
        if (size > list.size()) {
            size = list.size();
        }
        return list.subList(i12, size);
    }

    void l(String str, Bundle bundle, ConnectionRecord connectionRecord, final ResultReceiver resultReceiver) {
        Result<Bundle> result = new Result<Bundle>(str) { // from class: androidx.media.MediaBrowserServiceCompat.4
            @Override // androidx.media.MediaBrowserServiceCompat.Result
            void c(@Nullable Bundle bundle2) {
                resultReceiver.c(-1, bundle2);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.media.MediaBrowserServiceCompat.Result
            /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
            public void d(@Nullable Bundle bundle2) {
                resultReceiver.c(0, bundle2);
            }
        };
        this.mCurConnection = connectionRecord;
        d(str, bundle, result);
        this.mCurConnection = null;
        if (result.b()) {
            return;
        }
        throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + str + " extras=" + bundle);
    }

    void m(final String str, final ConnectionRecord connectionRecord, final Bundle bundle, final Bundle bundle2) {
        Result<List<MediaBrowserCompat.MediaItem>> result = new Result<List<MediaBrowserCompat.MediaItem>>(str) { // from class: androidx.media.MediaBrowserServiceCompat.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.media.MediaBrowserServiceCompat.Result
            /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
            public void d(@Nullable List<MediaBrowserCompat.MediaItem> list) {
                if (MediaBrowserServiceCompat.this.mConnections.get(connectionRecord.callbacks.asBinder()) != connectionRecord) {
                    if (MediaBrowserServiceCompat.DEBUG) {
                        Log.d(MediaBrowserServiceCompat.TAG, "Not sending onLoadChildren result for connection that has been disconnected. pkg=" + connectionRecord.pkg + " id=" + str);
                        return;
                    }
                    return;
                }
                if ((a() & 1) != 0) {
                    list = MediaBrowserServiceCompat.this.b(list, bundle);
                }
                try {
                    connectionRecord.callbacks.a(str, list, bundle, bundle2);
                } catch (RemoteException unused) {
                    Log.w(MediaBrowserServiceCompat.TAG, "Calling onLoadChildren() failed for id=" + str + " package=" + connectionRecord.pkg);
                }
            }
        };
        this.mCurConnection = connectionRecord;
        if (bundle == null) {
            f(str, result);
        } else {
            g(str, result, bundle);
        }
        this.mCurConnection = null;
        if (result.b()) {
            return;
        }
        throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + connectionRecord.pkg + " id=" + str);
    }

    void n(String str, ConnectionRecord connectionRecord, final ResultReceiver resultReceiver) {
        Result<MediaBrowserCompat.MediaItem> result = new Result<MediaBrowserCompat.MediaItem>(str) { // from class: androidx.media.MediaBrowserServiceCompat.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.media.MediaBrowserServiceCompat.Result
            /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
            public void d(@Nullable MediaBrowserCompat.MediaItem mediaItem) {
                if ((a() & 2) != 0) {
                    resultReceiver.c(-1, null);
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM, mediaItem);
                resultReceiver.c(0, bundle);
            }
        };
        this.mCurConnection = connectionRecord;
        h(str, result);
        this.mCurConnection = null;
        if (result.b()) {
            return;
        }
        throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + str);
    }

    void o(String str, Bundle bundle, ConnectionRecord connectionRecord, final ResultReceiver resultReceiver) {
        Result<List<MediaBrowserCompat.MediaItem>> result = new Result<List<MediaBrowserCompat.MediaItem>>(str) { // from class: androidx.media.MediaBrowserServiceCompat.3
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.media.MediaBrowserServiceCompat.Result
            /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
            public void d(@Nullable List<MediaBrowserCompat.MediaItem> list) {
                if ((a() & 4) == 0 && list != null) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putParcelableArray(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS, (Parcelable[]) list.toArray(new MediaBrowserCompat.MediaItem[0]));
                    resultReceiver.c(0, bundle2);
                    return;
                }
                resultReceiver.c(-1, null);
            }
        };
        this.mCurConnection = connectionRecord;
        i(str, bundle, result);
        this.mCurConnection = null;
        if (result.b()) {
            return;
        }
        throw new IllegalStateException("onSearch must call detach() or sendResult() before returning for query=" + str);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mImpl.onBind(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            this.mImpl = new MediaBrowserServiceImplApi28();
        } else if (i10 >= 26) {
            this.mImpl = new MediaBrowserServiceImplApi26();
        } else {
            this.mImpl = new MediaBrowserServiceImplApi23();
        }
        this.mImpl.onCreate();
    }
}
