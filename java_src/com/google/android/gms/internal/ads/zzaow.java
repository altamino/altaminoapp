package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes2.dex */
public abstract class zzaow extends zzfn implements zzaov {
    public zzaow() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    public static zzaov zzab(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        if (iInterfaceQueryLocalInterface instanceof zzaov) {
            return (zzaov) iInterfaceQueryLocalInterface;
        }
        return new zzaox(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfn
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzaoy zzapaVar;
        zzaoy zzaoyVar;
        zzaoj zzaolVar = null;
        zzaop zzaorVar = null;
        zzaos zzaouVar = null;
        zzaom zzaooVar = null;
        if (i == 1) {
            IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            String string = parcel.readString();
            Bundle bundle = (Bundle) zzfo.zza(parcel, Bundle.CREATOR);
            Bundle bundle2 = (Bundle) zzfo.zza(parcel, Bundle.CREATOR);
            zzyd zzydVar = (zzyd) zzfo.zza(parcel, zzyd.CREATOR);
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                zzaoyVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                if (iInterfaceQueryLocalInterface instanceof zzaoy) {
                    zzapaVar = (zzaoy) iInterfaceQueryLocalInterface;
                } else {
                    zzapaVar = new zzapa(strongBinder);
                }
                zzaoyVar = zzapaVar;
            }
            zza(iObjectWrapperAsInterface, string, bundle, bundle2, zzydVar, zzaoyVar);
            parcel2.writeNoException();
        } else if (i == 2) {
            zzapj zzapjVarZzsx = zzsx();
            parcel2.writeNoException();
            zzfo.zzb(parcel2, zzapjVarZzsx);
        } else if (i == 3) {
            zzapj zzapjVarZzsy = zzsy();
            parcel2.writeNoException();
            zzfo.zzb(parcel2, zzapjVarZzsy);
        } else if (i == 5) {
            zzaar videoController = getVideoController();
            parcel2.writeNoException();
            zzfo.zza(parcel2, videoController);
        } else if (i == 10) {
            zzx(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
        } else if (i == 11) {
            zza(parcel.createStringArray(), (Bundle[]) parcel.createTypedArray(Bundle.CREATOR));
            parcel2.writeNoException();
        } else {
            switch (i) {
                case 13:
                    String string2 = parcel.readString();
                    String string3 = parcel.readString();
                    zzxz zzxzVar = (zzxz) zzfo.zza(parcel, zzxz.CREATOR);
                    IObjectWrapper iObjectWrapperAsInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder strongBinder2 = parcel.readStrongBinder();
                    if (strongBinder2 != null) {
                        IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        if (iInterfaceQueryLocalInterface2 instanceof zzaoj) {
                            zzaolVar = (zzaoj) iInterfaceQueryLocalInterface2;
                        } else {
                            zzaolVar = new zzaol(strongBinder2);
                        }
                    }
                    zza(string2, string3, zzxzVar, iObjectWrapperAsInterface2, zzaolVar, zzamw.zzz(parcel.readStrongBinder()), (zzyd) zzfo.zza(parcel, zzyd.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 14:
                    String string4 = parcel.readString();
                    String string5 = parcel.readString();
                    zzxz zzxzVar2 = (zzxz) zzfo.zza(parcel, zzxz.CREATOR);
                    IObjectWrapper iObjectWrapperAsInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder strongBinder3 = parcel.readStrongBinder();
                    if (strongBinder3 != null) {
                        IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                        if (iInterfaceQueryLocalInterface3 instanceof zzaom) {
                            zzaooVar = (zzaom) iInterfaceQueryLocalInterface3;
                        } else {
                            zzaooVar = new zzaoo(strongBinder3);
                        }
                    }
                    zza(string4, string5, zzxzVar2, iObjectWrapperAsInterface3, zzaooVar, zzamw.zzz(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    break;
                case 15:
                    boolean zZzy = zzy(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    zzfo.writeBoolean(parcel2, zZzy);
                    break;
                case 16:
                    String string6 = parcel.readString();
                    String string7 = parcel.readString();
                    zzxz zzxzVar3 = (zzxz) zzfo.zza(parcel, zzxz.CREATOR);
                    IObjectWrapper iObjectWrapperAsInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder strongBinder4 = parcel.readStrongBinder();
                    if (strongBinder4 != null) {
                        IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        if (iInterfaceQueryLocalInterface4 instanceof zzaos) {
                            zzaouVar = (zzaos) iInterfaceQueryLocalInterface4;
                        } else {
                            zzaouVar = new zzaou(strongBinder4);
                        }
                    }
                    zza(string6, string7, zzxzVar3, iObjectWrapperAsInterface4, zzaouVar, zzamw.zzz(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    break;
                case 17:
                    boolean zZzz = zzz(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    zzfo.writeBoolean(parcel2, zZzz);
                    break;
                case 18:
                    String string8 = parcel.readString();
                    String string9 = parcel.readString();
                    zzxz zzxzVar4 = (zzxz) zzfo.zza(parcel, zzxz.CREATOR);
                    IObjectWrapper iObjectWrapperAsInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder strongBinder5 = parcel.readStrongBinder();
                    if (strongBinder5 != null) {
                        IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        if (iInterfaceQueryLocalInterface5 instanceof zzaop) {
                            zzaorVar = (zzaop) iInterfaceQueryLocalInterface5;
                        } else {
                            zzaorVar = new zzaor(strongBinder5);
                        }
                    }
                    zza(string8, string9, zzxzVar4, iObjectWrapperAsInterface5, zzaorVar, zzamw.zzz(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    break;
                default:
                    return false;
            }
        }
        return true;
    }
}
