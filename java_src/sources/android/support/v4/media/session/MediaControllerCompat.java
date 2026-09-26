package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.util.Log;
import android.view.KeyEvent;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.BundleCompat;
import androidx.media.AudioAttributesCompat;
import androidx.versionedparcelable.ParcelUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class MediaControllerCompat {

    @RestrictTo
    public static final String COMMAND_ADD_QUEUE_ITEM = "android.support.v4.media.session.command.ADD_QUEUE_ITEM";

    @RestrictTo
    public static final String COMMAND_ADD_QUEUE_ITEM_AT = "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT";

    @RestrictTo
    public static final String COMMAND_ARGUMENT_INDEX = "android.support.v4.media.session.command.ARGUMENT_INDEX";

    @RestrictTo
    public static final String COMMAND_ARGUMENT_MEDIA_DESCRIPTION = "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION";

    @RestrictTo
    public static final String COMMAND_GET_EXTRA_BINDER = "android.support.v4.media.session.command.GET_EXTRA_BINDER";

    @RestrictTo
    public static final String COMMAND_REMOVE_QUEUE_ITEM = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM";

    @RestrictTo
    public static final String COMMAND_REMOVE_QUEUE_ITEM_AT = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT";
    static final String TAG = "MediaControllerCompat";
    private final b mImpl;

    @SuppressLint({"BanConcurrentHashMap"})
    private final ConcurrentHashMap<a, Boolean> mRegisteredCallbacks = new ConcurrentHashMap<>();
    private final MediaSessionCompat.Token mToken;

    @RequiresApi
    static class MediaControllerImplApi21 implements b {
        protected final MediaController mControllerFwk;
        protected Bundle mSessionInfo;
        final MediaSessionCompat.Token mSessionToken;
        final Object mLock = new Object();

        @GuardedBy
        private final List<a> mPendingCallbacks = new ArrayList();
        private HashMap<a, a> mCallbackMap = new HashMap<>();

        private static class ExtraBinderRequestResultReceiver extends ResultReceiver {
            private WeakReference<MediaControllerImplApi21> mMediaControllerImpl;

            ExtraBinderRequestResultReceiver(MediaControllerImplApi21 mediaControllerImplApi21) {
                super(null);
                this.mMediaControllerImpl = new WeakReference<>(mediaControllerImplApi21);
            }

            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int i10, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = this.mMediaControllerImpl.get();
                if (mediaControllerImplApi21 == null || bundle == null) {
                    return;
                }
                synchronized (mediaControllerImplApi21.mLock) {
                    mediaControllerImplApi21.mSessionToken.i(android.support.v4.media.session.b.a.x1(BundleCompat.a(bundle, MediaSessionCompat.KEY_EXTRA_BINDER)));
                    mediaControllerImplApi21.mSessionToken.k(ParcelUtils.b(bundle, MediaSessionCompat.KEY_SESSION2_TOKEN));
                    mediaControllerImplApi21.b();
                }
            }
        }

        private static class a extends a.c {
            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void N0(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void U0(Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void h1(CharSequence charSequence) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void o(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void v0(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void y() throws RemoteException {
                throw new AssertionError();
            }

            a(a aVar) {
                super(aVar);
            }
        }

        private void c() {
            d(MediaControllerCompat.COMMAND_GET_EXTRA_BINDER, null, new ExtraBinderRequestResultReceiver(this));
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public boolean a(KeyEvent keyEvent) {
            return this.mControllerFwk.dispatchMediaButtonEvent(keyEvent);
        }

        @GuardedBy
        void b() {
            if (this.mSessionToken.e() == null) {
                return;
            }
            for (a aVar : this.mPendingCallbacks) {
                a aVar2 = new a(aVar);
                this.mCallbackMap.put(aVar, aVar2);
                aVar.mIControllerCallback = aVar2;
                try {
                    this.mSessionToken.e().O(aVar2);
                    aVar.m(13, null, null);
                } catch (RemoteException e) {
                    Log.e(MediaControllerCompat.TAG, "Dead object in registerCallback.", e);
                }
            }
            this.mPendingCallbacks.clear();
        }

        public void d(String str, Bundle bundle, ResultReceiver resultReceiver) {
            this.mControllerFwk.sendCommand(str, bundle, resultReceiver);
        }

        MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) {
            this.mSessionToken = token;
            this.mControllerFwk = new MediaController(context, (MediaSession.Token) token.h());
            if (token.e() == null) {
                c();
            }
        }
    }

    public static abstract class a implements IBinder.DeathRecipient {
        final MediaController.Callback mCallbackFwk = new C0015a(this);
        b mHandler;
        android.support.v4.media.session.a mIControllerCallback;

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaControllerCompat$a$a, reason: collision with other inner class name */
        @RequiresApi
        private static class C0015a extends MediaController.Callback {
            private final WeakReference<a> mCallback;

            @Override // android.media.session.MediaController.Callback
            public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
                a aVar = this.mCallback.get();
                if (aVar != null) {
                    aVar.a(new d(playbackInfo.getPlaybackType(), AudioAttributesCompat.h(playbackInfo.getAudioAttributes()), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume()));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onMetadataChanged(MediaMetadata mediaMetadata) {
                a aVar = this.mCallback.get();
                if (aVar != null) {
                    aVar.d(MediaMetadataCompat.c(mediaMetadata));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onPlaybackStateChanged(PlaybackState playbackState) {
                a aVar = this.mCallback.get();
                if (aVar == null || aVar.mIControllerCallback != null) {
                    return;
                }
                aVar.e(PlaybackStateCompat.a(playbackState));
            }

            @Override // android.media.session.MediaController.Callback
            public void onQueueChanged(List<MediaSession.QueueItem> list) {
                a aVar = this.mCallback.get();
                if (aVar != null) {
                    aVar.f(MediaSessionCompat.QueueItem.c(list));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onQueueTitleChanged(CharSequence charSequence) {
                a aVar = this.mCallback.get();
                if (aVar != null) {
                    aVar.g(charSequence);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onSessionDestroyed() {
                a aVar = this.mCallback.get();
                if (aVar != null) {
                    aVar.i();
                }
            }

            C0015a(a aVar) {
                this.mCallback = new WeakReference<>(aVar);
            }

            @Override // android.media.session.MediaController.Callback
            public void onExtrasChanged(Bundle bundle) {
                MediaSessionCompat.a(bundle);
                a aVar = this.mCallback.get();
                if (aVar != null) {
                    aVar.c(bundle);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onSessionEvent(String str, Bundle bundle) {
                MediaSessionCompat.a(bundle);
                a aVar = this.mCallback.get();
                if (aVar != null) {
                    aVar.j(str, bundle);
                }
            }
        }

        private class b extends Handler {
            private static final int MSG_DESTROYED = 8;
            private static final int MSG_EVENT = 1;
            private static final int MSG_SESSION_READY = 13;
            private static final int MSG_UPDATE_CAPTIONING_ENABLED = 11;
            private static final int MSG_UPDATE_EXTRAS = 7;
            private static final int MSG_UPDATE_METADATA = 3;
            private static final int MSG_UPDATE_PLAYBACK_STATE = 2;
            private static final int MSG_UPDATE_QUEUE = 5;
            private static final int MSG_UPDATE_QUEUE_TITLE = 6;
            private static final int MSG_UPDATE_REPEAT_MODE = 9;
            private static final int MSG_UPDATE_SHUFFLE_MODE = 12;
            private static final int MSG_UPDATE_VOLUME = 4;
            boolean mRegistered;
            final /* synthetic */ a this$0;

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (this.mRegistered) {
                    switch (message.what) {
                        case 1:
                            Bundle data = message.getData();
                            MediaSessionCompat.a(data);
                            this.this$0.j((String) message.obj, data);
                            break;
                        case 2:
                            this.this$0.e((PlaybackStateCompat) message.obj);
                            break;
                        case 3:
                            this.this$0.d((MediaMetadataCompat) message.obj);
                            break;
                        case 4:
                            this.this$0.a((d) message.obj);
                            break;
                        case 5:
                            this.this$0.f((List) message.obj);
                            break;
                        case 6:
                            this.this$0.g((CharSequence) message.obj);
                            break;
                        case 7:
                            Bundle bundle = (Bundle) message.obj;
                            MediaSessionCompat.a(bundle);
                            this.this$0.c(bundle);
                            break;
                        case 8:
                            this.this$0.i();
                            break;
                        case 9:
                            this.this$0.h(((Integer) message.obj).intValue());
                            break;
                        case 11:
                            this.this$0.b(((Boolean) message.obj).booleanValue());
                            break;
                        case 12:
                            this.this$0.l(((Integer) message.obj).intValue());
                            break;
                        case 13:
                            this.this$0.k();
                            break;
                    }
                }
            }
        }

        private static class c extends android.support.v4.media.session.a.AbstractBinderC0017a {
            private final WeakReference<a> mCallback;

            @Override // android.support.v4.media.session.a
            public void g1(boolean z6) throws RemoteException {
            }

            @Override // android.support.v4.media.session.a
            public void F0(int i10) throws RemoteException {
                a aVar = this.mCallback.get();
                if (aVar != null) {
                    aVar.m(12, Integer.valueOf(i10), null);
                }
            }

            public void N0(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                a aVar = this.mCallback.get();
                if (aVar != null) {
                    aVar.m(4, parcelableVolumeInfo != null ? new d(parcelableVolumeInfo.volumeType, parcelableVolumeInfo.audioStream, parcelableVolumeInfo.controlType, parcelableVolumeInfo.maxVolume, parcelableVolumeInfo.currentVolume) : null, null);
                }
            }

            public void U0(Bundle bundle) throws RemoteException {
                a aVar = this.mCallback.get();
                if (aVar != null) {
                    aVar.m(7, bundle, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void a1(boolean z6) throws RemoteException {
                a aVar = this.mCallback.get();
                if (aVar != null) {
                    aVar.m(11, Boolean.valueOf(z6), null);
                }
            }

            public void h1(CharSequence charSequence) throws RemoteException {
                a aVar = this.mCallback.get();
                if (aVar != null) {
                    aVar.m(6, charSequence, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void n() throws RemoteException {
                a aVar = this.mCallback.get();
                if (aVar != null) {
                    aVar.m(13, null, null);
                }
            }

            public void o(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                a aVar = this.mCallback.get();
                if (aVar != null) {
                    aVar.m(5, list, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void onEvent(String str, Bundle bundle) throws RemoteException {
                a aVar = this.mCallback.get();
                if (aVar != null) {
                    aVar.m(1, str, bundle);
                }
            }

            @Override // android.support.v4.media.session.a
            public void onRepeatModeChanged(int i10) throws RemoteException {
                a aVar = this.mCallback.get();
                if (aVar != null) {
                    aVar.m(9, Integer.valueOf(i10), null);
                }
            }

            public void v0(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                a aVar = this.mCallback.get();
                if (aVar != null) {
                    aVar.m(3, mediaMetadataCompat, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void v1(PlaybackStateCompat playbackStateCompat) throws RemoteException {
                a aVar = this.mCallback.get();
                if (aVar != null) {
                    aVar.m(2, playbackStateCompat, null);
                }
            }

            public void y() throws RemoteException {
                a aVar = this.mCallback.get();
                if (aVar != null) {
                    aVar.m(8, null, null);
                }
            }

            c(a aVar) {
                this.mCallback = new WeakReference<>(aVar);
            }
        }

        public void a(d dVar) {
        }

        public void b(boolean z6) {
        }

        public void c(Bundle bundle) {
        }

        public void d(MediaMetadataCompat mediaMetadataCompat) {
        }

        public void e(PlaybackStateCompat playbackStateCompat) {
        }

        public void f(List<MediaSessionCompat.QueueItem> list) {
        }

        public void g(CharSequence charSequence) {
        }

        public void h(int i10) {
        }

        public void i() {
        }

        public void j(String str, Bundle bundle) {
        }

        public void k() {
        }

        public void l(int i10) {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            m(8, null, null);
        }

        void m(int i10, Object obj, Bundle bundle) {
            b bVar = this.mHandler;
            if (bVar != null) {
                Message messageObtainMessage = bVar.obtainMessage(i10, obj);
                messageObtainMessage.setData(bundle);
                messageObtainMessage.sendToTarget();
            }
        }
    }

    interface b {
        boolean a(KeyEvent keyEvent);
    }

    public static final class d {
        public static final int PLAYBACK_TYPE_LOCAL = 1;
        public static final int PLAYBACK_TYPE_REMOTE = 2;
        private final AudioAttributesCompat mAudioAttrsCompat;
        private final int mCurrentVolume;
        private final int mMaxVolume;
        private final int mPlaybackType;
        private final int mVolumeControl;

        d(int i10, int i11, int i12, int i13, int i14) {
            this(i10, new AudioAttributesCompat.Builder().b(i11).a(), i12, i13, i14);
        }

        d(int i10, @NonNull AudioAttributesCompat audioAttributesCompat, int i11, int i12, int i13) {
            this.mPlaybackType = i10;
            this.mAudioAttrsCompat = audioAttributesCompat;
            this.mVolumeControl = i11;
            this.mMaxVolume = i12;
            this.mCurrentVolume = i13;
        }
    }

    public MediaControllerCompat(Context context, @NonNull MediaSessionCompat mediaSessionCompat) {
        if (mediaSessionCompat == null) {
            throw new IllegalArgumentException("session must not be null");
        }
        MediaSessionCompat.Token tokenB = mediaSessionCompat.b();
        this.mToken = tokenB;
        if (Build.VERSION.SDK_INT >= 29) {
            this.mImpl = new c(context, tokenB);
        } else {
            this.mImpl = new MediaControllerImplApi21(context, tokenB);
        }
    }

    @RequiresApi
    static class c extends MediaControllerImplApi21 {
        c(Context context, MediaSessionCompat.Token token) {
            super(context, token);
        }
    }

    public boolean a(KeyEvent keyEvent) {
        if (keyEvent != null) {
            return this.mImpl.a(keyEvent);
        }
        throw new IllegalArgumentException("KeyEvent may not be null");
    }

    public MediaControllerCompat(Context context, @NonNull MediaSessionCompat.Token token) {
        if (token != null) {
            this.mToken = token;
            this.mImpl = new MediaControllerImplApi21(context, token);
            return;
        }
        throw new IllegalArgumentException("sessionToken must not be null");
    }
}
