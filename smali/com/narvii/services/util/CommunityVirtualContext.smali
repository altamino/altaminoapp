.class public Lcom/narvii/services/util/CommunityVirtualContext;
.super Landroid/view/ContextThemeWrapper;
.source "CommunityVirtualContext.java"

# interfaces
.implements Lcom/narvii/app/NVContext;


# instance fields
.field base:Lcom/narvii/app/NVContext;

.field cid:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;II)V
    .locals 1

    .line 17
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 18
    iput-object p1, p0, Lcom/narvii/services/util/CommunityVirtualContext;->base:Lcom/narvii/app/NVContext;

    .line 19
    iput p3, p0, Lcom/narvii/services/util/CommunityVirtualContext;->cid:I

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

    .line 34
    iget-object v0, p0, Lcom/narvii/services/util/CommunityVirtualContext;->base:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 24
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    iget v1, p0, Lcom/narvii/services/util/CommunityVirtualContext;->cid:I

    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
