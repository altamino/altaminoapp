.class final Lcom/narvii/scene/helper/SceneSpHelper$photoManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SceneSpHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/helper/SceneSpHelper;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/photos/PhotoManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/helper/SceneSpHelper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/helper/SceneSpHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/helper/SceneSpHelper$photoManager$2;->this$0:Lcom/narvii/scene/helper/SceneSpHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/photos/PhotoManager;
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/narvii/scene/helper/SceneSpHelper$photoManager$2;->this$0:Lcom/narvii/scene/helper/SceneSpHelper;

    invoke-virtual {v0}, Lcom/narvii/scene/helper/SceneSpHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "photo"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/narvii/scene/helper/SceneSpHelper$photoManager$2;->invoke()Lcom/narvii/photos/PhotoManager;

    move-result-object v0

    return-object v0
.end method
