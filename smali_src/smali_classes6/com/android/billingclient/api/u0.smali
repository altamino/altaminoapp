.class final Lcom/android/billingclient/api/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Z

.field private zzb:Lf2/f;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/u;->f(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/datatransport/runtime/u;->c()Lcom/google/android/datatransport/runtime/u;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    sget-object v0, Lcom/google/android/datatransport/cct/a;->INSTANCE:Lcom/google/android/datatransport/cct/a;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/google/android/datatransport/runtime/u;->g(Lcom/google/android/datatransport/runtime/f;)Lf2/g;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string v0, "PLAY_BILLING_LIBRARY"

    .line 19
    .line 20
    const-class v1, Lcom/google/android/gms/internal/play_billing/zziv;

    .line 21
    .line 22
    .line 23
    const-string/jumbo v2, "proto"

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Lf2/b;->b(Ljava/lang/String;)Lf2/b;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    sget-object v3, Lcom/android/billingclient/api/t0;->zza:Lcom/android/billingclient/api/t0;

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0, v1, v2, v3}, Lf2/g;->a(Ljava/lang/String;Ljava/lang/Class;Lf2/b;Lf2/e;)Lf2/f;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/billingclient/api/u0;->zzb:Lf2/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    return-void

    .line 37
    :catchall_0
    const/4 p1, 0x1

    .line 38
    .line 39
    iput-boolean p1, p0, Lcom/android/billingclient/api/u0;->zza:Z

    .line 40
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/play_billing/zziv;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/android/billingclient/api/u0;->zza:Z

    .line 3
    .line 4
    const-string v1, "BillingLogger"

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string p1, "Skipping logging since initialization failed."

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/u0;->zzb:Lf2/f;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lf2/c;->d(Ljava/lang/Object;)Lf2/c;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1}, Lf2/f;->b(Lf2/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    return-void

    .line 23
    .line 24
    :catchall_0
    const-string p1, "logging failed."

    .line 25
    .line 26
    .line 27
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method
