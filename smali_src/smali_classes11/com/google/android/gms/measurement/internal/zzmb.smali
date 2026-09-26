.class final Lcom/google/android/gms/measurement/internal/zzmb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field zza:J

.field zzb:J

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzmc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzmc;JJ)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmb;->zzc:Lcom/google/android/gms/measurement/internal/zzmc;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzmb;->zza:J

    .line 8
    .line 9
    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzmb;->zzb:J

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmb;->zzc:Lcom/google/android/gms/measurement/internal/zzmc;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmc;->zza:Lcom/google/android/gms/measurement/internal/zzlx;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzme;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzme;-><init>(Lcom/google/android/gms/measurement/internal/zzmb;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method
