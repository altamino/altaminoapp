package androidx.work.multiprocess;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes4.dex */
public interface IWorkManagerImpl extends IInterface {
    public static final String DESCRIPTOR = "androidx.work.multiprocess.IWorkManagerImpl";

    public static class Default implements IWorkManagerImpl {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IWorkManagerImpl {
        static final int TRANSACTION_cancelAllWork = 7;
        static final int TRANSACTION_cancelAllWorkByTag = 5;
        static final int TRANSACTION_cancelUniqueWork = 6;
        static final int TRANSACTION_cancelWorkById = 4;
        static final int TRANSACTION_enqueueContinuation = 3;
        static final int TRANSACTION_enqueueWorkRequests = 1;
        static final int TRANSACTION_queryWorkInfo = 8;
        static final int TRANSACTION_setForegroundAsync = 10;
        static final int TRANSACTION_setProgress = 9;
        static final int TRANSACTION_updateUniquePeriodicWorkRequest = 2;

        private static class Proxy implements IWorkManagerImpl {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code >= 1 && code <= 16777215) {
                data.enforceInterface(IWorkManagerImpl.DESCRIPTOR);
            }
            if (code == 1598968902) {
                reply.writeString(IWorkManagerImpl.DESCRIPTOR);
                return true;
            }
            switch (code) {
                case 1:
                    h0(data.createByteArray(), IWorkManagerImplCallback.Stub.x1(data.readStrongBinder()));
                    return true;
                case 2:
                    G(data.readString(), data.createByteArray(), IWorkManagerImplCallback.Stub.x1(data.readStrongBinder()));
                    return true;
                case 3:
                    M(data.createByteArray(), IWorkManagerImplCallback.Stub.x1(data.readStrongBinder()));
                    return true;
                case 4:
                    B0(data.readString(), IWorkManagerImplCallback.Stub.x1(data.readStrongBinder()));
                    return true;
                case 5:
                    f0(data.readString(), IWorkManagerImplCallback.Stub.x1(data.readStrongBinder()));
                    return true;
                case 6:
                    h(data.readString(), IWorkManagerImplCallback.Stub.x1(data.readStrongBinder()));
                    return true;
                case 7:
                    j0(IWorkManagerImplCallback.Stub.x1(data.readStrongBinder()));
                    return true;
                case 8:
                    b1(data.createByteArray(), IWorkManagerImplCallback.Stub.x1(data.readStrongBinder()));
                    return true;
                case 9:
                    K(data.createByteArray(), IWorkManagerImplCallback.Stub.x1(data.readStrongBinder()));
                    return true;
                case 10:
                    n1(data.createByteArray(), IWorkManagerImplCallback.Stub.x1(data.readStrongBinder()));
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        public Stub() {
            attachInterface(this, IWorkManagerImpl.DESCRIPTOR);
        }
    }

    void B0(String id, IWorkManagerImplCallback callback) throws RemoteException;

    void G(String name, byte[] request, IWorkManagerImplCallback callback) throws RemoteException;

    void K(byte[] request, IWorkManagerImplCallback callback) throws RemoteException;

    void M(byte[] request, IWorkManagerImplCallback callback) throws RemoteException;

    void b1(byte[] request, IWorkManagerImplCallback callback) throws RemoteException;

    void f0(String tag, IWorkManagerImplCallback callback) throws RemoteException;

    void h(String name, IWorkManagerImplCallback callback) throws RemoteException;

    void h0(byte[] request, IWorkManagerImplCallback callback) throws RemoteException;

    void j0(IWorkManagerImplCallback callback) throws RemoteException;

    void n1(byte[] request, IWorkManagerImplCallback callback) throws RemoteException;
}
