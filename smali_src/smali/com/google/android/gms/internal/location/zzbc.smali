.class public final Lcom/google/android/gms/internal/location/zzbc;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "LocationRequestUpdateDataCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x3e8
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/location/zzbc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zza:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValueUnchecked = "LocationRequestUpdateData.OPERATION_ADD"
        id = 0x1
    .end annotation
.end field

.field final zzb:Lcom/google/android/gms/internal/location/zzba;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValueUnchecked = "null"
        id = 0x2
    .end annotation
.end field

.field final zzc:Lcom/google/android/gms/location/zzbd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValueUnchecked = "null"
        getter = "getLocationListenerBinder"
        id = 0x3
        type = "android.os.IBinder"
    .end annotation
.end field

.field final zzd:Landroid/app/PendingIntent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValueUnchecked = "null"
        id = 0x4
    .end annotation
.end field

.field final zze:Lcom/google/android/gms/location/zzba;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValueUnchecked = "null"
        getter = "getLocationCallbackBinder"
        id = 0x5
        type = "android.os.IBinder"
    .end annotation
.end field

.field final zzf:Lcom/google/android/gms/internal/location/zzai;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValueUnchecked = "null"
        getter = "getFusedLocationProviderCallbackBinder"
        id = 0x6
        type = "android.os.IBinder"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzbd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzbd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/location/zzbc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/location/zzba;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/location/zzba;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p6    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/location/zzbc;->zza:I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzbc;->zzb:Lcom/google/android/gms/internal/location/zzba;

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    move-object p2, p1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/location/zzbc;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzbd;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzbc;->zzc:Lcom/google/android/gms/location/zzbd;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/google/android/gms/internal/location/zzbc;->zzd:Landroid/app/PendingIntent;

    .line 21
    .line 22
    if-nez p5, :cond_1

    .line 23
    move-object p2, p1

    .line 24
    goto :goto_1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {p5}, Lcom/google/android/gms/location/zzaz;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzba;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    :goto_1
    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzbc;->zze:Lcom/google/android/gms/location/zzba;

    .line 31
    .line 32
    if-nez p6, :cond_2

    .line 33
    goto :goto_2

    .line 34
    .line 35
    :cond_2
    const-string p1, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    .line 36
    .line 37
    .line 38
    invoke-interface {p6, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    instance-of p2, p1, Lcom/google/android/gms/internal/location/zzai;

    .line 42
    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    check-cast p1, Lcom/google/android/gms/internal/location/zzai;

    .line 46
    goto :goto_2

    .line 47
    .line 48
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/location/zzag;

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p6}, Lcom/google/android/gms/internal/location/zzag;-><init>(Landroid/os/IBinder;)V

    .line 52
    .line 53
    :goto_2
    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzbc;->zzf:Lcom/google/android/gms/internal/location/zzai;

    .line 54
    return-void
.end method

.method public static zza(Lcom/google/android/gms/location/zzbd;Lcom/google/android/gms/internal/location/zzai;)Lcom/google/android/gms/internal/location/zzbc;
    .locals 8
    .param p1    # Lcom/google/android/gms/internal/location/zzai;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v7, Lcom/google/android/gms/internal/location/zzbc;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    move-object v6, p1

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v0, v7

    .line 12
    move-object v3, p0

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/location/zzbc;-><init>(ILcom/google/android/gms/internal/location/zzba;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 16
    return-object v7
.end method

.method public static zzb(Lcom/google/android/gms/internal/location/zzba;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/location/zzai;)Lcom/google/android/gms/internal/location/zzbc;
    .locals 8
    .param p2    # Lcom/google/android/gms/internal/location/zzai;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v7, Lcom/google/android/gms/internal/location/zzbc;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, v7

    .line 7
    move-object v2, p0

    .line 8
    move-object v4, p1

    .line 9
    move-object v6, p2

    .line 10
    .line 11
    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/location/zzbc;-><init>(ILcom/google/android/gms/internal/location/zzba;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 13
    return-object v7
.end method

.method public static zzc(Lcom/google/android/gms/location/zzba;Lcom/google/android/gms/internal/location/zzai;)Lcom/google/android/gms/internal/location/zzbc;
    .locals 8
    .param p1    # Lcom/google/android/gms/internal/location/zzai;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v7, Lcom/google/android/gms/internal/location/zzbc;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    move-object v6, p1

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    move-object v0, v7

    .line 12
    move-object v5, p0

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/location/zzbc;-><init>(ILcom/google/android/gms/internal/location/zzba;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 16
    return-object v7
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    iget v2, p0, Lcom/google/android/gms/internal/location/zzbc;->zza:I

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbc;->zzb:Lcom/google/android/gms/internal/location/zzba;

    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbc;->zzc:Lcom/google/android/gms/location/zzbd;

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    move-object v1, v2

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 28
    move-result-object v1

    .line 29
    :goto_0
    const/4 v4, 0x3

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v4, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 33
    const/4 v1, 0x4

    .line 34
    .line 35
    iget-object v4, p0, Lcom/google/android/gms/internal/location/zzbc;->zzd:Landroid/app/PendingIntent;

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v1, v4, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 39
    .line 40
    iget-object p2, p0, Lcom/google/android/gms/internal/location/zzbc;->zze:Lcom/google/android/gms/location/zzba;

    .line 41
    .line 42
    if-nez p2, :cond_1

    .line 43
    move-object p2, v2

    .line 44
    goto :goto_1

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 48
    move-result-object p2

    .line 49
    :goto_1
    const/4 v1, 0x5

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 53
    .line 54
    iget-object p2, p0, Lcom/google/android/gms/internal/location/zzbc;->zzf:Lcom/google/android/gms/internal/location/zzai;

    .line 55
    .line 56
    if-nez p2, :cond_2

    .line 57
    goto :goto_2

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 61
    move-result-object v2

    .line 62
    :goto_2
    const/4 p2, 0x6

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p2, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 69
    return-void
.end method
