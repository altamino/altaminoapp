.class Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$1;
.super Ljava/lang/Object;
.source "BlogDetailFragment.java"

# interfaces
.implements Lcom/narvii/nvplayerview/listener/VideoViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$1;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptClickEvent(Lcom/narvii/model/NVObject;)Z
    .locals 1

    .line 722
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/narvii/model/Blog;

    iget p1, p1, Lcom/narvii/model/Blog;->type:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onVideoViewClicked(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;)V
    .locals 1

    .line 705
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$1;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->enterStoryDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->access$700(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;Lcom/narvii/logging/ActSemantic;)V

    .line 707
    instance-of p1, p2, Lcom/narvii/model/Blog;

    if-eqz p1, :cond_0

    .line 708
    check-cast p2, Lcom/narvii/model/Blog;

    .line 709
    invoke-virtual {p2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$1;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 710
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$1;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/narvii/model/Blog;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 714
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$1;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1, p2}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$800(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/model/Blog;)Landroid/content/Intent;

    move-result-object p1

    .line 715
    iget-object p2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$1;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-virtual {p2}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->preview()Z

    move-result p2

    const-string v0, "preview"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 716
    iget-object p2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$1;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-virtual {p2, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
