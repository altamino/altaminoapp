.class public Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/comment/list/CommentListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-class v0, Lcom/narvii/comment/list/CommentListFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    .line 12
    return-void
.end method


# virtual methods
.method public autoJoin(Z)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "autoJoin"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    return-object p0
.end method

.method public background(Lcom/narvii/model/Media;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "background"

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    return-object p0
.end method

.method public backgroundType(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "backgroundType"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    return-object p0
.end method

.method public blurBackground(Z)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "blurBackground"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    return-object p0
.end method

.method public build()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public communityId(I)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "__communityId"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    return-object p0
.end method

.method public feed(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "feed"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "id"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    return-object p0
.end method

.method public isAnnouncement(Z)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "isAnnouncement"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    return-object p0
.end method

.method public isQuestion(Z)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "isQuestion"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    return-object p0
.end method

.method public loggingOrigin(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "loggingOrigin"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    return-object p0
.end method

.method public loggingSource(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "loggingSource"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    return-object p0
.end method

.method public parentId(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "parent-id"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    return-object p0
.end method

.method public parentType(I)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "parent-type"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    return-object p0
.end method

.method public showEmojiOnly(Z)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "showEmojiOnly"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    return-object p0
.end method

.method public source(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "source"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    return-object p0
.end method

.method public type(I)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "type"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    return-object p0
.end method
