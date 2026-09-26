.class final Lcom/google/android/gms/measurement/internal/zzhy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zznc;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzo;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzhj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhj;Lcom/google/android/gms/measurement/internal/zznc;Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzc:Lcom/google/android/gms/measurement/internal/zzhj;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zznc;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzc:Lcom/google/android/gms/measurement/internal/zzhj;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhj;->zza(Lcom/google/android/gms/measurement/internal/zzhj;)Lcom/google/android/gms/measurement/internal/zzmp;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmp;->zzr()V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zznc;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznc;->zza()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzc:Lcom/google/android/gms/measurement/internal/zzhj;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhj;->zza(Lcom/google/android/gms/measurement/internal/zzhj;)Lcom/google/android/gms/measurement/internal/zzmp;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zznc;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zznc;->zza:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzmp;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 33
    return-void

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzc:Lcom/google/android/gms/measurement/internal/zzhj;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhj;->zza(Lcom/google/android/gms/measurement/internal/zzhj;)Lcom/google/android/gms/measurement/internal/zzmp;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zznc;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzmp;->zza(Lcom/google/android/gms/measurement/internal/zznc;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 47
    return-void
.end method
