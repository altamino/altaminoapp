.class public final Lcom/narvii/checkin/CheckInActivityServiceProvider;
.super Ljava/lang/Object;
.source "CheckInActivityServiceProvider.kt"

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


# instance fields
.field private final parent:Lcom/narvii/checkin/CheckInServiceProvider;


# direct methods
.method public constructor <init>(Lcom/narvii/checkin/CheckInServiceProvider;)V
    .locals 1

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/checkin/CheckInActivityServiceProvider;->parent:Lcom/narvii/checkin/CheckInServiceProvider;

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/checkin/CheckInService;
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/narvii/checkin/CheckInActivityServiceProvider;->parent:Lcom/narvii/checkin/CheckInServiceProvider;

    invoke-virtual {v0, p1}, Lcom/narvii/checkin/CheckInServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/checkin/CheckInService;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/checkin/CheckInActivityServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/checkin/CheckInService;

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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/checkin/CheckInActivityServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/checkin/CheckInService;)V

    return-void
.end method

.method public final getParent()Lcom/narvii/checkin/CheckInServiceProvider;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/narvii/checkin/CheckInActivityServiceProvider;->parent:Lcom/narvii/checkin/CheckInServiceProvider;

    return-object v0
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/checkin/CheckInService;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 19
    invoke-virtual {p2}, Lcom/narvii/checkin/CheckInService;->unbind()V

    :cond_0
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/checkin/CheckInService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/checkin/CheckInActivityServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/checkin/CheckInService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/checkin/CheckInService;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 15
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lcom/narvii/checkin/CheckInService;->bind(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/checkin/CheckInService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/checkin/CheckInActivityServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/checkin/CheckInService;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/checkin/CheckInActivityServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/checkin/CheckInService;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/checkin/CheckInActivityServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/checkin/CheckInService;)V

    return-void
.end method
