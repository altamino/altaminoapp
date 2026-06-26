.class public final synthetic Lcom/narvii/story/detail/-$$Lambda$StoryRightButtonContainer$GKHABgSfxs3AY-AywST9MWtElfg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/story/detail/StoryRightButtonContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/story/detail/StoryRightButtonContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/detail/-$$Lambda$StoryRightButtonContainer$GKHABgSfxs3AY-AywST9MWtElfg;->f$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/story/detail/-$$Lambda$StoryRightButtonContainer$GKHABgSfxs3AY-AywST9MWtElfg;->f$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {v0, p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->lambda$bookmark$0$StoryRightButtonContainer(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
