.class Lcom/narvii/post/BasePostActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/BasePostActivity$3;->this$0:Lcom/narvii/post/BasePostActivity;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/post/BasePostActivity$3;->val$post:Lcom/narvii/post/PostHelper;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity$3;->val$post:Lcom/narvii/post/PostHelper;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/post/PostHelper;->post:Lcom/narvii/post/PostObject;

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/influencer/FansOnlyPost;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    move-object v0, p1

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/influencer/FansOnlyPost;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/narvii/influencer/FansOnlyPost;->setFansOnly(Z)V

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity$3;->this$0:Lcom/narvii/post/BasePostActivity;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/post/BasePostActivity;->doPost(Lcom/narvii/post/PostObject;)V

    .line 21
    return-void
.end method
