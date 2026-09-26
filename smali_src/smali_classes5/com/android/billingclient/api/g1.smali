.class public final Lcom/android/billingclient/api/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Lcom/android/billingclient/api/h;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/billingclient/api/g1;->zza:Ljava/util/List;

    iput-object p1, p0, Lcom/android/billingclient/api/g1;->zzb:Lcom/android/billingclient/api/h;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/billingclient/api/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/g1;->zzb:Lcom/android/billingclient/api/h;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/g1;->zza:Ljava/util/List;

    return-object v0
.end method
