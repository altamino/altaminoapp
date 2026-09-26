.class public Lcom/narvii/account/SignUpAddProfileFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnStartPickListener;
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/photos/PhotoUploadListener;


# instance fields
.field private agreeCheck:Landroid/widget/CheckBox;

.field private agreeError:Landroid/view/View;

.field private avatar:Lcom/narvii/widget/ThumbImageView;

.field private avatarClick:Landroid/view/View;

.field private avatarPlaceholder:Landroid/view/View;

.field private avatarPlaceholder2:Landroid/view/View;

.field private avatarUrl:Ljava/lang/String;

.field private final birthdayListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/BasicProfileResponse;",
            ">;"
        }
    .end annotation
.end field

.field private email:Ljava/lang/String;

.field private eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

.field private newAccount:Z

.field private nextView:Landroid/view/View;

.field private nickname:Landroid/widget/EditText;

.field private nicknameText:Ljava/lang/String;

.field private pass:Ljava/lang/String;

.field private photo:Lcom/narvii/photos/PhotoManager;

.field private photoDir:Ljava/io/File;

.field private picker:Lcom/narvii/media/MediaPickerFragment;

.field private request:Lcom/narvii/util/http/ApiRequest;

.field private scrollView:Landroid/widget/ScrollView;

.field private final signupListener:Lcom/narvii/account/AccountResponseListener;

.field private step:I

.field private final updateListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/AccountBaseFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/account/SignUpAddProfileFragment$4;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, p0}, Lcom/narvii/account/SignUpAddProfileFragment$4;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->signupListener:Lcom/narvii/account/AccountResponseListener;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/account/SignUpAddProfileFragment$5;

    .line 13
    .line 14
    const-class v1, Lcom/narvii/model/api/ApiResponse;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Lcom/narvii/account/SignUpAddProfileFragment$5;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;Ljava/lang/Class;)V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->updateListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/account/SignUpAddProfileFragment$6;

    .line 22
    .line 23
    const-class v1, Lcom/narvii/model/api/BasicProfileResponse;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0, v1}, Lcom/narvii/account/SignUpAddProfileFragment$6;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;Ljava/lang/Class;)V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->birthdayListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 29
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/account/SignUpAddProfileFragment;)Lcom/narvii/services/EventLogProfileService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/narvii/account/SignUpAddProfileFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->newAccount:Z

    return p0
.end method

.method static bridge synthetic C(Lcom/narvii/account/SignUpAddProfileFragment;)Lcom/narvii/photos/PhotoManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->photo:Lcom/narvii/photos/PhotoManager;

    return-object p0
.end method

.method static bridge synthetic D(Lcom/narvii/account/SignUpAddProfileFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->newAccount:Z

    return-void
.end method

.method static bridge synthetic E(Lcom/narvii/account/SignUpAddProfileFragment;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->request:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method static bridge synthetic F(Lcom/narvii/account/SignUpAddProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->proceed()V

    return-void
.end method

.method static bridge synthetic G(Lcom/narvii/account/SignUpAddProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->updateNextView()V

    return-void
.end method

.method private isThirdPartLogin()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "key_is_third_part"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private synthetic lambda$onFail$5(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->step:I

    .line 3
    const/4 v0, 0x3

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    const/4 p1, 0x2

    .line 7
    .line 8
    iput p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->step:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->updateIndicatorViewStatus(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->proceed()V

    .line 15
    :cond_0
    return-void
.end method

.method private synthetic lambda$onFail$6(Landroid/view/View;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v1, p1, v0}, Lcom/narvii/account/SignUpAddProfileFragment;->finishWithResult(ZILjava/lang/String;)V

    .line 7
    return-void
.end method

.method private static synthetic lambda$onViewCreated$0(Landroid/view/View;Z)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/16 p1, 0x8

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const p2, 0x7f0a01cc

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    const p3, 0x7f0a0a09

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 18
    move-result-object p4

    .line 19
    .line 20
    const/high16 p5, 0x41800000    # 16.0f

    .line 21
    .line 22
    .line 23
    invoke-static {p4, p5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 24
    move-result p4

    .line 25
    float-to-int p4, p4

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 29
    move-result-object p5

    .line 30
    .line 31
    const/high16 p6, 0x42c80000    # 100.0f

    .line 32
    .line 33
    .line 34
    invoke-static {p5, p6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 35
    move-result p5

    .line 36
    float-to-int p5, p5

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 40
    move-result-object p6

    .line 41
    .line 42
    const/high16 p7, 0x41f00000    # 30.0f

    .line 43
    .line 44
    .line 45
    invoke-static {p6, p7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 46
    move-result p6

    .line 47
    float-to-int p6, p6

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 51
    move-result p7

    .line 52
    add-int/2addr p7, p4

    .line 53
    add-int/2addr p7, p4

    .line 54
    add-int/2addr p7, p5

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 58
    move-result p3

    .line 59
    add-int/2addr p7, p3

    .line 60
    add-int/2addr p7, p4

    .line 61
    .line 62
    div-int/lit8 p4, p4, 0x2

    .line 63
    add-int/2addr p7, p4

    .line 64
    .line 65
    iget-object p3, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 69
    move-result p3

    .line 70
    add-int/2addr p7, p3

    .line 71
    int-to-float p3, p7

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 75
    move-result-object p4

    .line 76
    .line 77
    const/high16 p5, 0x42200000    # 40.0f

    .line 78
    .line 79
    .line 80
    invoke-static {p4, p5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 81
    move-result p4

    .line 82
    add-float/2addr p3, p4

    .line 83
    int-to-float p4, p6

    .line 84
    add-float/2addr p3, p4

    .line 85
    .line 86
    iget-object p4, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nextView:Landroid/view/View;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    .line 90
    move-result p4

    .line 91
    int-to-float p4, p4

    .line 92
    add-float/2addr p3, p4

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 96
    move-result p1

    .line 97
    int-to-float p1, p1

    .line 98
    .line 99
    cmpl-float p1, p3, p1

    .line 100
    .line 101
    if-lez p1, :cond_0

    .line 102
    const/4 p1, 0x1

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    const/4 p1, 0x0

    .line 105
    .line 106
    :goto_0
    sget-object p3, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 107
    .line 108
    new-instance p4, Lcom/narvii/account/r0;

    .line 109
    .line 110
    .line 111
    invoke-direct {p4, p2, p1}, Lcom/narvii/account/r0;-><init>(Landroid/view/View;Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->agreeError:Landroid/view/View;

    .line 5
    const/4 p2, 0x4

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$3(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "Next"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->signupClicked()V

    .line 19
    return-void
.end method

.method private synthetic lambda$signupClicked$4()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->scrollView:Landroid/widget/ScrollView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const/16 v2, 0x3e8

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 9
    return-void
.end method

.method private proceed()V
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->step:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->step:I

    .line 7
    .line 8
    if-eq v0, v1, :cond_a

    .line 9
    .line 10
    const-string v2, "account"

    .line 11
    const/4 v3, 0x2

    .line 12
    .line 13
    const-string v4, "api"

    .line 14
    .line 15
    if-eq v0, v3, :cond_3

    .line 16
    const/4 v1, 0x3

    .line 17
    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    const/4 v1, 0x4

    .line 20
    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    const/4 v1, 0x5

    .line 23
    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/account/LoginActivity;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    const-string v2, "/persona/profile/birthday"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    const-string v2, "birthday"

    .line 53
    .line 54
    iget-object v0, v0, Lcom/narvii/account/LoginActivity;->birthday:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    iput-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->birthdayListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 81
    .line 82
    goto/16 :goto_4

    .line 83
    .line 84
    .line 85
    :cond_1
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 102
    move-result-object v3

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 106
    move-result-object v3

    .line 107
    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    const-string v5, "/account/"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 131
    .line 132
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->photo:Lcom/narvii/photos/PhotoManager;

    .line 133
    .line 134
    iget-object v3, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v3}, Lcom/narvii/photos/PhotoManager;->getUploadedUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    const-string v3, "icon"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    iput-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 153
    .line 154
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 155
    .line 156
    iget-object v2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->updateListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 160
    .line 161
    goto/16 :goto_4

    .line 162
    .line 163
    .line 164
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 165
    .line 166
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->photo:Lcom/narvii/photos/PhotoManager;

    .line 167
    .line 168
    iget-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v1}, Lcom/narvii/photos/PhotoManager;->getUploadedUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    move-result-object v0

    .line 173
    .line 174
    if-nez v0, :cond_a

    .line 175
    .line 176
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->photo:Lcom/narvii/photos/PhotoManager;

    .line 177
    .line 178
    iput v3, v0, Lcom/narvii/photos/PhotoManager;->retryCount:I

    .line 179
    .line 180
    iget-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v1, p0}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V

    .line 184
    .line 185
    goto/16 :goto_4

    .line 186
    .line 187
    :cond_3
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nicknameText:Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    move-result-object v2

    .line 192
    .line 193
    check-cast v2, Lcom/narvii/account/AccountService;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    move-result-object v3

    .line 198
    .line 199
    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 200
    .line 201
    .line 202
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 203
    move-result-object v4

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 207
    move-result-object v5

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 211
    move-result-object v5

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 215
    .line 216
    .line 217
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->isThirdPartLogin()Z

    .line 218
    move-result v5

    .line 219
    .line 220
    const-string v6, "0 "

    .line 221
    .line 222
    const-string v7, "secret"

    .line 223
    .line 224
    if-eqz v5, :cond_4

    .line 225
    .line 226
    const-string v5, "/auth/login"

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 230
    .line 231
    const-string v5, "key_third_part_secret"

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    move-result-object v5

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4, v7, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 239
    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    iget-object v6, p0, Lcom/narvii/account/SignUpAddProfileFragment;->pass:Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object v5

    .line 256
    .line 257
    const-string v6, "secret2"

    .line 258
    .line 259
    .line 260
    invoke-virtual {v4, v6, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 261
    goto :goto_0

    .line 262
    .line 263
    :cond_4
    const-string v5, "/auth/register"

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 267
    .line 268
    new-instance v5, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    iget-object v6, p0, Lcom/narvii/account/SignUpAddProfileFragment;->pass:Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    move-result-object v5

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4, v7, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 287
    .line 288
    :goto_0
    sget-object v5, La0/a;->o:Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    .line 292
    move-result-object v2

    .line 293
    .line 294
    .line 295
    invoke-virtual {v4, v5, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 296
    .line 297
    iget-object v2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->email:Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 301
    move-result v2

    .line 302
    .line 303
    if-nez v2, :cond_5

    .line 304
    .line 305
    const-string v2, "email"

    .line 306
    .line 307
    iget-object v5, p0, Lcom/narvii/account/SignUpAddProfileFragment;->email:Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4, v2, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 311
    .line 312
    :cond_5
    sget v2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 313
    .line 314
    .line 315
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    move-result-object v2

    .line 317
    .line 318
    const-string v5, "clientType"

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4, v5, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 322
    .line 323
    const-string v2, "nickname"

    .line 324
    .line 325
    .line 326
    invoke-virtual {v4, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->getLocation()Lcom/narvii/location/GPSCoordinate;

    .line 330
    move-result-object v0

    .line 331
    const/4 v2, 0x0

    .line 332
    .line 333
    if-nez v0, :cond_6

    .line 334
    move v5, v2

    .line 335
    goto :goto_1

    .line 336
    .line 337
    .line 338
    :cond_6
    invoke-virtual {v0}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    .line 339
    move-result v5

    .line 340
    .line 341
    .line 342
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    move-result-object v5

    .line 344
    .line 345
    const-string v6, "latitude"

    .line 346
    .line 347
    .line 348
    invoke-virtual {v4, v6, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 349
    .line 350
    if-nez v0, :cond_7

    .line 351
    goto :goto_2

    .line 352
    .line 353
    .line 354
    :cond_7
    invoke-virtual {v0}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    .line 355
    move-result v2

    .line 356
    .line 357
    .line 358
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    move-result-object v0

    .line 360
    .line 361
    const-string v2, "longitude"

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->getAddress()Ljava/lang/String;

    .line 368
    move-result-object v0

    .line 369
    .line 370
    const-string v2, "address"

    .line 371
    .line 372
    .line 373
    invoke-virtual {v4, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 374
    .line 375
    const-string v0, "navigator"

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 379
    move-result-object v0

    .line 380
    .line 381
    check-cast v0, Lcom/narvii/app/BaseNavigator;

    .line 382
    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0}, Lcom/narvii/app/BaseNavigator;->getMyScheme()Ljava/lang/String;

    .line 390
    move-result-object v0

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    const-string v0, "://relogin"

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    move-result-object v0

    .line 403
    .line 404
    const-string v2, "clientCallbackURL"

    .line 405
    .line 406
    .line 407
    invoke-virtual {v4, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 408
    .line 409
    const-string v0, "validationContext"

    .line 410
    .line 411
    .line 412
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    move-result-object v2

    .line 414
    .line 415
    .line 416
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 417
    move-result v2

    .line 418
    .line 419
    if-nez v2, :cond_8

    .line 420
    .line 421
    :try_start_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 422
    .line 423
    .line 424
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 425
    move-result-object v5

    .line 426
    .line 427
    const-class v6, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2, v5, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 431
    move-result-object v2

    .line 432
    .line 433
    check-cast v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    goto :goto_3

    .line 435
    :catch_0
    move-exception v2

    .line 436
    .line 437
    .line 438
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 439
    move-result-object v5

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 443
    move-object v2, v5

    .line 444
    .line 445
    .line 446
    :goto_3
    invoke-virtual {v4, v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 447
    .line 448
    .line 449
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 450
    move-result-object v0

    .line 451
    .line 452
    instance-of v0, v0, Lcom/narvii/account/LoginActivity;

    .line 453
    .line 454
    if-eqz v0, :cond_9

    .line 455
    .line 456
    .line 457
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 458
    move-result-object v0

    .line 459
    .line 460
    check-cast v0, Lcom/narvii/account/LoginActivity;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0, v4}, Lcom/narvii/account/LoginActivity;->procReq(Lcom/narvii/util/http/ApiRequest$Builder;)V

    .line 464
    .line 465
    .line 466
    :cond_9
    invoke-virtual {v4, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->signature(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 470
    move-result-object v0

    .line 471
    .line 472
    iput-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 473
    .line 474
    .line 475
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 476
    .line 477
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 478
    .line 479
    iget-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->signupListener:Lcom/narvii/account/AccountResponseListener;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v3, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 483
    goto :goto_4

    .line 484
    .line 485
    :cond_a
    new-instance v0, Lcom/narvii/account/q0;

    .line 486
    .line 487
    .line 488
    invoke-direct {v0, p0}, Lcom/narvii/account/q0;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;)V

    .line 489
    .line 490
    .line 491
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 492
    :goto_4
    return-void
.end method

.method public static synthetic q(Lcom/narvii/account/SignUpAddProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->lambda$signupClicked$4()V

    return-void
.end method

.method public static synthetic r(Lcom/narvii/account/SignUpAddProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/account/SignUpAddProfileFragment;->lambda$onFail$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcom/narvii/account/SignUpAddProfileFragment;Landroid/view/View;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/narvii/account/SignUpAddProfileFragment;->lambda$onViewCreated$1(Landroid/view/View;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic t(Lcom/narvii/account/SignUpAddProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/account/SignUpAddProfileFragment;->lambda$onFail$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/account/SignUpAddProfileFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/account/SignUpAddProfileFragment;->lambda$onViewCreated$2(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private updateNextView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    .line 29
    :goto_0
    iget-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nextView:Landroid/view/View;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 33
    return-void
.end method

.method private updateViews()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatar:Lcom/narvii/widget/ThumbImageView;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x4

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    move v1, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v2

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarClick:Landroid/view/View;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    .line 31
    const v1, 0x7f080062

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_1
    const v1, 0x7f080061

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarPlaceholder:Landroid/view/View;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    move v1, v2

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move v1, v3

    .line 52
    .line 53
    .line 54
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarPlaceholder2:Landroid/view/View;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    move-result v1

    .line 63
    .line 64
    if-eqz v1, :cond_3

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    move v2, v3

    .line 67
    .line 68
    .line 69
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    return-void
.end method

.method public static synthetic v(Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/account/SignUpAddProfileFragment;->lambda$onViewCreated$0(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic w(Lcom/narvii/account/SignUpAddProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->proceed()V

    return-void
.end method

.method public static synthetic x(Lcom/narvii/account/SignUpAddProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/account/SignUpAddProfileFragment;->lambda$onViewCreated$3(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/account/SignUpAddProfileFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/account/SignUpAddProfileFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->email:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected addStatusBarMargin()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cancel()Z
    .locals 2

    iget v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->step:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->step:I

    return v1
.end method

.method public finishWithResult(ZILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-boolean p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->newAccount:Z

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    const/4 p2, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;)V

    .line 13
    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "sign_up_create_profile"

    return-object v0
.end method

.method public getProgressText()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->step:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    const/4 v1, 0x2

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    const/4 v1, 0x3

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    const/4 v1, 0x4

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    const/4 v1, 0x5

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-super {p0}, Lcom/narvii/account/AccountBaseFragment;->getProgressText()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    const v1, 0x7f120061

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    const v1, 0x7f120031

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method protected logSignUpMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0079

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0171

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a017d

    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    const-string p1, "Photo"

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->photoDir:Ljava/io/File;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->photoDir:Ljava/io/File;

    .line 39
    const/4 v1, 0x0

    .line 40
    const/4 v2, 0x6

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;I)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->i1()V

    .line 52
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "photo"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    check-cast v1, Lcom/narvii/photos/PhotoManager;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->photo:Lcom/narvii/photos/PhotoManager;

    .line 14
    .line 15
    new-instance v1, Ljava/io/File;

    .line 16
    .line 17
    new-instance v2, Ljava/io/File;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .line 30
    const-string v0, "signup"

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .line 35
    iput-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->photoDir:Ljava/io/File;

    .line 36
    .line 37
    const-string v1, "eventLogProfile"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    check-cast v1, Lcom/narvii/services/EventLogProfileService;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    .line 46
    .line 47
    const-string v1, "mediaPicker"

    .line 48
    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    .line 52
    .line 53
    .line 54
    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 55
    .line 56
    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    .line 57
    .line 58
    new-instance p1, Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 62
    .line 63
    const-string v2, "folder"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    check-cast p1, Lcom/narvii/account/LoginActivity;

    .line 95
    const/4 v0, 0x0

    .line 96
    .line 97
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statMaxLoginStep:I

    .line 98
    .line 99
    const/16 v0, 0x1e

    .line 100
    .line 101
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statMaxSignupSetp:I

    .line 102
    goto :goto_0

    .line 103
    .line 104
    .line 105
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    check-cast v0, Lcom/narvii/media/MediaPickerFragment;

    .line 113
    .line 114
    iput-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    .line 115
    .line 116
    const-string v0, "avatar"

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    .line 123
    .line 124
    :goto_0
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 128
    .line 129
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    .line 130
    .line 131
    iput-object p0, p1, Lcom/narvii/media/MediaPickerFragment;->startPickListener:Lcom/narvii/media/MediaPickerFragment$OnStartPickListener;

    .line 132
    .line 133
    const-string p1, "email"

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->email:Ljava/lang/String;

    .line 140
    .line 141
    const-string p1, "pass"

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->pass:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0027

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->photoDir:Ljava/io/File;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 26
    :cond_1
    return-void
.end method

.method public onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    const/4 p2, 0x1

    .line 9
    .line 10
    new-array p2, p2, [Ljava/lang/Object;

    .line 11
    const/4 p4, 0x0

    .line 12
    .line 13
    aput-object p3, p2, p4

    .line 14
    .line 15
    .line 16
    const p3, 0x7f12002a

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    new-instance p2, Lcom/narvii/util/dialog/AlertDialog;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p3

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 36
    .line 37
    .line 38
    const p1, 0x7f12100d

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    new-instance p3, Lcom/narvii/account/s0;

    .line 45
    .line 46
    .line 47
    invoke-direct {p3, p0}, Lcom/narvii/account/s0;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;)V

    .line 48
    const/4 v0, 0x4

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1, v0, p3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    const p1, 0x7f120402

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    new-instance p3, Lcom/narvii/account/t0;

    .line 61
    .line 62
    .line 63
    invoke-direct {p3, p0}, Lcom/narvii/account/t0;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1, p4, p3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    .line 70
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iget p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->step:I

    .line 3
    const/4 p2, 0x3

    .line 4
    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->proceed()V

    .line 9
    :cond_0
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result p2

    .line 7
    .line 8
    if-lez p2, :cond_0

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/model/Media;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatar:Lcom/narvii/widget/ThumbImageView;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->updateViews()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->updateNextView()V

    .line 31
    :cond_0
    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 9
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "avatar"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "editNickname"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 22
    return-void
.end method

.method public onStartPickMedia(I)V
    .locals 7

    .line 1
    .line 2
    const-string v0, "logging"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    .line 9
    .line 10
    const-string v1, "method"

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    const-string v3, "AddProfilePhotoStarting"

    .line 14
    const/4 v4, 0x2

    .line 15
    const/4 v5, 0x1

    .line 16
    .line 17
    if-eq p1, v5, :cond_2

    .line 18
    .line 19
    if-eq p1, v4, :cond_1

    .line 20
    const/4 v6, 0x3

    .line 21
    .line 22
    if-eq p1, v6, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    new-array p1, v4, [Ljava/lang/Object;

    .line 26
    .line 27
    aput-object v1, p1, v2

    .line 28
    .line 29
    const-string v1, "Search GIF"

    .line 30
    .line 31
    aput-object v1, p1, v5

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v3, p1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object v1, p1, v2

    .line 40
    .line 41
    const-string v1, "Photo Library"

    .line 42
    .line 43
    aput-object v1, p1, v5

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v3, p1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_2
    new-array p1, v4, [Ljava/lang/Object;

    .line 50
    .line 51
    aput-object v1, p1, v2

    .line 52
    .line 53
    const-string v1, "Camera"

    .line 54
    .line 55
    aput-object v1, p1, v5

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v3, p1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a09f2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nextView:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const p2, 0x7f0a0c87

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    check-cast p2, Landroid/widget/ScrollView;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->scrollView:Landroid/widget/ScrollView;

    .line 24
    .line 25
    const-string p2, "imageLoader"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    check-cast p2, Lcom/narvii/util/image/NVImageLoader;

    .line 32
    .line 33
    .line 34
    const v0, 0x7f0a09f9

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Landroid/widget/EditText;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    const v2, 0x7f06001e

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 53
    move-result v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 57
    .line 58
    const-string v0, "key_is_third_part"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 62
    move-result v0

    .line 63
    const/4 v1, 0x0

    .line 64
    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    const-string v0, "key_third_party_nickname"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    move-result v2

    .line 76
    .line 77
    if-nez v2, :cond_0

    .line 78
    .line 79
    iget-object v2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    iget-object v2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 96
    move-result v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 100
    goto :goto_0

    .line 101
    .line 102
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->email:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v0, :cond_1

    .line 105
    .line 106
    const/16 v2, 0x40

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 110
    move-result v0

    .line 111
    .line 112
    if-lez v0, :cond_1

    .line 113
    .line 114
    iget-object v2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    .line 115
    .line 116
    iget-object v3, p0, Lcom/narvii/account/SignUpAddProfileFragment;->email:Ljava/lang/String;

    .line 117
    .line 118
    const/16 v4, 0x32

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    .line 122
    move-result v0

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    .line 138
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 139
    move-result v2

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 143
    .line 144
    .line 145
    :cond_1
    :goto_0
    const v0, 0x7f0a0171

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 152
    .line 153
    iput-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatar:Lcom/narvii/widget/ThumbImageView;

    .line 154
    .line 155
    iget-object v2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 159
    .line 160
    const-string v0, "key_avatar_url"

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    .line 167
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 168
    move-result v2

    .line 169
    const/4 v3, 0x1

    .line 170
    .line 171
    if-nez v2, :cond_2

    .line 172
    .line 173
    iget-object v2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    .line 174
    .line 175
    if-nez v2, :cond_2

    .line 176
    .line 177
    iget-object v2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatar:Lcom/narvii/widget/ThumbImageView;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    move-result-object v4

    .line 182
    .line 183
    const/16 v5, 0xc8

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, v4, v5, v5, v3}, Lcom/narvii/util/image/NVImageLoader;->getLocal(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    .line 187
    move-result-object p2

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    move-result-object p2

    .line 195
    .line 196
    iput-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    .line 197
    .line 198
    :cond_2
    iget-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatar:Lcom/narvii/widget/ThumbImageView;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    .line 203
    .line 204
    const p2, 0x7f0a017d

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 208
    move-result-object p2

    .line 209
    .line 210
    iput-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarClick:Landroid/view/View;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    const p2, 0x7f0a018b

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 220
    move-result-object p2

    .line 221
    .line 222
    iput-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarPlaceholder:Landroid/view/View;

    .line 223
    .line 224
    .line 225
    const p2, 0x7f0a018c

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 229
    move-result-object p2

    .line 230
    .line 231
    iput-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarPlaceholder2:Landroid/view/View;

    .line 232
    .line 233
    .line 234
    const p2, 0x7f0a0079

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 238
    move-result-object p2

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    .line 243
    .line 244
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->updateViews()V

    .line 245
    .line 246
    .line 247
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->updateNextView()V

    .line 248
    .line 249
    iget-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    .line 250
    .line 251
    new-instance v0, Lcom/narvii/account/SignUpAddProfileFragment$1;

    .line 252
    .line 253
    .line 254
    invoke-direct {v0, p0}, Lcom/narvii/account/SignUpAddProfileFragment$1;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 258
    .line 259
    new-instance p2, Lcom/narvii/account/u0;

    .line 260
    .line 261
    .line 262
    invoke-direct {p2, p0, p1}, Lcom/narvii/account/u0;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;Landroid/view/View;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 266
    .line 267
    .line 268
    const p2, 0x7f0a00bc

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 272
    move-result-object p2

    .line 273
    .line 274
    check-cast p2, Landroid/widget/CheckBox;

    .line 275
    .line 276
    iput-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->agreeCheck:Landroid/widget/CheckBox;

    .line 277
    .line 278
    new-instance v0, Lcom/narvii/account/v0;

    .line 279
    .line 280
    .line 281
    invoke-direct {v0, p0}, Lcom/narvii/account/v0;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 285
    .line 286
    .line 287
    const p2, 0x7f0a00bd

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 291
    move-result-object p2

    .line 292
    .line 293
    iput-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->agreeError:Landroid/view/View;

    .line 294
    .line 295
    .line 296
    const p2, 0x7f0a00c1

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 300
    move-result-object p1

    .line 301
    .line 302
    check-cast p1, Landroid/widget/TextView;

    .line 303
    .line 304
    .line 305
    const p2, 0x7f1211df

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 309
    move-result-object p2

    .line 310
    .line 311
    .line 312
    const v0, 0x7f120f4e

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 316
    move-result-object v0

    .line 317
    const/4 v2, 0x2

    .line 318
    .line 319
    new-array v2, v2, [Ljava/lang/Object;

    .line 320
    .line 321
    aput-object p2, v2, v1

    .line 322
    .line 323
    aput-object v0, v2, v3

    .line 324
    .line 325
    .line 326
    const v1, 0x7f120027

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 330
    move-result-object v1

    .line 331
    .line 332
    new-instance v2, Landroid/text/SpannableString;

    .line 333
    .line 334
    .line 335
    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 336
    .line 337
    new-instance v4, Lcom/narvii/account/SignUpAddProfileFragment$2;

    .line 338
    .line 339
    .line 340
    invoke-direct {v4, p0}, Lcom/narvii/account/SignUpAddProfileFragment$2;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;)V

    .line 341
    .line 342
    new-instance v5, Lcom/narvii/account/SignUpAddProfileFragment$3;

    .line 343
    .line 344
    .line 345
    invoke-direct {v5, p0}, Lcom/narvii/account/SignUpAddProfileFragment$3;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 349
    move-result v6

    .line 350
    .line 351
    .line 352
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 353
    move-result v7

    .line 354
    add-int/2addr v7, v6

    .line 355
    .line 356
    const/16 v8, 0x21

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2, v4, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 360
    .line 361
    new-instance v4, Landroid/text/style/StyleSpan;

    .line 362
    .line 363
    .line 364
    invoke-direct {v4, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 368
    move-result p2

    .line 369
    add-int/2addr p2, v6

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2, v4, v6, p2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 376
    move-result p2

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 380
    move-result v1

    .line 381
    add-int/2addr v1, p2

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2, v5, p2, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 385
    .line 386
    new-instance v1, Landroid/text/style/StyleSpan;

    .line 387
    .line 388
    .line 389
    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 393
    move-result v0

    .line 394
    add-int/2addr v0, p2

    .line 395
    .line 396
    .line 397
    invoke-virtual {v2, v1, p2, v0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    .line 402
    .line 403
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 404
    move-result-object p2

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 408
    .line 409
    .line 410
    const p2, -0x33000001    # -1.3421772E8f

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 414
    .line 415
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nextView:Landroid/view/View;

    .line 416
    .line 417
    new-instance p2, Lcom/narvii/account/w0;

    .line 418
    .line 419
    .line 420
    invoke-direct {p2, p0}, Lcom/narvii/account/w0;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    return-void
.end method

.method public signupClicked()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarPlaceholder:Landroid/view/View;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    const v3, 0x7f010056

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    const v2, 0x7f120049

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 40
    const/4 v0, 0x5

    .line 41
    .line 42
    const-string v1, "No Photo"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/narvii/account/AccountBaseFragment;->setLastError(ILjava/lang/String;)V

    .line 46
    return-void

    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nicknameText:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    move-result v0

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    return-void

    .line 66
    .line 67
    :cond_1
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->agreeCheck:Landroid/widget/CheckBox;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 71
    move-result v0

    .line 72
    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->agreeCheck:Landroid/widget/CheckBox;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    check-cast v0, Landroid/view/View;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 85
    move-result-object v2

    .line 86
    .line 87
    .line 88
    const v3, 0x7f010057

    .line 89
    .line 90
    .line 91
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 96
    .line 97
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->agreeError:Landroid/view/View;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    new-instance v0, Lcom/narvii/account/p0;

    .line 103
    .line 104
    .line 105
    invoke-direct {v0, p0}, Lcom/narvii/account/p0;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;)V

    .line 106
    .line 107
    const-wide/16 v1, 0x32

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 111
    return-void

    .line 112
    :cond_2
    const/4 v0, 0x2

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountBaseFragment;->updateIndicatorViewStatus(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    .line 122
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 123
    const/4 v0, 0x1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountBaseFragment;->setCreatingAccount(Z)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    .line 133
    const v2, 0x7f0a0079

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    const/16 v2, 0x8

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    iput v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->step:I

    .line 145
    .line 146
    .line 147
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->proceed()V

    .line 148
    return-void
.end method
