.class Lcom/narvii/comment/list/VoterListFragment$Adapter;
.super Lcom/narvii/user/list/UserListExAdapter;
.source "VoterListFragment.java"


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

    .line 40
    iput-object p1, p0, Lcom/narvii/comment/list/VoterListFragment$Adapter;->this$0:Lcom/narvii/comment/list/VoterListFragment;

    .line 41
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListExAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "All Likes"

    .line 42
    iput-object p1, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 5

    .line 61
    iget-object p1, p0, Lcom/narvii/comment/list/VoterListFragment$Adapter;->this$0:Lcom/narvii/comment/list/VoterListFragment;

    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v1

    iget-object v2, p0, Lcom/narvii/comment/list/VoterListFragment$Adapter;->this$0:Lcom/narvii/comment/list/VoterListFragment;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/comment/list/VoterListFragment$Adapter;->this$0:Lcom/narvii/comment/list/VoterListFragment;

    const-string v4, "commentId"

    invoke-virtual {v3, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/g-vote"

    goto :goto_0

    :cond_0
    const-string p1, "/vote"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090562

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/VoteIcon;

    if-eqz p2, :cond_0

    const/4 p3, 0x4

    .line 54
    invoke-virtual {p2, p3}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    :cond_0
    return-object p1
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b06bf

    return v0
.end method
