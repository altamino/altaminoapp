.class final Lcom/android/billingclient/api/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/android/billingclient/api/o;

.field final synthetic zzc:Lcom/android/billingclient/api/e;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/e;Ljava/lang/String;Lcom/android/billingclient/api/o;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/a0;->zzc:Lcom/android/billingclient/api/e;

    iput-object p2, p0, Lcom/android/billingclient/api/a0;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/a0;->zzb:Lcom/android/billingclient/api/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/a0;->zzc:Lcom/android/billingclient/api/e;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/billingclient/api/a0;->zza:Ljava/lang/String;

    .line 5
    .line 6
    const/16 v2, 0x9

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lcom/android/billingclient/api/e;->D(Lcom/android/billingclient/api/e;Ljava/lang/String;I)Lcom/android/billingclient/api/g1;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/billingclient/api/g1;->b()Ljava/util/List;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/billingclient/api/a0;->zzb:Lcom/android/billingclient/api/o;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/billingclient/api/g1;->a()Lcom/android/billingclient/api/h;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/billingclient/api/g1;->b()Ljava/util/List;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v2, v0}, Lcom/android/billingclient/api/o;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    iget-object v1, p0, Lcom/android/billingclient/api/a0;->zzb:Lcom/android/billingclient/api/o;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/billingclient/api/g1;->a()Lcom/android/billingclient/api/h;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzk()Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v0, v2}, Lcom/android/billingclient/api/o;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 44
    :goto_0
    const/4 v0, 0x0

    .line 45
    return-object v0
.end method
