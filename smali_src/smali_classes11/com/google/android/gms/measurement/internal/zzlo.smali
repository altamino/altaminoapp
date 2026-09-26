.class final Lcom/google/android/gms/measurement/internal/zzlo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Landroid/content/ComponentName;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzlm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzlm;Landroid/content/ComponentName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlo;->zzb:Lcom/google/android/gms/measurement/internal/zzlm;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlo;->zza:Landroid/content/ComponentName;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlo;->zzb:Lcom/google/android/gms/measurement/internal/zzlm;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzlm;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlo;->zza:Landroid/content/ComponentName;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzkp;Landroid/content/ComponentName;)V

    .line 10
    return-void
.end method
