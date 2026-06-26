.class Lcom/narvii/comment/post/CommentPostActivity$7;
.super Ljava/lang/Object;
.source "CommentPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/post/CommentPostActivity;->onPostFail(Lcom/narvii/post/PostHelper;ILjava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/post/CommentPostActivity;

.field final synthetic val$commentPost:Lcom/narvii/comment/post/CommentPost;


# direct methods
.method constructor <init>(Lcom/narvii/comment/post/CommentPostActivity;Lcom/narvii/comment/post/CommentPost;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$7;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    iput-object p2, p0, Lcom/narvii/comment/post/CommentPostActivity$7;->val$commentPost:Lcom/narvii/comment/post/CommentPost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 680
    new-instance p1, Lcom/narvii/master/CommunityHelper;

    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$7;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-direct {p1, v0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 681
    new-instance v0, Lcom/narvii/headlines/HeadlineLoggingHelper;

    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity$7;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-direct {v0, v1}, Lcom/narvii/headlines/HeadlineLoggingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 682
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity$7;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    const-string v2, "parentId"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/comment/post/CommentPostActivity$7;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    const-string v3, "__communityId"

    invoke-virtual {v2, v3}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    move-result v2

    sget-object v4, Lcom/narvii/util/logging/LoggingSource;->GuestComment:Lcom/narvii/util/logging/LoggingSource;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/narvii/headlines/HeadlineLoggingHelper;->logJoinAminoStarting(Ljava/lang/String;ILjava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$7;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    invoke-virtual {v0, v3}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/narvii/comment/post/CommentPostActivity$7$1;

    invoke-direct {v1, p0}, Lcom/narvii/comment/post/CommentPostActivity$7$1;-><init>(Lcom/narvii/comment/post/CommentPostActivity$7;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/narvii/master/CommunityHelper;->joinCommunity(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method
