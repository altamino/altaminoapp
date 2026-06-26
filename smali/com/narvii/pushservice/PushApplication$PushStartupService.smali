.class Lcom/narvii/pushservice/PushApplication$PushStartupService;
.super Ljava/lang/Object;
.source "PushApplication.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pushservice/PushApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PushStartupService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pushservice/PushApplication;


# direct methods
.method private constructor <init>(Lcom/narvii/pushservice/PushApplication;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/narvii/pushservice/PushApplication$PushStartupService;->this$0:Lcom/narvii/pushservice/PushApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/pushservice/PushApplication;Lcom/narvii/pushservice/PushApplication$1;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/narvii/pushservice/PushApplication$PushStartupService;-><init>(Lcom/narvii/pushservice/PushApplication;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 93
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 1

    const-string/jumbo p2, "push"

    .line 98
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushService;

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, p2, v0}, Lcom/narvii/pushservice/PushService;->updateGcmToken(ZLcom/narvii/util/Callback;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
