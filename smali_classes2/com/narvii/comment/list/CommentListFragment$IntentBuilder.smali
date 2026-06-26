.class public Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
.super Ljava/lang/Object;
.source "CommentListFragment.java"


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

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-class v0, Lcom/narvii/comment/list/CommentListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public autoJoin(Z)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "autoJoin"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public background(Lcom/narvii/model/Media;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "background"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public backgroundType(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "backgroundType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public blurBackground(Z)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "blurBackground"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public build()Landroid/content/Intent;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public communityId(I)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "__communityId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public feed(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "feed"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public isAnnouncement(Z)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "isAnnouncement"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public isQuestion(Z)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "isQuestion"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public loggingOrigin(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "loggingOrigin"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public loggingSource(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "loggingSource"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public parentId(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "parent-id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public parentType(I)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "parent-type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public showEmojiOnly(Z)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "showEmojiOnly"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public source(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public type(I)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->intent:Landroid/content/Intent;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method
