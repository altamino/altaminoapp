package android.support.v4.media.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.text.TextUtils;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: android.support.v4.media.session.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0017a extends Binder implements a {
        private static final String DESCRIPTOR = "android.support.v4.media.session.IMediaControllerCallback";
        static final int TRANSACTION_onCaptioningEnabledChanged = 11;
        static final int TRANSACTION_onEvent = 1;
        static final int TRANSACTION_onExtrasChanged = 7;
        static final int TRANSACTION_onMetadataChanged = 4;
        static final int TRANSACTION_onPlaybackStateChanged = 3;
        static final int TRANSACTION_onQueueChanged = 5;
        static final int TRANSACTION_onQueueTitleChanged = 6;
        static final int TRANSACTION_onRepeatModeChanged = 9;
        static final int TRANSACTION_onSessionDestroyed = 2;
        static final int TRANSACTION_onSessionReady = 13;
        static final int TRANSACTION_onShuffleModeChanged = 12;
        static final int TRANSACTION_onShuffleModeChangedRemoved = 10;
        static final int TRANSACTION_onVolumeInfoChanged = 8;

        public static a y1() {
            return C0018a.sDefaultImpl;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        /* JADX INFO: renamed from: android.support.v4.media.session.a$a$a, reason: collision with other inner class name */
        private static class C0018a implements a {
            public static a sDefaultImpl;
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            C0018a(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.support.v4.media.session.a
            public void y() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC0017a.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, null, 1) && AbstractBinderC0017a.y1() != null) {
                        AbstractBinderC0017a.y1().y();
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static a x1(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0018a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public AbstractBinderC0017a() {
            attachInterface(this, DESCRIPTOR);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 != 1598968902) {
                boolean z6 = false;
                Bundle bundle = null;
                ParcelableVolumeInfo parcelableVolumeInfoCreateFromParcel = null;
                Bundle bundle2 = null;
                CharSequence charSequence = null;
                MediaMetadataCompat mediaMetadataCompatCreateFromParcel = null;
                PlaybackStateCompat playbackStateCompatCreateFromParcel = null;
                switch (i10) {
                    case 1:
                        parcel.enforceInterface(DESCRIPTOR);
                        String string = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        onEvent(string, bundle);
                        return true;
                    case 2:
                        parcel.enforceInterface(DESCRIPTOR);
                        y();
                        return true;
                    case 3:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            playbackStateCompatCreateFromParcel = PlaybackStateCompat.CREATOR.createFromParcel(parcel);
                        }
                        v1(playbackStateCompatCreateFromParcel);
                        return true;
                    case 4:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            mediaMetadataCompatCreateFromParcel = MediaMetadataCompat.CREATOR.createFromParcel(parcel);
                        }
                        v0(mediaMetadataCompatCreateFromParcel);
                        return true;
                    case 5:
                        parcel.enforceInterface(DESCRIPTOR);
                        o(parcel.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR));
                        return true;
                    case 6:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
                        }
                        h1(charSequence);
                        return true;
                    case 7:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        U0(bundle2);
                        return true;
                    case 8:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            parcelableVolumeInfoCreateFromParcel = ParcelableVolumeInfo.CREATOR.createFromParcel(parcel);
                        }
                        N0(parcelableVolumeInfoCreateFromParcel);
                        return true;
                    case 9:
                        parcel.enforceInterface(DESCRIPTOR);
                        onRepeatModeChanged(parcel.readInt());
                        return true;
                    case 10:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            z6 = true;
                        }
                        g1(z6);
                        return true;
                    case 11:
                        parcel.enforceInterface(DESCRIPTOR);
                        if (parcel.readInt() != 0) {
                            z6 = true;
                        }
                        a1(z6);
                        return true;
                    case 12:
                        parcel.enforceInterface(DESCRIPTOR);
                        F0(parcel.readInt());
                        return true;
                    case 13:
                        parcel.enforceInterface(DESCRIPTOR);
                        n();
                        return true;
                    default:
                        return super.onTransact(i10, parcel, parcel2, i11);
                }
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void F0(int i10) throws RemoteException;

    void N0(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException;

    void U0(Bundle bundle) throws RemoteException;

    void a1(boolean z6) throws RemoteException;

    void g1(boolean z6) throws RemoteException;

    void h1(CharSequence charSequence) throws RemoteException;

    void n() throws RemoteException;

    void o(List<MediaSessionCompat.QueueItem> list) throws RemoteException;

    void onEvent(String str, Bundle bundle) throws RemoteException;

    void onRepeatModeChanged(int i10) throws RemoteException;

    void v0(MediaMetadataCompat mediaMetadataCompat) throws RemoteException;

    void v1(PlaybackStateCompat playbackStateCompat) throws RemoteException;

    void y() throws RemoteException;
}
