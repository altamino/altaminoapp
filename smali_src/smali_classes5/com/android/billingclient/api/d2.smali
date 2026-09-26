.class public final synthetic Lcom/android/billingclient/api/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/e;

.field public final synthetic zzb:Lcom/android/billingclient/api/j;

.field public final synthetic zzc:Lcom/android/billingclient/api/i;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/j;Lcom/android/billingclient/api/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/d2;->zza:Lcom/android/billingclient/api/e;

    iput-object p2, p0, Lcom/android/billingclient/api/d2;->zzb:Lcom/android/billingclient/api/j;

    iput-object p3, p0, Lcom/android/billingclient/api/d2;->zzc:Lcom/android/billingclient/api/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/d2;->zza:Lcom/android/billingclient/api/e;

    iget-object v1, p0, Lcom/android/billingclient/api/d2;->zzb:Lcom/android/billingclient/api/j;

    iget-object v2, p0, Lcom/android/billingclient/api/d2;->zzc:Lcom/android/billingclient/api/i;

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/e;->z(Lcom/android/billingclient/api/j;Lcom/android/billingclient/api/i;)V

    return-void
.end method
