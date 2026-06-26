.class public final synthetic Lcom/narvii/story/-$$Lambda$SceneListFragment$F5ExiayVE-K5GPgq_H9cf7zBIsk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field private final synthetic f$0:Lcom/narvii/story/SceneListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/story/SceneListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/-$$Lambda$SceneListFragment$F5ExiayVE-K5GPgq_H9cf7zBIsk;->f$0:Lcom/narvii/story/SceneListFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/narvii/story/-$$Lambda$SceneListFragment$F5ExiayVE-K5GPgq_H9cf7zBIsk;->f$0:Lcom/narvii/story/SceneListFragment;

    check-cast p1, Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {v0, p1}, Lcom/narvii/story/SceneListFragment;->lambda$saveModify$1$SceneListFragment(Lcom/narvii/scene/model/SceneDraft;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
