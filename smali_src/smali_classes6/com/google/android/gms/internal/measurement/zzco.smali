.class public final Lcom/google/android/gms/internal/measurement/zzco;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzcm;

.field private static zzb:Lcom/google/android/gms/internal/measurement/zzcm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcn;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcn;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzco;->zza:Lcom/google/android/gms/internal/measurement/zzcm;

    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzco;->zzb:Lcom/google/android/gms/internal/measurement/zzcm;

    .line 10
    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/measurement/zzcm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzco;->zzb:Lcom/google/android/gms/internal/measurement/zzcm;

    return-object v0
.end method
