.class public abstract Lcom/google/android/gms/internal/ads/zzzg;
.super Lcom/google/android/gms/internal/ads/zzfn;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzf;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfn;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 65
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzajf;->zzx(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaje;

    move-result-object p1

    .line 66
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzzf;->zza(Lcom/google/android/gms/internal/ads/zzaje;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 61
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaiy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaiy;

    .line 62
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzzf;->zza(Lcom/google/android/gms/internal/ads/zzaiy;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 57
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafy;->zzt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzafx;

    move-result-object p1

    .line 58
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzzf;->zza(Lcom/google/android/gms/internal/ads/zzafx;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 53
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 54
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzzf;->zza(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 48
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafv;->zzs(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzafu;

    move-result-object p1

    .line 49
    sget-object p4, Lcom/google/android/gms/internal/ads/zzyd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/ads/zzfo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzyd;

    .line 50
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzzf;->zza(Lcom/google/android/gms/internal/ads/zzafu;Lcom/google/android/gms/internal/ads/zzyd;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 37
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    .line 40
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 41
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzzy;

    if-eqz p4, :cond_1

    .line 42
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzzy;

    goto :goto_0

    .line 43
    :cond_1
    new-instance p4, Lcom/google/android/gms/internal/ads/zzaaa;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzaaa;-><init>(Landroid/os/IBinder;)V

    .line 45
    :goto_0
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/zzzf;->zza(Lcom/google/android/gms/internal/ads/zzzy;)V

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 33
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/internal/ads/zzady;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzady;

    .line 34
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzzf;->zza(Lcom/google/android/gms/internal/ads/zzady;)V

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 27
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzafs;->zzr(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzafr;

    move-result-object p4

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzafp;->zzq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzafo;

    move-result-object p2

    .line 30
    invoke-interface {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzzf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafr;Lcom/google/android/gms/internal/ads/zzafo;)V

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 23
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafm;->zzp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzafl;

    move-result-object p1

    .line 24
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzzf;->zza(Lcom/google/android/gms/internal/ads/zzafl;)V

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 19
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafj;->zzo(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzafi;

    move-result-object p1

    .line 20
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzzf;->zza(Lcom/google/android/gms/internal/ads/zzafi;)V

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 8
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "com.google.android.gms.ads.internal.client.IAdListener"

    .line 11
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 12
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzyz;

    if-eqz p4, :cond_3

    .line 13
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzyz;

    goto :goto_1

    .line 14
    :cond_3
    new-instance p4, Lcom/google/android/gms/internal/ads/zzzb;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzzb;-><init>(Landroid/os/IBinder;)V

    .line 16
    :goto_1
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/zzzf;->zza(Lcom/google/android/gms/internal/ads/zzyz;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 4
    :pswitch_c
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzzf;->zzpk()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfo;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_2
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
