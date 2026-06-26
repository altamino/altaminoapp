.class final Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1$1;
.super Ljava/lang/Object;
.source "SceneDraftHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;


# direct methods
.method constructor <init>(Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1$1;->this$0:Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1$1;->this$0:Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;

    iget-object v1, v0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;->$correctListener:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;->$draft:Lcom/narvii/scene/model/SceneDraft;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
