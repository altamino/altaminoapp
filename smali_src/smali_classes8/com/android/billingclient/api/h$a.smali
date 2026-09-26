.class public Lcom/android/billingclient/api/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private zza:I

.field private zzb:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/o0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/android/billingclient/api/h$a;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/h;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 6
    .line 7
    iget v1, p0, Lcom/android/billingclient/api/h$a;->zza:I

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/billingclient/api/h;->e(Lcom/android/billingclient/api/h;I)V

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/billingclient/api/h$a;->zzb:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/android/billingclient/api/h;->d(Lcom/android/billingclient/api/h;Ljava/lang/String;)V

    .line 16
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/android/billingclient/api/h$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/h$a;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public c(I)Lcom/android/billingclient/api/h$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/h$a;->zza:I

    return-object p0
.end method
