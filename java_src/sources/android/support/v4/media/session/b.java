package android.support.v4.media.session;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.text.TextUtils;
import android.view.KeyEvent;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface b extends IInterface {

    public static abstract class a extends Binder implements b {
        private static final String DESCRIPTOR = "android.support.v4.media.session.IMediaSession";
        static final int TRANSACTION_addQueueItem = 41;
        static final int TRANSACTION_addQueueItemAt = 42;
        static final int TRANSACTION_adjustVolume = 11;
        static final int TRANSACTION_fastForward = 22;
        static final int TRANSACTION_getExtras = 31;
        static final int TRANSACTION_getFlags = 9;
        static final int TRANSACTION_getLaunchPendingIntent = 8;
        static final int TRANSACTION_getMetadata = 27;
        static final int TRANSACTION_getPackageName = 6;
        static final int TRANSACTION_getPlaybackState = 28;
        static final int TRANSACTION_getQueue = 29;
        static final int TRANSACTION_getQueueTitle = 30;
        static final int TRANSACTION_getRatingType = 32;
        static final int TRANSACTION_getRepeatMode = 37;
        static final int TRANSACTION_getSessionInfo = 50;
        static final int TRANSACTION_getShuffleMode = 47;
        static final int TRANSACTION_getTag = 7;
        static final int TRANSACTION_getVolumeAttributes = 10;
        static final int TRANSACTION_isCaptioningEnabled = 45;
        static final int TRANSACTION_isShuffleModeEnabledRemoved = 38;
        static final int TRANSACTION_isTransportControlEnabled = 5;
        static final int TRANSACTION_next = 20;
        static final int TRANSACTION_pause = 18;
        static final int TRANSACTION_play = 13;
        static final int TRANSACTION_playFromMediaId = 14;
        static final int TRANSACTION_playFromSearch = 15;
        static final int TRANSACTION_playFromUri = 16;
        static final int TRANSACTION_prepare = 33;
        static final int TRANSACTION_prepareFromMediaId = 34;
        static final int TRANSACTION_prepareFromSearch = 35;
        static final int TRANSACTION_prepareFromUri = 36;
        static final int TRANSACTION_previous = 21;
        static final int TRANSACTION_rate = 25;
        static final int TRANSACTION_rateWithExtras = 51;
        static final int TRANSACTION_registerCallbackListener = 3;
        static final int TRANSACTION_removeQueueItem = 43;
        static final int TRANSACTION_removeQueueItemAt = 44;
        static final int TRANSACTION_rewind = 23;
        static final int TRANSACTION_seekTo = 24;
        static final int TRANSACTION_sendCommand = 1;
        static final int TRANSACTION_sendCustomAction = 26;
        static final int TRANSACTION_sendMediaButton = 2;
        static final int TRANSACTION_setCaptioningEnabled = 46;
        static final int TRANSACTION_setPlaybackSpeed = 49;
        static final int TRANSACTION_setRepeatMode = 39;
        static final int TRANSACTION_setShuffleMode = 48;
        static final int TRANSACTION_setShuffleModeEnabledRemoved = 40;
        static final int TRANSACTION_setVolumeTo = 12;
        static final int TRANSACTION_skipToQueueItem = 17;
        static final int TRANSACTION_stop = 19;
        static final int TRANSACTION_unregisterCallbackListener = 4;

        public static b y1() {
            return C0019a.sDefaultImpl;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        /* JADX INFO: renamed from: android.support.v4.media.session.b$a$a, reason: collision with other inner class name */
        private static class C0019a implements b {
            public static b sDefaultImpl;
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            C0019a(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.support.v4.media.session.b
            public void O(android.support.v4.media.session.a aVar) throws RemoteException {
                IBinder iBinderAsBinder;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    if (aVar != null) {
                        iBinderAsBinder = aVar.asBinder();
                    } else {
                        iBinderAsBinder = null;
                    }
                    parcelObtain.writeStrongBinder(iBinderAsBinder);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && a.y1() != null) {
                        a.y1().O(aVar);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.b
            public boolean s0(KeyEvent keyEvent) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    boolean z6 = true;
                    if (keyEvent != null) {
                        parcelObtain.writeInt(1);
                        keyEvent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && a.y1() != null) {
                        return a.y1().s0(keyEvent);
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() == 0) {
                        z6 = false;
                    }
                    return z6;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static b x1(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new C0019a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }

        public a() {
            attachInterface(this, DESCRIPTOR);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            Bundle bundle;
            Uri uri;
            Uri uri2;
            RatingCompat ratingCompatCreateFromParcel;
            if (i10 != 1598968902) {
                boolean z6 = false;
                MediaSessionCompat.ResultReceiverWrapper resultReceiverWrapperCreateFromParcel = null;
                Bundle bundle2 = null;
                MediaDescriptionCompat mediaDescriptionCompatCreateFromParcel = null;
                MediaDescriptionCompat mediaDescriptionCompatCreateFromParcel2 = null;
                MediaDescriptionCompat mediaDescriptionCompatCreateFromParcel3 = null;
                Bundle bundle3 = null;
                Bundle bundle4 = null;
                Bundle bundle5 = null;
                Bundle bundle6 = null;
                RatingCompat ratingCompatCreateFromParcel2 = null;
                Bundle bundle7 = null;
                Bundle bundle8 = null;
                Bundle bundle9 = null;
                KeyEvent keyEvent = null;
                switch (i10) {
                    case 1:
                        parcel.enforceInterface(DESCRIPTOR);
                        String string = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        } else {
                            bundle = null;
                        }
                        if (parcel.readInt() != 0) {
                            resultReceiverWrapperCreateFromParcel = MediaSessionCompat.ResultReceiverWrapper.CREATOR.createFromParcel(parcel);
                        }
                        E(string, bundle, resultReceiverWrapperCreateFromParcel);
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            keyEvent = (KeyEvent) KeyEvent.CREATOR.createFromParcel(parcel);
                        }
                        boolean zS0 = s0(keyEvent);
                        parcel2.writeNoException();
                        parcel2.writeInt(zS0 ? 1 : 0);
                        return true;
                    case 3:
                        parcel.enforceInterface(DESCRIPTOR);
                        O(android.support.v4.media.session.a.AbstractBinderC0017a.x1(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        parcel.enforceInterface(DESCRIPTOR);
                        U(android.support.v4.media.session.a.AbstractBinderC0017a.x1(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 5:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean zR = R();
                        parcel2.writeNoException();
                        parcel2.writeInt(zR ? 1 : 0);
                        return true;
                    case 6:
                        parcel.enforceInterface(DESCRIPTOR);
                        String strJ = J();
                        parcel2.writeNoException();
                        parcel2.writeString(strJ);
                        return true;
                    case 7:
                        parcel.enforceInterface(DESCRIPTOR);
                        String tag = getTag();
                        parcel2.writeNoException();
                        parcel2.writeString(tag);
                        return true;
                    case 8:
                        parcel.enforceInterface(DESCRIPTOR);
                        PendingIntent pendingIntentJ = j();
                        parcel2.writeNoException();
                        if (pendingIntentJ != null) {
                            parcel2.writeInt(1);
                            pendingIntentJ.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 9:
                        parcel.enforceInterface(DESCRIPTOR);
                        long jA = a();
                        parcel2.writeNoException();
                        parcel2.writeLong(jA);
                        return true;
                    case 10:
                        parcel.enforceInterface(DESCRIPTOR);
                        ParcelableVolumeInfo parcelableVolumeInfoE0 = e0();
                        parcel2.writeNoException();
                        if (parcelableVolumeInfoE0 != null) {
                            parcel2.writeInt(1);
                            parcelableVolumeInfoE0.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 11:
                        parcel.enforceInterface(DESCRIPTOR);
                        i1(parcel.readInt(), parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 12:
                        parcel.enforceInterface(DESCRIPTOR);
                        P0(parcel.readInt(), parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 13:
                        parcel.enforceInterface(DESCRIPTOR);
                        play();
                        parcel2.writeNoException();
                        return true;
                    case 14:
                        parcel.enforceInterface(DESCRIPTOR);
                        String string2 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle9 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        s(string2, bundle9);
                        parcel2.writeNoException();
                        return true;
                    case 15:
                        parcel.enforceInterface(DESCRIPTOR);
                        String string3 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle8 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        n0(string3, bundle8);
                        parcel2.writeNoException();
                        return true;
                    case 16:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            uri = (Uri) Uri.CREATOR.createFromParcel(parcel);
                        } else {
                            uri = null;
                        }
                        if (parcel.readInt() != 0) {
                            bundle7 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        q0(uri, bundle7);
                        parcel2.writeNoException();
                        return true;
                    case 17:
                        parcel.enforceInterface(DESCRIPTOR);
                        J0(parcel.readLong());
                        parcel2.writeNoException();
                        return true;
                    case 18:
                        parcel.enforceInterface(DESCRIPTOR);
                        pause();
                        parcel2.writeNoException();
                        return true;
                    case 19:
                        parcel.enforceInterface(DESCRIPTOR);
                        stop();
                        parcel2.writeNoException();
                        return true;
                    case 20:
                        parcel.enforceInterface(DESCRIPTOR);
                        next();
                        parcel2.writeNoException();
                        return true;
                    case 21:
                        parcel.enforceInterface(DESCRIPTOR);
                        previous();
                        parcel2.writeNoException();
                        return true;
                    case 22:
                        parcel.enforceInterface(DESCRIPTOR);
                        Z0();
                        parcel2.writeNoException();
                        return true;
                    case 23:
                        parcel.enforceInterface(DESCRIPTOR);
                        F();
                        parcel2.writeNoException();
                        return true;
                    case 24:
                        parcel.enforceInterface(DESCRIPTOR);
                        seekTo(parcel.readLong());
                        parcel2.writeNoException();
                        return true;
                    case 25:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            ratingCompatCreateFromParcel2 = RatingCompat.CREATOR.createFromParcel(parcel);
                        }
                        O0(ratingCompatCreateFromParcel2);
                        parcel2.writeNoException();
                        return true;
                    case 26:
                        parcel.enforceInterface(DESCRIPTOR);
                        String string4 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle6 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        e(string4, bundle6);
                        parcel2.writeNoException();
                        return true;
                    case 27:
                        parcel.enforceInterface(DESCRIPTOR);
                        MediaMetadataCompat metadata = getMetadata();
                        parcel2.writeNoException();
                        if (metadata != null) {
                            parcel2.writeInt(1);
                            metadata.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 28:
                        parcel.enforceInterface(DESCRIPTOR);
                        PlaybackStateCompat playbackState = getPlaybackState();
                        parcel2.writeNoException();
                        if (playbackState != null) {
                            parcel2.writeInt(1);
                            playbackState.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 29:
                        parcel.enforceInterface(DESCRIPTOR);
                        List<MediaSessionCompat.QueueItem> listM1 = m1();
                        parcel2.writeNoException();
                        parcel2.writeTypedList(listM1);
                        return true;
                    case 30:
                        parcel.enforceInterface(DESCRIPTOR);
                        CharSequence charSequenceT = T();
                        parcel2.writeNoException();
                        if (charSequenceT != null) {
                            parcel2.writeInt(1);
                            TextUtils.writeToParcel(charSequenceT, parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 31:
                        parcel.enforceInterface(DESCRIPTOR);
                        Bundle extras = getExtras();
                        parcel2.writeNoException();
                        if (extras != null) {
                            parcel2.writeInt(1);
                            extras.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 32:
                        parcel.enforceInterface(DESCRIPTOR);
                        int iI0 = i0();
                        parcel2.writeNoException();
                        parcel2.writeInt(iI0);
                        return true;
                    case 33:
                        parcel.enforceInterface(DESCRIPTOR);
                        prepare();
                        parcel2.writeNoException();
                        return true;
                    case 34:
                        parcel.enforceInterface(DESCRIPTOR);
                        String string5 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle5 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        q(string5, bundle5);
                        parcel2.writeNoException();
                        return true;
                    case 35:
                        parcel.enforceInterface(DESCRIPTOR);
                        String string6 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        T0(string6, bundle4);
                        parcel2.writeNoException();
                        return true;
                    case 36:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            uri2 = (Uri) Uri.CREATOR.createFromParcel(parcel);
                        } else {
                            uri2 = null;
                        }
                        if (parcel.readInt() != 0) {
                            bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        g(uri2, bundle3);
                        parcel2.writeNoException();
                        return true;
                    case 37:
                        parcel.enforceInterface(DESCRIPTOR);
                        int repeatMode = getRepeatMode();
                        parcel2.writeNoException();
                        parcel2.writeInt(repeatMode);
                        return true;
                    case 38:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean zF = f();
                        parcel2.writeNoException();
                        parcel2.writeInt(zF ? 1 : 0);
                        return true;
                    case 39:
                        parcel.enforceInterface(DESCRIPTOR);
                        setRepeatMode(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 40:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            z6 = true;
                        }
                        I(z6);
                        parcel2.writeNoException();
                        return true;
                    case 41:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            mediaDescriptionCompatCreateFromParcel3 = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
                        }
                        R0(mediaDescriptionCompatCreateFromParcel3);
                        parcel2.writeNoException();
                        return true;
                    case 42:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            mediaDescriptionCompatCreateFromParcel2 = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
                        }
                        u0(mediaDescriptionCompatCreateFromParcel2, parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 43:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            mediaDescriptionCompatCreateFromParcel = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
                        }
                        Q0(mediaDescriptionCompatCreateFromParcel);
                        parcel2.writeNoException();
                        return true;
                    case 44:
                        parcel.enforceInterface(DESCRIPTOR);
                        z(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 45:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean zB = B();
                        parcel2.writeNoException();
                        parcel2.writeInt(zB ? 1 : 0);
                        return true;
                    case 46:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            z6 = true;
                        }
                        Y(z6);
                        parcel2.writeNoException();
                        return true;
                    case 47:
                        parcel.enforceInterface(DESCRIPTOR);
                        int iD0 = D0();
                        parcel2.writeNoException();
                        parcel2.writeInt(iD0);
                        return true;
                    case 48:
                        parcel.enforceInterface(DESCRIPTOR);
                        L0(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 49:
                        parcel.enforceInterface(DESCRIPTOR);
                        d1(parcel.readFloat());
                        parcel2.writeNoException();
                        return true;
                    case 50:
                        parcel.enforceInterface(DESCRIPTOR);
                        Bundle bundleM0 = m0();
                        parcel2.writeNoException();
                        if (bundleM0 != null) {
                            parcel2.writeInt(1);
                            bundleM0.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 51:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            ratingCompatCreateFromParcel = RatingCompat.CREATOR.createFromParcel(parcel);
                        } else {
                            ratingCompatCreateFromParcel = null;
                        }
                        if (parcel.readInt() != 0) {
                            bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        w(ratingCompatCreateFromParcel, bundle2);
                        parcel2.writeNoException();
                        return true;
                    default:
                        return super.onTransact(i10, parcel, parcel2, i11);
                }
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    boolean B() throws RemoteException;

    int D0() throws RemoteException;

    void E(String str, Bundle bundle, MediaSessionCompat.ResultReceiverWrapper resultReceiverWrapper) throws RemoteException;

    void F() throws RemoteException;

    void I(boolean z6) throws RemoteException;

    String J() throws RemoteException;

    void J0(long j6) throws RemoteException;

    void L0(int i10) throws RemoteException;

    void O(android.support.v4.media.session.a aVar) throws RemoteException;

    void O0(RatingCompat ratingCompat) throws RemoteException;

    void P0(int i10, int i11, String str) throws RemoteException;

    void Q0(MediaDescriptionCompat mediaDescriptionCompat) throws RemoteException;

    boolean R() throws RemoteException;

    void R0(MediaDescriptionCompat mediaDescriptionCompat) throws RemoteException;

    CharSequence T() throws RemoteException;

    void T0(String str, Bundle bundle) throws RemoteException;

    void U(android.support.v4.media.session.a aVar) throws RemoteException;

    void Y(boolean z6) throws RemoteException;

    void Z0() throws RemoteException;

    long a() throws RemoteException;

    void d1(float f) throws RemoteException;

    void e(String str, Bundle bundle) throws RemoteException;

    ParcelableVolumeInfo e0() throws RemoteException;

    boolean f() throws RemoteException;

    void g(Uri uri, Bundle bundle) throws RemoteException;

    Bundle getExtras() throws RemoteException;

    MediaMetadataCompat getMetadata() throws RemoteException;

    PlaybackStateCompat getPlaybackState() throws RemoteException;

    int getRepeatMode() throws RemoteException;

    String getTag() throws RemoteException;

    int i0() throws RemoteException;

    void i1(int i10, int i11, String str) throws RemoteException;

    PendingIntent j() throws RemoteException;

    Bundle m0() throws RemoteException;

    List<MediaSessionCompat.QueueItem> m1() throws RemoteException;

    void n0(String str, Bundle bundle) throws RemoteException;

    void next() throws RemoteException;

    void pause() throws RemoteException;

    void play() throws RemoteException;

    void prepare() throws RemoteException;

    void previous() throws RemoteException;

    void q(String str, Bundle bundle) throws RemoteException;

    void q0(Uri uri, Bundle bundle) throws RemoteException;

    void s(String str, Bundle bundle) throws RemoteException;

    boolean s0(KeyEvent keyEvent) throws RemoteException;

    void seekTo(long j6) throws RemoteException;

    void setRepeatMode(int i10) throws RemoteException;

    void stop() throws RemoteException;

    void u0(MediaDescriptionCompat mediaDescriptionCompat, int i10) throws RemoteException;

    void w(RatingCompat ratingCompat, Bundle bundle) throws RemoteException;

    void z(int i10) throws RemoteException;
}
