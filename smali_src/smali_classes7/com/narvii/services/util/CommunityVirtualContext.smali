.class public Lcom/narvii/services/util/CommunityVirtualContext;
.super Landroid/view/ContextThemeWrapper;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/NVContext;


# instance fields
.field base:Lcom/narvii/app/NVContext;

.field cid:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/services/util/CommunityVirtualContext;->base:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    iput p3, p0, Lcom/narvii/services/util/CommunityVirtualContext;->cid:I

    .line 12
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

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/services/util/CommunityVirtualContext;->cid:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
