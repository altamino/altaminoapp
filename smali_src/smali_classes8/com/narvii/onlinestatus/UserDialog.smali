.class public Lcom/narvii/onlinestatus/UserDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    const v0, 0x7f13015d

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/onlinestatus/UserDialog$3;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/narvii/onlinestatus/UserDialog$3;-><init>(Lcom/narvii/onlinestatus/UserDialog;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->l:Landroid/view/View$OnClickListener;

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->context:Landroid/content/Context;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/onlinestatus/UserDialog;->layoutId()I

    .line 27
    move-result p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 31
    .line 32
    .line 33
    const p1, 0x7f0a0c24

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->progressView:Landroid/view/View;

    .line 40
    .line 41
    .line 42
    const p1, 0x7f0a039f

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->contentView:Landroid/view/View;

    .line 49
    .line 50
    .line 51
    const p1, 0x7f0a04fe

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->errorView:Landroid/view/View;

    .line 58
    .line 59
    .line 60
    const p1, 0x7f0a0c38

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->errorRetry:Landroid/view/View;

    .line 67
    .line 68
    new-instance p2, Lcom/narvii/onlinestatus/UserDialog$1;

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, p0}, Lcom/narvii/onlinestatus/UserDialog$1;-><init>(Lcom/narvii/onlinestatus/UserDialog;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    const p1, 0x7f0a0108

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    check-cast p1, Landroid/widget/TextView;

    .line 84
    .line 85
    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->aminoId:Landroid/widget/TextView;

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/narvii/onlinestatus/UserDialog;->sendUserRequest()V

    .line 89
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/onlinestatus/UserDialog;)Lcom/narvii/model/api/UserResponse;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/onlinestatus/UserDialog;->userResponse:Lcom/narvii/model/api/UserResponse;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/onlinestatus/UserDialog;Lcom/narvii/model/api/UserResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->userResponse:Lcom/narvii/model/api/UserResponse;

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/onlinestatus/UserDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/onlinestatus/UserDialog;->retry()V

    return-void
.end method

.method private isUserOnline(Lcom/narvii/model/User;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget p1, p1, Lcom/narvii/model/User;->onlineStatus:I

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne p1, v1, :cond_1

    .line 10
    move v0, v1

    .line 11
    :cond_1
    return v0
.end method

.method private retry()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->error:Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/onlinestatus/UserDialog;->updateViews()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/onlinestatus/UserDialog;->sendUserRequest()V

    .line 10
    return-void
.end method

.method private sendUserRequest()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    const-string v1, "api"

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string v3, "/user-profile/"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    new-instance v2, Lcom/narvii/onlinestatus/UserDialog$2;

    .line 59
    .line 60
    const-class v3, Lcom/narvii/model/api/UserResponse;

    .line 61
    .line 62
    .line 63
    invoke-direct {v2, p0, v3}, Lcom/narvii/onlinestatus/UserDialog$2;-><init>(Lcom/narvii/onlinestatus/UserDialog;Ljava/lang/Class;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 67
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

    const v0, 0x7f0d0611

    return v0
.end method

.method public onFlagClicked(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->miniProfile(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 24
    return-void
.end method

.method public setOnClickListener(Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog;->clickListener:Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

    return-void
.end method

.method public show()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0de6

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 54
    :goto_0
    int-to-float v1, v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    const/high16 v4, 0x41a00000    # 20.0f

    .line 61
    .line 62
    .line 63
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 64
    move-result v3

    .line 65
    sub-float/2addr v1, v3

    .line 66
    float-to-int v1, v1

    .line 67
    .line 68
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    iget-object v1, p0, Lcom/narvii/onlinestatus/UserDialog;->context:Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    const v2, 0x7f010062

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 84
    return-void
.end method

.method protected updateViews()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->aminoId:Landroid/widget/TextView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 11
    .line 12
    if-eqz v4, :cond_1

    .line 13
    .line 14
    iget-object v4, v4, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {v4}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v4

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v5, "@"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    iget-object v5, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 34
    .line 35
    iget-object v5, v5, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    :goto_0
    const-string v4, ""

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->aminoId:Landroid/widget/TextView;

    .line 51
    .line 52
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 53
    .line 54
    if-nez v4, :cond_2

    .line 55
    move-object v4, v1

    .line 56
    goto :goto_2

    .line 57
    .line 58
    :cond_2
    iget-object v4, v4, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    move-result v4

    .line 63
    .line 64
    if-eqz v4, :cond_3

    .line 65
    move v4, v2

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    move v4, v3

    .line 68
    .line 69
    .line 70
    :goto_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    :cond_4
    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->progressView:Landroid/view/View;

    .line 73
    .line 74
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->userResponse:Lcom/narvii/model/api/UserResponse;

    .line 75
    .line 76
    if-nez v4, :cond_5

    .line 77
    .line 78
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->error:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    move-result v4

    .line 83
    .line 84
    if-eqz v4, :cond_5

    .line 85
    move v4, v3

    .line 86
    goto :goto_4

    .line 87
    :cond_5
    move v4, v2

    .line 88
    .line 89
    .line 90
    :goto_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->errorView:Landroid/view/View;

    .line 93
    .line 94
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->error:Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    move-result v4

    .line 99
    .line 100
    if-nez v4, :cond_6

    .line 101
    move v4, v3

    .line 102
    goto :goto_5

    .line 103
    :cond_6
    move v4, v2

    .line 104
    .line 105
    .line 106
    :goto_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->contentView:Landroid/view/View;

    .line 109
    .line 110
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->userResponse:Lcom/narvii/model/api/UserResponse;

    .line 111
    .line 112
    if-eqz v4, :cond_7

    .line 113
    move v4, v3

    .line 114
    goto :goto_6

    .line 115
    :cond_7
    move v4, v2

    .line 116
    .line 117
    .line 118
    :goto_6
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    const v0, 0x7f0a0f61

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    check-cast v0, Lcom/narvii/user/title/UserTitleFlowView;

    .line 128
    .line 129
    iput-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->userTitleFlowView:Lcom/narvii/user/title/UserTitleFlowView;

    .line 130
    .line 131
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v4}, Lcom/narvii/user/title/UserTitleFlowView;->setUser(Lcom/narvii/model/User;)V

    .line 135
    .line 136
    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog;->userTitleFlowView:Lcom/narvii/user/title/UserTitleFlowView;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 140
    move-result v4

    .line 141
    .line 142
    if-nez v4, :cond_8

    .line 143
    move v4, v2

    .line 144
    goto :goto_7

    .line 145
    :cond_8
    move v4, v3

    .line 146
    .line 147
    .line 148
    :goto_7
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    const v0, 0x7f0a010b

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 158
    .line 159
    iget-object v4, v4, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 160
    .line 161
    const-string v5, "isMemberOfTeamAmino"

    .line 162
    .line 163
    .line 164
    filled-new-array {v5}, [Ljava/lang/String;

    .line 165
    move-result-object v5

    .line 166
    .line 167
    .line 168
    invoke-static {v4, v5}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    .line 169
    move-result v4

    .line 170
    const/4 v5, 0x4

    .line 171
    .line 172
    if-eqz v4, :cond_9

    .line 173
    move v6, v3

    .line 174
    goto :goto_8

    .line 175
    :cond_9
    move v6, v5

    .line 176
    .line 177
    .line 178
    :goto_8
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 179
    .line 180
    new-instance v6, Lcom/narvii/onlinestatus/UserDialog$4;

    .line 181
    .line 182
    .line 183
    invoke-direct {v6, p0}, Lcom/narvii/onlinestatus/UserDialog$4;-><init>(Lcom/narvii/onlinestatus/UserDialog;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 190
    move-result-object v0

    .line 191
    .line 192
    .line 193
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 194
    move-result-object v0

    .line 195
    .line 196
    .line 197
    const v6, 0x7f0a0f36

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 201
    move-result-object v6

    .line 202
    .line 203
    check-cast v6, Lcom/narvii/widget/UserAvatarLayout;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6, v4}, Lcom/narvii/widget/UserAvatarLayout;->setNoBadge(Z)V

    .line 207
    .line 208
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6, v4}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 212
    .line 213
    .line 214
    const v4, 0x7f0a0171

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 218
    move-result-object v6

    .line 219
    .line 220
    iget-object v7, p0, Lcom/narvii/onlinestatus/UserDialog;->l:Landroid/view/View$OnClickListener;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    .line 225
    new-instance v6, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 226
    .line 227
    .line 228
    invoke-direct {v6, v0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 232
    move-result-object v4

    .line 233
    .line 234
    check-cast v4, Lcom/narvii/widget/NVImageView;

    .line 235
    .line 236
    iget-object v7, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 240
    move-result v7

    .line 241
    .line 242
    if-eqz v7, :cond_a

    .line 243
    .line 244
    .line 245
    invoke-virtual {v6}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 246
    move-result v6

    .line 247
    .line 248
    if-eqz v6, :cond_a

    .line 249
    .line 250
    const/16 v6, -0x46cb

    .line 251
    goto :goto_9

    .line 252
    :cond_a
    const/4 v6, -0x1

    .line 253
    .line 254
    .line 255
    :goto_9
    invoke-virtual {v4, v6}, Lcom/narvii/widget/NVImageView;->setStrokeColor(I)V

    .line 256
    .line 257
    .line 258
    const v4, 0x7f0a09f9

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 262
    move-result-object v4

    .line 263
    .line 264
    check-cast v4, Lcom/narvii/widget/NicknameView;

    .line 265
    .line 266
    iget-object v6, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v4, v6}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 270
    .line 271
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 272
    .line 273
    iget-object v4, v4, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    invoke-static {v4}, Lcom/narvii/util/text/TextUtils;->compactContent(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    move-result-object v4

    .line 278
    .line 279
    .line 280
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 281
    move-result v6

    .line 282
    .line 283
    .line 284
    const v7, 0x7f0a039d

    .line 285
    const/4 v8, 0x1

    .line 286
    .line 287
    if-nez v6, :cond_c

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 291
    move-result-object v6

    .line 292
    .line 293
    check-cast v6, Landroid/widget/TextView;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 300
    move-result-object v6

    .line 301
    .line 302
    .line 303
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 304
    move-result v4

    .line 305
    .line 306
    if-nez v4, :cond_b

    .line 307
    move v2, v3

    .line 308
    .line 309
    .line 310
    :cond_b
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 311
    goto :goto_b

    .line 312
    .line 313
    :cond_c
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 314
    .line 315
    iget v4, v4, Lcom/narvii/model/User;->onlineStatus:I

    .line 316
    .line 317
    if-ne v4, v8, :cond_d

    .line 318
    move v4, v8

    .line 319
    goto :goto_a

    .line 320
    :cond_d
    move v4, v3

    .line 321
    .line 322
    .line 323
    :goto_a
    invoke-virtual {p0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 324
    move-result-object v6

    .line 325
    .line 326
    if-eqz v4, :cond_e

    .line 327
    move v2, v3

    .line 328
    .line 329
    .line 330
    :cond_e
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 331
    .line 332
    .line 333
    :goto_b
    const v2, 0x7f0a0989

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 337
    move-result-object v2

    .line 338
    .line 339
    check-cast v2, Lcom/narvii/widget/MoodView;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v8}, Lcom/narvii/widget/MoodView;->setAnimate(Z)V

    .line 343
    .line 344
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 345
    .line 346
    .line 347
    invoke-direct {p0, v4}, Lcom/narvii/onlinestatus/UserDialog;->isUserOnline(Lcom/narvii/model/User;)Z

    .line 348
    move-result v4

    .line 349
    .line 350
    if-eqz v4, :cond_f

    .line 351
    .line 352
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v4}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    .line 356
    move-result-object v4

    .line 357
    .line 358
    .line 359
    invoke-static {v4}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    .line 360
    move-result v4

    .line 361
    .line 362
    if-nez v4, :cond_f

    .line 363
    move v4, v3

    .line 364
    goto :goto_c

    .line 365
    :cond_f
    move v4, v5

    .line 366
    .line 367
    .line 368
    :goto_c
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 369
    .line 370
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2, v4}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;)V

    .line 374
    .line 375
    .line 376
    const v2, 0x7f0a0a5e

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 380
    move-result-object v2

    .line 381
    .line 382
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 383
    .line 384
    .line 385
    invoke-direct {p0, v4}, Lcom/narvii/onlinestatus/UserDialog;->isUserOnline(Lcom/narvii/model/User;)Z

    .line 386
    move-result v4

    .line 387
    .line 388
    if-eqz v4, :cond_10

    .line 389
    .line 390
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v4}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    .line 394
    move-result-object v4

    .line 395
    .line 396
    .line 397
    invoke-static {v4}, Lcom/narvii/model/Sticker;->isEmpty(Lcom/narvii/model/Sticker;)Z

    .line 398
    move-result v4

    .line 399
    .line 400
    if-eqz v4, :cond_10

    .line 401
    move v4, v3

    .line 402
    goto :goto_d

    .line 403
    :cond_10
    move v4, v5

    .line 404
    .line 405
    .line 406
    :goto_d
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 407
    .line 408
    .line 409
    const v2, 0x7f0a0a63

    .line 410
    .line 411
    .line 412
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 413
    move-result-object v2

    .line 414
    .line 415
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->l:Landroid/view/View$OnClickListener;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    .line 420
    .line 421
    const v2, 0x7f0a0a62

    .line 422
    .line 423
    .line 424
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 425
    move-result-object v2

    .line 426
    .line 427
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->l:Landroid/view/View$OnClickListener;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    .line 432
    .line 433
    const v2, 0x7f0a0de7

    .line 434
    .line 435
    .line 436
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 437
    move-result-object v2

    .line 438
    .line 439
    iget-object v4, p0, Lcom/narvii/onlinestatus/UserDialog;->l:Landroid/view/View$OnClickListener;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    .line 444
    const-string v2, "account"

    .line 445
    .line 446
    .line 447
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 448
    move-result-object v0

    .line 449
    .line 450
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 454
    move-result-object v0

    .line 455
    .line 456
    iget-object v2, p0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 457
    .line 458
    if-eqz v2, :cond_12

    .line 459
    .line 460
    .line 461
    invoke-virtual {v2}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 462
    move-result-object v2

    .line 463
    .line 464
    if-nez v0, :cond_11

    .line 465
    goto :goto_e

    .line 466
    .line 467
    .line 468
    :cond_11
    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 469
    move-result-object v1

    .line 470
    .line 471
    .line 472
    :goto_e
    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 473
    move-result v0

    .line 474
    .line 475
    if-eqz v0, :cond_12

    .line 476
    goto :goto_f

    .line 477
    :cond_12
    move v8, v3

    .line 478
    .line 479
    .line 480
    :goto_f
    const v0, 0x7f0a05b8

    .line 481
    .line 482
    .line 483
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 484
    move-result-object v1

    .line 485
    .line 486
    .line 487
    invoke-virtual {p0}, Lcom/narvii/onlinestatus/UserDialog;->isFlagable()Z

    .line 488
    move-result v2

    .line 489
    .line 490
    if-eqz v2, :cond_13

    .line 491
    .line 492
    if-nez v8, :cond_13

    .line 493
    goto :goto_10

    .line 494
    :cond_13
    move v3, v5

    .line 495
    .line 496
    .line 497
    :goto_10
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 501
    move-result-object v0

    .line 502
    .line 503
    iget-object v1, p0, Lcom/narvii/onlinestatus/UserDialog;->l:Landroid/view/View$OnClickListener;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    return-void
.end method
