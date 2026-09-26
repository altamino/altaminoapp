.class final Lcom/google/android/gms/measurement/internal/zzkj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Landroid/os/Bundle;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzki;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzki;

.field private final synthetic zzd:J

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzkh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkh;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzki;Lcom/google/android/gms/measurement/internal/zzki;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkj;->zze:Lcom/google/android/gms/measurement/internal/zzkh;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkj;->zza:Landroid/os/Bundle;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkj;->zzb:Lcom/google/android/gms/measurement/internal/zzki;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzkj;->zzc:Lcom/google/android/gms/measurement/internal/zzki;

    .line 9
    .line 10
    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzkj;->zzd:J

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkj;->zze:Lcom/google/android/gms/measurement/internal/zzkh;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkj;->zza:Landroid/os/Bundle;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkj;->zzb:Lcom/google/android/gms/measurement/internal/zzki;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkj;->zzc:Lcom/google/android/gms/measurement/internal/zzki;

    .line 9
    .line 10
    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzkj;->zzd:J

    .line 11
    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Lcom/google/android/gms/measurement/internal/zzkh;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzki;Lcom/google/android/gms/measurement/internal/zzki;J)V

    .line 14
    return-void
.end method
