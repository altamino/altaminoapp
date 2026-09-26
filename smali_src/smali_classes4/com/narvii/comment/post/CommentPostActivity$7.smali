.class Lcom/narvii/comment/post/CommentPostActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/post/CommentPostActivity$7;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/comment/post/CommentPostActivity$7;->val$commentPost:Lcom/narvii/comment/post/CommentPost;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/master/CommunityHelper;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$7;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, v0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/headlines/HeadlineLoggingHelper;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity$7;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/narvii/headlines/HeadlineLoggingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/comment/post/CommentPostActivity$7;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    .line 17
    .line 18
    const-string v2, "parentId"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/comment/post/CommentPostActivity$7;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    .line 25
    .line 26
    const-string v3, "__communityId"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    .line 30
    move-result v2

    .line 31
    .line 32
    sget-object v4, Lcom/narvii/util/logging/LoggingSource;->GuestComment:Lcom/narvii/util/logging/LoggingSource;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2, v4}, Lcom/narvii/headlines/HeadlineLoggingHelper;->logJoinAminoStarting(Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/comment/post/CommentPostActivity$7;->this$0:Lcom/narvii/comment/post/CommentPostActivity;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    .line 45
    move-result v0

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/comment/post/CommentPostActivity$7$1;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/narvii/comment/post/CommentPostActivity$7$1;-><init>(Lcom/narvii/comment/post/CommentPostActivity$7;)V

    .line 51
    const/4 v2, 0x0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0, v2, v1}, Lcom/narvii/master/CommunityHelper;->joinCommunity(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 55
    return-void
.end method
