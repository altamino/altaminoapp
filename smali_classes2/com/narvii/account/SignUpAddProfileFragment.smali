.class public Lcom/narvii/account/SignUpAddProfileFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "SignUpAddProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnStartPickListener;
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/photos/PhotoUploadListener;


# instance fields
.field agreeCheck:Landroid/widget/CheckBox;

.field agreeError:Landroid/view/View;

.field avatar:Lcom/narvii/widget/ThumbImageView;

.field avatarClick:Landroid/view/View;

.field avatarPlaceholder:Landroid/view/View;

.field avatarPlaceholder2:Landroid/view/View;

.field avatarUrl:Ljava/lang/String;

.field email:Ljava/lang/String;

.field newAccount:Z

.field nextView:Landroid/view/View;

.field nickname:Landroid/widget/EditText;

.field nicknameText:Ljava/lang/String;

.field pass:Ljava/lang/String;

.field photo:Lcom/narvii/photos/PhotoManager;

.field photoDir:Ljava/io/File;

.field picker:Lcom/narvii/media/MediaPickerFragment;

.field request:Lcom/narvii/util/http/ApiRequest;

.field scrollView:Landroid/widget/ScrollView;

.field private final signupListener:Lcom/narvii/account/AccountResponseListener;

.field step:I

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

    .line 59
    invoke-direct {p0}, Lcom/narvii/account/AccountBaseFragment;-><init>()V

    .line 536
    new-instance v0, Lcom/narvii/account/SignUpAddProfileFragment$10;

    invoke-direct {v0, p0, p0}, Lcom/narvii/account/SignUpAddProfileFragment$10;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->signupListener:Lcom/narvii/account/AccountResponseListener;

    .line 564
    new-instance v0, Lcom/narvii/account/SignUpAddProfileFragment$11;

    const-class v1, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/account/SignUpAddProfileFragment$11;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->updateListener:Lcom/narvii/util/http/ApiResponseListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/account/SignUpAddProfileFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->updateNextView()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/account/SignUpAddProfileFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->proceed()V

    return-void
.end method

.method private isThirdPartLogin()Z
    .locals 1

    const-string v0, "key_is_third_part"

    .line 601
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private proceed()V
    .locals 9

    .line 393
    iget v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->step:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->step:I

    .line 394
    iget v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->step:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    const-string v3, "api"

    const-string v4, "account"

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    const/4 v6, 0x3

    if-eq v0, v6, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 463
    :cond_0
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 464
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 465
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    .line 466
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/account/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 467
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->photo:Lcom/narvii/photos/PhotoManager;

    iget-object v4, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/narvii/photos/PhotoManager;->getUploadedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "icon"

    invoke-virtual {v3, v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 468
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 469
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 470
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v3, p0, Lcom/narvii/account/SignUpAddProfileFragment;->updateListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto/16 :goto_4

    .line 451
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 452
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->photo:Lcom/narvii/photos/PhotoManager;

    iget-object v3, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/narvii/photos/PhotoManager;->getUploadedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 454
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->photo:Lcom/narvii/photos/PhotoManager;

    iput v5, v0, Lcom/narvii/photos/PhotoManager;->retryCount:I

    .line 455
    iget-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V

    goto/16 :goto_4

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nicknameText:Ljava/lang/String;

    .line 403
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/account/AccountService;

    .line 404
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 405
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v5

    .line 406
    invoke-virtual {v5}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 408
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->isThirdPartLogin()Z

    move-result v6

    const-string v7, "0 "

    const-string v8, "secret"

    if-eqz v6, :cond_3

    const-string v6, "/auth/login"

    .line 409
    invoke-virtual {v5, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v6, "key_third_part_secret"

    .line 410
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 411
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/narvii/account/SignUpAddProfileFragment;->pass:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "secret2"

    invoke-virtual {v5, v7, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    :cond_3
    const-string v6, "/auth/register"

    .line 413
    invoke-virtual {v5, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 414
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/narvii/account/SignUpAddProfileFragment;->pass:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 416
    :goto_0
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "deviceID"

    invoke-virtual {v5, v6, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 417
    iget-object v4, p0, Lcom/narvii/account/SignUpAddProfileFragment;->email:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 418
    iget-object v4, p0, Lcom/narvii/account/SignUpAddProfileFragment;->email:Ljava/lang/String;

    const-string v6, "email"

    invoke-virtual {v5, v6, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 420
    :cond_4
    sget v4, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "clientType"

    invoke-virtual {v5, v6, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v4, "nickname"

    .line 421
    invoke-virtual {v5, v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 422
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->getLocation()Lcom/narvii/location/GPSCoordinate;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v4, 0x0

    goto :goto_1

    .line 423
    :cond_5
    invoke-virtual {v0}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    move-result v4

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "latitude"

    invoke-virtual {v5, v6, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_2

    .line 424
    :cond_6
    invoke-virtual {v0}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    move-result v0

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "longitude"

    invoke-virtual {v5, v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 425
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v4, "address"

    .line 426
    invoke-virtual {v5, v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v0, "navigator"

    .line 427
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/BaseNavigator;

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/narvii/app/BaseNavigator;->getMyScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://relogin"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "clientCallbackURL"

    invoke-virtual {v5, v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string/jumbo v0, "validationContext"

    .line 429
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 432
    :try_start_0
    sget-object v4, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v4, v6, v7}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    .line 434
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v6

    .line 435
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v6

    .line 437
    :goto_3
    invoke-virtual {v5, v0, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 440
    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/account/LoginActivity;

    if-eqz v0, :cond_8

    .line 441
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/LoginActivity;

    invoke-virtual {v0, v5}, Lcom/narvii/account/LoginActivity;->procReq(Lcom/narvii/util/http/ApiRequest$Builder;)V

    .line 443
    :cond_8
    invoke-virtual {v5, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->signature(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 444
    invoke-virtual {v5}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 445
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 446
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->signupListener:Lcom/narvii/account/AccountResponseListener;

    invoke-virtual {v3, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :goto_4
    const/4 v1, 0x0

    :cond_9
    if-eqz v1, :cond_a

    .line 475
    new-instance v0, Lcom/narvii/account/SignUpAddProfileFragment$7;

    invoke-direct {v0, p0}, Lcom/narvii/account/SignUpAddProfileFragment$7;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_a
    return-void
.end method

.method private updateNextView()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 287
    :goto_0
    iget-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nextView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private updateViews()V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatar:Lcom/narvii/widget/ThumbImageView;

    iget-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarClick:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f08005b

    goto :goto_1

    :cond_1
    const v1, 0x7f08005a

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 293
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarPlaceholder:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarPlaceholder2:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .line 486
    iget v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->step:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    .line 489
    iput v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->step:I

    return v1
.end method

.method public finishWithResult(ZILjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 592
    iget-boolean p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->newAccount:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;)V

    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "SignUpCreateProfile"

    return-object v0
.end method

.method public getProgressText()Ljava/lang/String;
    .locals 2

    .line 380
    iget v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->step:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 388
    invoke-super {p0}, Lcom/narvii/account/AccountBaseFragment;->getProgressText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f005d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0032

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$onViewCreated$0$SignUpAddProfileFragment(Landroid/view/View;)V
    .locals 1

    .line 239
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 240
    invoke-virtual {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->signupClicked()V

    return-void
.end method

.method protected logSignUpMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 246
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-nez p1, :cond_2

    .line 248
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "autoSignup"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 249
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->signupClicked()V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "logging"

    .line 250
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AddProfilePhotoStarting"

    .line 251
    invoke-interface {p1, v1, v0}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090048

    if-eq p1, v0, :cond_1

    const v0, 0x7f0900e4

    if-eq p1, v0, :cond_0

    const v0, 0x7f0900ee

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Photo"

    .line 302
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 303
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->photoDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 304
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->photoDir:Ljava/io/File;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 89
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "photo"

    .line 90
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/photos/PhotoManager;

    iput-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->photo:Lcom/narvii/photos/PhotoManager;

    .line 91
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "signup"

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->photoDir:Ljava/io/File;

    const-string v1, "mediaPicker"

    if-nez p1, :cond_0

    .line 94
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    .line 95
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "folder"

    .line 96
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 101
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/LoginActivity;

    const/4 v0, 0x0

    .line 102
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statMaxLoginStep:I

    const/16 v0, 0x1e

    .line 103
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statMaxSignupSetp:I

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/MediaPickerFragment;

    iput-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    const-string v0, "avatar"

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    .line 110
    :goto_0
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 111
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    iput-object p0, p1, Lcom/narvii/media/MediaPickerFragment;->startPickListener:Lcom/narvii/media/MediaPickerFragment$OnStartPickListener;

    const-string p1, "email"

    .line 112
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->email:Ljava/lang/String;

    const-string p1, "pass"

    .line 113
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->pass:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0028

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 266
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->photoDir:Ljava/io/File;

    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 269
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 270
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    :cond_1
    return-void
.end method

.method public onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 503
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 504
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const p3, 0x7f0f002b

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 505
    new-instance p2, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 506
    invoke-virtual {p2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 507
    invoke-virtual {p2, p4}, Landroid/app/Dialog;->setCancelable(Z)V

    const p1, 0x7f0f0ef5

    .line 508
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/narvii/account/SignUpAddProfileFragment$8;

    invoke-direct {p3, p0}, Lcom/narvii/account/SignUpAddProfileFragment$8;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;)V

    const/4 v0, 0x4

    invoke-virtual {p2, p1, v0, p3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p1, 0x7f0f03aa

    .line 521
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/narvii/account/SignUpAddProfileFragment$9;

    invoke-direct {p3, p0}, Lcom/narvii/account/SignUpAddProfileFragment$9;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;)V

    invoke-virtual {p2, p1, p4, p3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 529
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 496
    iget p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->step:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->proceed()V

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

    if-eqz p1, :cond_0

    .line 334
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 335
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    .line 336
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    .line 337
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatar:Lcom/narvii/widget/ThumbImageView;

    iget-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 338
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->updateViews()V

    .line 339
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->updateNextView()V

    :cond_0
    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 260
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 261
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 277
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 278
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    const-string v1, "avatar"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "editNickname"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onStartPickMedia(I)V
    .locals 7

    const-string v0, "logging"

    .line 317
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    const-string v1, "method"

    const/4 v2, 0x0

    const-string v3, "AddProfilePhotoStarting"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_1

    const/4 v6, 0x3

    if-eq p1, v6, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v1, p1, v2

    const-string v1, "Search GIF"

    aput-object v1, p1, v5

    .line 327
    invoke-interface {v0, v3, p1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v1, p1, v2

    const-string v1, "Photo Library"

    aput-object v1, p1, v5

    .line 324
    invoke-interface {v0, v3, p1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v1, p1, v2

    const-string v1, "Camera"

    aput-object v1, p1, v5

    .line 321
    invoke-interface {v0, v3, p1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    .line 124
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09075c

    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nextView:Landroid/view/View;

    const p2, 0x7f0909be

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->scrollView:Landroid/widget/ScrollView;

    const-string p2, "imageLoader"

    .line 127
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/image/NVImageLoader;

    const v0, 0x7f090764

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    .line 129
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    const-string v0, "key_is_third_part"

    .line 130
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "key_third_party_nickname"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->email:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v2, 0x40

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 136
    iget-object v2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/narvii/account/SignUpAddProfileFragment;->email:Ljava/lang/String;

    const/16 v4, 0x32

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    :goto_0
    const v0, 0x7f0900e4

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    iput-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatar:Lcom/narvii/widget/ThumbImageView;

    .line 141
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatar:Lcom/narvii/widget/ThumbImageView;

    iget-object v2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const-string v0, "key_avatar_url"

    .line 142
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 143
    iget-object v2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatar:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc8

    invoke-virtual {p2, v4, v5, v5, v3}, Lcom/narvii/util/image/NVImageLoader;->getLocal(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    .line 146
    :cond_2
    iget-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatar:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900ee

    .line 147
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarClick:Landroid/view/View;

    .line 148
    iget-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarClick:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900fc

    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarPlaceholder:Landroid/view/View;

    const p2, 0x7f0900fd

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarPlaceholder2:Landroid/view/View;

    const p2, 0x7f090048

    .line 152
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->updateViews()V

    .line 156
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->updateNextView()V

    .line 157
    iget-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    new-instance v0, Lcom/narvii/account/SignUpAddProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/account/SignUpAddProfileFragment$1;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    new-instance p2, Lcom/narvii/account/SignUpAddProfileFragment$2;

    invoke-direct {p2, p0, p1}, Lcom/narvii/account/SignUpAddProfileFragment$2;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const p2, 0x7f09007f

    .line 197
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->agreeCheck:Landroid/widget/CheckBox;

    .line 198
    iget-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->agreeCheck:Landroid/widget/CheckBox;

    new-instance v0, Lcom/narvii/account/SignUpAddProfileFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/account/SignUpAddProfileFragment$3;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p2, 0x7f090080

    .line 206
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment;->agreeError:Landroid/view/View;

    const p2, 0x7f090084

    .line 208
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0f10d3

    .line 209
    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0f0e23

    .line 210
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0f0028

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object v0, v4, v3

    .line 211
    invoke-virtual {p0, v2, v4}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 212
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 213
    new-instance v4, Lcom/narvii/account/SignUpAddProfileFragment$4;

    invoke-direct {v4, p0}, Lcom/narvii/account/SignUpAddProfileFragment$4;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;)V

    .line 220
    new-instance v5, Lcom/narvii/account/SignUpAddProfileFragment$5;

    invoke-direct {v5, p0}, Lcom/narvii/account/SignUpAddProfileFragment$5;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;)V

    .line 227
    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 228
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    const/16 v8, 0x21

    invoke-virtual {v2, v4, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 229
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v6

    invoke-virtual {v2, v4, v6, p2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 232
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v2, v5, p2, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 233
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {v2, v1, p2, v0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 234
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const p2, -0x33000001    # -1.3421772E8f

    .line 236
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 238
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nextView:Landroid/view/View;

    new-instance p2, Lcom/narvii/account/-$$Lambda$SignUpAddProfileFragment$9pX2sKLmjOifv2W2lMyWy9_MMcY;

    invoke-direct {p2, p0}, Lcom/narvii/account/-$$Lambda$SignUpAddProfileFragment$9pX2sKLmjOifv2W2lMyWy9_MMcY;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public signupClicked()V
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->avatarPlaceholder:Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f010038

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 346
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f0048

    invoke-static {v0, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    const/4 v0, 0x5

    const-string v1, "No Photo"

    .line 348
    invoke-virtual {p0, v0, v1}, Lcom/narvii/account/AccountBaseFragment;->setLastError(ILjava/lang/String;)V

    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nickname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nicknameText:Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->nicknameText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->agreeCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->agreeCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f010039

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 360
    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment;->agreeError:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    new-instance v0, Lcom/narvii/account/SignUpAddProfileFragment$6;

    invoke-direct {v0, p0}, Lcom/narvii/account/SignUpAddProfileFragment$6;-><init>(Lcom/narvii/account/SignUpAddProfileFragment;)V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void

    :cond_2
    const/4 v0, 0x2

    .line 370
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountBaseFragment;->updateIndicatorViewStatus(I)V

    .line 371
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 372
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountBaseFragment;->setCreatingAccount(Z)V

    .line 373
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090048

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iput v1, p0, Lcom/narvii/account/SignUpAddProfileFragment;->step:I

    .line 375
    invoke-direct {p0}, Lcom/narvii/account/SignUpAddProfileFragment;->proceed()V

    return-void
.end method
