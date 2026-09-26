.class public final Lcom/android/billingclient/api/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/q$a;,
        Lcom/android/billingclient/api/q$b;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_billing/zzaf;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/q$a;Lcom/android/billingclient/api/m1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/billingclient/api/q$a;->c(Lcom/android/billingclient/api/q$a;)Lcom/google/android/gms/internal/play_billing/zzaf;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/q;->zza:Lcom/google/android/gms/internal/play_billing/zzaf;

    return-void
.end method

.method public static a()Lcom/android/billingclient/api/q$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/android/billingclient/api/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/q$a;-><init>(Lcom/android/billingclient/api/j1;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/play_billing/zzaf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/q;->zza:Lcom/google/android/gms/internal/play_billing/zzaf;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/q;->zza:Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/android/billingclient/api/q$b;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/billingclient/api/q$b;->c()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method
