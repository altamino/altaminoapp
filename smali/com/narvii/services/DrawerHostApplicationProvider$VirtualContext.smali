.class Lcom/narvii/services/DrawerHostApplicationProvider$VirtualContext;
.super Landroid/view/ContextThemeWrapper;
.source "DrawerHostApplicationProvider.java"

# interfaces
.implements Lcom/narvii/app/NVContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/services/DrawerHostApplicationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VirtualContext"
.end annotation


# instance fields
.field base:Lcom/narvii/app/NVContext;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1

    .line 55
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 56
    iput-object p1, p0, Lcom/narvii/services/DrawerHostApplicationProvider$VirtualContext;->base:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getContextId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getParentContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/narvii/services/DrawerHostApplicationProvider$VirtualContext;->base:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
