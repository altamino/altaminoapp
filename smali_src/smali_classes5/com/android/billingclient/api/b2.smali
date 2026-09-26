.class public final synthetic Lcom/android/billingclient/api/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/e;

.field public final synthetic zzb:Lcom/android/billingclient/api/q;

.field public final synthetic zzc:Lcom/android/billingclient/api/m;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/q;Lcom/android/billingclient/api/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/b2;->zza:Lcom/android/billingclient/api/e;

    iput-object p2, p0, Lcom/android/billingclient/api/b2;->zzb:Lcom/android/billingclient/api/q;

    iput-object p3, p0, Lcom/android/billingclient/api/b2;->zzc:Lcom/android/billingclient/api/m;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/b2;->zza:Lcom/android/billingclient/api/e;

    iget-object v1, p0, Lcom/android/billingclient/api/b2;->zzb:Lcom/android/billingclient/api/q;

    iget-object v2, p0, Lcom/android/billingclient/api/b2;->zzc:Lcom/android/billingclient/api/m;

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/e;->V(Lcom/android/billingclient/api/q;Lcom/android/billingclient/api/m;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
