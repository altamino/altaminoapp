.class Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "UserProfileFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


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
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
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

    .line 2085
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 2086
    invoke-direct {p0, p1}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "visit"

    .line 2082
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->visitorParam:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2083
    iput-boolean p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->ignoreAccountUserProfileNotification:Z

    .line 2317
    new-instance p1, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$1;

    invoke-direct {p1, p0}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$1;-><init>(Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;)V

    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->editBioListener:Landroid/view/View$OnClickListener;

    .line 2328
    new-instance p1, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$2;

    invoke-direct {p1, p0}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter$2;-><init>(Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;)V

    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->goBioDetailListener:Landroid/view/View$OnClickListener;

    .line 2087
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->UserProfileView:Lcom/narvii/util/logging/LoggingSource;

    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 2088
    new-instance p1, Lcom/narvii/user/profile/CommunityBioBriefStyle;

    invoke-direct {p1}, Lcom/narvii/user/profile/CommunityBioBriefStyle;-><init>()V

    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->bioBriefStyle:Lcom/narvii/user/profile/BioBriefStyle;

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

    .line 2309
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/api/UserResponse;

    .line 2310
    iget-object v0, v0, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    const-string v1, "account"

    .line 2311
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_0

    .line 2312
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/model/User;->isProfileAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2313
    sget-object v0, Lcom/narvii/user/profile/UserProfileFragment;->BIO_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public commentNew(Ljava/lang/String;)V
    .locals 0

    .line 2398
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->commentNew(Ljava/lang/String;)V

    .line 2399
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    invoke-static {p1}, Lcom/narvii/comment/post/CommentPostActivity;->setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V

    return-void
.end method

.method protected commentRefresh()V
    .locals 2

    .line 2415
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->commentExtraHeight()I

    move-result v0

    iput v0, v1, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->flHeight:I

    .line 2416
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListAdapter;->resetList()V

    return-void
.end method

.method protected commentSort()I
    .locals 1

    .line 2404
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListAdapter;->sort()I

    move-result v0

    return v0
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 2297
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 2298
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->visitorParam:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v1}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2300
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->visitorParam:Ljava/lang/String;

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, ""

    .line 2301
    iput-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->visitorParam:Ljava/lang/String;

    .line 2303
    :cond_0
    invoke-static {v0, p0}, Lcom/narvii/detail/DetailPushUtils;->addPushTrackIdInRequest(Lcom/narvii/util/http/ApiRequest$Builder;Lcom/narvii/detail/DetailAdapter;)V

    .line 2304
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method protected createUserListRequest(II)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 2206
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 2207
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/member"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 2208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "start"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 2209
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "size"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string p2, "cv"

    const-string v0, "1.2"

    .line 2210
    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 2346
    sget-object v0, Lcom/narvii/user/profile/UserProfileFragment;->BIO_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_6

    .line 2347
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result p1

    .line 2348
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/api/UserResponse;

    .line 2349
    iget-object v0, v0, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    const v1, 0x7f0b005f

    .line 2352
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 2354
    invoke-virtual {v0}, Lcom/narvii/model/User;->getBackgroundColor()I

    move-result p3

    const v1, 0x7f090bba

    .line 2355
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez p3, :cond_0

    const/16 p3, 0x8

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f090135

    const v1, -0xb5b5b6

    .line 2356
    invoke-virtual {p0, p2, p3, v1}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;II)V

    .line 2357
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v1, p3, Lcom/narvii/user/profile/UserProfileFragment;->dateFmt:Ljava/text/DateFormat;

    if-nez v1, :cond_1

    .line 2358
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "MMMM yyyy"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p3, Lcom/narvii/user/profile/UserProfileFragment;->dateFmt:Ljava/text/DateFormat;

    .line 2360
    :cond_1
    iget-object p3, v0, Lcom/narvii/model/User;->createdTime:Ljava/lang/String;

    invoke-static {p3}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3

    .line 2361
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const v4, 0x7f0f1136

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/narvii/user/profile/UserProfileFragment;->dateFmt:Ljava/text/DateFormat;

    invoke-virtual {v6, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v3, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v3, v3, Lcom/narvii/user/profile/UserProfileFragment;->datetime:Lcom/narvii/util/DateTimeFormatter;

    invoke-virtual {v3, p3}, Lcom/narvii/util/DateTimeFormatter;->daysSince(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    const/4 v3, 0x1

    aput-object p3, v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const v1, 0x7f0906e3

    .line 2362
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/narvii/model/User;->createdTime:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    move-object p3, v6

    :cond_2
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, -0x77000001

    const v4, -0x646465

    .line 2363
    invoke-virtual {p0, p2, v1, v4, p3}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;III)V

    const v1, 0x7f090132

    .line 2365
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/user/profile/BioBriefView;

    .line 2366
    iget-object v5, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v5}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v5

    iget-boolean v7, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    iget-object v8, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->bioBriefStyle:Lcom/narvii/user/profile/BioBriefStyle;

    invoke-virtual {v1, v0, v5, v7, v8}, Lcom/narvii/user/profile/BioBriefView;->setBio(Lcom/narvii/model/User;ZZLcom/narvii/user/profile/BioBriefStyle;)V

    .line 2368
    invoke-virtual {v1}, Lcom/narvii/user/profile/BioBriefView;->hasBioContent()Z

    move-result v1

    const v5, 0x7f090134

    if-eqz v1, :cond_3

    .line 2369
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->goBioDetailListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2370
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    .line 2372
    :cond_3
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_4

    iget-object v6, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->editBioListener:Landroid/view/View$OnClickListener;

    :cond_4
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2373
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    :goto_1
    const p1, 0x7f09069f

    .line 2376
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    .line 2377
    iget-boolean v1, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v1, :cond_5

    const v1, -0x77000001

    goto :goto_2

    :cond_5
    const v1, -0x646465

    :goto_2
    invoke-virtual {p1, v1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    const p1, 0x7f09069e

    .line 2378
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f09006f

    .line 2379
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v0, v0, Lcom/narvii/model/User;->address:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2380
    invoke-virtual {p0, p2, p1, v4, p3}, Lcom/narvii/detail/DetailAdapter;->setTextColor(Landroid/view/View;III)V

    return-object p2

    .line 2383
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

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

    .line 2122
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 2123
    sget-object v0, Lcom/narvii/user/profile/UserProfileFragment;->BIO_SNIPPET:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 3

    .line 2102
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2106
    :cond_0
    iget v0, v0, Lcom/narvii/model/User;->role:I

    const/16 v2, 0xfd

    if-ne v0, v2, :cond_1

    return v1

    .line 2109
    :cond_1
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 2093
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 2094
    iget v0, v0, Lcom/narvii/model/User;->role:I

    const/16 v1, 0xfd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2097
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 2114
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 2115
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->topAdapter:Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2116
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 2117
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeader()V

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

    .line 2280
    const-class v0, Lcom/narvii/model/User;

    return-object v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 7

    .line 2215
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-nez v0, :cond_0

    return-void

    .line 2220
    :cond_0
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v2, v1, Lcom/narvii/model/User;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 2221
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v2, "update"

    if-eq v1, v2, :cond_1

    const-string v2, "edit"

    if-ne v1, v2, :cond_7

    :cond_1
    iget-object v1, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 2222
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2223
    iget-boolean v1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->ignoreAccountUserProfileNotification:Z

    if-eqz v1, :cond_2

    return-void

    .line 2227
    :cond_2
    iget-object v1, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    const-string v2, "fromUserProfileFullInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 2231
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/api/UserResponse;

    .line 2232
    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/narvii/model/User;

    .line 2233
    iget v4, v2, Lcom/narvii/model/User;->visitorsCount:I

    if-gez v4, :cond_4

    iget-object v4, v1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    if-eqz v4, :cond_4

    .line 2234
    iget v4, v4, Lcom/narvii/model/User;->visitorsCount:I

    iput v4, v2, Lcom/narvii/model/User;->visitorsCount:I

    .line 2236
    :cond_4
    iget v4, v2, Lcom/narvii/model/User;->visitPrivacy:I

    if-gez v4, :cond_5

    iget-object v4, v1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    if-eqz v4, :cond_5

    .line 2237
    iget v4, v4, Lcom/narvii/model/User;->visitPrivacy:I

    iput v4, v2, Lcom/narvii/model/User;->visitPrivacy:I

    .line 2239
    :cond_5
    iput-object v2, v1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    .line 2240
    iget-object v2, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_6

    const-string v4, "keepInfluencerInfo"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2241
    iget-object v2, v1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    iput-object v0, v2, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    .line 2243
    :cond_6
    invoke-virtual {p0, v1}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->setResponse(Lcom/narvii/model/api/UserResponse;)V

    .line 2244
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2245
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->sendRequest()V

    .line 2248
    :cond_7
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    return-void

    .line 2252
    :cond_8
    instance-of v2, v1, Lcom/narvii/model/Comment;

    const-string v4, "delete"

    const-string v5, "new"

    const/4 v6, 0x1

    if-eqz v2, :cond_a

    check-cast v1, Lcom/narvii/model/Comment;

    iget-object v1, v1, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    iget-object v2, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2253
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2254
    iget v1, v0, Lcom/narvii/model/User;->commentsCount:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/narvii/model/User;->commentsCount:I

    goto :goto_0

    .line 2256
    :cond_9
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2257
    iget v1, v0, Lcom/narvii/model/User;->commentsCount:I

    sub-int/2addr v1, v6

    iput v1, v0, Lcom/narvii/model/User;->commentsCount:I

    goto :goto_0

    .line 2260
    :cond_a
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v2, v1, Lcom/narvii/model/Blog;

    if-nez v2, :cond_b

    instance-of v1, v1, Lcom/narvii/model/Item;

    if-eqz v1, :cond_d

    :cond_b
    iget-object v1, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    iget-object v2, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2261
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2262
    iget v1, v0, Lcom/narvii/model/User;->postsCount:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/narvii/model/User;->postsCount:I

    goto :goto_0

    .line 2264
    :cond_c
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2265
    iget v1, v0, Lcom/narvii/model/User;->postsCount:I

    sub-int/2addr v1, v6

    iput v1, v0, Lcom/narvii/model/User;->postsCount:I

    goto :goto_0

    :cond_d
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_e

    .line 2270
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/api/UserResponse;

    .line 2271
    iput-object v0, v1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    .line 2272
    invoke-virtual {p0, v1}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->setResponse(Lcom/narvii/model/api/UserResponse;)V

    .line 2273
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->notifyDataSetChanged()V

    .line 2275
    :cond_e
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method protected bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 2079
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 6

    .line 2128
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-boolean v0, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v0, :cond_1

    .line 2129
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 2131
    iget-object v1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object v2, v0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 2132
    iget-object v2, v0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 2133
    iget-object v2, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 2134
    iget-object v2, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object v2, v1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 2135
    iget-object v2, v0, Lcom/narvii/model/User;->address:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/User;->address:Ljava/lang/String;

    .line 2136
    iget v2, v0, Lcom/narvii/model/User;->latitude:I

    iput v2, v1, Lcom/narvii/model/User;->latitude:I

    .line 2137
    iget v2, v0, Lcom/narvii/model/User;->longitude:I

    iput v2, v1, Lcom/narvii/model/User;->longitude:I

    .line 2138
    iget-object v2, v0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 2139
    iget-object v2, v0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 2140
    iget-object v0, v0, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    iput-object v0, v1, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 2141
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    :cond_0
    return-void

    .line 2146
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    .line 2148
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 2151
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const-string v0, "send_notification"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 2152
    new-instance p1, Lcom/narvii/notification/Notification;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v1

    const-string v2, "update"

    invoke-direct {p1, v2, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 2153
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    .line 2154
    iget-object v1, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    const-string v2, "fromUserProfileFullInfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2155
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 2159
    :cond_2
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 2160
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2161
    iput-boolean v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->ignoreAccountUserProfileNotification:Z

    .line 2162
    iget-object v1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object v2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 2163
    iput-boolean p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->ignoreAccountUserProfileNotification:Z

    .line 2166
    :cond_3
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$1500(Lcom/narvii/user/profile/UserProfileFragment;)Lcom/narvii/account/visitor/RecentVisitorHelper;

    move-result-object v0

    iget-object v1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result v2

    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const p2, 0x7f090c42

    .line 2167
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const p2, 0x7f0901ed

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    .line 2166
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/visitor/RecentVisitorHelper;->checkVisitorTooltips(Lcom/narvii/model/User;ZLandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method protected onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z
    .locals 1

    const-string p2, "Followers"

    .line 2388
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2389
    const-class p1, Lcom/narvii/user/list/FollowersListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 2390
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const-string v0, "id"

    invoke-virtual {p2, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2391
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

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

    .line 2285
    const-class v0, Lcom/narvii/model/api/UserResponse;

    return-object v0
.end method

.method protected setCommentSort(I)V
    .locals 2

    .line 2409
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->commentExtraHeight()I

    move-result v0

    iput v0, v1, Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;->flHeight:I

    .line 2410
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAdapter:Lcom/narvii/user/profile/UserProfileFragment$CommentAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 2079
    check-cast p1, Lcom/narvii/model/User;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->setObject(Lcom/narvii/model/User;)V

    return-void
.end method

.method public setObject(Lcom/narvii/model/User;)V
    .locals 1

    .line 2290
    new-instance v0, Lcom/narvii/model/api/UserResponse;

    invoke-direct {v0}, Lcom/narvii/model/api/UserResponse;-><init>()V

    .line 2291
    iput-object p1, v0, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    .line 2292
    invoke-virtual {p0, v0}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->setResponse(Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public bridge synthetic setResponse(Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 2079
    check-cast p1, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->setResponse(Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public setResponse(Lcom/narvii/model/api/UserResponse;)V
    .locals 4

    .line 2172
    iget-object v0, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 2173
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/model/User;->getSlideShowMedias()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/user/profile/UserProfileFragment;->slideShowMedias:Ljava/util/ArrayList;

    .line 2174
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->getBioMedias()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioMedias:Ljava/util/ArrayList;

    .line 2177
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    .line 2178
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->hasBackground()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->access$1602(Lcom/narvii/user/profile/UserProfileFragment;Z)Z

    .line 2179
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->getBackgroundColor()I

    move-result v1

    invoke-static {v1}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->access$1702(Lcom/narvii/user/profile/UserProfileFragment;Z)Z

    .line 2180
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->getBackgroundColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->access$1802(Lcom/narvii/user/profile/UserProfileFragment;I)I

    .line 2181
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {v0}, Lcom/narvii/user/profile/UserProfileFragment;->access$1900(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 2182
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {v0}, Lcom/narvii/user/profile/UserProfileFragment;->access$2000(Lcom/narvii/user/profile/UserProfileFragment;)V

    if-eqz p1, :cond_3

    .line 2183
    iget-object v0, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->onFinishListener:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_3

    .line 2184
    invoke-virtual {p1}, Lcom/narvii/model/api/UserResponse;->object()Lcom/narvii/model/User;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 2187
    :cond_3
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/narvii/detail/DetailFragment;->setDisabledStatus(Lcom/narvii/model/NVObject;)V

    .line 2189
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {v0}, Lcom/narvii/user/profile/UserProfileFragment;->access$2100(Lcom/narvii/user/profile/UserProfileFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2190
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->notActivated:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 2192
    :cond_5
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->notActivated:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2194
    :goto_3
    iget-object v0, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/model/User;->isModerator()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2195
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v1, v0, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v1, v0}, Lcom/narvii/list/SwitchAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2197
    :cond_6
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->commentAddAdapter:Lcom/narvii/user/profile/adapter/CommentAddAdapter;

    if-eqz v0, :cond_7

    .line 2198
    iget-object p1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {p1}, Lcom/narvii/model/User;->isModerator()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lcom/narvii/user/profile/adapter/CommentAddAdapter;->setVisibleInList(Z)V

    .line 2201
    :cond_7
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$000(Lcom/narvii/user/profile/UserProfileFragment;)V

    return-void
.end method
