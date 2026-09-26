.class final Lcom/google/android/gms/measurement/internal/zzmv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Landroid/os/Bundle;

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzmw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzmw;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zzd:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zza:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zzb:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zzc:Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zzd:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmw;->zza:Lcom/google/android/gms/measurement/internal/zzmp;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmp;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zza:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zzb:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zzc:Landroid/os/Bundle;

    .line 15
    .line 16
    const-string v5, "auto"

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zzd:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmw;->zza:Lcom/google/android/gms/measurement/internal/zzmp;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmp;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 28
    move-result-wide v6

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x1

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzbg;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zzd:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzmw;->zza:Lcom/google/android/gms/measurement/internal/zzmp;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    check-cast v0, Lcom/google/android/gms/measurement/internal/zzbg;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zza:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzmp;->zza(Lcom/google/android/gms/measurement/internal/zzbg;Ljava/lang/String;)V

    .line 50
    return-void
.end method
