.class Lcom/narvii/post/BasePostActivity$3;
.super Ljava/lang/Object;
.source "BasePostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/BasePostActivity;->onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/BasePostActivity;

.field final synthetic val$post:Lcom/narvii/post/PostHelper;


# direct methods
.method constructor <init>(Lcom/narvii/post/BasePostActivity;Lcom/narvii/post/PostHelper;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/narvii/post/BasePostActivity$3;->this$0:Lcom/narvii/post/BasePostActivity;

    iput-object p2, p0, Lcom/narvii/post/BasePostActivity$3;->val$post:Lcom/narvii/post/PostHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 307
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity$3;->val$post:Lcom/narvii/post/PostHelper;

    iget-object p1, p1, Lcom/narvii/post/PostHelper;->post:Lcom/narvii/post/PostObject;

    .line 308
    instance-of v0, p1, Lcom/narvii/influencer/FansOnlyPost;

    if-eqz v0, :cond_0

    .line 309
    move-object v0, p1

    check-cast v0, Lcom/narvii/influencer/FansOnlyPost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/influencer/FansOnlyPost;->setFansOnly(Z)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity$3;->this$0:Lcom/narvii/post/BasePostActivity;

    invoke-virtual {v0, p1}, Lcom/narvii/post/BasePostActivity;->doPost(Lcom/narvii/post/PostObject;)V

    return-void
.end method
