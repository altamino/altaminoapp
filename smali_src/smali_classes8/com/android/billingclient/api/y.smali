.class public final synthetic Lcom/android/billingclient/api/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/e;

.field public final synthetic zzb:Lcom/android/billingclient/api/b;

.field public final synthetic zzc:Lcom/android/billingclient/api/c;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/y;->zza:Lcom/android/billingclient/api/e;

    iput-object p2, p0, Lcom/android/billingclient/api/y;->zzb:Lcom/android/billingclient/api/b;

    iput-object p3, p0, Lcom/android/billingclient/api/y;->zzc:Lcom/android/billingclient/api/c;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/y;->zza:Lcom/android/billingclient/api/e;

    iget-object v1, p0, Lcom/android/billingclient/api/y;->zzb:Lcom/android/billingclient/api/b;

    iget-object v2, p0, Lcom/android/billingclient/api/y;->zzc:Lcom/android/billingclient/api/c;

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/e;->T(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/c;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
