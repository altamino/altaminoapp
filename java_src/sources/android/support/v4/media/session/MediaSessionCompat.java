package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.media.MediaDescription;
import android.media.Rating;
import android.media.session.MediaSession;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import androidx.annotation.DoNotInline;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.BundleCompat;
import androidx.media.MediaSessionManager;
import androidx.media.session.MediaButtonReceiver;
import androidx.versionedparcelable.ParcelUtils;
import androidx.versionedparcelable.VersionedParcelable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class MediaSessionCompat {

    @RestrictTo
    public static final String ACTION_ARGUMENT_CAPTIONING_ENABLED = "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED";

    @RestrictTo
    public static final String ACTION_ARGUMENT_EXTRAS = "android.support.v4.media.session.action.ARGUMENT_EXTRAS";

    @RestrictTo
    public static final String ACTION_ARGUMENT_MEDIA_ID = "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID";

    @RestrictTo
    public static final String ACTION_ARGUMENT_PLAYBACK_SPEED = "android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED";

    @RestrictTo
    public static final String ACTION_ARGUMENT_QUERY = "android.support.v4.media.session.action.ARGUMENT_QUERY";

    @RestrictTo
    public static final String ACTION_ARGUMENT_RATING = "android.support.v4.media.session.action.ARGUMENT_RATING";

    @RestrictTo
    public static final String ACTION_ARGUMENT_REPEAT_MODE = "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE";

    @RestrictTo
    public static final String ACTION_ARGUMENT_SHUFFLE_MODE = "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE";

    @RestrictTo
    public static final String ACTION_ARGUMENT_URI = "android.support.v4.media.session.action.ARGUMENT_URI";
    public static final String ACTION_FLAG_AS_INAPPROPRIATE = "android.support.v4.media.session.action.FLAG_AS_INAPPROPRIATE";
    public static final String ACTION_FOLLOW = "android.support.v4.media.session.action.FOLLOW";

    @RestrictTo
    public static final String ACTION_PLAY_FROM_URI = "android.support.v4.media.session.action.PLAY_FROM_URI";

    @RestrictTo
    public static final String ACTION_PREPARE = "android.support.v4.media.session.action.PREPARE";

    @RestrictTo
    public static final String ACTION_PREPARE_FROM_MEDIA_ID = "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID";

    @RestrictTo
    public static final String ACTION_PREPARE_FROM_SEARCH = "android.support.v4.media.session.action.PREPARE_FROM_SEARCH";

    @RestrictTo
    public static final String ACTION_PREPARE_FROM_URI = "android.support.v4.media.session.action.PREPARE_FROM_URI";

    @RestrictTo
    public static final String ACTION_SET_CAPTIONING_ENABLED = "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED";

    @RestrictTo
    public static final String ACTION_SET_PLAYBACK_SPEED = "android.support.v4.media.session.action.SET_PLAYBACK_SPEED";

    @RestrictTo
    public static final String ACTION_SET_RATING = "android.support.v4.media.session.action.SET_RATING";

    @RestrictTo
    public static final String ACTION_SET_REPEAT_MODE = "android.support.v4.media.session.action.SET_REPEAT_MODE";

    @RestrictTo
    public static final String ACTION_SET_SHUFFLE_MODE = "android.support.v4.media.session.action.SET_SHUFFLE_MODE";
    public static final String ACTION_SKIP_AD = "android.support.v4.media.session.action.SKIP_AD";
    public static final String ACTION_UNFOLLOW = "android.support.v4.media.session.action.UNFOLLOW";
    public static final String ARGUMENT_MEDIA_ATTRIBUTE = "android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE";
    public static final String ARGUMENT_MEDIA_ATTRIBUTE_VALUE = "android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE_VALUE";
    private static final String DATA_CALLING_PACKAGE = "data_calling_pkg";
    private static final String DATA_CALLING_PID = "data_calling_pid";
    private static final String DATA_CALLING_UID = "data_calling_uid";
    private static final String DATA_EXTRAS = "data_extras";

    @Deprecated
    public static final int FLAG_HANDLES_MEDIA_BUTTONS = 1;
    public static final int FLAG_HANDLES_QUEUE_COMMANDS = 4;

    @Deprecated
    public static final int FLAG_HANDLES_TRANSPORT_CONTROLS = 2;

    @RestrictTo
    public static final String KEY_EXTRA_BINDER = "android.support.v4.media.session.EXTRA_BINDER";

    @RestrictTo
    public static final String KEY_SESSION2_TOKEN = "android.support.v4.media.session.SESSION_TOKEN2";

    @RestrictTo
    public static final String KEY_TOKEN = "android.support.v4.media.session.TOKEN";
    private static final int MAX_BITMAP_SIZE_IN_DP = 320;
    public static final int MEDIA_ATTRIBUTE_ALBUM = 1;
    public static final int MEDIA_ATTRIBUTE_ARTIST = 0;
    public static final int MEDIA_ATTRIBUTE_PLAYLIST = 2;
    static final String TAG = "MediaSessionCompat";
    static int sMaxBitmapSize;
    private final ArrayList<Object> mActiveListeners;
    private final MediaControllerCompat mController;
    private final c mImpl;

    @SuppressLint({"BanParcelableUsage"})
    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new a();
        public static final int UNKNOWN_ID = -1;
        private final MediaDescriptionCompat mDescription;
        private final long mId;
        private MediaSession.QueueItem mItemFwk;

        class a implements Parcelable.Creator<QueueItem> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public QueueItem[] newArray(int i10) {
                return new QueueItem[i10];
            }

            a() {
            }
        }

        @RequiresApi
        private static class b {
            @DoNotInline
            static MediaSession.QueueItem a(MediaDescription mediaDescription, long j6) {
                return new MediaSession.QueueItem(mediaDescription, j6);
            }

            @DoNotInline
            static MediaDescription b(MediaSession.QueueItem queueItem) {
                return queueItem.getDescription();
            }

            @DoNotInline
            static long c(MediaSession.QueueItem queueItem) {
                return queueItem.getQueueId();
            }
        }

        public QueueItem(MediaDescriptionCompat mediaDescriptionCompat, long j6) {
            this(null, mediaDescriptionCompat, j6);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public MediaDescriptionCompat e() {
            return this.mDescription;
        }

        private QueueItem(MediaSession.QueueItem queueItem, MediaDescriptionCompat mediaDescriptionCompat, long j6) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("Description cannot be null");
            }
            if (j6 == -1) {
                throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
            }
            this.mDescription = mediaDescriptionCompat;
            this.mId = j6;
            this.mItemFwk = queueItem;
        }

        public static QueueItem a(Object obj) {
            if (obj == null) {
                return null;
            }
            MediaSession.QueueItem queueItem = (MediaSession.QueueItem) obj;
            return new QueueItem(queueItem, MediaDescriptionCompat.a(b.b(queueItem)), b.c(queueItem));
        }

        public static List<QueueItem> c(List<?> list) {
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

        public String toString() {
            return "MediaSession.QueueItem {Description=" + this.mDescription + ", Id=" + this.mId + " }";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            this.mDescription.writeToParcel(parcel, i10);
            parcel.writeLong(this.mId);
        }

        QueueItem(Parcel parcel) {
            this.mDescription = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.mId = parcel.readLong();
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new a();
        ResultReceiver mResultReceiver;

        class a implements Parcelable.Creator<ResultReceiverWrapper> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ResultReceiverWrapper createFromParcel(Parcel parcel) {
                return new ResultReceiverWrapper(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public ResultReceiverWrapper[] newArray(int i10) {
                return new ResultReceiverWrapper[i10];
            }

            a() {
            }
        }

        public ResultReceiverWrapper(@NonNull ResultReceiver resultReceiver) {
            this.mResultReceiver = resultReceiver;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        ResultReceiverWrapper(Parcel parcel) {
            this.mResultReceiver = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            this.mResultReceiver.writeToParcel(parcel, i10);
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new a();

        @GuardedBy
        private android.support.v4.media.session.b mExtraBinder;
        private final Object mInner;
        private final Object mLock;

        @GuardedBy
        private VersionedParcelable mSession2Token;

        class a implements Parcelable.Creator<Token> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Token createFromParcel(Parcel parcel) {
                return new Token(parcel.readParcelable(null));
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Token[] newArray(int i10) {
                return new Token[i10];
            }

            a() {
            }
        }

        Token(Object obj) {
            this(obj, null, null);
        }

        public static Token a(Object obj) {
            return c(obj, null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            Object obj2 = this.mInner;
            if (obj2 == null) {
                return token.mInner == null;
            }
            Object obj3 = token.mInner;
            if (obj3 == null) {
                return false;
            }
            return obj2.equals(obj3);
        }

        public Object h() {
            return this.mInner;
        }

        Token(Object obj, android.support.v4.media.session.b bVar) {
            this(obj, bVar, null);
        }

        @RestrictTo
        public static Token c(Object obj, android.support.v4.media.session.b bVar) {
            if (obj == null) {
                return null;
            }
            if (obj instanceof MediaSession.Token) {
                return new Token(obj, bVar);
            }
            throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
        }

        @RestrictTo
        public android.support.v4.media.session.b e() {
            android.support.v4.media.session.b bVar;
            synchronized (this.mLock) {
                bVar = this.mExtraBinder;
            }
            return bVar;
        }

        @RestrictTo
        public VersionedParcelable g() {
            VersionedParcelable versionedParcelable;
            synchronized (this.mLock) {
                versionedParcelable = this.mSession2Token;
            }
            return versionedParcelable;
        }

        public int hashCode() {
            Object obj = this.mInner;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        @RestrictTo
        public void i(android.support.v4.media.session.b bVar) {
            synchronized (this.mLock) {
                this.mExtraBinder = bVar;
            }
        }

        @RestrictTo
        public void k(VersionedParcelable versionedParcelable) {
            synchronized (this.mLock) {
                this.mSession2Token = versionedParcelable;
            }
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeParcelable((Parcelable) this.mInner, i10);
        }

        Token(Object obj, android.support.v4.media.session.b bVar, VersionedParcelable versionedParcelable) {
            this.mLock = new Object();
            this.mInner = obj;
            this.mExtraBinder = bVar;
            this.mSession2Token = versionedParcelable;
        }
    }

    class a extends b {
        a() {
        }
    }

    public static abstract class b {

        @GuardedBy
        a mCallbackHandler;
        private boolean mMediaPlayPausePendingOnHandler;
        final Object mLock = new Object();
        final MediaSession.Callback mCallbackFwk = new C0016b();

        @GuardedBy
        WeakReference<c> mSessionImpl = new WeakReference<>(null);

        private class a extends Handler {
            private static final int MSG_MEDIA_PLAY_PAUSE_KEY_DOUBLE_TAP_TIMEOUT = 1;

            a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                c cVar;
                b bVar;
                a aVar;
                if (message.what == 1) {
                    synchronized (b.this.mLock) {
                        cVar = b.this.mSessionImpl.get();
                        bVar = b.this;
                        aVar = bVar.mCallbackHandler;
                    }
                    if (cVar == null || bVar != cVar.e() || aVar == null) {
                        return;
                    }
                    cVar.d((MediaSessionManager.RemoteUserInfo) message.obj);
                    b.this.a(cVar, aVar);
                    cVar.d(null);
                }
            }
        }

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$b$b, reason: collision with other inner class name */
        @RequiresApi
        private class C0016b extends MediaSession.Callback {
            private void a(c cVar) {
                cVar.d(null);
            }

            C0016b() {
            }

            private d b() {
                d dVar;
                synchronized (b.this.mLock) {
                    dVar = (d) b.this.mSessionImpl.get();
                }
                if (dVar == null || b.this != dVar.e()) {
                    return null;
                }
                return dVar;
            }

            private void c(c cVar) {
                if (Build.VERSION.SDK_INT >= 28) {
                    return;
                }
                String strB = cVar.b();
                if (TextUtils.isEmpty(strB)) {
                    strB = MediaSessionManager.RemoteUserInfo.LEGACY_CONTROLLER;
                }
                cVar.d(new MediaSessionManager.RemoteUserInfo(strB, -1, -1));
            }

            @Override // android.media.session.MediaSession.Callback
            public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
                c(dVarB);
                try {
                    QueueItem queueItem = null;
                    IBinder iBinderAsBinder = null;
                    queueItem = null;
                    if (str.equals(MediaControllerCompat.COMMAND_GET_EXTRA_BINDER)) {
                        Bundle bundle2 = new Bundle();
                        Token sessionToken = dVarB.getSessionToken();
                        android.support.v4.media.session.b bVarE = sessionToken.e();
                        if (bVarE != null) {
                            iBinderAsBinder = bVarE.asBinder();
                        }
                        BundleCompat.b(bundle2, MediaSessionCompat.KEY_EXTRA_BINDER, iBinderAsBinder);
                        ParcelUtils.c(bundle2, MediaSessionCompat.KEY_SESSION2_TOKEN, sessionToken.g());
                        resultReceiver.send(0, bundle2);
                    } else if (str.equals(MediaControllerCompat.COMMAND_ADD_QUEUE_ITEM)) {
                        b.this.b((MediaDescriptionCompat) bundle.getParcelable(MediaControllerCompat.COMMAND_ARGUMENT_MEDIA_DESCRIPTION));
                    } else if (str.equals(MediaControllerCompat.COMMAND_ADD_QUEUE_ITEM_AT)) {
                        b.this.c((MediaDescriptionCompat) bundle.getParcelable(MediaControllerCompat.COMMAND_ARGUMENT_MEDIA_DESCRIPTION), bundle.getInt(MediaControllerCompat.COMMAND_ARGUMENT_INDEX));
                    } else if (str.equals(MediaControllerCompat.COMMAND_REMOVE_QUEUE_ITEM)) {
                        b.this.q((MediaDescriptionCompat) bundle.getParcelable(MediaControllerCompat.COMMAND_ARGUMENT_MEDIA_DESCRIPTION));
                    } else if (str.equals(MediaControllerCompat.COMMAND_REMOVE_QUEUE_ITEM_AT)) {
                        if (dVarB.mQueue != null) {
                            int i10 = bundle.getInt(MediaControllerCompat.COMMAND_ARGUMENT_INDEX, -1);
                            if (i10 >= 0 && i10 < dVarB.mQueue.size()) {
                                queueItem = dVarB.mQueue.get(i10);
                            }
                            if (queueItem != null) {
                                b.this.q(queueItem.e());
                            }
                        }
                    } else {
                        b.this.d(str, bundle, resultReceiver);
                    }
                } catch (BadParcelableException unused) {
                    Log.e(MediaSessionCompat.TAG, "Could not unparcel the extra data.");
                }
                a(dVarB);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onCustomAction(String str, Bundle bundle) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
                c(dVarB);
                try {
                    if (str.equals(MediaSessionCompat.ACTION_PLAY_FROM_URI)) {
                        Uri uri = (Uri) bundle.getParcelable(MediaSessionCompat.ACTION_ARGUMENT_URI);
                        Bundle bundle2 = bundle.getBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS);
                        MediaSessionCompat.a(bundle2);
                        b.this.l(uri, bundle2);
                    } else if (str.equals(MediaSessionCompat.ACTION_PREPARE)) {
                        b.this.m();
                    } else if (str.equals(MediaSessionCompat.ACTION_PREPARE_FROM_MEDIA_ID)) {
                        String string = bundle.getString(MediaSessionCompat.ACTION_ARGUMENT_MEDIA_ID);
                        Bundle bundle3 = bundle.getBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS);
                        MediaSessionCompat.a(bundle3);
                        b.this.n(string, bundle3);
                    } else if (str.equals(MediaSessionCompat.ACTION_PREPARE_FROM_SEARCH)) {
                        String string2 = bundle.getString(MediaSessionCompat.ACTION_ARGUMENT_QUERY);
                        Bundle bundle4 = bundle.getBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS);
                        MediaSessionCompat.a(bundle4);
                        b.this.o(string2, bundle4);
                    } else if (str.equals(MediaSessionCompat.ACTION_PREPARE_FROM_URI)) {
                        Uri uri2 = (Uri) bundle.getParcelable(MediaSessionCompat.ACTION_ARGUMENT_URI);
                        Bundle bundle5 = bundle.getBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS);
                        MediaSessionCompat.a(bundle5);
                        b.this.p(uri2, bundle5);
                    } else if (str.equals(MediaSessionCompat.ACTION_SET_CAPTIONING_ENABLED)) {
                        b.this.t(bundle.getBoolean(MediaSessionCompat.ACTION_ARGUMENT_CAPTIONING_ENABLED));
                    } else if (str.equals(MediaSessionCompat.ACTION_SET_REPEAT_MODE)) {
                        b.this.x(bundle.getInt(MediaSessionCompat.ACTION_ARGUMENT_REPEAT_MODE));
                    } else if (str.equals(MediaSessionCompat.ACTION_SET_SHUFFLE_MODE)) {
                        b.this.y(bundle.getInt(MediaSessionCompat.ACTION_ARGUMENT_SHUFFLE_MODE));
                    } else if (str.equals(MediaSessionCompat.ACTION_SET_RATING)) {
                        RatingCompat ratingCompat = (RatingCompat) bundle.getParcelable(MediaSessionCompat.ACTION_ARGUMENT_RATING);
                        Bundle bundle6 = bundle.getBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS);
                        MediaSessionCompat.a(bundle6);
                        b.this.w(ratingCompat, bundle6);
                    } else if (str.equals(MediaSessionCompat.ACTION_SET_PLAYBACK_SPEED)) {
                        b.this.u(bundle.getFloat(MediaSessionCompat.ACTION_ARGUMENT_PLAYBACK_SPEED, 1.0f));
                    } else {
                        b.this.e(str, bundle);
                    }
                } catch (BadParcelableException unused) {
                    Log.e(MediaSessionCompat.TAG, "Could not unparcel the data.");
                }
                a(dVarB);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onFastForward() {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.f();
                a(dVarB);
            }

            @Override // android.media.session.MediaSession.Callback
            public boolean onMediaButtonEvent(Intent intent) {
                d dVarB = b();
                if (dVarB == null) {
                    return false;
                }
                c(dVarB);
                boolean zG = b.this.g(intent);
                a(dVarB);
                if (!zG && !super.onMediaButtonEvent(intent)) {
                    return false;
                }
                return true;
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPause() {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.h();
                a(dVarB);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPlay() {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.i();
                a(dVarB);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPlayFromMediaId(String str, Bundle bundle) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
                c(dVarB);
                b.this.j(str, bundle);
                a(dVarB);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPlayFromSearch(String str, Bundle bundle) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
                c(dVarB);
                b.this.k(str, bundle);
                a(dVarB);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi
            public void onPlayFromUri(Uri uri, Bundle bundle) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
                c(dVarB);
                b.this.l(uri, bundle);
                a(dVarB);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi
            public void onPrepare() {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.m();
                a(dVarB);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi
            public void onPrepareFromMediaId(String str, Bundle bundle) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
                c(dVarB);
                b.this.n(str, bundle);
                a(dVarB);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi
            public void onPrepareFromSearch(String str, Bundle bundle) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
                c(dVarB);
                b.this.o(str, bundle);
                a(dVarB);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi
            public void onPrepareFromUri(Uri uri, Bundle bundle) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
                c(dVarB);
                b.this.p(uri, bundle);
                a(dVarB);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onRewind() {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.r();
                a(dVarB);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSeekTo(long j6) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.s(j6);
                a(dVarB);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi
            public void onSetPlaybackSpeed(float f) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.u(f);
                a(dVarB);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSetRating(Rating rating) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.v(RatingCompat.a(rating));
                a(dVarB);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSkipToNext() {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.z();
                a(dVarB);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSkipToPrevious() {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.A();
                a(dVarB);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSkipToQueueItem(long j6) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.B(j6);
                a(dVarB);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onStop() {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.C();
                a(dVarB);
            }
        }

        public void A() {
        }

        public void B(long j6) {
        }

        public void C() {
        }

        public void b(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void c(MediaDescriptionCompat mediaDescriptionCompat, int i10) {
        }

        public void d(String str, Bundle bundle, ResultReceiver resultReceiver) {
        }

        public void e(String str, Bundle bundle) {
        }

        public void f() {
        }

        public void h() {
        }

        public void i() {
        }

        public void j(String str, Bundle bundle) {
        }

        public void k(String str, Bundle bundle) {
        }

        public void l(Uri uri, Bundle bundle) {
        }

        public void m() {
        }

        public void n(String str, Bundle bundle) {
        }

        public void o(String str, Bundle bundle) {
        }

        public void p(Uri uri, Bundle bundle) {
        }

        public void q(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void r() {
        }

        public void s(long j6) {
        }

        public void t(boolean z6) {
        }

        public void u(float f) {
        }

        public void v(RatingCompat ratingCompat) {
        }

        public void w(RatingCompat ratingCompat, Bundle bundle) {
        }

        public void x(int i10) {
        }

        public void y(int i10) {
        }

        public void z() {
        }

        void D(c cVar, Handler handler) {
            synchronized (this.mLock) {
                try {
                    this.mSessionImpl = new WeakReference<>(cVar);
                    a aVar = this.mCallbackHandler;
                    a aVar2 = null;
                    if (aVar != null) {
                        aVar.removeCallbacksAndMessages(null);
                    }
                    if (cVar != null && handler != null) {
                        aVar2 = new a(handler.getLooper());
                    }
                    this.mCallbackHandler = aVar2;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        void a(c cVar, Handler handler) {
            if (this.mMediaPlayPausePendingOnHandler) {
                this.mMediaPlayPausePendingOnHandler = false;
                handler.removeMessages(1);
                PlaybackStateCompat playbackState = cVar.getPlaybackState();
                long jC = playbackState == null ? 0L : playbackState.c();
                boolean z6 = playbackState != null && playbackState.i() == 3;
                boolean z10 = (516 & jC) != 0;
                boolean z11 = (jC & 514) != 0;
                if (z6 && z11) {
                    h();
                } else {
                    if (z6 || !z10) {
                        return;
                    }
                    i();
                }
            }
        }

        public boolean g(Intent intent) {
            c cVar;
            a aVar;
            KeyEvent keyEvent;
            if (Build.VERSION.SDK_INT >= 27) {
                return false;
            }
            synchronized (this.mLock) {
                cVar = this.mSessionImpl.get();
                aVar = this.mCallbackHandler;
            }
            if (cVar == null || aVar == null || (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) == null || keyEvent.getAction() != 0) {
                return false;
            }
            MediaSessionManager.RemoteUserInfo remoteUserInfoF = cVar.f();
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 79 && keyCode != 85) {
                a(cVar, aVar);
                return false;
            }
            if (keyEvent.getRepeatCount() != 0) {
                a(cVar, aVar);
            } else if (this.mMediaPlayPausePendingOnHandler) {
                aVar.removeMessages(1);
                this.mMediaPlayPausePendingOnHandler = false;
                PlaybackStateCompat playbackState = cVar.getPlaybackState();
                if (((playbackState == null ? 0L : playbackState.c()) & 32) != 0) {
                    z();
                }
            } else {
                this.mMediaPlayPausePendingOnHandler = true;
                aVar.sendMessageDelayed(aVar.obtainMessage(1, remoteUserInfoF), ViewConfiguration.getDoubleTapTimeout());
            }
            return true;
        }
    }

    interface c {
        void a(b bVar, Handler handler);

        String b();

        void c(PendingIntent pendingIntent);

        void d(MediaSessionManager.RemoteUserInfo remoteUserInfo);

        b e();

        MediaSessionManager.RemoteUserInfo f();

        PlaybackStateCompat getPlaybackState();

        Token getSessionToken();
    }

    @RequiresApi
    static class d implements c {

        @GuardedBy
        b mCallback;
        boolean mCaptioningEnabled;
        MediaMetadataCompat mMetadata;
        PlaybackStateCompat mPlaybackState;
        List<QueueItem> mQueue;
        int mRatingType;

        @GuardedBy
        i mRegistrationCallbackHandler;

        @GuardedBy
        MediaSessionManager.RemoteUserInfo mRemoteUserInfo;
        int mRepeatMode;
        final MediaSession mSessionFwk;
        Bundle mSessionInfo;
        int mShuffleMode;
        final Token mToken;
        final Object mLock = new Object();
        boolean mDestroyed = false;
        final RemoteCallbackList<android.support.v4.media.session.a> mExtraControllerCallbacks = new RemoteCallbackList<>();

        class a extends android.support.v4.media.session.b.a {
            @Override // android.support.v4.media.session.b
            public void I(boolean z6) throws RemoteException {
            }

            @Override // android.support.v4.media.session.b
            public boolean f() {
                return false;
            }

            @Override // android.support.v4.media.session.b
            public List<QueueItem> m1() {
                return null;
            }

            a() {
            }

            @Override // android.support.v4.media.session.b
            public boolean B() {
                return d.this.mCaptioningEnabled;
            }

            @Override // android.support.v4.media.session.b
            public int D0() {
                return d.this.mShuffleMode;
            }

            @Override // android.support.v4.media.session.b
            public void E(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void F() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public String J() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void J0(long j6) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void L0(int i10) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void O(android.support.v4.media.session.a aVar) {
                if (d.this.mDestroyed) {
                    return;
                }
                int callingPid = Binder.getCallingPid();
                int callingUid = Binder.getCallingUid();
                d.this.mExtraControllerCallbacks.register(aVar, new MediaSessionManager.RemoteUserInfo(MediaSessionManager.RemoteUserInfo.LEGACY_CONTROLLER, callingPid, callingUid));
                synchronized (d.this.mLock) {
                    try {
                        i iVar = d.this.mRegistrationCallbackHandler;
                        if (iVar != null) {
                            iVar.a(callingPid, callingUid);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // android.support.v4.media.session.b
            public void O0(RatingCompat ratingCompat) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void P0(int i10, int i11, String str) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void Q0(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public boolean R() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void R0(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public CharSequence T() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void T0(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void U(android.support.v4.media.session.a aVar) {
                d.this.mExtraControllerCallbacks.unregister(aVar);
                int callingPid = Binder.getCallingPid();
                int callingUid = Binder.getCallingUid();
                synchronized (d.this.mLock) {
                    try {
                        i iVar = d.this.mRegistrationCallbackHandler;
                        if (iVar != null) {
                            iVar.b(callingPid, callingUid);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // android.support.v4.media.session.b
            public void Y(boolean z6) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void Z0() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public long a() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void d1(float f) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void e(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public ParcelableVolumeInfo e0() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void g(Uri uri, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public Bundle getExtras() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public MediaMetadataCompat getMetadata() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public PlaybackStateCompat getPlaybackState() {
                d dVar = d.this;
                return MediaSessionCompat.c(dVar.mPlaybackState, dVar.mMetadata);
            }

            @Override // android.support.v4.media.session.b
            public int getRepeatMode() {
                return d.this.mRepeatMode;
            }

            @Override // android.support.v4.media.session.b
            public String getTag() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public int i0() {
                return d.this.mRatingType;
            }

            @Override // android.support.v4.media.session.b
            public void i1(int i10, int i11, String str) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public PendingIntent j() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public Bundle m0() {
                if (d.this.mSessionInfo == null) {
                    return null;
                }
                return new Bundle(d.this.mSessionInfo);
            }

            @Override // android.support.v4.media.session.b
            public void n0(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void next() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void pause() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void play() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void prepare() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void previous() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void q(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void q0(Uri uri, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void s(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public boolean s0(KeyEvent keyEvent) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void seekTo(long j6) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void setRepeatMode(int i10) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void stop() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void u0(MediaDescriptionCompat mediaDescriptionCompat, int i10) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void w(RatingCompat ratingCompat, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void z(int i10) {
                throw new AssertionError();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public PlaybackStateCompat getPlaybackState() {
            return this.mPlaybackState;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public Token getSessionToken() {
            return this.mToken;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void a(b bVar, Handler handler) {
            synchronized (this.mLock) {
                try {
                    this.mCallback = bVar;
                    this.mSessionFwk.setCallback(bVar == null ? null : bVar.mCallbackFwk, handler);
                    if (bVar != null) {
                        bVar.D(this, handler);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public String b() {
            if (Build.VERSION.SDK_INT < 24) {
                return null;
            }
            try {
                return (String) this.mSessionFwk.getClass().getMethod("getCallingPackage", new Class[0]).invoke(this.mSessionFwk, new Object[0]);
            } catch (Exception e) {
                Log.e(MediaSessionCompat.TAG, "Cannot execute MediaSession.getCallingPackage()", e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void c(PendingIntent pendingIntent) {
            this.mSessionFwk.setMediaButtonReceiver(pendingIntent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public void d(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            synchronized (this.mLock) {
                this.mRemoteUserInfo = remoteUserInfo;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public b e() {
            b bVar;
            synchronized (this.mLock) {
                bVar = this.mCallback;
            }
            return bVar;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.c
        public MediaSessionManager.RemoteUserInfo f() {
            MediaSessionManager.RemoteUserInfo remoteUserInfo;
            synchronized (this.mLock) {
                remoteUserInfo = this.mRemoteUserInfo;
            }
            return remoteUserInfo;
        }

        public MediaSession g(Context context, String str, Bundle bundle) {
            return new MediaSession(context, str);
        }

        @SuppressLint({"WrongConstant"})
        public void h(int i10) {
            this.mSessionFwk.setFlags(i10 | 3);
        }

        d(Context context, String str, VersionedParcelable versionedParcelable, Bundle bundle) {
            MediaSession mediaSessionG = g(context, str, bundle);
            this.mSessionFwk = mediaSessionG;
            this.mToken = new Token(mediaSessionG.getSessionToken(), new a(), versionedParcelable);
            this.mSessionInfo = bundle;
            h(3);
        }
    }

    @RequiresApi
    static class f extends e {
        @Override // android.support.v4.media.session.MediaSessionCompat.d, android.support.v4.media.session.MediaSessionCompat.c
        public void d(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d, android.support.v4.media.session.MediaSessionCompat.c
        @NonNull
        public final MediaSessionManager.RemoteUserInfo f() {
            return new MediaSessionManager.RemoteUserInfo(this.mSessionFwk.getCurrentControllerInfo());
        }

        f(Context context, String str, VersionedParcelable versionedParcelable, Bundle bundle) {
            super(context, str, versionedParcelable, bundle);
        }
    }

    @RestrictTo
    public interface h {
    }

    static final class i extends Handler {
        private static final int MSG_CALLBACK_REGISTERED = 1001;
        private static final int MSG_CALLBACK_UNREGISTERED = 1002;
        private final h mCallback;

        public void a(int i10, int i11) {
            obtainMessage(1001, i10, i11).sendToTarget();
        }

        public void b(int i10, int i11) {
            obtainMessage(1002, i10, i11).sendToTarget();
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            super.handleMessage(message);
            int i10 = message.what;
            if (i10 != 1001 && i10 != 1002) {
            } else {
                throw null;
            }
        }
    }

    public MediaSessionCompat(@NonNull Context context, @NonNull String str) {
        this(context, str, null, null);
    }

    @Nullable
    @RestrictTo
    public static Bundle e(@Nullable Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        a(bundle);
        try {
            bundle.isEmpty();
            return bundle;
        } catch (BadParcelableException unused) {
            Log.e(TAG, "Could not unparcel the data.");
            return null;
        }
    }

    @RequiresApi
    static class e extends d {
        e(Context context, String str, VersionedParcelable versionedParcelable, Bundle bundle) {
            super(context, str, versionedParcelable, bundle);
        }
    }

    @RequiresApi
    static class g extends f {
        g(Context context, String str, VersionedParcelable versionedParcelable, Bundle bundle) {
            super(context, str, versionedParcelable, bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public MediaSession g(Context context, String str, Bundle bundle) {
            return android.support.v4.media.session.d.a(context, str, bundle);
        }
    }

    public MediaSessionCompat(@NonNull Context context, @NonNull String str, @Nullable ComponentName componentName, @Nullable PendingIntent pendingIntent) {
        this(context, str, componentName, pendingIntent, null);
    }

    @RestrictTo
    public static void a(@Nullable Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }

    static PlaybackStateCompat c(PlaybackStateCompat playbackStateCompat, MediaMetadataCompat mediaMetadataCompat) {
        long j6;
        if (playbackStateCompat == null) {
            return playbackStateCompat;
        }
        long jE = -1;
        if (playbackStateCompat.h() == -1) {
            return playbackStateCompat;
        }
        if (playbackStateCompat.i() != 3 && playbackStateCompat.i() != 4 && playbackStateCompat.i() != 5) {
            return playbackStateCompat;
        }
        long jE2 = playbackStateCompat.e();
        if (jE2 <= 0) {
            return playbackStateCompat;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jG = ((long) (playbackStateCompat.g() * (jElapsedRealtime - jE2))) + playbackStateCompat.h();
        if (mediaMetadataCompat != null && mediaMetadataCompat.a(MediaMetadataCompat.METADATA_KEY_DURATION)) {
            jE = mediaMetadataCompat.e(MediaMetadataCompat.METADATA_KEY_DURATION);
        }
        if (jE < 0 || jG <= jE) {
            j6 = jG < 0 ? 0L : jG;
        } else {
            j6 = jE;
        }
        return new PlaybackStateCompat.d(playbackStateCompat).b(playbackStateCompat.i(), j6, playbackStateCompat.g(), jElapsedRealtime).a();
    }

    public Token b() {
        return this.mImpl.getSessionToken();
    }

    public void d(b bVar, Handler handler) {
        if (bVar == null) {
            this.mImpl.a(null, null);
            return;
        }
        c cVar = this.mImpl;
        if (handler == null) {
            handler = new Handler();
        }
        cVar.a(bVar, handler);
    }

    public MediaSessionCompat(@NonNull Context context, @NonNull String str, @Nullable ComponentName componentName, @Nullable PendingIntent pendingIntent, @Nullable Bundle bundle) {
        this(context, str, componentName, pendingIntent, bundle, null);
    }

    @RestrictTo
    public MediaSessionCompat(@NonNull Context context, @NonNull String str, @Nullable ComponentName componentName, @Nullable PendingIntent pendingIntent, @Nullable Bundle bundle, @Nullable VersionedParcelable versionedParcelable) {
        this.mActiveListeners = new ArrayList<>();
        if (context != null) {
            if (!TextUtils.isEmpty(str)) {
                if (componentName == null && (componentName = MediaButtonReceiver.a(context)) == null) {
                    Log.w(TAG, "Couldn't find a unique registered media button receiver in the given context.");
                }
                if (componentName != null && pendingIntent == null) {
                    Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                    intent.setComponent(componentName);
                    pendingIntent = PendingIntent.getBroadcast(context, 0, intent, Build.VERSION.SDK_INT >= 31 ? 33554432 : 0);
                }
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 29) {
                    this.mImpl = new g(context, str, versionedParcelable, bundle);
                } else if (i10 >= 28) {
                    this.mImpl = new f(context, str, versionedParcelable, bundle);
                } else {
                    this.mImpl = new e(context, str, versionedParcelable, bundle);
                }
                d(new a(), new Handler(Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper()));
                this.mImpl.c(pendingIntent);
                this.mController = new MediaControllerCompat(context, this);
                if (sMaxBitmapSize == 0) {
                    sMaxBitmapSize = (int) (TypedValue.applyDimension(1, 320.0f, context.getResources().getDisplayMetrics()) + 0.5f);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("tag must not be null or empty");
        }
        throw new IllegalArgumentException("context must not be null");
    }
}
