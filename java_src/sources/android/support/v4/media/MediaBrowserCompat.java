package android.support.v4.media;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.media.MediaDescription;
import android.media.browse.MediaBrowser;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.collection.ArrayMap;
import androidx.core.app.BundleCompat;
import androidx.media.MediaBrowserCompatUtils;
import androidx.media.MediaBrowserProtocol;
import androidx.media.MediaBrowserServiceCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MediaBrowserCompat {
    public static final String CUSTOM_ACTION_DOWNLOAD = "android.support.v4.media.action.DOWNLOAD";
    public static final String CUSTOM_ACTION_REMOVE_DOWNLOADED_FILE = "android.support.v4.media.action.REMOVE_DOWNLOADED_FILE";
    public static final String EXTRA_DOWNLOAD_PROGRESS = "android.media.browse.extra.DOWNLOAD_PROGRESS";
    public static final String EXTRA_MEDIA_ID = "android.media.browse.extra.MEDIA_ID";
    public static final String EXTRA_PAGE = "android.media.browse.extra.PAGE";
    public static final String EXTRA_PAGE_SIZE = "android.media.browse.extra.PAGE_SIZE";
    private final f mImpl;
    static final String TAG = "MediaBrowserCompat";
    static final boolean DEBUG = Log.isLoggable(TAG, 3);

    private static class CustomActionResultReceiver extends ResultReceiver {
        private final String mAction;
        private final d mCallback;
        private final Bundle mExtras;

        @Override // android.support.v4.os.ResultReceiver
        protected void a(int i10, Bundle bundle) {
            if (this.mCallback == null) {
                return;
            }
            MediaSessionCompat.a(bundle);
            if (i10 == -1) {
                this.mCallback.a(this.mAction, this.mExtras, bundle);
                return;
            }
            if (i10 == 0) {
                this.mCallback.c(this.mAction, this.mExtras, bundle);
                return;
            }
            if (i10 == 1) {
                this.mCallback.b(this.mAction, this.mExtras, bundle);
                return;
            }
            Log.w(MediaBrowserCompat.TAG, "Unknown result code: " + i10 + " (extras=" + this.mExtras + ", resultData=" + bundle + ")");
        }
    }

    private static class ItemReceiver extends ResultReceiver {
        private final e mCallback;
        private final String mMediaId;

        @Override // android.support.v4.os.ResultReceiver
        protected void a(int i10, Bundle bundle) {
            if (bundle != null) {
                bundle = MediaSessionCompat.e(bundle);
            }
            if (i10 != 0 || bundle == null || !bundle.containsKey(MediaBrowserServiceCompat.KEY_MEDIA_ITEM)) {
                this.mCallback.a(this.mMediaId);
                return;
            }
            Parcelable parcelable = bundle.getParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM);
            if (parcelable == null || (parcelable instanceof MediaItem)) {
                this.mCallback.b((MediaItem) parcelable);
            } else {
                this.mCallback.a(this.mMediaId);
            }
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new a();
        public static final int FLAG_BROWSABLE = 1;
        public static final int FLAG_PLAYABLE = 2;
        private final MediaDescriptionCompat mDescription;
        private final int mFlags;

        class a implements Parcelable.Creator<MediaItem> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public MediaItem[] newArray(int i10) {
                return new MediaItem[i10];
            }

            a() {
            }
        }

        public MediaItem(@NonNull MediaDescriptionCompat mediaDescriptionCompat, int i10) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("description cannot be null");
            }
            if (TextUtils.isEmpty(mediaDescriptionCompat.e())) {
                throw new IllegalArgumentException("description must have a non-empty media id");
            }
            this.mFlags = i10;
            this.mDescription = mediaDescriptionCompat;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public static MediaItem a(Object obj) {
            if (obj == null) {
                return null;
            }
            MediaBrowser.MediaItem mediaItem = (MediaBrowser.MediaItem) obj;
            return new MediaItem(MediaDescriptionCompat.a(a.a(mediaItem)), a.b(mediaItem));
        }

        public static List<MediaItem> c(List<?> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(a(it.next()));
            }
            return arrayList;
        }

        @NonNull
        public String toString() {
            return "MediaItem{mFlags=" + this.mFlags + ", mDescription=" + this.mDescription + kotlinx.serialization.json.internal.b.END_OBJ;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.mFlags);
            this.mDescription.writeToParcel(parcel, i10);
        }

        MediaItem(Parcel parcel) {
            this.mFlags = parcel.readInt();
            this.mDescription = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }
    }

    private static class SearchResultReceiver extends ResultReceiver {
        private final k mCallback;
        private final Bundle mExtras;
        private final String mQuery;

        @Override // android.support.v4.os.ResultReceiver
        protected void a(int i10, Bundle bundle) {
            if (bundle != null) {
                bundle = MediaSessionCompat.e(bundle);
            }
            if (i10 != 0 || bundle == null || !bundle.containsKey(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS)) {
                this.mCallback.a(this.mQuery, this.mExtras);
                return;
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS);
            if (parcelableArray == null) {
                this.mCallback.a(this.mQuery, this.mExtras);
                return;
            }
            ArrayList arrayList = new ArrayList(parcelableArray.length);
            for (Parcelable parcelable : parcelableArray) {
                arrayList.add((MediaItem) parcelable);
            }
            this.mCallback.b(this.mQuery, this.mExtras, arrayList);
        }
    }

    private static class b extends Handler {
        private final WeakReference<j> mCallbackImplRef;
        private WeakReference<Messenger> mCallbacksMessengerRef;

        void a(Messenger messenger) {
            this.mCallbacksMessengerRef = new WeakReference<>(messenger);
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            WeakReference<Messenger> weakReference = this.mCallbacksMessengerRef;
            if (weakReference == null || weakReference.get() == null || this.mCallbackImplRef.get() == null) {
                return;
            }
            Bundle data = message.getData();
            MediaSessionCompat.a(data);
            j jVar = this.mCallbackImplRef.get();
            Messenger messenger = this.mCallbacksMessengerRef.get();
            try {
                int i10 = message.what;
                if (i10 == 1) {
                    Bundle bundle = data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS);
                    MediaSessionCompat.a(bundle);
                    jVar.f(messenger, data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), (MediaSessionCompat.Token) data.getParcelable(MediaBrowserProtocol.DATA_MEDIA_SESSION_TOKEN), bundle);
                } else if (i10 == 2) {
                    jVar.c(messenger);
                } else if (i10 != 3) {
                    Log.w(MediaBrowserCompat.TAG, "Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1);
                } else {
                    Bundle bundle2 = data.getBundle(MediaBrowserProtocol.DATA_OPTIONS);
                    MediaSessionCompat.a(bundle2);
                    Bundle bundle3 = data.getBundle(MediaBrowserProtocol.DATA_NOTIFY_CHILDREN_CHANGED_OPTIONS);
                    MediaSessionCompat.a(bundle3);
                    jVar.d(messenger, data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), data.getParcelableArrayList(MediaBrowserProtocol.DATA_MEDIA_ITEM_LIST), bundle2, bundle3);
                }
            } catch (BadParcelableException unused) {
                Log.e(MediaBrowserCompat.TAG, "Could not unparcel the data.");
                if (message.what == 1) {
                    jVar.c(messenger);
                }
            }
        }

        b(j jVar) {
            this.mCallbackImplRef = new WeakReference<>(jVar);
        }
    }

    public static class c {
        final MediaBrowser.ConnectionCallback mConnectionCallbackFwk = new a();
        b mConnectionCallbackInternal;

        @RequiresApi
        private class a extends MediaBrowser.ConnectionCallback {
            a() {
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnected() {
                b bVar = c.this.mConnectionCallbackInternal;
                if (bVar != null) {
                    bVar.onConnected();
                }
                c.this.a();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnectionFailed() {
                b bVar = c.this.mConnectionCallbackInternal;
                if (bVar != null) {
                    bVar.e();
                }
                c.this.b();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnectionSuspended() {
                b bVar = c.this.mConnectionCallbackInternal;
                if (bVar != null) {
                    bVar.b();
                }
                c.this.c();
            }
        }

        interface b {
            void b();

            void e();

            void onConnected();
        }

        public void a() {
        }

        public void b() {
        }

        public void c() {
        }

        void d(b bVar) {
            this.mConnectionCallbackInternal = bVar;
        }
    }

    public static abstract class d {
        public void a(String str, Bundle bundle, Bundle bundle2) {
        }

        public void b(String str, Bundle bundle, Bundle bundle2) {
        }

        public void c(String str, Bundle bundle, Bundle bundle2) {
        }
    }

    public static abstract class e {
        final MediaBrowser.ItemCallback mItemCallbackFwk = new a();

        @RequiresApi
        private class a extends MediaBrowser.ItemCallback {
            a() {
            }

            @Override // android.media.browse.MediaBrowser.ItemCallback
            public void onError(@NonNull String str) {
                e.this.a(str);
            }

            @Override // android.media.browse.MediaBrowser.ItemCallback
            public void onItemLoaded(MediaBrowser.MediaItem mediaItem) {
                e.this.b(MediaItem.a(mediaItem));
            }
        }

        public void a(@NonNull String str) {
        }

        public void b(MediaItem mediaItem) {
        }
    }

    interface f {
        void a();

        void disconnect();

        @NonNull
        MediaSessionCompat.Token getSessionToken();
    }

    @RequiresApi
    static class g implements f, j, c.b {
        protected final MediaBrowser mBrowserFwk;
        protected Messenger mCallbacksMessenger;
        final Context mContext;
        private MediaSessionCompat.Token mMediaSessionToken;
        private Bundle mNotifyChildrenChangedOptions;
        protected final Bundle mRootHints;
        protected l mServiceBinderWrapper;
        protected int mServiceVersion;
        protected final b mHandler = new b(this);
        private final ArrayMap<String, m> mSubscriptions = new ArrayMap<>();

        @Override // android.support.v4.media.MediaBrowserCompat.c.b
        public void b() {
            this.mServiceBinderWrapper = null;
            this.mCallbacksMessenger = null;
            this.mMediaSessionToken = null;
            this.mHandler.a(null);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public void c(Messenger messenger) {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.c.b
        public void e() {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public void f(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.f
        public void a() {
            this.mBrowserFwk.connect();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public void d(Messenger messenger, String str, List<MediaItem> list, Bundle bundle, Bundle bundle2) {
            if (this.mCallbacksMessenger != messenger) {
                return;
            }
            m mVar = this.mSubscriptions.get(str);
            if (mVar == null) {
                if (MediaBrowserCompat.DEBUG) {
                    Log.d(MediaBrowserCompat.TAG, "onLoadChildren for id that isn't subscribed id=" + str);
                    return;
                }
                return;
            }
            n nVarA = mVar.a(bundle);
            if (nVarA != null) {
                if (bundle == null) {
                    if (list == null) {
                        nVarA.c(str);
                        return;
                    }
                    this.mNotifyChildrenChangedOptions = bundle2;
                    nVarA.a(str, list);
                    this.mNotifyChildrenChangedOptions = null;
                    return;
                }
                if (list == null) {
                    nVarA.d(str, bundle);
                    return;
                }
                this.mNotifyChildrenChangedOptions = bundle2;
                nVarA.b(str, list, bundle);
                this.mNotifyChildrenChangedOptions = null;
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.f
        public void disconnect() {
            Messenger messenger;
            l lVar = this.mServiceBinderWrapper;
            if (lVar != null && (messenger = this.mCallbacksMessenger) != null) {
                try {
                    lVar.c(messenger);
                } catch (RemoteException unused) {
                    Log.i(MediaBrowserCompat.TAG, "Remote error unregistering client messenger.");
                }
            }
            this.mBrowserFwk.disconnect();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.f
        @NonNull
        public MediaSessionCompat.Token getSessionToken() {
            if (this.mMediaSessionToken == null) {
                this.mMediaSessionToken = MediaSessionCompat.Token.a(this.mBrowserFwk.getSessionToken());
            }
            return this.mMediaSessionToken;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.c.b
        public void onConnected() {
            try {
                Bundle extras = this.mBrowserFwk.getExtras();
                if (extras == null) {
                    return;
                }
                this.mServiceVersion = extras.getInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 0);
                IBinder iBinderA = BundleCompat.a(extras, MediaBrowserProtocol.EXTRA_MESSENGER_BINDER);
                if (iBinderA != null) {
                    this.mServiceBinderWrapper = new l(iBinderA, this.mRootHints);
                    Messenger messenger = new Messenger(this.mHandler);
                    this.mCallbacksMessenger = messenger;
                    this.mHandler.a(messenger);
                    try {
                        this.mServiceBinderWrapper.a(this.mContext, this.mCallbacksMessenger);
                    } catch (RemoteException unused) {
                        Log.i(MediaBrowserCompat.TAG, "Remote error registering client messenger.");
                    }
                }
                android.support.v4.media.session.b bVarX1 = android.support.v4.media.session.b.a.x1(BundleCompat.a(extras, MediaBrowserProtocol.EXTRA_SESSION_BINDER));
                if (bVarX1 != null) {
                    this.mMediaSessionToken = MediaSessionCompat.Token.c(this.mBrowserFwk.getSessionToken(), bVarX1);
                }
            } catch (IllegalStateException e) {
                Log.e(MediaBrowserCompat.TAG, "Unexpected IllegalStateException", e);
            }
        }

        g(Context context, ComponentName componentName, c cVar, Bundle bundle) {
            Bundle bundle2;
            this.mContext = context;
            if (bundle != null) {
                bundle2 = new Bundle(bundle);
            } else {
                bundle2 = new Bundle();
            }
            this.mRootHints = bundle2;
            bundle2.putInt(MediaBrowserProtocol.EXTRA_CLIENT_VERSION, 1);
            bundle2.putInt(MediaBrowserProtocol.EXTRA_CALLING_PID, Process.myPid());
            cVar.d(this);
            this.mBrowserFwk = new MediaBrowser(context, componentName, cVar.mConnectionCallbackFwk, bundle2);
        }
    }

    interface j {
        void c(Messenger messenger);

        void d(Messenger messenger, String str, List<MediaItem> list, Bundle bundle, Bundle bundle2);

        void f(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle);
    }

    public static abstract class k {
        public void a(@NonNull String str, Bundle bundle) {
        }

        public void b(@NonNull String str, Bundle bundle, @NonNull List<MediaItem> list) {
        }
    }

    private static class l {
        private Messenger mMessenger;
        private Bundle mRootHints;

        void c(Messenger messenger) throws RemoteException {
            b(7, null, messenger);
        }

        void a(Context context, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_PACKAGE_NAME, context.getPackageName());
            bundle.putInt(MediaBrowserProtocol.DATA_CALLING_PID, Process.myPid());
            bundle.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, this.mRootHints);
            b(6, bundle, messenger);
        }

        public l(IBinder iBinder, Bundle bundle) {
            this.mMessenger = new Messenger(iBinder);
            this.mRootHints = bundle;
        }

        private void b(int i10, Bundle bundle, Messenger messenger) throws RemoteException {
            Message messageObtain = Message.obtain();
            messageObtain.what = i10;
            messageObtain.arg1 = 1;
            messageObtain.setData(bundle);
            messageObtain.replyTo = messenger;
            this.mMessenger.send(messageObtain);
        }
    }

    private static class m {
        private final List<n> mCallbacks = new ArrayList();
        private final List<Bundle> mOptionsList = new ArrayList();

        public n a(Bundle bundle) {
            for (int i10 = 0; i10 < this.mOptionsList.size(); i10++) {
                if (MediaBrowserCompatUtils.a(this.mOptionsList.get(i10), bundle)) {
                    return this.mCallbacks.get(i10);
                }
            }
            return null;
        }

        public List<n> b() {
            return this.mCallbacks;
        }

        public List<Bundle> c() {
            return this.mOptionsList;
        }
    }

    @RequiresApi
    private static class a {
        @DoNotInline
        static MediaDescription a(MediaBrowser.MediaItem mediaItem) {
            return mediaItem.getDescription();
        }

        @DoNotInline
        static int b(MediaBrowser.MediaItem mediaItem) {
            return mediaItem.getFlags();
        }
    }

    @RequiresApi
    static class h extends g {
        h(Context context, ComponentName componentName, c cVar, Bundle bundle) {
            super(context, componentName, cVar, bundle);
        }
    }

    @RequiresApi
    static class i extends h {
        i(Context context, ComponentName componentName, c cVar, Bundle bundle) {
            super(context, componentName, cVar, bundle);
        }
    }

    public static abstract class n {
        final MediaBrowser.SubscriptionCallback mSubscriptionCallbackFwk;
        WeakReference<m> mSubscriptionRef;
        final IBinder mToken = new Binder();

        @RequiresApi
        private class a extends MediaBrowser.SubscriptionCallback {
            a() {
            }

            List<MediaItem> a(List<MediaItem> list, Bundle bundle) {
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

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onChildrenLoaded(@NonNull String str, List<MediaBrowser.MediaItem> list) {
                WeakReference<m> weakReference = n.this.mSubscriptionRef;
                m mVar = weakReference == null ? null : weakReference.get();
                if (mVar == null) {
                    n.this.a(str, MediaItem.c(list));
                    return;
                }
                List<MediaItem> listC = MediaItem.c(list);
                List<n> listB = mVar.b();
                List<Bundle> listC2 = mVar.c();
                for (int i10 = 0; i10 < listB.size(); i10++) {
                    Bundle bundle = listC2.get(i10);
                    if (bundle == null) {
                        n.this.a(str, listC);
                    } else {
                        n.this.b(str, a(listC, bundle), bundle);
                    }
                }
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onError(@NonNull String str) {
                n.this.c(str);
            }
        }

        @RequiresApi
        private class b extends a {
            b() {
                super();
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onChildrenLoaded(@NonNull String str, @NonNull List<MediaBrowser.MediaItem> list, @NonNull Bundle bundle) {
                MediaSessionCompat.a(bundle);
                n.this.b(str, MediaItem.c(list), bundle);
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onError(@NonNull String str, @NonNull Bundle bundle) {
                MediaSessionCompat.a(bundle);
                n.this.d(str, bundle);
            }
        }

        public void a(@NonNull String str, @NonNull List<MediaItem> list) {
        }

        public void b(@NonNull String str, @NonNull List<MediaItem> list, @NonNull Bundle bundle) {
        }

        public void c(@NonNull String str) {
        }

        public void d(@NonNull String str, @NonNull Bundle bundle) {
        }

        public n() {
            if (Build.VERSION.SDK_INT >= 26) {
                this.mSubscriptionCallbackFwk = new b();
            } else {
                this.mSubscriptionCallbackFwk = new a();
            }
        }
    }

    public void a() {
        Log.d(TAG, "Connecting to a MediaBrowserService.");
        this.mImpl.a();
    }

    public void b() {
        this.mImpl.disconnect();
    }

    @NonNull
    public MediaSessionCompat.Token c() {
        return this.mImpl.getSessionToken();
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, c cVar, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.mImpl = new i(context, componentName, cVar, bundle);
        } else {
            this.mImpl = new h(context, componentName, cVar, bundle);
        }
    }
}
