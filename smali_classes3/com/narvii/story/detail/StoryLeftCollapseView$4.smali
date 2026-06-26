.class Lcom/narvii/story/detail/StoryLeftCollapseView$4;
.super Lcom/narvii/util/text/DefaultTagClickListener;
.source "StoryLeftCollapseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/detail/StoryLeftCollapseView;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;


# direct methods
.method constructor <init>(Lcom/narvii/story/detail/StoryLeftCollapseView;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$4;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-direct {p0}, Lcom/narvii/util/text/DefaultTagClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected startActivity(Landroid/view/View;Landroid/content/Intent;)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$4;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$200(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/model/Blog;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$4;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$200(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/model/Blog;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    const-string v1, "__communityId"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/util/text/DefaultTagClickListener;->startActivity(Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method
