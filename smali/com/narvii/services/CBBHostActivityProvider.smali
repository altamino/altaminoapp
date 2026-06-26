.class public Lcom/narvii/services/CBBHostActivityProvider;
.super Ljava/lang/Object;
.source "CBBHostActivityProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/community/CBBHost;",
        ">;"
    }
.end annotation


# instance fields
.field parent:Lcom/narvii/services/ServiceProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/services/ServiceProvider<",
            "Lcom/narvii/community/CBBHost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/services/ServiceProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/services/ServiceProvider<",
            "Lcom/narvii/community/CBBHost;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/narvii/services/CBBHostActivityProvider;->parent:Lcom/narvii/services/ServiceProvider;

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/community/CBBHost;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/narvii/services/CBBHostActivityProvider;->parent:Lcom/narvii/services/ServiceProvider;

    invoke-interface {v0, p1}, Lcom/narvii/services/ServiceProvider;->create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CBBHost;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/services/CBBHostActivityProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/community/CBBHost;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lcom/narvii/community/CBBHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/CBBHostActivityProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 31
    invoke-virtual {p2}, Lcom/narvii/community/CBBHost;->unbind()V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lcom/narvii/community/CBBHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/CBBHostActivityProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 26
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lcom/narvii/community/CBBHost;->bind(Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lcom/narvii/community/CBBHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/CBBHostActivityProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lcom/narvii/community/CBBHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/CBBHostActivityProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lcom/narvii/community/CBBHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/CBBHostActivityProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V

    return-void
.end method
