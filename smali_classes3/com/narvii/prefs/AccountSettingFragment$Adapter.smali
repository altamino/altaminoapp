.class Lcom/narvii/prefs/AccountSettingFragment$Adapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "AccountSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/AccountSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field AMINOID:Lcom/narvii/util/Tag;

.field DELETE:Lcom/narvii/util/Tag;

.field LOGOUT:Lcom/narvii/util/Tag;

.field PROFILE:Lcom/narvii/util/Tag;

.field final synthetic this$0:Lcom/narvii/prefs/AccountSettingFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/prefs/AccountSettingFragment;)V
    .locals 1

    .line 253
    iput-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 254
    invoke-direct {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 248
    new-instance p1, Lcom/narvii/util/Tag;

    const-string v0, "aminoId"

    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->AMINOID:Lcom/narvii/util/Tag;

    .line 249
    new-instance p1, Lcom/narvii/util/Tag;

    const-string v0, "logout"

    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->LOGOUT:Lcom/narvii/util/Tag;

    .line 250
    new-instance p1, Lcom/narvii/util/Tag;

    const-string v0, "delete"

    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->DELETE:Lcom/narvii/util/Tag;

    .line 251
    new-instance p1, Lcom/narvii/util/Tag;

    const-string v0, "profile"

    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->PROFILE:Lcom/narvii/util/Tag;

    return-void
.end method

.method private sendAccountInfoRequest()V
    .locals 3

    const-string v0, "account"

    .line 271
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const-string v1, "api"

    .line 272
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 273
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v2, "/account"

    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 276
    new-instance v2, Lcom/narvii/prefs/AccountSettingFragment$Adapter$1;

    invoke-direct {v2, p0, p0}, Lcom/narvii/prefs/AccountSettingFragment$Adapter$1;-><init>(Lcom/narvii/prefs/AccountSettingFragment$Adapter;Lcom/narvii/app/NVContext;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "account"

    .line 293
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 294
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 303
    iget-object v1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    iget-object v1, v1, Lcom/narvii/prefs/AccountSettingFragment;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    new-instance v1, Lcom/narvii/list/prefs/PrefsMargin;

    invoke-direct {v1}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->PROFILE:Lcom/narvii/util/Tag;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v1, Lcom/narvii/list/prefs/PrefsMargin;

    invoke-direct {v1}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 308
    :cond_0
    new-instance v1, Lcom/narvii/list/prefs/PrefsMargin;

    invoke-direct {v1}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0f002a

    .line 310
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getAminoId()Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->isAminoIdEditable()Z

    move-result v3

    .line 312
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    new-instance v4, Lcom/narvii/list/prefs/PrefsRedAlert;

    invoke-direct {v4, v1}, Lcom/narvii/list/prefs/PrefsRedAlert;-><init>(I)V

    const/4 v1, 0x0

    .line 314
    iput-boolean v1, v4, Lcom/narvii/list/prefs/PrefsItem;->chevronRight:Z

    goto :goto_0

    .line 316
    :cond_1
    new-instance v4, Lcom/narvii/list/prefs/PrefsText;

    invoke-direct {v4, v1, v2}, Lcom/narvii/list/prefs/PrefsText;-><init>(ILjava/lang/String;)V

    .line 317
    iput-boolean v3, v4, Lcom/narvii/list/prefs/PrefsItem;->chevronRight:Z

    :goto_0
    if-eqz v3, :cond_2

    .line 320
    const-class v1, Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 321
    iput-object v1, v4, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    goto :goto_1

    .line 323
    :cond_2
    new-instance v1, Lcom/narvii/prefs/-$$Lambda$AccountSettingFragment$Adapter$kpqEocbyO5EqgtiDaWShHI58z_0;

    invoke-direct {v1, p0, v2}, Lcom/narvii/prefs/-$$Lambda$AccountSettingFragment$Adapter$kpqEocbyO5EqgtiDaWShHI58z_0;-><init>(Lcom/narvii/prefs/AccountSettingFragment$Adapter;Ljava/lang/String;)V

    iput-object v1, v4, Lcom/narvii/list/prefs/PrefsEntry;->callback:Lcom/narvii/util/Callback;

    .line 325
    :goto_1
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    const v1, 0x7f0f0051

    .line 329
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 331
    new-instance v2, Lcom/narvii/list/prefs/PrefsRedAlert;

    invoke-direct {v2, v1}, Lcom/narvii/list/prefs/PrefsRedAlert;-><init>(I)V

    goto :goto_3

    :cond_3
    const-string v3, " "

    .line 333
    invoke-static {v2, v3}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 334
    new-instance v3, Lcom/narvii/list/prefs/PrefsText;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v1, v2}, Lcom/narvii/list/prefs/PrefsText;-><init>(ILjava/lang/String;)V

    .line 335
    iput-boolean v4, v3, Lcom/narvii/list/prefs/PrefsItem;->chevronRight:Z

    move-object v2, v3

    .line 337
    :goto_3
    const-class v1, Lcom/narvii/account/settings/UpdatePhoneNumberFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 338
    iput-object v1, v2, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 339
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0f0034

    .line 342
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 344
    new-instance v2, Lcom/narvii/list/prefs/PrefsRedAlert;

    invoke-direct {v2, v1}, Lcom/narvii/list/prefs/PrefsRedAlert;-><init>(I)V

    goto :goto_4

    .line 345
    :cond_4
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasEmailActivation()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 346
    new-instance v3, Lcom/narvii/list/prefs/PrefsText;

    invoke-direct {v3, v1, v2}, Lcom/narvii/list/prefs/PrefsText;-><init>(ILjava/lang/String;)V

    .line 347
    iput-boolean v4, v3, Lcom/narvii/list/prefs/PrefsItem;->chevronRight:Z

    move-object v2, v3

    goto :goto_4

    .line 349
    :cond_5
    new-instance v2, Lcom/narvii/list/prefs/PrefsWarning;

    invoke-direct {v2, v1}, Lcom/narvii/list/prefs/PrefsWarning;-><init>(I)V

    .line 351
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getEmail()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/narvii/list/prefs/PrefsWarning;->subTitle:Ljava/lang/String;

    .line 352
    iget-object v1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    const v3, 0x7f0f0036

    invoke-virtual {v1, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/narvii/list/prefs/PrefsWarning;->warningInfo:Ljava/lang/String;

    .line 355
    :goto_4
    const-class v1, Lcom/narvii/account/settings/UpdateEmailFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 356
    iput-object v1, v2, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 357
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    new-instance v1, Lcom/narvii/list/prefs/PrefsEntry;

    const v2, 0x7f0f002d

    invoke-direct {v1, v2}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 361
    const-class v2, Lcom/narvii/account/settings/MasterAccountWebViewFragment;

    invoke-static {v2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 362
    new-instance v3, Lcom/narvii/util/AccountWebHelper;

    invoke-direct {v3, p0}, Lcom/narvii/util/AccountWebHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v3}, Lcom/narvii/util/AccountWebHelper;->getChangePasswordUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    iput-object v2, v1, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 364
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    new-instance v1, Lcom/narvii/list/prefs/PrefsMargin;

    invoke-direct {v1}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v1, Lcom/narvii/list/prefs/PrefsToggle;

    iget-object v2, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    const v3, 0x7f0f003a

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    .line 369
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->isFacebookConnected()Z

    move-result v2

    iput-boolean v2, v1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 370
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v1, Lcom/narvii/list/prefs/PrefsToggle;

    iget-object v2, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    const v3, 0x7f0f003d

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    .line 373
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->isGoogleConnected()Z

    move-result v0

    iput-boolean v0, v1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 374
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    new-instance v0, Lcom/narvii/list/prefs/PrefsMargin;

    invoke-direct {v0}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->LOGOUT:Lcom/narvii/util/Tag;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    new-instance v0, Lcom/narvii/list/prefs/PrefsMargin;

    invoke-direct {v0}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->DELETE:Lcom/narvii/util/Tag;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 391
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 392
    instance-of v1, v0, Lcom/narvii/list/prefs/PrefsToggle;

    if-eqz v1, :cond_2

    .line 393
    check-cast v0, Lcom/narvii/list/prefs/PrefsToggle;

    const p1, 0x7f0b05b3

    .line 394
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09074b

    .line 395
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 396
    iget-object p3, v0, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090213

    .line 397
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-boolean p3, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/16 p3, 0x8

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0902cc

    .line 398
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-boolean p3, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    if-eqz p3, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    return-object p1

    .line 400
    :cond_2
    iget-object v1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->LOGOUT:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_3

    const p1, 0x7f0b05ac

    .line 401
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0906a7

    .line 402
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0f0046

    .line 403
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 404
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    .line 407
    :cond_3
    iget-object v1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->DELETE:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_4

    const p1, 0x7f0b05a8

    .line 408
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09033c

    .line 409
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0f0033

    .line 410
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 411
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    .line 414
    :cond_4
    iget-object v1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->PROFILE:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_7

    const p1, 0x7f0b05b0

    .line 415
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const-string p2, "account"

    .line 416
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 417
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 418
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    const p3, 0x7f0900e4

    .line 419
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    if-nez p2, :cond_5

    const/4 p2, 0x0

    goto :goto_1

    .line 420
    :cond_5
    invoke-virtual {p2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p3, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_6
    return-object p1

    .line 424
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/prefs/PrefsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$buildCells$0$AccountSettingFragment$Adapter(Ljava/lang/String;Lcom/narvii/list/prefs/PrefsEntry;)V
    .locals 1

    .line 323
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0f0109

    invoke-static {p2, p1, v0}, Lcom/narvii/util/Utils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public onAttach()V
    .locals 0

    .line 259
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 260
    invoke-direct {p0}, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->sendAccountInfoRequest()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    if-eqz p5, :cond_2

    .line 439
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09033c

    if-eq v0, v1, :cond_1

    const v1, 0x7f0906a7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    invoke-virtual {v0}, Lcom/narvii/prefs/AccountSettingFragment;->logout()V

    goto :goto_0

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->delete:Lcom/narvii/logging/ActSemantic;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "DeleteAccount"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 445
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    invoke-virtual {v0}, Lcom/narvii/prefs/AccountSettingFragment;->deleteAccount()V

    .line 449
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->PROFILE:Lcom/narvii/util/Tag;

    const/4 v1, 0x1

    if-ne p3, v0, :cond_5

    const-string p1, "config"

    .line 450
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    const-string p2, "account"

    .line 451
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 452
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-nez p1, :cond_3

    .line 453
    const-class p1, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 454
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 455
    :cond_3
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 456
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 457
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 458
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "/user-profile/"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    const-string p3, "api"

    .line 459
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/util/http/ApiService;

    .line 460
    new-instance p4, Lcom/narvii/prefs/AccountSettingFragment$Adapter$2;

    const-class p5, Lcom/narvii/model/api/UserResponse;

    invoke-direct {p4, p0, p5, p1}, Lcom/narvii/prefs/AccountSettingFragment$Adapter$2;-><init>(Lcom/narvii/prefs/AccountSettingFragment$Adapter;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {p3, p2, p4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_4
    :goto_1
    return v1

    .line 483
    :cond_5
    instance-of v0, p3, Lcom/narvii/list/prefs/PrefsToggle;

    if-eqz v0, :cond_7

    .line 484
    check-cast p3, Lcom/narvii/list/prefs/PrefsToggle;

    .line 485
    iget-boolean p1, p3, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    if-eqz p1, :cond_6

    .line 486
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 487
    iget-object p2, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    const p4, 0x7f0f0ece

    new-array p5, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v2, p3, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p5, v0

    invoke-virtual {p2, p4, p5}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setTitle(Ljava/lang/CharSequence;)V

    const p2, 0x7f0f0eb6

    .line 488
    invoke-virtual {p1, p2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 489
    new-instance p2, Lcom/narvii/prefs/AccountSettingFragment$Adapter$3;

    invoke-direct {p2, p0, p3}, Lcom/narvii/prefs/AccountSettingFragment$Adapter$3;-><init>(Lcom/narvii/prefs/AccountSettingFragment$Adapter;Lcom/narvii/list/prefs/PrefsToggle;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 499
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    goto :goto_2

    .line 501
    :cond_6
    iget-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    invoke-static {p1, p3, v1}, Lcom/narvii/prefs/AccountSettingFragment;->access$000(Lcom/narvii/prefs/AccountSettingFragment;Lcom/narvii/list/prefs/PrefsToggle;I)V

    :goto_2
    return v1

    .line 505
    :cond_7
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/prefs/PrefsAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 266
    invoke-direct {p0}, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->sendAccountInfoRequest()V

    .line 267
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
