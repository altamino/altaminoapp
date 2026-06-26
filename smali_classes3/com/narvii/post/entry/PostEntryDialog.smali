.class public Lcom/narvii/post/entry/PostEntryDialog;
.super Lcom/narvii/app/NVDialog;
.source "PostEntryDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;
    }
.end annotation


# static fields
.field private static final DEFAULT_BLOG_ENTRY_KEYS:[Ljava/lang/String;

.field private static final DEFAULT_MAIN_ENTRY_KEYS:[Ljava/lang/String;

.field private static final DEFAULT_MASTER_ENTRY_KEYS:[Ljava/lang/String;

.field public static final ENTRY_BLOG:I = 0x2

.field public static final ENTRY_MAIN:I = 0x0

.field public static final ENTRY_MASTER:I = 0xb

.field private static final ENTRY_POLL:I = 0xa

.field public static final ENTRY_TOPIC:I = 0xc

.field public static final KEY_ENTRY:Ljava/lang/String; = "key_entry"

.field public static final POST_BLOG:I = 0x1

.field public static final POST_CHAT:I = 0x14

.field public static final POST_GO_LIVE:I = 0x17

.field public static final POST_IMAGE:I = 0x5

.field public static final POST_ITEM:I = 0x2

.field public static final POST_LINK:I = 0x4

.field public static final POST_POLL_COLLECTION:I = 0x10

.field public static final POST_POLL_PLAIN:I = 0xf

.field public static final POST_QUIZ:I = 0x3

.field public static final POST_STORY:I = 0x16

.field public static final POST_TOPIC_QUESTION:I = 0xc


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field backgroundView:Landroid/view/View;

.field blogCategoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/BlogCategory;",
            ">;"
        }
    .end annotation
.end field

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field private final context:Landroid/content/Context;

.field private final ctx:Lcom/narvii/app/NVContext;

.field private current:I

.field dismissing:Z

.field private entry:I

.field entryItemClickListener:Lcom/narvii/post/entry/EntryItemClickListener;

.field entryManager:Lcom/narvii/modulization/entry/EntryManager;

.field private layoutTrans:Landroid/animation/LayoutTransition;

.field localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private loggingSource:Lcom/narvii/util/logging/LoggingSource;

.field postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

.field private prev:I

.field private source:Ljava/lang/String;

.field private tmpExtraData:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "draft"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v3, "blog"

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v5, 0x2

    const-string v6, "wikiEntry"

    aput-object v6, v0, v5

    const-string v6, "poll"

    const/4 v7, 0x3

    aput-object v6, v0, v7

    const-string v8, "post_publicChat"

    const/4 v9, 0x4

    aput-object v8, v0, v9

    const-string v10, "image"

    const/4 v11, 0x5

    aput-object v10, v0, v11

    const-string v12, "webLink"

    const/4 v13, 0x6

    aput-object v12, v0, v13

    const/4 v14, 0x7

    const-string v15, "quiz"

    aput-object v15, v0, v14

    const/16 v15, 0x8

    const-string v16, "question"

    aput-object v16, v0, v15

    const/16 v15, 0x9

    const-string v16, "go_live"

    aput-object v16, v0, v15

    const-string v15, "story"

    const/16 v16, 0xa

    aput-object v15, v0, v16

    .line 103
    sput-object v0, Lcom/narvii/post/entry/PostEntryDialog;->DEFAULT_MAIN_ENTRY_KEYS:[Ljava/lang/String;

    new-array v0, v14, [Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object v6, v0, v4

    aput-object v10, v0, v5

    aput-object v12, v0, v7

    const-string v3, "quiz"

    aput-object v3, v0, v9

    const-string v3, "question"

    aput-object v3, v0, v11

    aput-object v15, v0, v13

    .line 118
    sput-object v0, Lcom/narvii/post/entry/PostEntryDialog;->DEFAULT_BLOG_ENTRY_KEYS:[Ljava/lang/String;

    new-array v0, v9, [Ljava/lang/String;

    aput-object v1, v0, v2

    aput-object v15, v0, v4

    aput-object v8, v0, v5

    const-string v1, "go_live"

    aput-object v1, v0, v7

    .line 128
    sput-object v0, Lcom/narvii/post/entry/PostEntryDialog;->DEFAULT_MASTER_ENTRY_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 4

    const v0, 0x7f1000fd

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->entry:I

    .line 142
    iput v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->current:I

    .line 143
    iput v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->prev:I

    .line 447
    new-instance v0, Lcom/narvii/post/entry/PostEntryDialog$9;

    invoke-direct {v0, p0}, Lcom/narvii/post/entry/PostEntryDialog$9;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    iput-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->entryItemClickListener:Lcom/narvii/post/entry/EntryItemClickListener;

    .line 174
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 175
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    .line 176
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->layoutTrans:Landroid/animation/LayoutTransition;

    .line 177
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->layoutTrans:Landroid/animation/LayoutTransition;

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 178
    new-instance v0, Lcom/narvii/modulization/entry/EntryManager;

    invoke-direct {v0, p1}, Lcom/narvii/modulization/entry/EntryManager;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->entryManager:Lcom/narvii/modulization/entry/EntryManager;

    .line 179
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    const-string v0, "account"

    .line 180
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->accountService:Lcom/narvii/account/AccountService;

    .line 181
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    return-void
.end method

.method static synthetic access$001(Lcom/narvii/post/entry/PostEntryDialog;)V
    .locals 0

    .line 78
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/post/entry/PostEntryDialog;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/post/entry/PostEntryDialog;IZ)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/narvii/post/entry/PostEntryDialog;->setCurrent(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/post/entry/PostEntryDialog;)Landroid/content/Context;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/post/entry/PostEntryDialog;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/narvii/post/entry/PostEntryDialog;->checkActivation()Z

    move-result p0

    return p0
.end method

.method private checkActivation()Z
    .locals 3

    .line 727
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "account"

    .line 728
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 729
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasActivation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0dc9

    .line 731
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0d7d

    .line 732
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    .line 733
    sget-object v2, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0d7c

    .line 734
    new-instance v2, Lcom/narvii/post/entry/PostEntryDialog$11;

    invoke-direct {v2, p0}, Lcom/narvii/post/entry/PostEntryDialog$11;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 743
    new-instance v1, Lcom/narvii/post/entry/PostEntryDialog$12;

    invoke-direct {v1, p0}, Lcom/narvii/post/entry/PostEntryDialog$12;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 749
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkEligible()V
    .locals 5

    .line 697
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "account"

    .line 698
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 699
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user-profile/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/compose-eligible-check"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    const-string v2, "api"

    .line 700
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 701
    new-instance v2, Lcom/narvii/post/entry/PostEntryDialog$10;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/post/entry/PostEntryDialog$10;-><init>(Lcom/narvii/post/entry/PostEntryDialog;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private inflateView(IZ)V
    .locals 8

    const v0, 0x7f090103

    const v1, 0x7f090886

    const v2, 0x7f0b0588

    const v3, 0x7f0908ba

    const v4, 0x7f090884

    if-eqz p1, :cond_4

    const/4 v5, 0x2

    if-eq p1, v5, :cond_3

    const/4 v5, 0x4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 417
    :pswitch_0
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 418
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/narvii/post/entry/PostEntryDialog$8;

    invoke-direct {v2, p0}, Lcom/narvii/post/entry/PostEntryDialog$8;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/entry/PostEntrySnakeLayout;

    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    .line 425
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    .line 426
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 427
    iget-object v2, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3fea3d70a3d70a3dL    # 0.82

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v6

    double-to-int v2, v2

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v2, 0xb

    .line 428
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 429
    iget-object v2, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    invoke-virtual {p1, v5}, Lcom/narvii/post/entry/PostEntrySnakeLayout;->setFraction(I)V

    :cond_0
    if-nez p2, :cond_1

    .line 433
    sget-object p1, Lcom/narvii/post/entry/PostEntryDialog;->DEFAULT_MASTER_ENTRY_KEYS:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->updateEntryItems([Ljava/lang/String;)V

    .line 435
    :cond_1
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->backgroundView:Landroid/view/View;

    goto/16 :goto_0

    :pswitch_1
    const p1, 0x7f0b0589

    .line 394
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 395
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/entry/PostEntrySnakeLayout;

    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    .line 396
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    if-eqz p1, :cond_2

    .line 397
    invoke-virtual {p1, v5}, Lcom/narvii/post/entry/PostEntrySnakeLayout;->setFraction(I)V

    .line 399
    :cond_2
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/post/entry/PostEntryDialog$6;

    invoke-direct {p2, p0}, Lcom/narvii/post/entry/PostEntryDialog$6;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09029e

    .line 405
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/post/entry/PostEntryDialog$7;

    invoke-direct {p2, p0}, Lcom/narvii/post/entry/PostEntryDialog$7;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    sget-object p1, Lcom/narvii/post/entry/PostEntryDialog;->DEFAULT_MASTER_ENTRY_KEYS:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->updateEntryItems([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const p1, 0x7f0b058a

    .line 381
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f09089e

    .line 382
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/post/entry/PostEntryDialog$5;

    invoke-direct {p2, p0}, Lcom/narvii/post/entry/PostEntryDialog$5;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09089f

    .line 390
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 368
    :cond_3
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 369
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/entry/PostEntrySnakeLayout;

    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    .line 370
    sget-object p1, Lcom/narvii/post/entry/PostEntryDialog;->DEFAULT_BLOG_ENTRY_KEYS:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->updateEntryItems([Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/post/entry/PostEntryDialog$4;

    invoke-direct {p2, p0}, Lcom/narvii/post/entry/PostEntryDialog$4;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 352
    :cond_4
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 353
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/narvii/post/entry/PostEntryDialog$3;

    invoke-direct {v2, p0}, Lcom/narvii/post/entry/PostEntryDialog$3;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/entry/PostEntrySnakeLayout;

    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    if-nez p2, :cond_5

    .line 361
    sget-object p1, Lcom/narvii/post/entry/PostEntryDialog;->DEFAULT_MAIN_ENTRY_KEYS:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->updateEntryItems([Ljava/lang/String;)V

    .line 363
    :cond_5
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->backgroundView:Landroid/view/View;

    :goto_0
    const p1, 0x7f090883

    .line 440
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 441
    instance-of p2, p1, Lcom/narvii/widget/ThumbImageView;

    if-eqz p2, :cond_6

    .line 442
    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, -0x1

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p2, p1, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$doPost$0(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 578
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$doPost$1(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 633
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method

.method private setCurrent(IZ)V
    .locals 1

    .line 329
    iget v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->current:I

    iput v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->prev:I

    .line 330
    iput p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->current:I

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/narvii/post/entry/PostEntryDialog;->inflateView(IZ)V

    return-void
.end method

.method private updateEntryItems([Ljava/lang/String;)V
    .locals 3

    .line 756
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    if-nez v0, :cond_0

    return-void

    .line 759
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->getFilteredEntryKeys([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 760
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    iget-object v1, p0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    iget-object v2, p0, Lcom/narvii/post/entry/PostEntryDialog;->entryItemClickListener:Lcom/narvii/post/entry/EntryItemClickListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/post/entry/PostEntrySnakeLayout;->setEntryKeys(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/post/entry/EntryItemClickListener;)V

    return-void
.end method

.method private updatePostEntryIcon(Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;)V
    .locals 5

    const v0, 0x7f090885

    .line 266
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090888

    .line 271
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 272
    instance-of v2, v1, Lcom/narvii/widget/TintButton;

    const v3, 0x7f080676

    if-eqz v2, :cond_3

    .line 273
    check-cast v1, Lcom/narvii/widget/TintButton;

    const v2, -0x777778

    .line 275
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v2, "config"

    .line 277
    invoke-interface {v4, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 278
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v2

    .line 280
    :cond_1
    invoke-virtual {v1, v2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 281
    iget-object v2, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 282
    iget v3, p0, Lcom/narvii/post/entry/PostEntryDialog;->entry:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    if-eqz v2, :cond_2

    const-string v3, "#6D43EB"

    .line 283
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 285
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 286
    :cond_3
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 287
    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 292
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_9

    .line 293
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p1, Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;->marginBottom:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 295
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 296
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 297
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;->marginRight:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    .line 299
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;->marginRight:I

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 300
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    .line 305
    iget-object v2, p0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    instance-of v3, v2, Lcom/narvii/app/NVFragment;

    if-eqz v3, :cond_7

    .line 306
    check-cast v2, Lcom/narvii/app/NVFragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    goto :goto_1

    .line 307
    :cond_7
    instance-of v3, v2, Lcom/narvii/app/NVActivity;

    if-eqz v3, :cond_8

    .line 308
    move-object p1, v2

    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 310
    :cond_8
    :goto_1
    instance-of v2, p1, Lcom/narvii/app/DrawerActivity;

    if-eqz v2, :cond_9

    .line 311
    check-cast p1, Lcom/narvii/app/DrawerActivity;

    invoke-virtual {p1}, Lcom/narvii/app/DrawerActivity;->getPostEntryView()Lcom/narvii/post/entry/PostEntryView;

    move-result-object p1

    if-eqz p1, :cond_9

    const v2, 0x7f090887

    .line 313
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 315
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_9

    .line 317
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v3, -0x40800000    # -1.0f

    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    mul-float p1, p1, v3

    float-to-int p1, p1

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 319
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 320
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_9
    :goto_2
    return-void
.end method


# virtual methods
.method public addTmpExtraData(Landroid/os/Bundle;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->tmpExtraData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->tmpExtraData:Landroid/os/Bundle;

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public dismiss()V
    .locals 4

    .line 241
    iget-boolean v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->dismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 244
    iput-boolean v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->dismissing:Z

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->tmpExtraData:Landroid/os/Bundle;

    .line 246
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/post/entry/PostEntrySnakeLayout;->go(Z)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 247
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    int-to-long v2, v0

    .line 248
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 249
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 250
    new-instance v0, Lcom/narvii/post/entry/PostEntryDialog$2;

    invoke-direct {v0, p0}, Lcom/narvii/post/entry/PostEntryDialog$2;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 262
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public doPost(ILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 507
    iget-object v2, v0, Lcom/narvii/post/entry/PostEntryDialog;->tmpExtraData:Landroid/os/Bundle;

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/post/entry/PostEntryDialog;->dismiss()V

    const-string v3, "loggingSource"

    const-string v4, "Source"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const-string v8, "post"

    if-eq v1, v5, :cond_1a

    if-eq v1, v6, :cond_19

    const/4 v9, 0x3

    if-eq v1, v9, :cond_18

    const/4 v10, 0x5

    const/4 v11, 0x4

    if-eq v1, v11, :cond_17

    const/4 v12, 0x7

    if-eq v1, v10, :cond_15

    const/16 v10, 0xc

    if-eq v1, v10, :cond_13

    const/16 v9, 0x14

    const-string v10, "default_story_topic"

    const v13, 0x104000a

    const/4 v14, 0x0

    const/16 v15, 0x17

    if-eq v1, v9, :cond_a

    const/16 v9, 0xf

    const/16 v7, 0x10

    if-eq v1, v9, :cond_7

    if-eq v1, v7, :cond_7

    const/16 v6, 0x16

    if-eq v1, v6, :cond_0

    if-eq v1, v15, :cond_a

    goto/16 :goto_3

    .line 630
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v1, v5, :cond_6

    invoke-static {}, Lcom/narvii/editor/utils/MeisheUtils;->isSupportMeishe()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/narvii/editors/ffmpeg/FFmpegJni;->ffmpegInstalled:Z

    if-nez v1, :cond_1

    goto :goto_2

    .line 636
    :cond_1
    sget-object v1, Lcom/narvii/logging/ActSemantic;->createPost:Lcom/narvii/logging/ActSemantic;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    const-string v5, "Story"

    invoke-virtual {v1, v5}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    if-eqz v2, :cond_2

    .line 638
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/model/story/StoryTopic;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/narvii/model/story/StoryTopic;

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 640
    :goto_0
    new-instance v1, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {v1}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    const/16 v2, 0x9

    .line 641
    iput v2, v1, Lcom/narvii/blog/post/BlogPost;->type:I

    if-eqz v7, :cond_4

    .line 643
    iget-object v2, v1, Lcom/narvii/blog/post/BlogPost;->userAddedTopicList:Ljava/util/List;

    if-nez v2, :cond_3

    .line 644
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/narvii/blog/post/BlogPost;->userAddedTopicList:Ljava/util/List;

    .line 646
    :cond_3
    iget-object v2, v1, Lcom/narvii/blog/post/BlogPost;->userAddedTopicList:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_4
    new-instance v2, Landroid/content/Intent;

    iget-object v5, v0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    const-class v6, Lcom/narvii/blog/post/StoryPostActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 649
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    iget-object v1, v0, Lcom/narvii/post/entry/PostEntryDialog;->source:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    iget-object v1, v0, Lcom/narvii/post/entry/PostEntryDialog;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-nez v1, :cond_5

    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    iget-object v1, v0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 631
    :cond_6
    :goto_2
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v2, v0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 632
    iget-object v2, v0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    const v5, 0x7f0f013c

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 633
    new-instance v2, Lcom/narvii/post/entry/-$$Lambda$PostEntryDialog$X55Iu6eyVNEYzcFg5ig6ZDcJOvo;

    invoke-direct {v2, v1}, Lcom/narvii/post/entry/-$$Lambda$PostEntryDialog$X55Iu6eyVNEYzcFg5ig6ZDcJOvo;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {v1, v13, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 634
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    :goto_3
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 548
    :cond_7
    new-instance v2, Landroid/content/Intent;

    iget-object v9, v0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    const-class v10, Lcom/narvii/blog/post/PollPostActivity;

    invoke-direct {v2, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 549
    new-instance v9, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {v9}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    .line 550
    iput v11, v9, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 551
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v10

    const-string v11, "pollSettings"

    .line 552
    invoke-virtual {v10, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putObject(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v11

    if-ne v1, v7, :cond_8

    const/4 v14, 0x1

    :cond_8
    const-string v1, "polloptType"

    .line 553
    invoke-virtual {v11, v1, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v1, "joinEnabled"

    .line 554
    invoke-virtual {v11, v1, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 555
    iput-object v10, v9, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 556
    iput v12, v9, Lcom/narvii/blog/post/BlogPost;->durationInDays:I

    .line 557
    iget v1, v0, Lcom/narvii/post/entry/PostEntryDialog;->entry:I

    if-ne v1, v6, :cond_9

    .line 558
    iget-object v1, v0, Lcom/narvii/post/entry/PostEntryDialog;->blogCategoryList:Ljava/util/List;

    iput-object v1, v9, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 560
    :cond_9
    invoke-static {v9}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v7, v2

    goto/16 :goto_7

    :cond_a
    if-ne v1, v15, :cond_b

    const/4 v14, 0x1

    .line 566
    :cond_b
    sget-object v1, Lcom/narvii/logging/ActSemantic;->createChat:Lcom/narvii/logging/ActSemantic;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    if-eqz v14, :cond_c

    const-string v5, "GoLive"

    goto :goto_4

    :cond_c
    const-string v5, "Chat"

    :goto_4
    invoke-virtual {v1, v5}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 567
    iget-object v1, v0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    const-string v5, "config"

    invoke-interface {v1, v5}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 568
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    if-nez v1, :cond_12

    .line 569
    iget-object v1, v0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    const-string v5, "account"

    invoke-interface {v1, v5}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 570
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserAccount()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 572
    iget-object v1, v0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    const-string v5, "membership"

    invoke-interface {v1, v5}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/wallet/MembershipService;

    .line 573
    new-instance v5, Lcom/narvii/modulization/entry/EntryManager;

    iget-object v6, v0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v5, v6}, Lcom/narvii/modulization/entry/EntryManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 574
    iget-object v6, v0, Lcom/narvii/post/entry/PostEntryDialog;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v6}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v6

    invoke-virtual {v5, v6, v14}, Lcom/narvii/modulization/entry/EntryManager;->canUserChat(Lcom/narvii/model/User;Z)Lcom/narvii/modulization/entry/EntryEligibleCheckResult;

    move-result-object v5

    .line 575
    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v1

    if-nez v1, :cond_d

    iget-boolean v1, v5, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    if-nez v1, :cond_d

    .line 576
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v2, v0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 577
    iget-object v2, v5, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->errorString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 578
    new-instance v2, Lcom/narvii/post/entry/-$$Lambda$PostEntryDialog$XN_vyfv12t3EGtKWVq91gs0RtKc;

    invoke-direct {v2, v1}, Lcom/narvii/post/entry/-$$Lambda$PostEntryDialog$XN_vyfv12t3EGtKWVq91gs0RtKc;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {v1, v13, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 579
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    goto/16 :goto_3

    .line 581
    :cond_d
    new-instance v1, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/narvii/chat/post/ThreadPostNewActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 582
    new-instance v5, Lcom/narvii/chat/post/ThreadPost;

    invoke-direct {v5}, Lcom/narvii/chat/post/ThreadPost;-><init>()V

    if-eqz v14, :cond_e

    const-string v2, "doAfter"

    const-string v6, "GO_LIVE"

    .line 584
    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    invoke-static {v5}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    :cond_e
    if-eqz v2, :cond_f

    .line 587
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v6, Lcom/narvii/model/story/StoryTopic;

    invoke-static {v2, v6}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/narvii/model/story/StoryTopic;

    goto :goto_5

    :cond_f
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_10

    .line 589
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v5, Lcom/narvii/chat/post/ThreadPost;->userAddedTopicList:Ljava/util/List;

    .line 590
    iget-object v2, v5, Lcom/narvii/chat/post/ThreadPost;->userAddedTopicList:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_10
    invoke-static {v5}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    invoke-static {v7}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "topic"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_6
    move-object v7, v1

    goto/16 :goto_7

    .line 597
    :cond_11
    new-instance v1, Landroid/content/Intent;

    const-string v2, "ndc://login"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 598
    iget-object v2, v0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v2, v1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 603
    :cond_12
    new-instance v7, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/chat/post/ThreadPostNewActivity;

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 604
    new-instance v1, Lcom/narvii/chat/post/ThreadPost;

    invoke-direct {v1}, Lcom/narvii/chat/post/ThreadPost;-><init>()V

    .line 605
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v14, :cond_1c

    const-string v1, "doAfter"

    const-string v2, "GO_LIVE"

    .line 607
    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_7

    .line 537
    :cond_13
    new-instance v7, Landroid/content/Intent;

    iget-object v1, v0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    const-class v2, Lcom/narvii/blog/post/TopicPostActivity;

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 538
    new-instance v1, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {v1}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    .line 539
    iput v9, v1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 540
    iget v2, v0, Lcom/narvii/post/entry/PostEntryDialog;->entry:I

    if-ne v2, v6, :cond_14

    .line 541
    iget-object v2, v0, Lcom/narvii/post/entry/PostEntryDialog;->blogCategoryList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 543
    :cond_14
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_7

    .line 521
    :cond_15
    new-instance v7, Landroid/content/Intent;

    iget-object v1, v0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    const-class v2, Lcom/narvii/blog/post/ImagePostActivity;

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    new-instance v1, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {v1}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    .line 523
    iput v12, v1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 524
    iget v2, v0, Lcom/narvii/post/entry/PostEntryDialog;->entry:I

    if-ne v2, v6, :cond_16

    .line 525
    iget-object v2, v0, Lcom/narvii/post/entry/PostEntryDialog;->blogCategoryList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 527
    :cond_16
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7

    .line 612
    :cond_17
    new-instance v1, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {v1}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    .line 613
    iput v10, v1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 614
    iget-object v2, v0, Lcom/narvii/post/entry/PostEntryDialog;->blogCategoryList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 615
    new-instance v7, Landroid/content/Intent;

    iget-object v2, v0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    const-class v5, Lcom/narvii/blog/post/LinkPostActivity;

    invoke-direct {v7, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 616
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7

    .line 620
    :cond_18
    new-instance v1, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {v1}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    const/4 v2, 0x6

    .line 621
    iput v2, v1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 622
    iget-object v2, v0, Lcom/narvii/post/entry/PostEntryDialog;->blogCategoryList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 623
    new-instance v7, Landroid/content/Intent;

    iget-object v2, v0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    const-class v5, Lcom/narvii/blog/post/QuizPostActivity;

    invoke-direct {v7, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 624
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7

    .line 531
    :cond_19
    new-instance v7, Landroid/content/Intent;

    iget-object v1, v0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    const-class v2, Lcom/narvii/item/post/ItemPostActivity;

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 532
    new-instance v1, Lcom/narvii/item/post/ItemPost;

    invoke-direct {v1}, Lcom/narvii/item/post/ItemPost;-><init>()V

    .line 533
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7

    .line 512
    :cond_1a
    new-instance v7, Landroid/content/Intent;

    iget-object v1, v0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    const-class v2, Lcom/narvii/blog/post/BlogPostActivity;

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 513
    new-instance v1, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {v1}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    .line 514
    iget v2, v0, Lcom/narvii/post/entry/PostEntryDialog;->entry:I

    if-ne v2, v6, :cond_1b

    .line 515
    iget-object v2, v0, Lcom/narvii/post/entry/PostEntryDialog;->blogCategoryList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 517
    :cond_1b
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1c
    :goto_7
    if-eqz v7, :cond_1e

    .line 683
    iget-object v1, v0, Lcom/narvii/post/entry/PostEntryDialog;->source:Ljava/lang/String;

    invoke-virtual {v7, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    iget-object v1, v0, Lcom/narvii/post/entry/PostEntryDialog;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-nez v1, :cond_1d

    const/4 v1, 0x0

    goto :goto_8

    :cond_1d
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-virtual {v7, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    iget-object v1, v0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1e
    return-void
.end method

.method public getFilteredEntryKeys([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 765
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 767
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 768
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 769
    iget-object v2, p0, Lcom/narvii/post/entry/PostEntryDialog;->entryManager:Lcom/narvii/modulization/entry/EntryManager;

    iget-object v3, p0, Lcom/narvii/post/entry/PostEntryDialog;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/narvii/post/entry/PostEntryDialog;->accountService:Lcom/narvii/account/AccountService;

    .line 770
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    aget-object v4, p1, v1

    .line 769
    invoke-virtual {v2, v3, v4}, Lcom/narvii/modulization/entry/EntryManager;->isEntryEnabled(Lcom/narvii/model/User;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 771
    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "ComposePanel"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 336
    iget v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->current:I

    iget v1, p0, Lcom/narvii/post/entry/PostEntryDialog;->entry:I

    if-le v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 343
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 346
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 490
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "poll"

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 p1, 0xf

    .line 496
    invoke-virtual {p0, p1, v0}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const/16 p1, 0x10

    .line 492
    invoke-virtual {p0, p1, v0}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    goto :goto_0

    .line 500
    :sswitch_2
    invoke-virtual {p0}, Lcom/narvii/post/entry/PostEntryDialog;->dismiss()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090886 -> :sswitch_2
        0x7f09089e -> :sswitch_1
        0x7f09089f -> :sswitch_0
    .end sparse-switch
.end method

.method public setBlogCategory(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/BlogCategory;",
            ">;)V"
        }
    .end annotation

    .line 691
    iget v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->entry:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 692
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->blogCategoryList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->tmpExtraData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "key_entry"

    .line 196
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 198
    :cond_0
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->GlobalComposeMenu:Lcom/narvii/util/logging/LoggingSource;

    const-string v2, "FAB"

    invoke-virtual {p0, v1, v2, v0}, Lcom/narvii/post/entry/PostEntryDialog;->show(ILjava/lang/String;Lcom/narvii/util/logging/LoggingSource;)V

    return-void
.end method

.method public show(ILjava/lang/String;Lcom/narvii/util/logging/LoggingSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/post/entry/PostEntryDialog;->show(ILjava/lang/String;Lcom/narvii/util/logging/LoggingSource;Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;)V

    return-void
.end method

.method public show(ILjava/lang/String;Lcom/narvii/util/logging/LoggingSource;Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;)V
    .locals 2

    .line 203
    iget-boolean v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->dismissing:Z

    if-eqz v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 207
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserAccount()Lcom/narvii/model/User;

    move-result-object v0

    if-nez v0, :cond_1

    .line 209
    new-instance p1, Landroid/content/Intent;

    const-string p2, "ndc://login"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 210
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 213
    :cond_1
    iput p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->entry:I

    .line 214
    iput-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog;->source:Ljava/lang/String;

    .line 215
    iput-object p3, p0, Lcom/narvii/post/entry/PostEntryDialog;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    const/4 p2, 0x0

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/narvii/post/entry/PostEntryDialog;->setCurrent(IZ)V

    .line 217
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 218
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/post/entry/PostEntrySnakeLayout;->go(Z)I

    move-result p1

    const/4 p2, 0x2

    new-array p3, p2, [F

    .line 219
    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 220
    div-int/2addr p1, p2

    const/16 p2, 0x12c

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 221
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 222
    new-instance p1, Lcom/narvii/post/entry/PostEntryDialog$1;

    invoke-direct {p1, p0}, Lcom/narvii/post/entry/PostEntryDialog$1;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 230
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    .line 232
    invoke-direct {p0, p4}, Lcom/narvii/post/entry/PostEntryDialog;->updatePostEntryIcon(Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
