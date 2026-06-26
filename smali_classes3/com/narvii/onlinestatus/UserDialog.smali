.class public Lcom/narvii/onlinestatus/UserDialog;
.super Lcom/narvii/app/NVDialog;
.source "UserDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;
    }
.end annotation


# static fields
.field public static final CLICK_FLAG:I = 0x3

.field public static final CLICK_KICK:I = 0x4

.field public static final CLICK_PROFILE:I = 0x2

.field public static final CLICK_REMOVE_PRESENTER:I = 0x6

.field public static final CLICK_START_CHAT:I = 0x1

.field public static final CLICK_STOP_PRESENTING:I = 0x5

.field public static final LEAVE_CHAT_SUCCESS:I = 0x7


# instance fields
.field protected aminoId:Landroid/widget/TextView;

.field protected clickListener:Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field error:Ljava/lang/String;

.field private errorRetry:Landroid/view/View;

.field private errorView:Landroid/view/View;

.field l:Landroid/view/View$OnClickListener;

.field private progressView:Landroid/view/View;

.field public source:Ljava/lang/String;

.field protected user:Lcom/narvii/model/User;

.field private userResponse:Lcom/narvii/model/api/UserResponse;

.field userTitleFlowView:Lcom/narvii/user/title/UserTitleFlowView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/narvii/model/User;)V
    .locals 1

    const v0, 0x7f1000ce

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    .line 157
    new-instance v0, Lcom/narvii/onlinestatus/UserDialog$3;

    invoke-direct {v0, p0}, Lcom/narvii/onlinestatus/UserDialog$3;-><init>(Lcom/narvii/onlinestatus/UserDialog;)V

    iput-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->l:Landroid/view/View$OnClickListener;

    if-nez p2, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->context:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 83
    invoke-virtual {p0}, Lcom/narvii/onlinestatus/UserDialog;->layoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f090966

    .line 86
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->progressView:Landroid/view/View;

    const p1, 0x7f0902d2

    .line 87
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->contentView:Landroid/view/View;

    const p1, 0x7f0903fc

    .line 88
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->errorView:Landroid/view/View;

    const p1, 0x7f09097a

    .line 89
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->errorRetry:Landroid/view/View;

    .line 90
    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->errorRetry:Landroid/view/View;

    new-instance p2, Lcom/narvii/onlinestatus/UserDialog$1;

    invoke-direct {p2, p0}, Lcom/narvii/onlinestatus/UserDialog$1;-><init>(Lcom/narvii/onlinestatus/UserDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900a0

    .line 96
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->aminoId:Landroid/widget/TextView;

    .line 98
    invoke-direct {p0}, Lcom/narvii/onlinestatus/UserDialog;->sendUserRequest()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/onlinestatus/UserDialog;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/narvii/onlinestatus/UserDialog;->retry()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/onlinestatus/UserDialog;)Lcom/narvii/model/api/UserResponse;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/onlinestatus/UserDialog;->userResponse:Lcom/narvii/model/api/UserResponse;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/onlinestatus/UserDialog;Lcom/narvii/model/api/UserResponse;)Lcom/narvii/model/api/UserResponse;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->userResponse:Lcom/narvii/model/api/UserResponse;

    return-object p1
.end method

.method private isUserOnline(Lcom/narvii/model/User;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 129
    :cond_0
    iget p1, p1, Lcom/narvii/model/User;->onlineStatus:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private retry()V
    .locals 1

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->error:Ljava/lang/String;

    .line 256
    invoke-virtual {p0}, Lcom/narvii/onlinestatus/UserDialog;->updateViews()V

    .line 257
    invoke-direct {p0}, Lcom/narvii/onlinestatus/UserDialog;->sendUserRequest()V

    return-void
.end method

.method private sendUserRequest()V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "api"

    .line 137
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 138
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/user-profile/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    invoke-virtual {v3}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 139
    new-instance v2, Lcom/narvii/onlinestatus/UserDialog$2;

    const-class v3, Lcom/narvii/model/api/UserResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/onlinestatus/UserDialog$2;-><init>(Lcom/narvii/onlinestatus/UserDialog;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "MiniUserProfile"

    return-object v0
.end method

.method public initView()V
    .locals 0

    return-void
.end method

.method protected isFlagable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b0569

    return v0
.end method

.method public onFlagClicked(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 111
    new-instance v0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    invoke-direct {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 112
    invoke-virtual {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->miniProfile(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    return-void
.end method

.method public setOnClickListener(Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->clickListener:Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

    return-void
.end method

.method public show()V
    .locals 5

    .line 118
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    const v0, 0x7f090b04

    .line 119
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 123
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v1, p0, Lcom/narvii/onlinestatus/UserDialog;->context:Landroid/content/Context;

    const v2, 0x7f010044

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected updateViews()V
    .locals 9

    .line 185
    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->aminoId:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 186
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    invoke-static {v4}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    iget-object v5, v5, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    :goto_0
    const-string v4, ""

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->aminoId:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    if-nez v4, :cond_2

    move-object v4, v1

    goto :goto_2

    :cond_2
    iget-object v4, v4, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x8

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->progressView:Landroid/view/View;

    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->userResponse:Lcom/narvii/model/api/UserResponse;

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->error:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    const/16 v4, 0x8

    :goto_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->errorView:Landroid/view/View;

    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->error:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    const/16 v4, 0x8

    :goto_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->contentView:Landroid/view/View;

    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->userResponse:Lcom/narvii/model/api/UserResponse;

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    goto :goto_6

    :cond_7
    const/16 v4, 0x8

    :goto_6
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090c3f

    .line 193
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/user/title/UserTitleFlowView;

    iput-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->userTitleFlowView:Lcom/narvii/user/title/UserTitleFlowView;

    .line 194
    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->userTitleFlowView:Lcom/narvii/user/title/UserTitleFlowView;

    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    invoke-virtual {v0, v4}, Lcom/narvii/user/title/UserTitleFlowView;->setUser(Lcom/narvii/model/User;)V

    .line 195
    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->userTitleFlowView:Lcom/narvii/user/title/UserTitleFlowView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_8

    const/16 v4, 0x8

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v0, 0x7f0900a3

    .line 197
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 198
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    iget-object v4, v4, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "isMemberOfTeamAmino"

    aput-object v7, v6, v3

    invoke-static {v4, v6}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x4

    if-eqz v4, :cond_9

    const/4 v7, 0x0

    goto :goto_8

    :cond_9
    const/4 v7, 0x4

    .line 199
    :goto_8
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 200
    new-instance v7, Lcom/narvii/onlinestatus/UserDialog$4;

    invoke-direct {v7, p0}, Lcom/narvii/onlinestatus/UserDialog$4;-><init>(Lcom/narvii/onlinestatus/UserDialog;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const v7, 0x7f090c10

    .line 213
    invoke-virtual {p0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/narvii/widget/UserAvatarLayout;

    .line 214
    invoke-virtual {v7, v4}, Lcom/narvii/widget/UserAvatarLayout;->setNoBadge(Z)V

    .line 215
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    invoke-virtual {v7, v4}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    const v4, 0x7f0900e4

    .line 216
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/narvii/onlinestatus/UserDialog;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    new-instance v7, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v7, v0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 218
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/NVImageView;

    iget-object v8, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    invoke-virtual {v8}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v7}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, -0x46cb

    goto :goto_9

    :cond_a
    const/4 v7, -0x1

    :goto_9
    invoke-virtual {v4, v7}, Lcom/narvii/widget/NVImageView;->setStrokeColor(I)V

    const v4, 0x7f090764

    .line 220
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/NicknameView;

    iget-object v7, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    invoke-virtual {v4, v7}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 221
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    iget-object v4, v4, Lcom/narvii/model/User;->content:Ljava/lang/String;

    invoke-static {v4}, Lcom/narvii/util/text/TextUtils;->compactContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const v8, 0x7f0902d0

    if-nez v7, :cond_c

    .line 224
    invoke-virtual {p0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {p0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v2, 0x0

    :cond_b
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 227
    :cond_c
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    iget v4, v4, Lcom/narvii/model/User;->onlineStatus:I

    if-ne v4, v5, :cond_d

    const/4 v4, 0x1

    goto :goto_a

    :cond_d
    const/4 v4, 0x0

    .line 228
    :goto_a
    invoke-virtual {p0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v4, :cond_e

    const/4 v2, 0x0

    :cond_e
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_b
    const v2, 0x7f090720

    .line 231
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/MoodView;

    .line 232
    invoke-virtual {v2, v5}, Lcom/narvii/widget/MoodView;->setAnimate(Z)V

    .line 233
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    invoke-direct {p0, v4}, Lcom/narvii/onlinestatus/UserDialog;->isUserOnline(Lcom/narvii/model/User;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    invoke-virtual {v4}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v4, 0x0

    goto :goto_c

    :cond_f
    const/4 v4, 0x4

    :goto_c
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 234
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    invoke-virtual {v2, v4}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;)V

    const v2, 0x7f0907ba

    .line 235
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    invoke-direct {p0, v4}, Lcom/narvii/onlinestatus/UserDialog;->isUserOnline(Lcom/narvii/model/User;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    invoke-virtual {v4}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    goto :goto_d

    :cond_10
    const/4 v4, 0x4

    :goto_d
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0907bf

    .line 238
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0907be

    .line 239
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090b05

    .line 240
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "account"

    .line 242
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 243
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    .line 244
    iget-object v2, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_11

    goto :goto_e

    :cond_11
    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v1

    :goto_e
    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_f

    :cond_12
    const/4 v5, 0x0

    :goto_f
    const v0, 0x7f090478

    .line 246
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/onlinestatus/UserDialog;->isFlagable()Z

    move-result v2

    if-eqz v2, :cond_13

    if-nez v5, :cond_13

    goto :goto_10

    :cond_13
    const/4 v3, 0x4

    :goto_10
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/onlinestatus/UserDialog;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
