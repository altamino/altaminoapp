.class final Lcom/google/android/gms/internal/play_billing/zzci;
.super Lcom/google/android/gms/internal/play_billing/zzby;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_billing/zzbd;

.field private final zzb:Ljava/util/logging/Level;

.field private final zzc:Ljava/util/Set;

.field private final zzd:Lcom/google/android/gms/internal/play_billing/zzbq;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/play_billing/zzbd;ZZ)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object p1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzck;->zzd()Ljava/util/Set;

    .line 6
    move-result-object p3

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzck;->zzb()Lcom/google/android/gms/internal/play_billing/zzbq;

    .line 10
    move-result-object p5

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzby;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    iput-object p4, p0, Lcom/google/android/gms/internal/play_billing/zzci;->zza:Lcom/google/android/gms/internal/play_billing/zzbd;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzci;->zzb:Ljava/util/logging/Level;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzci;->zzc:Ljava/util/Set;

    .line 20
    .line 21
    iput-object p5, p0, Lcom/google/android/gms/internal/play_billing/zzci;->zzd:Lcom/google/android/gms/internal/play_billing/zzbq;

    .line 22
    return-void
.end method
