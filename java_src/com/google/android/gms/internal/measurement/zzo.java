package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes2.dex */
public abstract class zzo extends zzb implements zzn {
    public zzo() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    public static zzn asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        if (iInterfaceQueryLocalInterface instanceof zzn) {
            return (zzn) iInterfaceQueryLocalInterface;
        }
        return new zzp(iBinder);
    }

    @Override // com.google.android.gms.internal.measurement.zzb
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzq zzsVar;
        zzq zzqVar;
        zzq zzsVar2 = null;
        zzq zzsVar3 = null;
        zzq zzsVar4 = null;
        zzt zzvVar = null;
        zzt zzvVar2 = null;
        zzt zzvVar3 = null;
        zzq zzsVar5 = null;
        zzq zzsVar6 = null;
        zzq zzsVar7 = null;
        zzq zzsVar8 = null;
        zzq zzsVar9 = null;
        zzq zzsVar10 = null;
        zzw zzxVar = null;
        zzq zzsVar11 = null;
        zzq zzsVar12 = null;
        zzq zzsVar13 = null;
        zzq zzsVar14 = null;
        switch (i) {
            case 1:
                initialize(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzy) zzc.zza(parcel, zzy.CREATOR), parcel.readLong());
                break;
            case 2:
                logEvent(parcel.readString(), parcel.readString(), (Bundle) zzc.zza(parcel, Bundle.CREATOR), zzc.zza(parcel), zzc.zza(parcel), parcel.readLong());
                break;
            case 3:
                String string = parcel.readString();
                String string2 = parcel.readString();
                Bundle bundle = (Bundle) zzc.zza(parcel, Bundle.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    zzqVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface instanceof zzq) {
                        zzsVar = (zzq) iInterfaceQueryLocalInterface;
                    } else {
                        zzsVar = new zzs(strongBinder);
                    }
                    zzqVar = zzsVar;
                }
                logEventAndBundle(string, string2, bundle, zzqVar, parcel.readLong());
                break;
            case 4:
                setUserProperty(parcel.readString(), parcel.readString(), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzc.zza(parcel), parcel.readLong());
                break;
            case 5:
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                boolean zZza = zzc.zza(parcel);
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface2 instanceof zzq) {
                        zzsVar2 = (zzq) iInterfaceQueryLocalInterface2;
                    } else {
                        zzsVar2 = new zzs(strongBinder2);
                    }
                }
                getUserProperties(string3, string4, zZza, zzsVar2);
                break;
            case 6:
                String string5 = parcel.readString();
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface3 instanceof zzq) {
                        zzsVar14 = (zzq) iInterfaceQueryLocalInterface3;
                    } else {
                        zzsVar14 = new zzs(strongBinder3);
                    }
                }
                getMaxUserProperties(string5, zzsVar14);
                break;
            case 7:
                setUserId(parcel.readString(), parcel.readLong());
                break;
            case 8:
                setConditionalUserProperty((Bundle) zzc.zza(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 9:
                clearConditionalUserProperty(parcel.readString(), parcel.readString(), (Bundle) zzc.zza(parcel, Bundle.CREATOR));
                break;
            case 10:
                String string6 = parcel.readString();
                String string7 = parcel.readString();
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface4 instanceof zzq) {
                        zzsVar13 = (zzq) iInterfaceQueryLocalInterface4;
                    } else {
                        zzsVar13 = new zzs(strongBinder4);
                    }
                }
                getConditionalUserProperties(string6, string7, zzsVar13);
                break;
            case 11:
                setMeasurementEnabled(zzc.zza(parcel), parcel.readLong());
                break;
            case 12:
                resetAnalyticsData(parcel.readLong());
                break;
            case 13:
                setMinimumSessionDuration(parcel.readLong());
                break;
            case 14:
                setSessionTimeoutDuration(parcel.readLong());
                break;
            case 15:
                setCurrentScreen(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readLong());
                break;
            case 16:
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface5 instanceof zzq) {
                        zzsVar12 = (zzq) iInterfaceQueryLocalInterface5;
                    } else {
                        zzsVar12 = new zzs(strongBinder5);
                    }
                }
                getCurrentScreenName(zzsVar12);
                break;
            case 17:
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface6 instanceof zzq) {
                        zzsVar11 = (zzq) iInterfaceQueryLocalInterface6;
                    } else {
                        zzsVar11 = new zzs(strongBinder6);
                    }
                }
                getCurrentScreenClass(zzsVar11);
                break;
            case 18:
                IBinder strongBinder7 = parcel.readStrongBinder();
                if (strongBinder7 != null) {
                    IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    if (iInterfaceQueryLocalInterface7 instanceof zzw) {
                        zzxVar = (zzw) iInterfaceQueryLocalInterface7;
                    } else {
                        zzxVar = new zzx(strongBinder7);
                    }
                }
                setInstanceIdProvider(zzxVar);
                break;
            case 19:
                IBinder strongBinder8 = parcel.readStrongBinder();
                if (strongBinder8 != null) {
                    IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface8 instanceof zzq) {
                        zzsVar10 = (zzq) iInterfaceQueryLocalInterface8;
                    } else {
                        zzsVar10 = new zzs(strongBinder8);
                    }
                }
                getCachedAppInstanceId(zzsVar10);
                break;
            case 20:
                IBinder strongBinder9 = parcel.readStrongBinder();
                if (strongBinder9 != null) {
                    IInterface iInterfaceQueryLocalInterface9 = strongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface9 instanceof zzq) {
                        zzsVar9 = (zzq) iInterfaceQueryLocalInterface9;
                    } else {
                        zzsVar9 = new zzs(strongBinder9);
                    }
                }
                getAppInstanceId(zzsVar9);
                break;
            case 21:
                IBinder strongBinder10 = parcel.readStrongBinder();
                if (strongBinder10 != null) {
                    IInterface iInterfaceQueryLocalInterface10 = strongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface10 instanceof zzq) {
                        zzsVar8 = (zzq) iInterfaceQueryLocalInterface10;
                    } else {
                        zzsVar8 = new zzs(strongBinder10);
                    }
                }
                getGmpAppId(zzsVar8);
                break;
            case 22:
                IBinder strongBinder11 = parcel.readStrongBinder();
                if (strongBinder11 != null) {
                    IInterface iInterfaceQueryLocalInterface11 = strongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface11 instanceof zzq) {
                        zzsVar7 = (zzq) iInterfaceQueryLocalInterface11;
                    } else {
                        zzsVar7 = new zzs(strongBinder11);
                    }
                }
                generateEventId(zzsVar7);
                break;
            case 23:
                beginAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case 24:
                endAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case 25:
                onActivityStarted(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 26:
                onActivityStopped(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 27:
                onActivityCreated(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (Bundle) zzc.zza(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 28:
                onActivityDestroyed(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 29:
                onActivityPaused(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 30:
                onActivityResumed(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 31:
                IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IBinder strongBinder12 = parcel.readStrongBinder();
                if (strongBinder12 != null) {
                    IInterface iInterfaceQueryLocalInterface12 = strongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface12 instanceof zzq) {
                        zzsVar6 = (zzq) iInterfaceQueryLocalInterface12;
                    } else {
                        zzsVar6 = new zzs(strongBinder12);
                    }
                }
                onActivitySaveInstanceState(iObjectWrapperAsInterface, zzsVar6, parcel.readLong());
                break;
            case 32:
                Bundle bundle2 = (Bundle) zzc.zza(parcel, Bundle.CREATOR);
                IBinder strongBinder13 = parcel.readStrongBinder();
                if (strongBinder13 != null) {
                    IInterface iInterfaceQueryLocalInterface13 = strongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface13 instanceof zzq) {
                        zzsVar5 = (zzq) iInterfaceQueryLocalInterface13;
                    } else {
                        zzsVar5 = new zzs(strongBinder13);
                    }
                }
                performAction(bundle2, zzsVar5, parcel.readLong());
                break;
            case 33:
                logHealthData(parcel.readInt(), parcel.readString(), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 34:
                IBinder strongBinder14 = parcel.readStrongBinder();
                if (strongBinder14 != null) {
                    IInterface iInterfaceQueryLocalInterface14 = strongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    if (iInterfaceQueryLocalInterface14 instanceof zzt) {
                        zzvVar3 = (zzt) iInterfaceQueryLocalInterface14;
                    } else {
                        zzvVar3 = new zzv(strongBinder14);
                    }
                }
                setEventInterceptor(zzvVar3);
                break;
            case 35:
                IBinder strongBinder15 = parcel.readStrongBinder();
                if (strongBinder15 != null) {
                    IInterface iInterfaceQueryLocalInterface15 = strongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    if (iInterfaceQueryLocalInterface15 instanceof zzt) {
                        zzvVar2 = (zzt) iInterfaceQueryLocalInterface15;
                    } else {
                        zzvVar2 = new zzv(strongBinder15);
                    }
                }
                registerOnMeasurementEventListener(zzvVar2);
                break;
            case 36:
                IBinder strongBinder16 = parcel.readStrongBinder();
                if (strongBinder16 != null) {
                    IInterface iInterfaceQueryLocalInterface16 = strongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    if (iInterfaceQueryLocalInterface16 instanceof zzt) {
                        zzvVar = (zzt) iInterfaceQueryLocalInterface16;
                    } else {
                        zzvVar = new zzv(strongBinder16);
                    }
                }
                unregisterOnMeasurementEventListener(zzvVar);
                break;
            case 37:
                initForTests(zzc.zzb(parcel));
                break;
            case 38:
                IBinder strongBinder17 = parcel.readStrongBinder();
                if (strongBinder17 != null) {
                    IInterface iInterfaceQueryLocalInterface17 = strongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface17 instanceof zzq) {
                        zzsVar4 = (zzq) iInterfaceQueryLocalInterface17;
                    } else {
                        zzsVar4 = new zzs(strongBinder17);
                    }
                }
                getTestFlag(zzsVar4, parcel.readInt());
                break;
            case 39:
                setDataCollectionEnabled(zzc.zza(parcel));
                break;
            case 40:
                IBinder strongBinder18 = parcel.readStrongBinder();
                if (strongBinder18 != null) {
                    IInterface iInterfaceQueryLocalInterface18 = strongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    if (iInterfaceQueryLocalInterface18 instanceof zzq) {
                        zzsVar3 = (zzq) iInterfaceQueryLocalInterface18;
                    } else {
                        zzsVar3 = new zzs(strongBinder18);
                    }
                }
                isDataCollectionEnabled(zzsVar3);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
