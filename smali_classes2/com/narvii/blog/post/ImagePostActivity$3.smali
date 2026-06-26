.class Lcom/narvii/blog/post/ImagePostActivity$3;
.super Ljava/lang/Object;
.source "ImagePostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/ImagePostActivity;->showActionDialog(Lcom/narvii/model/Media;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/ImagePostActivity;

.field final synthetic val$hasReorder:Z

.field final synthetic val$m:Lcom/narvii/model/Media;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/model/Media;ZI)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    iput-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->val$m:Lcom/narvii/model/Media;

    iput-boolean p3, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->val$hasReorder:Z

    iput p4, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 643
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    invoke-static {p1}, Lcom/narvii/blog/post/ImagePostActivity;->access$500(Lcom/narvii/blog/post/ImagePostActivity;)Lcom/narvii/post/PostObject;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    invoke-static {p1}, Lcom/narvii/blog/post/ImagePostActivity;->access$600(Lcom/narvii/blog/post/ImagePostActivity;)Lcom/narvii/post/PostObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 644
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    invoke-static {p1}, Lcom/narvii/blog/post/ImagePostActivity;->access$700(Lcom/narvii/blog/post/ImagePostActivity;)Lcom/narvii/post/PostObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    iget p2, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 646
    :cond_1
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    invoke-static {p1}, Lcom/narvii/blog/post/ImagePostActivity;->access$800(Lcom/narvii/blog/post/ImagePostActivity;)Lcom/narvii/post/PostObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p1, p2}, Lcom/narvii/blog/post/ImagePostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    goto :goto_0

    .line 633
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->val$hasReorder:Z

    if-eqz p1, :cond_3

    .line 634
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    invoke-static {p1}, Lcom/narvii/blog/post/ImagePostActivity;->access$300(Lcom/narvii/blog/post/ImagePostActivity;)V

    goto :goto_0

    .line 636
    :cond_3
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    invoke-virtual {p1}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    .line 637
    iget-object p2, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->val$m:Lcom/narvii/model/Media;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 638
    iget-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    invoke-static {p2, p1}, Lcom/narvii/blog/post/ImagePostActivity;->access$402(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/post/PostObject;)Lcom/narvii/post/PostObject;

    .line 639
    iget-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    invoke-virtual {p2, p1}, Lcom/narvii/blog/post/ImagePostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    goto :goto_0

    .line 630
    :cond_4
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->this$0:Lcom/narvii/blog/post/ImagePostActivity;

    iget-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity$3;->val$m:Lcom/narvii/model/Media;

    invoke-static {p1, p2}, Lcom/narvii/blog/post/ImagePostActivity;->access$200(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/model/Media;)V

    :goto_0
    return-void
.end method
