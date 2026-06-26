.class public Lcom/narvii/feed/vote/MembersPopupDialog;
.super Lcom/narvii/util/dialog/PopupBubbleDialog;
.source "MembersPopupDialog.java"


# instance fields
.field private final clickListener:Landroid/view/View$OnClickListener;

.field feed:Lcom/narvii/model/NVObject;

.field private final listener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/feed/vote/VoterListResponse;",
            ">;"
        }
    .end annotation
.end field

.field request:Lcom/narvii/util/http/ApiRequest;

.field users:Lcom/narvii/feed/vote/VoterListResponse;

.field views:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/PopupBubbleDialog;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance p1, Lcom/narvii/feed/vote/MembersPopupDialog$1;

    const-class v0, Lcom/narvii/feed/vote/VoterListResponse;

    invoke-direct {p1, p0, v0}, Lcom/narvii/feed/vote/MembersPopupDialog$1;-><init>(Lcom/narvii/feed/vote/MembersPopupDialog;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 112
    new-instance p1, Lcom/narvii/feed/vote/MembersPopupDialog$2;

    invoke-direct {p1, p0}, Lcom/narvii/feed/vote/MembersPopupDialog$2;-><init>(Lcom/narvii/feed/vote/MembersPopupDialog;)V

    iput-object p1, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected createUserListRequest(Lcom/narvii/model/NVObject;)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 53
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v0}, Lcom/narvii/story/detail/VoteHelper;->getVotePath(Lcom/narvii/model/NVObject;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?start=0&size=6&cv=1.2"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 56
    instance-of v1, p1, Lcom/narvii/model/Feed;

    if-eqz v1, :cond_0

    .line 57
    check-cast p1, Lcom/narvii/model/Feed;

    .line 58
    iget p1, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 60
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public setFeed(Lcom/narvii/model/NVObject;)V
    .locals 2

    .line 42
    iput-object p1, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->feed:Lcom/narvii/model/NVObject;

    .line 43
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lcom/narvii/feed/vote/MembersPopupDialog;->createUserListRequest(Lcom/narvii/model/NVObject;)Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->request:Lcom/narvii/util/http/ApiRequest;

    const-string p1, "api"

    .line 46
    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 47
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->listener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/feed/vote/MembersPopupDialog;->updateViews()V

    return-void
.end method

.method protected updateViews()V
    .locals 8

    .line 64
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/View;

    .line 65
    iput-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    const v3, 0x7f090449

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v0, v2

    .line 67
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    const v3, 0x7f09044a

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v0, v1

    .line 68
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    const/4 v3, 0x2

    const v4, 0x7f09044b

    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v0, v3

    .line 69
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    const/4 v3, 0x3

    const v4, 0x7f09044c

    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v0, v3

    .line 70
    iget-object v0, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    const/4 v3, 0x4

    const v4, 0x7f09044d

    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v0, v3

    :cond_0
    const v0, 0x7f0908cb

    .line 72
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->request:Lcom/narvii/util/http/ApiRequest;

    const/16 v4, 0x8

    if-nez v3, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090723

    .line 73
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->users:Lcom/narvii/feed/vote/VoterListResponse;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v5, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    array-length v5, v5

    if-le v3, v5, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 74
    :goto_2
    iget-object v3, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->views:[Landroid/view/View;

    array-length v5, v3

    if-ge v0, v5, :cond_9

    .line 75
    aget-object v3, v3, v0

    .line 76
    iget-object v5, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->feed:Lcom/narvii/model/NVObject;

    instance-of v6, v5, Lcom/narvii/model/Feed;

    if-eqz v6, :cond_3

    check-cast v5, Lcom/narvii/model/Feed;

    invoke-virtual {v5}, Lcom/narvii/model/Feed;->isGlobalFeed()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_4

    .line 78
    iget-object v5, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_4
    iget-object v5, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->users:Lcom/narvii/feed/vote/VoterListResponse;

    const/4 v6, 0x0

    if-nez v5, :cond_5

    move-object v5, v6

    goto :goto_4

    :cond_5
    invoke-virtual {v5, v0}, Lcom/narvii/feed/vote/VoterListResponse;->getUser(I)Lcom/narvii/model/User;

    move-result-object v5

    :goto_4
    const v7, 0x7f0900e4

    .line 81
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/narvii/widget/ThumbImageView;

    if-nez v5, :cond_6

    goto :goto_5

    .line 82
    :cond_6
    invoke-virtual {v5}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-virtual {v7, v6}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const v6, 0x7f090562

    .line 83
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/VoteIcon;

    if-eqz v5, :cond_8

    .line 84
    iget-object v6, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->users:Lcom/narvii/feed/vote/VoterListResponse;

    iget-object v6, v6, Lcom/narvii/feed/vote/VoterListResponse;->votedValueMap:Ljava/util/HashMap;

    if-nez v6, :cond_7

    goto :goto_6

    .line 87
    :cond_7
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v6, p0, Lcom/narvii/feed/vote/MembersPopupDialog;->users:Lcom/narvii/feed/vote/VoterListResponse;

    invoke-virtual {v6, v5}, Lcom/narvii/feed/vote/VoterListResponse;->getVotedValue(Lcom/narvii/model/User;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    goto :goto_7

    .line 85
    :cond_8
    :goto_6
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method
