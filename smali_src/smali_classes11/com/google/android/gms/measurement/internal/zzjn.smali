.class final Lcom/google/android/gms/measurement/internal/zzjn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:Z

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zziq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zziq;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzf:Lcom/google/android/gms/measurement/internal/zziq;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzb:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzc:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzd:Ljava/lang/String;

    .line 12
    .line 13
    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zze:Z

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzf:Lcom/google/android/gms/measurement/internal/zziq;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzr()Lcom/google/android/gms/measurement/internal/zzkp;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzc:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zzd:Ljava/lang/String;

    .line 16
    .line 17
    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzjn;->zze:Z

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 21
    return-void
.end method
