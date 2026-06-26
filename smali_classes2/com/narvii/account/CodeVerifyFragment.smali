.class public Lcom/narvii/account/CodeVerifyFragment;
.super Lcom/narvii/account/CodeVerifyBaseFragment;
.source "CodeVerifyFragment.java"


# static fields
.field public static final KEY_EMAIL:Ljava/lang/String; = "email"

.field public static final KEY_PHONE:Ljava/lang/String; = "phone"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_EMAIL:I = 0x2

.field public static final TYPE_PHONE:I = 0x1


# instance fields
.field private btnSkip:Landroid/view/View;

.field private isVerified:Z

.field private lastVerifyCode:Ljava/lang/String;

.field private nextView:Landroid/widget/Button;

.field private request:Lcom/narvii/util/http/ApiRequest;

.field private final showSkip:Ljava/lang/Runnable;

.field private tvEmailInfo:Landroid/widget/TextView;

.field private validationContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/narvii/account/CodeVerifyFragment;->lastVerifyCode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/narvii/account/CodeVerifyFragment;->isVerified:Z

    .line 146
    new-instance v0, Lcom/narvii/account/CodeVerifyFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/account/CodeVerifyFragment$1;-><init>(Lcom/narvii/account/CodeVerifyFragment;)V

    iput-object v0, p0, Lcom/narvii/account/CodeVerifyFragment;->showSkip:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/account/CodeVerifyFragment;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/account/CodeVerifyFragment;->btnSkip:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/account/CodeVerifyFragment;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->isPhone()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/account/CodeVerifyFragment;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->getPhone()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/account/CodeVerifyFragment;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->getEmail()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$402(Lcom/narvii/account/CodeVerifyFragment;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/narvii/account/CodeVerifyFragment;->request:Lcom/narvii/util/http/ApiRequest;

    return-object p1
.end method

.method static synthetic access$502(Lcom/narvii/account/CodeVerifyFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/narvii/account/CodeVerifyFragment;->lastVerifyCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/narvii/account/CodeVerifyFragment;Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/narvii/account/CodeVerifyFragment;->validationContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object p1
.end method

.method static synthetic access$700(Lcom/narvii/account/CodeVerifyFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->goNext()V

    return-void
.end method

.method private getEmail()Ljava/lang/String;
    .locals 1

    const-string v0, "email"

    .line 83
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPhone()Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    .line 79
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private goNext()V
    .locals 4

    .line 340
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 343
    :cond_0
    new-instance v0, Lcom/narvii/account/SignUpSetPasswordFragment;

    invoke-direct {v0}, Lcom/narvii/account/SignUpSetPasswordFragment;-><init>()V

    .line 344
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 345
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->isEmail()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->getEmail()Ljava/lang/String;

    move-result-object v2

    const-string v3, "email"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "key_is_third_part"

    .line 348
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "key_sign_up_method"

    .line 349
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_third_part_secret"

    .line 350
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_third_party_nickname"

    .line 351
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_avatar_url"

    .line 352
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v2, p0, Lcom/narvii/account/CodeVerifyFragment;->validationContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string/jumbo v3, "validationContext"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 355
    invoke-virtual {p0, v0}, Lcom/narvii/account/AccountBaseFragment;->goToSetPasswordPage(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private isEmail()Z
    .locals 2

    const/4 v0, 0x2

    const-string/jumbo v1, "type"

    .line 75
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPhone()Z
    .locals 2

    const/4 v0, 0x1

    const-string/jumbo v1, "type"

    .line 71
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private skip()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->codeEditView:Lcom/narvii/widget/CodeEditView;

    invoke-virtual {v0}, Lcom/narvii/widget/CodeEditView;->clearCode()V

    .line 360
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->goNext()V

    .line 361
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/LoginActivity;

    const/4 v1, 0x1

    .line 362
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/account/LoginActivity;->statEmailVerificationSkipped:Ljava/lang/Boolean;

    return-void
.end method

.method private verifyEmailCode(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x2

    .line 272
    invoke-virtual {p0, v0}, Lcom/narvii/account/CodeVerifyBaseFragment;->updateIndicatorStatus(I)V

    const-string v0, "account"

    .line 273
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const-string v1, "api"

    .line 274
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 275
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 276
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->isPhone()Z

    move-result v3

    const-string v4, "identity"

    const/4 v5, 0x1

    const-string/jumbo v6, "type"

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    .line 277
    invoke-virtual {v2, v6, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 278
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v2, v6, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 281
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 284
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 285
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v3

    const-string v4, "code"

    .line 286
    invoke-virtual {v3, v4, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v4, "data"

    .line 287
    invoke-virtual {v2, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 290
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    const-string v4, "/auth/check-security-validation"

    .line 291
    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    const-string/jumbo v4, "validationContext"

    .line 292
    invoke-virtual {v3, v4, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 293
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "deviceID"

    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/account/CodeVerifyFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 295
    invoke-virtual {p0, v5}, Lcom/narvii/account/AccountBaseFragment;->setIsRequesting(Z)V

    .line 296
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 297
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyFragment;->request:Lcom/narvii/util/http/ApiRequest;

    new-instance v2, Lcom/narvii/account/CodeVerifyFragment$3;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/account/CodeVerifyFragment$3;-><init>(Lcom/narvii/account/CodeVerifyFragment;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 167
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SignUpPhoneVerificationCode"

    return-object v0

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->isEmail()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SignUpEmailVerificationCode"

    return-object v0

    .line 172
    :cond_1
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->getPageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVerifyTime()J
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->verifyCodeHelper:Lcom/narvii/account/VerifyCodeSharedPrefsHelper;

    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;->getPhoneVerifyTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->verifyCodeHelper:Lcom/narvii/account/VerifyCodeSharedPrefsHelper;

    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;->getEmailVerifyTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic lambda$onViewCreated$0$CodeVerifyFragment(Landroid/view/View;)V
    .locals 2

    .line 128
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "Next"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isAuto"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 129
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment;->lastVerifyCode:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/narvii/account/CodeVerifyFragment;->verifyEmailCode(Ljava/lang/String;)V

    return-void
.end method

.method public layoutId()I
    .locals 1

    const v0, 0x7f0b02e6

    return v0
.end method

.method public onCodeFinished(Ljava/lang/String;)V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyFragment;->nextView:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    iget-boolean v0, p0, Lcom/narvii/account/CodeVerifyFragment;->isVerified:Z

    if-nez v0, :cond_0

    .line 184
    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v2, "Next"

    invoke-virtual {v0, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isAuto"

    invoke-virtual {v0, v3, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 185
    invoke-direct {p0, p1}, Lcom/narvii/account/CodeVerifyFragment;->verifyEmailCode(Ljava/lang/String;)V

    .line 186
    iput-boolean v1, p0, Lcom/narvii/account/CodeVerifyFragment;->isVerified:Z

    :cond_0
    return-void
.end method

.method public onCountDownTimeChange(I)V
    .locals 6

    .line 245
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060020

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0725

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 248
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-ne p1, v2, :cond_0

    const p1, 0x7f0f0726

    .line 251
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "1"

    .line 253
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    .line 255
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 256
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    const/16 v2, 0x21

    invoke-virtual {v3, v1, p1, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 257
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCountDownTimeFinished()V
    .locals 3

    .line 266
    invoke-super {p0}, Lcom/narvii/account/CodeVerifyBaseFragment;->onCountDownTimeFinished()V

    .line 267
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    const v1, 0x7f0f0724

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0601db

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lcom/narvii/account/CodeVerifyBaseFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/LoginActivity;

    const/4 v0, 0x0

    .line 60
    iput v0, p1, Lcom/narvii/account/LoginActivity;->statMaxLoginStep:I

    const/16 v1, 0xa

    .line 61
    iput v1, p1, Lcom/narvii/account/LoginActivity;->statMaxSignupSetp:I

    .line 62
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/account/LoginActivity;->statEmailVerificationSkipped:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "validationContext"

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/narvii/account/CodeVerifyFragment;->validationContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyFragment;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    const-string v0, "api"

    .line 136
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 137
    iget-object v1, p0, Lcom/narvii/account/CodeVerifyFragment;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/narvii/account/CodeVerifyFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->isEmail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/account/CodeVerifyFragment;->showSkip:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    :cond_1
    invoke-super {p0}, Lcom/narvii/account/CodeVerifyBaseFragment;->onDestroy()V

    return-void
.end method

.method protected onItemClicked(Landroid/view/View;)V
    .locals 2

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090a4c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "Skip"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 158
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->skip()V

    .line 161
    :goto_0
    invoke-super {p0, p1}, Lcom/narvii/account/CodeVerifyBaseFragment;->onItemClicked(Landroid/view/View;)V

    return-void
.end method

.method public onResendCodeClicked()V
    .locals 4

    .line 201
    invoke-super {p0}, Lcom/narvii/account/CodeVerifyBaseFragment;->onResendCodeClicked()V

    .line 202
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 203
    :goto_0
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->isPhone()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->getPhone()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 204
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 205
    new-instance v2, Lcom/narvii/account/CodeVerifyFragment$2;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/account/CodeVerifyFragment$2;-><init>(Lcom/narvii/account/CodeVerifyFragment;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/account/AccountBaseFragment;->requestSecurityCode(ILjava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 96
    invoke-super {p0, p1}, Lcom/narvii/account/CodeVerifyBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyFragment;->validationContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "validationContext"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 104
    invoke-super {p0, p1, p2}, Lcom/narvii/account/CodeVerifyBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090a4c

    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/account/CodeVerifyFragment;->btnSkip:Landroid/view/View;

    .line 107
    iget-object p2, p0, Lcom/narvii/account/CodeVerifyFragment;->btnSkip:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p2, p0, Lcom/narvii/account/CodeVerifyFragment;->btnSkip:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 109
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->isEmail()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 110
    iget-object p2, p0, Lcom/narvii/account/CodeVerifyFragment;->showSkip:Ljava/lang/Runnable;

    const-wide/16 v0, 0xe10

    invoke-static {p2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    const p2, 0x7f0903d6

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/account/CodeVerifyFragment;->tvEmailInfo:Landroid/widget/TextView;

    .line 114
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->isPhone()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->getPhone()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->getEmail()Ljava/lang/String;

    move-result-object p2

    .line 115
    :goto_0
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyFragment;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0f027d

    goto :goto_1

    :cond_2
    const v0, 0x7f0f027c

    :goto_1
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_3

    .line 118
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x21

    invoke-virtual {v2, v3, p2, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 120
    iget-object p2, p0, Lcom/narvii/account/CodeVerifyFragment;->tvEmailInfo:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 122
    :cond_3
    iget-object p2, p0, Lcom/narvii/account/CodeVerifyFragment;->tvEmailInfo:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const p2, 0x7f09075c

    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/narvii/account/CodeVerifyFragment;->nextView:Landroid/widget/Button;

    .line 126
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment;->nextView:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 127
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment;->nextView:Landroid/widget/Button;

    new-instance p2, Lcom/narvii/account/-$$Lambda$CodeVerifyFragment$Gl3xHGxV3Pp2suTKp5AXx8gZXAA;

    invoke-direct {p2, p0}, Lcom/narvii/account/-$$Lambda$CodeVerifyFragment$Gl3xHGxV3Pp2suTKp5AXx8gZXAA;-><init>(Lcom/narvii/account/CodeVerifyFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateCodeErrorMessage(Z)V
    .locals 1

    .line 192
    invoke-super {p0, p1}, Lcom/narvii/account/CodeVerifyBaseFragment;->updateCodeErrorMessage(Z)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment;->nextView:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 196
    :cond_0
    iput-boolean v0, p0, Lcom/narvii/account/CodeVerifyFragment;->isVerified:Z

    return-void
.end method
