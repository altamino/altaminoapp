package androidx.work.multiprocess;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes7.dex */
public interface IListenableWorkerImpl extends IInterface {
    public static final String DESCRIPTOR = "androidx.work.multiprocess.IListenableWorkerImpl";

    public static class Default implements IListenableWorkerImpl {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IListenableWorkerImpl {
        static final int TRANSACTION_interrupt = 2;
        static final int TRANSACTION_startWork = 1;

        private static class Proxy implements IListenableWorkerImpl {
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
                data.enforceInterface(IListenableWorkerImpl.DESCRIPTOR);
            }
            if (code == 1598968902) {
                reply.writeString(IListenableWorkerImpl.DESCRIPTOR);
                return true;
            }
            if (code == 1) {
                t(data.createByteArray(), IWorkManagerImplCallback.Stub.x1(data.readStrongBinder()));
            } else {
                if (code != 2) {
                    return super.onTransact(code, data, reply, flags);
                }
                Z(data.createByteArray(), IWorkManagerImplCallback.Stub.x1(data.readStrongBinder()));
            }
            return true;
        }

        public Stub() {
            attachInterface(this, IListenableWorkerImpl.DESCRIPTOR);
        }
    }

    void Z(byte[] request, IWorkManagerImplCallback callback) throws RemoteException;

    void t(byte[] request, IWorkManagerImplCallback callback) throws RemoteException;
}
