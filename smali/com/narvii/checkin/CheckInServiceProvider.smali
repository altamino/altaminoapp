.class public final Lcom/narvii/checkin/CheckInServiceProvider;
.super Ljava/lang/Object;
.source "CheckInServiceProvider.kt"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/checkin/CheckInService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/checkin/CheckInService;
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/narvii/checkin/CheckInService;

    invoke-direct {v0, p1}, Lcom/narvii/checkin/CheckInService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/checkin/CheckInServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/checkin/CheckInService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/checkin/CheckInService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/checkin/CheckInService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/checkin/CheckInServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/checkin/CheckInService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/checkin/CheckInService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/checkin/CheckInService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/checkin/CheckInServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/checkin/CheckInService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/checkin/CheckInService;)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 15
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lcom/narvii/checkin/CheckInService;->bind(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/checkin/CheckInService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/checkin/CheckInServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/checkin/CheckInService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/checkin/CheckInService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/checkin/CheckInService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/checkin/CheckInServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/checkin/CheckInService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/checkin/CheckInService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/checkin/CheckInService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/checkin/CheckInServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/checkin/CheckInService;)V

    return-void
.end method
