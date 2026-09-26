.class Lcom/narvii/comment/list/VoterListFragment$Adapter;
.super Lcom/narvii/user/list/UserListExAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/comment/list/VoterListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/list/VoterListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/comment/list/VoterListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/list/VoterListFragment$Adapter;->this$0:Lcom/narvii/comment/list/VoterListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListExAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p1, "All Likes"

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 5

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/comment/list/VoterListFragment$Adapter;->this$0:Lcom/narvii/comment/list/VoterListFragment;

    .line 3
    .line 4
    const-string v0, "type"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 8
    move-result p1

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/comment/list/VoterListFragment$Adapter;->this$0:Lcom/narvii/comment/list/VoterListFragment;

    .line 20
    .line 21
    const-string v3, "id"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    iget-object v3, p0, Lcom/narvii/comment/list/VoterListFragment$Adapter;->this$0:Lcom/narvii/comment/list/VoterListFragment;

    .line 28
    .line 29
    const-string v4, "commentId"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-static {v1, p1, v2, v3}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    .line 44
    move-result p1

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    const-string p1, "/g-vote"

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    const-string p1, "/vote"

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 70
    move-result-object p1

    .line 71
    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const p2, 0x7f0a06d5

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    check-cast p2, Lcom/narvii/widget/VoteIcon;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    const/4 p3, 0x4

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 20
    :cond_0
    return-object p1
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0d0774

    return v0
.end method
