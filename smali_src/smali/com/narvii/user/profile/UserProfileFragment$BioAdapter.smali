.class Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BioAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/DetailAdapter<",
        "Lcom/narvii/model/User;",
        "Lcom/narvii/model/api/UserResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private bioBriefStyle:Lcom/narvii/user/profile/BioBriefStyle;

.field editBioListener:Landroid/view/View$OnClickListener;

.field goBioDetailListener:Landroid/view/View$OnClickListener;

.field private ignoreAccountUserProfileNotification:Z

.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;

.field private visitorParam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo p1, "visit"

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->visitorParam:Ljava/lang/String;

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->ignoreAccountUserProfileNotification:Z

    .line 14
    .line 15
    new-instance p1, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$1;-><init>(Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;)V

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->editBioListener:Landroid/view/View$OnClickListener;

    .line 21
    .line 22
    new-instance p1, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$2;

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$2;-><init>(Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;)V

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->goBioDetailListener:Landroid/view/View$OnClickListener;

    .line 28
    .line 29
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->UserProfileView:Lcom/narvii/util/logging/LoggingSource;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 32
    .line 33
    new-instance p1, Lcom/narvii/user/profile/CommunityBioBriefStyle;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1}, Lcom/narvii/user/profile/CommunityBioBriefStyle;-><init>()V

    .line 37
    .line 38
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->bioBriefStyle:Lcom/narvii/user/profile/BioBriefStyle;

    .line 39
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/model/api/UserResponse;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    .line 9
    .line 10
    const-string v1, "account"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/model/User;->isProfileAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    sget-object v0, Lcom/narvii/user/profile/UserProfileFragment;->BIO_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    return-void
.end method

.method public commentNew(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->commentNew(Ljava/lang/String;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/comment/post/CommentPostActivity;->setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V

    .line 11
    return-void
.end method

.method protected commentRefresh()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->commentExtraHeight()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iput v0, v1, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->flHeight:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListAdapter;->resetList()V

    .line 18
    return-void
.end method

.method protected commentSort()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListAdapter;->sort()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "/user-profile/"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->visitorParam:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 45
    move-result v1

    .line 46
    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    const-string v1, "action"

    .line 50
    .line 51
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->visitorParam:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 55
    .line 56
    const-string v1, ""

    .line 57
    .line 58
    iput-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->visitorParam:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-static {v0, p0}, Lcom/narvii/detail/DetailPushUtils;->addPushTrackIdInRequest(Lcom/narvii/util/http/ApiRequest$Builder;Lcom/narvii/detail/DetailAdapter;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

.method protected createUserListRequest(II)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "/user-profile/"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "/member"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-string/jumbo v1, "start"

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    const-string/jumbo v0, "size"

    .line 49
    .line 50
    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    const-string p2, "cv"

    .line 59
    .line 60
    const-string v0, "1.2"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/user/profile/UserProfileFragment;->BIO_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    if-ne p1, v0, :cond_6

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/model/api/UserResponse;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    .line 19
    .line 20
    .line 21
    const v1, 0x7f0d0075

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/model/User;->getBackgroundColor()I

    .line 29
    move-result p3

    .line 30
    .line 31
    .line 32
    const v1, 0x7f0a0ed7

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    .line 39
    const/16 v3, 0x8

    .line 40
    .line 41
    if-nez p3, :cond_0

    .line 42
    move p3, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move p3, v2

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    const p3, 0x7f0a01d1

    .line 51
    .line 52
    .line 53
    const v1, -0xb5b5b6

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p2, p3, v1}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    .line 57
    .line 58
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 59
    .line 60
    iget-object v1, p3, Lcom/narvii/user/profile/UserProfileFragment;->dateFmt:Ljava/text/DateFormat;

    .line 61
    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 65
    .line 66
    const-string v4, "MMMM yyyy"

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    iput-object v1, p3, Lcom/narvii/user/profile/UserProfileFragment;->dateFmt:Ljava/text/DateFormat;

    .line 72
    .line 73
    :cond_1
    iget-object p3, v0, Lcom/narvii/model/User;->createdTime:Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    invoke-static {p3}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    .line 77
    move-result-object p3

    .line 78
    .line 79
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 80
    const/4 v4, 0x2

    .line 81
    .line 82
    new-array v4, v4, [Ljava/lang/Object;

    .line 83
    .line 84
    iget-object v5, v1, Lcom/narvii/user/profile/UserProfileFragment;->dateFmt:Ljava/text/DateFormat;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 88
    move-result-object v5

    .line 89
    .line 90
    aput-object v5, v4, v2

    .line 91
    .line 92
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 93
    .line 94
    iget-object v2, v2, Lcom/narvii/user/profile/UserProfileFragment;->datetime:Lcom/narvii/util/DateTimeFormatter;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, p3}, Lcom/narvii/util/DateTimeFormatter;->daysSince(Ljava/util/Date;)Ljava/lang/String;

    .line 98
    move-result-object p3

    .line 99
    const/4 v2, 0x1

    .line 100
    .line 101
    aput-object p3, v4, v2

    .line 102
    .line 103
    .line 104
    const p3, 0x7f121241

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, p3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    move-result-object p3

    .line 109
    .line 110
    .line 111
    const v1, 0x7f0a0944

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    move-result-object v4

    .line 116
    .line 117
    check-cast v4, Landroid/widget/TextView;

    .line 118
    .line 119
    iget-object v5, v0, Lcom/narvii/model/User;->createdTime:Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    move-result v5

    .line 124
    const/4 v6, 0x0

    .line 125
    .line 126
    if-eqz v5, :cond_2

    .line 127
    move-object p3, v6

    .line 128
    .line 129
    .line 130
    :cond_2
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    const p3, -0x646465

    .line 134
    .line 135
    .line 136
    const v4, -0x77000001

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p2, v1, p3, v4}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;III)V

    .line 140
    .line 141
    .line 142
    const v1, 0x7f0a01ce

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    check-cast v1, Lcom/narvii/user/profile/BioBriefView;

    .line 149
    .line 150
    iget-object v5, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 154
    move-result v5

    .line 155
    .line 156
    iget-boolean v7, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 157
    .line 158
    iget-object v8, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->bioBriefStyle:Lcom/narvii/user/profile/BioBriefStyle;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v0, v5, v7, v8}, Lcom/narvii/user/profile/BioBriefView;->setBio(Lcom/narvii/model/User;ZZLcom/narvii/user/profile/BioBriefStyle;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/narvii/user/profile/BioBriefView;->hasBioContent()Z

    .line 165
    move-result v1

    .line 166
    .line 167
    .line 168
    const v5, 0x7f0a01d0

    .line 169
    .line 170
    if-eqz v1, :cond_3

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    move-result-object p1

    .line 175
    .line 176
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->goBioDetailListener:Landroid/view/View$OnClickListener;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 183
    move-result-object p1

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 187
    goto :goto_1

    .line 188
    .line 189
    .line 190
    :cond_3
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    move-result-object v1

    .line 192
    .line 193
    if-eqz p1, :cond_4

    .line 194
    .line 195
    iget-object v6, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->editBioListener:Landroid/view/View$OnClickListener;

    .line 196
    .line 197
    .line 198
    :cond_4
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 202
    move-result-object v1

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    .line 206
    .line 207
    .line 208
    :goto_1
    const p1, 0x7f0a082a

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 212
    move-result-object p1

    .line 213
    .line 214
    check-cast p1, Lcom/narvii/widget/TintButton;

    .line 215
    .line 216
    iget-boolean v1, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 217
    .line 218
    if-eqz v1, :cond_5

    .line 219
    move v1, v4

    .line 220
    goto :goto_2

    .line 221
    :cond_5
    move v1, p3

    .line 222
    .line 223
    .line 224
    :goto_2
    invoke-virtual {p1, v1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 225
    .line 226
    .line 227
    const p1, 0x7f0a0829

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 231
    move-result-object p1

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    const p1, 0x7f0a00a8

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 241
    move-result-object v1

    .line 242
    .line 243
    check-cast v1, Landroid/widget/TextView;

    .line 244
    .line 245
    iget-object v0, v0, Lcom/narvii/model/User;->address:Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0, p2, p1, p3, v4}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;III)V

    .line 252
    return-object p2

    .line 253
    .line 254
    .line 255
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 256
    move-result-object p1

    .line 257
    return-object p1
.end method

.method protected getCellTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/user/profile/UserProfileFragment;->BIO_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public getCount()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/model/User;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    iget v0, v0, Lcom/narvii/model/User;->role:I

    .line 13
    .line 14
    const/16 v2, 0xfd

    .line 15
    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    return v1

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->getCount()I

    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/model/User;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, v0, Lcom/narvii/model/User;->role:I

    .line 11
    .line 12
    const/16 v1, 0xfd

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->topAdapter:Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeader()V

    .line 19
    return-void
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/User;

    return-object v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/model/User;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    instance-of v2, v1, Lcom/narvii/model/User;

    .line 14
    .line 15
    if-eqz v2, :cond_6

    .line 16
    .line 17
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    const-string/jumbo v2, "update"

    .line 21
    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    const-string v2, "edit"

    .line 25
    .line 26
    if-ne v1, v2, :cond_5

    .line 27
    .line 28
    :cond_1
    iget-object v1, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v2, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_5

    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->ignoreAccountUserProfileNotification:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    return-void

    .line 42
    .line 43
    :cond_2
    iget-object v1, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    const-string v2, "fromUserProfileFullInfo"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 51
    move-result v1

    .line 52
    .line 53
    if-eqz v1, :cond_3

    .line 54
    return-void

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    check-cast v1, Lcom/narvii/model/api/UserResponse;

    .line 61
    .line 62
    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Lcom/narvii/model/User;

    .line 65
    .line 66
    iput-object v2, v1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    .line 67
    .line 68
    iget-object v2, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    const-string v3, "keepInfluencerInfo"

    .line 73
    const/4 v4, 0x0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 77
    move-result v2

    .line 78
    .line 79
    if-eqz v2, :cond_4

    .line 80
    .line 81
    iget-object v2, v1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    .line 84
    .line 85
    iput-object v0, v2, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-virtual {p0, v1}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->setResponse(Lcom/narvii/model/api/UserResponse;)V

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 94
    move-result v0

    .line 95
    .line 96
    if-eqz v0, :cond_5

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->sendRequest()V

    .line 100
    .line 101
    .line 102
    :cond_5
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 103
    return-void

    .line 104
    .line 105
    :cond_6
    instance-of v2, v1, Lcom/narvii/model/Comment;

    .line 106
    .line 107
    const-string v3, "delete"

    .line 108
    .line 109
    const-string v4, "new"

    .line 110
    .line 111
    if-eqz v2, :cond_8

    .line 112
    .line 113
    check-cast v1, Lcom/narvii/model/Comment;

    .line 114
    .line 115
    iget-object v1, v1, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    .line 116
    .line 117
    iget-object v2, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    move-result v1

    .line 122
    .line 123
    if-eqz v1, :cond_8

    .line 124
    .line 125
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v1

    .line 130
    .line 131
    if-eqz v1, :cond_7

    .line 132
    .line 133
    iget v1, v0, Lcom/narvii/model/User;->commentsCount:I

    .line 134
    .line 135
    add-int/lit8 v1, v1, 0x1

    .line 136
    .line 137
    iput v1, v0, Lcom/narvii/model/User;->commentsCount:I

    .line 138
    goto :goto_0

    .line 139
    .line 140
    :cond_7
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result v1

    .line 145
    .line 146
    if-eqz v1, :cond_b

    .line 147
    .line 148
    iget v1, v0, Lcom/narvii/model/User;->commentsCount:I

    .line 149
    .line 150
    add-int/lit8 v1, v1, -0x1

    .line 151
    .line 152
    iput v1, v0, Lcom/narvii/model/User;->commentsCount:I

    .line 153
    goto :goto_0

    .line 154
    .line 155
    :cond_8
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 156
    .line 157
    instance-of v2, v1, Lcom/narvii/model/Blog;

    .line 158
    .line 159
    if-nez v2, :cond_9

    .line 160
    .line 161
    instance-of v1, v1, Lcom/narvii/model/Item;

    .line 162
    .line 163
    if-eqz v1, :cond_b

    .line 164
    .line 165
    :cond_9
    iget-object v1, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    .line 166
    .line 167
    iget-object v2, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    move-result v1

    .line 172
    .line 173
    if-eqz v1, :cond_b

    .line 174
    .line 175
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    move-result v1

    .line 180
    .line 181
    if-eqz v1, :cond_a

    .line 182
    .line 183
    iget v1, v0, Lcom/narvii/model/User;->postsCount:I

    .line 184
    .line 185
    add-int/lit8 v1, v1, 0x1

    .line 186
    .line 187
    iput v1, v0, Lcom/narvii/model/User;->postsCount:I

    .line 188
    goto :goto_0

    .line 189
    .line 190
    :cond_a
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result v1

    .line 195
    .line 196
    if-eqz v1, :cond_b

    .line 197
    .line 198
    iget v1, v0, Lcom/narvii/model/User;->postsCount:I

    .line 199
    .line 200
    add-int/lit8 v1, v1, -0x1

    .line 201
    .line 202
    iput v1, v0, Lcom/narvii/model/User;->postsCount:I

    .line 203
    .line 204
    .line 205
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    .line 206
    move-result-object v1

    .line 207
    .line 208
    check-cast v1, Lcom/narvii/model/api/UserResponse;

    .line 209
    .line 210
    iput-object v0, v1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v1}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->setResponse(Lcom/narvii/model/api/UserResponse;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->notifyDataSetChanged()V

    .line 217
    .line 218
    .line 219
    :cond_b
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 220
    return-void
.end method

.method protected bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 2
    iget-boolean v0, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object v2, v0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 5
    iget-object v2, v0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 6
    iget-object v2, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 7
    iget-object v2, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object v2, v1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 8
    iget-object v2, v0, Lcom/narvii/model/User;->address:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/User;->address:Ljava/lang/String;

    .line 9
    iget v2, v0, Lcom/narvii/model/User;->latitude:I

    iput v2, v1, Lcom/narvii/model/User;->latitude:I

    .line 10
    iget v2, v0, Lcom/narvii/model/User;->longitude:I

    iput v2, v1, Lcom/narvii/model/User;->longitude:I

    .line 11
    iget-object v2, v0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 12
    iget-object v2, v0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 13
    iget-object v0, v0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    iput-object v0, v1, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 14
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    :cond_0
    return-void

    .line 15
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    .line 16
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const-string/jumbo v0, "send_notification"

    .line 17
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 18
    new-instance p1, Lcom/narvii/notification/Notification;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v1

    const-string/jumbo v2, "update"

    invoke-direct {p1, v2, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 19
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    const-string v2, "fromUserProfileFullInfo"

    .line 20
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_2
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    .line 22
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 23
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->ignoreAccountUserProfileNotification:Z

    .line 24
    iget-object v1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v1, p2, v0}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->ignoreAccountUserProfileNotification:Z

    :cond_3
    return-void
.end method

.method protected onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string p2, "Followers"

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-class p1, Lcom/narvii/user/list/FollowersListFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 17
    .line 18
    const-string v0, "id"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 29
    :cond_0
    const/4 p1, 0x1

    .line 30
    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/UserResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/api/UserResponse;

    return-object v0
.end method

.method protected setCommentSort(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->commentExtraHeight()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iput v0, v1, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->flHeight:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    .line 18
    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/User;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->setObject(Lcom/narvii/model/User;)V

    return-void
.end method

.method public setObject(Lcom/narvii/model/User;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/narvii/model/api/UserResponse;

    invoke-direct {v0}, Lcom/narvii/model/api/UserResponse;-><init>()V

    iput-object p1, v0, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    .line 3
    invoke-virtual {p0, v0}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->setResponse(Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public bridge synthetic setResponse(Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->setResponse(Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public setResponse(Lcom/narvii/model/api/UserResponse;)V
    .locals 4

    .line 2
    iget-object v0, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    invoke-virtual {v0}, Lcom/narvii/model/User;->getSlideShowMedias()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/user/profile/UserProfileFragment;->slideShowMedias:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 4
    iget-object v1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->getBioMedias()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioMedias:Ljava/util/ArrayList;

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 6
    iget-object v1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->hasBackground()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->access$802(Lcom/narvii/user/profile/UserProfileFragment;Z)Z

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 7
    iget-object v1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->getBackgroundColor()I

    move-result v1

    invoke-static {v1}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    invoke-static {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->access$902(Lcom/narvii/user/profile/UserProfileFragment;Z)Z

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 8
    iget-object v1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->getBackgroundColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->access$1002(Lcom/narvii/user/profile/UserProfileFragment;I)I

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 9
    invoke-static {v0}, Lcom/narvii/user/profile/UserProfileFragment;->access$1100(Lcom/narvii/user/profile/UserProfileFragment;)V

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 10
    invoke-static {v0}, Lcom/narvii/user/profile/UserProfileFragment;->L(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 11
    iget-object v0, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->onFinishListener:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/narvii/model/api/UserResponse;->object()Lcom/narvii/model/User;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 13
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/narvii/detail/DetailFragment;->setDisabledStatus(Lcom/narvii/model/NVObject;)V

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 14
    invoke-static {v0}, Lcom/narvii/user/profile/UserProfileFragment;->J(Lcom/narvii/user/profile/UserProfileFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 15
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->notActivated:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 16
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->notActivated:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :goto_3
    iget-object v0, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/model/User;->isModerator()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 18
    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v1, v0}, Lcom/narvii/list/SwitchAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_6
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 19
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAddAdapter:Lcom/narvii/user/profile/adapter/CommentAddAdapter;

    if-eqz v0, :cond_7

    .line 20
    iget-object p1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {p1}, Lcom/narvii/model/User;->isModerator()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/narvii/user/profile/adapter/CommentAddAdapter;->setVisibleInList(Z)V

    :cond_7
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 21
    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->K(Lcom/narvii/user/profile/UserProfileFragment;)V

    return-void
.end method
