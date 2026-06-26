.class public final synthetic Lcom/narvii/story/comment/-$$Lambda$StoryCommentListFragment$Y_OoCWDKrA3tZbclKwOk4BG9QFQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/story/comment/StoryCommentListFragment;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/story/comment/StoryCommentListFragment;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/comment/-$$Lambda$StoryCommentListFragment$Y_OoCWDKrA3tZbclKwOk4BG9QFQ;->f$0:Lcom/narvii/story/comment/StoryCommentListFragment;

    iput-object p2, p0, Lcom/narvii/story/comment/-$$Lambda$StoryCommentListFragment$Y_OoCWDKrA3tZbclKwOk4BG9QFQ;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/narvii/story/comment/-$$Lambda$StoryCommentListFragment$Y_OoCWDKrA3tZbclKwOk4BG9QFQ;->f$0:Lcom/narvii/story/comment/StoryCommentListFragment;

    iget-object v1, p0, Lcom/narvii/story/comment/-$$Lambda$StoryCommentListFragment$Y_OoCWDKrA3tZbclKwOk4BG9QFQ;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/narvii/story/comment/StoryCommentListFragment;->lambda$onActivityResult$1$StoryCommentListFragment(Landroid/content/Intent;)V

    return-void
.end method
