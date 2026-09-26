.class public Lcom/narvii/post/entry/PostEntryDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"

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

.field public static final POST_TOPIC_QUESTION:I = 0xc


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

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

.field localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private loggingSource:Lcom/narvii/util/logging/LoggingSource;

.field postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

.field private prev:I

.field private source:Ljava/lang/String;

.field private tmpExtraData:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "draft"

    const-string v1, "blog"

    const-string v2, "wikiEntry"

    const-string v3, "poll"

    const-string v4, "post_publicChat"

    const-string v5, "image"

    const-string v6, "webLink"

    const-string v7, "quiz"

    const-string v8, "question"

    const-string v9, "go_live"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/post/entry/PostEntryDialog;->DEFAULT_MAIN_ENTRY_KEYS:[Ljava/lang/String;

    const-string v1, "blog"

    const-string v2, "poll"

    const-string v3, "image"

    const-string v4, "webLink"

    const-string v5, "quiz"

    const-string v6, "question"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/post/entry/PostEntryDialog;->DEFAULT_BLOG_ENTRY_KEYS:[Ljava/lang/String;

    const-string v0, "post_publicChat"

    const-string v1, "go_live"

    const-string v2, "draft"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/post/entry/PostEntryDialog;->DEFAULT_MASTER_ENTRY_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    const v0, 0x7f1301d1

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 7
    const/4 v0, -0x1

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->entry:I

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->current:I

    .line 12
    .line 13
    iput v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->prev:I

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/post/entry/PostEntryDialog$3;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/post/entry/PostEntryDialog$3;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->entryItemClickListener:Lcom/narvii/post/entry/EntryItemClickListener;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    .line 29
    .line 30
    new-instance v1, Landroid/animation/LayoutTransition;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    .line 34
    .line 35
    iput-object v1, p0, Lcom/narvii/post/entry/PostEntryDialog;->layoutTrans:Landroid/animation/LayoutTransition;

    .line 36
    const/4 v2, 0x2

    .line 37
    .line 38
    const-wide/16 v3, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 42
    .line 43
    new-instance v1, Lcom/narvii/modulization/entry/EntryManager;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, p1}, Lcom/narvii/modulization/entry/EntryManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 47
    .line 48
    iput-object v1, p0, Lcom/narvii/post/entry/PostEntryDialog;->entryManager:Lcom/narvii/modulization/entry/EntryManager;

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 55
    .line 56
    const-string v0, "account"

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->accountService:Lcom/narvii/account/AccountService;

    .line 65
    .line 66
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 70
    .line 71
    iput-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 72
    return-void
.end method

.method public static synthetic a(Lcom/narvii/post/entry/PostEntryDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->lambda$inflateView$3(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$001(Lcom/narvii/post/entry/PostEntryDialog;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->lambda$doPost$6(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/post/entry/PostEntryDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->lambda$checkActivation$8(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private checkActivation()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "account"

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasActivation()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    const v1, 0x7f120ef4

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 40
    .line 41
    .line 42
    const v1, 0x7f120ea9

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 46
    .line 47
    const/high16 v1, 0x1040000

    .line 48
    .line 49
    sget-object v2, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    .line 54
    new-instance v1, Lcom/narvii/post/entry/a;

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/narvii/post/entry/a;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    .line 58
    .line 59
    .line 60
    const v2, 0x7f120ea8

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    .line 65
    new-instance v1, Lcom/narvii/post/entry/b;

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, p0}, Lcom/narvii/post/entry/b;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 75
    const/4 v0, 0x0

    .line 76
    return v0

    .line 77
    :cond_0
    const/4 v0, 0x1

    .line 78
    return v0
.end method

.method private checkEligible()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "account"

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v4, "user-profile/"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "/compose-eligible-check"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    const-string v2, "api"

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 61
    .line 62
    new-instance v2, Lcom/narvii/post/entry/PostEntryDialog$4;

    .line 63
    .line 64
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 65
    .line 66
    .line 67
    invoke-direct {v2, p0, v3}, Lcom/narvii/post/entry/PostEntryDialog$4;-><init>(Lcom/narvii/post/entry/PostEntryDialog;Ljava/lang/Class;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 71
    return-void
.end method

.method public static synthetic d(Lcom/narvii/post/entry/PostEntryDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->lambda$inflateView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/narvii/post/entry/PostEntryDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->lambda$inflateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/narvii/post/entry/PostEntryDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/post/entry/PostEntryDialog;->lambda$checkActivation$7(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic g(Lcom/narvii/post/entry/PostEntryDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->lambda$inflateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/narvii/post/entry/PostEntryDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->lambda$inflateView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/narvii/post/entry/PostEntryDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->lambda$inflateView$2(Landroid/view/View;)V

    return-void
.end method

.method private inflateView(IZ)V
    .locals 7

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0b42

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0d0630

    .line 7
    .line 8
    .line 9
    const v2, 0x7f0a0b77

    .line 10
    .line 11
    .line 12
    const v3, 0x7f0a0b40

    .line 13
    .line 14
    if-eqz p1, :cond_4

    .line 15
    const/4 v4, 0x2

    .line 16
    .line 17
    if-eq p1, v4, :cond_3

    .line 18
    const/4 v4, 0x4

    .line 19
    .line 20
    .line 21
    packed-switch p1, :pswitch_data_0

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    .line 26
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    new-instance v1, Lcom/narvii/post/entry/i;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/narvii/post/entry/i;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    check-cast p1, Lcom/narvii/post/entry/PostEntrySnakeLayout;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    instance-of p1, p1, Landroid/widget/RelativeLayout;

    .line 55
    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 70
    move-result v1

    .line 71
    int-to-double v1, v1

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    const-wide v5, 0x3fea3d70a3d70a3dL    # 0.82

    .line 77
    mul-double/2addr v1, v5

    .line 78
    double-to-int v1, v1

    .line 79
    .line 80
    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 81
    .line 82
    const/16 v1, 0xb

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 86
    .line 87
    iget-object v1, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v4}, Lcom/narvii/post/entry/PostEntrySnakeLayout;->setFraction(I)V

    .line 96
    .line 97
    :cond_0
    if-nez p2, :cond_1

    .line 98
    .line 99
    sget-object p1, Lcom/narvii/post/entry/PostEntryDialog;->DEFAULT_MASTER_ENTRY_KEYS:[Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->updateEntryItems([Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .line 111
    goto/16 :goto_0

    .line 112
    .line 113
    .line 114
    :pswitch_1
    const p1, 0x7f0d0631

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    check-cast p1, Lcom/narvii/post/entry/PostEntrySnakeLayout;

    .line 124
    .line 125
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    .line 126
    .line 127
    if-eqz p1, :cond_2

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v4}, Lcom/narvii/post/entry/PostEntrySnakeLayout;->setFraction(I)V

    .line 131
    .line 132
    .line 133
    :cond_2
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    new-instance p2, Lcom/narvii/post/entry/g;

    .line 137
    .line 138
    .line 139
    invoke-direct {p2, p0}, Lcom/narvii/post/entry/g;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    .line 144
    .line 145
    const p1, 0x7f0a0366

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    new-instance p2, Lcom/narvii/post/entry/h;

    .line 152
    .line 153
    .line 154
    invoke-direct {p2, p0}, Lcom/narvii/post/entry/h;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    sget-object p1, Lcom/narvii/post/entry/PostEntryDialog;->DEFAULT_MASTER_ENTRY_KEYS:[Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    invoke-direct {p0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->updateEntryItems([Ljava/lang/String;)V

    .line 163
    goto :goto_0

    .line 164
    .line 165
    .line 166
    :pswitch_2
    const p1, 0x7f0d0632

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 170
    .line 171
    .line 172
    const p1, 0x7f0a0b5b

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 183
    move-result-object p1

    .line 184
    .line 185
    new-instance p2, Lcom/narvii/post/entry/f;

    .line 186
    .line 187
    .line 188
    invoke-direct {p2, p0}, Lcom/narvii/post/entry/f;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    .line 193
    .line 194
    const p1, 0x7f0a0b5c

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 198
    move-result-object p1

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    goto :goto_0

    .line 203
    .line 204
    .line 205
    :cond_3
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 209
    move-result-object p1

    .line 210
    .line 211
    check-cast p1, Lcom/narvii/post/entry/PostEntrySnakeLayout;

    .line 212
    .line 213
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    .line 214
    .line 215
    sget-object p1, Lcom/narvii/post/entry/PostEntryDialog;->DEFAULT_BLOG_ENTRY_KEYS:[Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    invoke-direct {p0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->updateEntryItems([Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 222
    move-result-object p1

    .line 223
    .line 224
    new-instance p2, Lcom/narvii/post/entry/e;

    .line 225
    .line 226
    .line 227
    invoke-direct {p2, p0}, Lcom/narvii/post/entry/e;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 234
    move-result-object p1

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    goto :goto_0

    .line 239
    .line 240
    .line 241
    :cond_4
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 245
    move-result-object p1

    .line 246
    .line 247
    new-instance v1, Lcom/narvii/post/entry/d;

    .line 248
    .line 249
    .line 250
    invoke-direct {v1, p0}, Lcom/narvii/post/entry/d;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 257
    move-result-object p1

    .line 258
    .line 259
    check-cast p1, Lcom/narvii/post/entry/PostEntrySnakeLayout;

    .line 260
    .line 261
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    .line 262
    .line 263
    if-nez p2, :cond_5

    .line 264
    .line 265
    sget-object p1, Lcom/narvii/post/entry/PostEntryDialog;->DEFAULT_MAIN_ENTRY_KEYS:[Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    invoke-direct {p0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->updateEntryItems([Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    :cond_5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 272
    move-result-object p1

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    .line 277
    .line 278
    :goto_0
    const p1, 0x7f0a0b3f

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 282
    move-result-object p1

    .line 283
    .line 284
    instance-of p2, p1, Lcom/narvii/widget/ThumbImageView;

    .line 285
    .line 286
    if-eqz p2, :cond_6

    .line 287
    .line 288
    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    .line 289
    .line 290
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 291
    const/4 v0, -0x1

    .line 292
    .line 293
    .line 294
    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 295
    .line 296
    iput-object p2, p1, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 297
    :cond_6
    return-void

    .line 298
    nop

    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static bridge synthetic j(Lcom/narvii/post/entry/PostEntryDialog;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/narvii/post/entry/PostEntryDialog;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/post/entry/PostEntryDialog;->checkActivation()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic l(Lcom/narvii/post/entry/PostEntryDialog;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/post/entry/PostEntryDialog;->setCurrent(IZ)V

    return-void
.end method

.method private synthetic lambda$checkActivation$7(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 4
    .line 5
    new-instance p1, Landroid/content/Intent;

    .line 6
    .line 7
    const-string p2, "ndc://activation"

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    const-string v0, "android.intent.action.VIEW"

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 17
    .line 18
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    invoke-static {p2, p1}, Lcom/narvii/post/entry/PostEntryDialog;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 22
    return-void
.end method

.method private synthetic lambda$checkActivation$8(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/post/entry/PostEntryDialog;->dismiss()V

    .line 4
    return-void
.end method

.method private static synthetic lambda$doPost$6(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 4
    return-void
.end method

.method private synthetic lambda$inflateView$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/post/entry/PostEntryDialog;->dismiss()V

    .line 4
    return-void
.end method

.method private synthetic lambda$inflateView$1(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/post/entry/PostEntryDialog;->dismiss()V

    .line 4
    return-void
.end method

.method private synthetic lambda$inflateView$2(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/post/entry/PostEntryDialog;->dismiss()V

    .line 4
    return-void
.end method

.method private synthetic lambda$inflateView$3(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/post/entry/PostEntryDialog;->dismiss()V

    .line 4
    return-void
.end method

.method private synthetic lambda$inflateView$4(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->createAmino:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "Community"

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
    new-instance p1, Lcom/narvii/master/MasterHelper;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/narvii/master/MasterHelper;->createAmino(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/post/entry/PostEntryDialog;->dismiss()V

    .line 30
    return-void
.end method

.method private synthetic lambda$inflateView$5(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/post/entry/PostEntryDialog;->dismiss()V

    .line 4
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setCurrent(IZ)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->current:I

    .line 3
    .line 4
    iput v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->prev:I

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->current:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/narvii/post/entry/PostEntryDialog;->inflateView(IZ)V

    .line 10
    return-void
.end method

.method private updateEntryItems([Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->getFilteredEntryKeys([Ljava/lang/String;)Ljava/util/List;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/narvii/post/entry/PostEntryDialog;->entryItemClickListener:Lcom/narvii/post/entry/EntryItemClickListener;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/post/entry/PostEntrySnakeLayout;->setEntryKeys(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/post/entry/EntryItemClickListener;)V

    .line 19
    return-void
.end method

.method private updatePostEntryIcon(Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0b41

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    const v1, 0x7f0a0b44

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    instance-of v2, v1, Lcom/narvii/widget/TintButton;

    .line 20
    .line 21
    .line 22
    const v3, 0x7f080870

    .line 23
    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    check-cast v1, Lcom/narvii/widget/TintButton;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    const-string v4, "config"

    .line 39
    .line 40
    .line 41
    invoke-interface {v2, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-interface {v2}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 52
    move-result v2

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_1
    const v2, -0x777778

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {v1, v2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 60
    .line 61
    iget-object v2, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    iget v3, p0, Lcom/narvii/post/entry/PostEntryDialog;->entry:I

    .line 68
    .line 69
    const/16 v4, 0xb

    .line 70
    .line 71
    if-ne v3, v4, :cond_2

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    const-string v3, "#6D43EB"

    .line 76
    .line 77
    .line 78
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 79
    move-result v3

    .line 80
    .line 81
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_3
    instance-of v2, v1, Landroid/widget/ImageView;

    .line 91
    .line 92
    if-eqz v2, :cond_4

    .line 93
    .line 94
    check-cast v1, Landroid/widget/ImageView;

    .line 95
    .line 96
    iget-object v2, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    .line 105
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 106
    .line 107
    instance-of v2, v1, Lcom/narvii/app/NVFragment;

    .line 108
    .line 109
    if-eqz v2, :cond_5

    .line 110
    .line 111
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 118
    goto :goto_2

    .line 119
    .line 120
    :cond_5
    instance-of v2, v1, Lcom/narvii/app/NVActivity;

    .line 121
    .line 122
    if-eqz v2, :cond_6

    .line 123
    .line 124
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 125
    goto :goto_2

    .line 126
    :cond_6
    const/4 v1, 0x0

    .line 127
    :goto_2
    const/4 v2, 0x0

    .line 128
    .line 129
    if-eqz p1, :cond_9

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 136
    .line 137
    if-eqz v3, :cond_b

    .line 138
    .line 139
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/narvii/app/theme/NVThemeActivity;->isBottomAdsViewVisible()Z

    .line 143
    move-result v3

    .line 144
    .line 145
    if-eqz v3, :cond_7

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 149
    move-result-object v1

    .line 150
    .line 151
    .line 152
    const v3, 0x7f070058

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 156
    move-result v1

    .line 157
    .line 158
    iget v3, p1, Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;->marginBottom:I

    .line 159
    add-int/2addr v1, v3

    .line 160
    goto :goto_3

    .line 161
    .line 162
    :cond_7
    iget v1, p1, Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;->marginBottom:I

    .line 163
    .line 164
    :goto_3
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 165
    .line 166
    .line 167
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 168
    move-result v1

    .line 169
    .line 170
    if-eqz v1, :cond_8

    .line 171
    .line 172
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 173
    .line 174
    iget p1, p1, Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;->marginRight:I

    .line 175
    .line 176
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 177
    goto :goto_5

    .line 178
    .line 179
    :cond_8
    iget p1, p1, Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;->marginRight:I

    .line 180
    .line 181
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 182
    .line 183
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 184
    goto :goto_5

    .line 185
    .line 186
    :cond_9
    instance-of p1, v1, Lcom/narvii/app/DrawerActivity;

    .line 187
    .line 188
    if-eqz p1, :cond_b

    .line 189
    move-object p1, v1

    .line 190
    .line 191
    check-cast p1, Lcom/narvii/app/DrawerActivity;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/narvii/app/DrawerActivity;->getPostEntryView()Lcom/narvii/post/entry/PostEntryView;

    .line 195
    move-result-object p1

    .line 196
    .line 197
    if-eqz p1, :cond_b

    .line 198
    .line 199
    .line 200
    const v3, 0x7f0a0b43

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 204
    move-result-object v3

    .line 205
    .line 206
    if-eqz v3, :cond_b

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 210
    move-result-object v4

    .line 211
    .line 212
    instance-of v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 213
    .line 214
    if-eqz v4, :cond_b

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 218
    move-result-object v4

    .line 219
    .line 220
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Lcom/narvii/app/theme/NVThemeActivity;->isBottomAdsViewVisible()Z

    .line 224
    move-result v1

    .line 225
    .line 226
    if-eqz v1, :cond_a

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 230
    move-result-object p1

    .line 231
    .line 232
    .line 233
    const v1, 0x7f070057

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 237
    move-result p1

    .line 238
    float-to-int p1, p1

    .line 239
    goto :goto_4

    .line 240
    .line 241
    :cond_a
    const/high16 p1, -0x40800000    # -1.0f

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    .line 245
    move-result v1

    .line 246
    mul-float/2addr v1, p1

    .line 247
    float-to-int p1, v1

    .line 248
    .line 249
    :goto_4
    iput p1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 253
    move-result-object p1

    .line 254
    .line 255
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 256
    .line 257
    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 261
    move-result-object p1

    .line 262
    .line 263
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 264
    .line 265
    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 266
    :cond_b
    :goto_5
    return-void
.end method


# virtual methods
.method public addTmpExtraData(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->tmpExtraData:Landroid/os/Bundle;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->tmpExtraData:Landroid/os/Bundle;

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 16
    :goto_0
    return-void
.end method

.method public dismiss()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->dismissing:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->dismissing:Z

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->tmpExtraData:Landroid/os/Bundle;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/post/entry/PostEntrySnakeLayout;->go(Z)I

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x2

    .line 20
    .line 21
    new-array v1, v1, [F

    .line 22
    .line 23
    .line 24
    fill-array-data v1, :array_0

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 28
    move-result-object v1

    .line 29
    int-to-long v2, v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 41
    .line 42
    new-instance v0, Lcom/narvii/post/entry/PostEntryDialog$2;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/narvii/post/entry/PostEntryDialog$2;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 52
    return-void

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public doPost(ILjava/lang/String;)V
    .locals 10

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog;->tmpExtraData:Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/post/entry/PostEntryDialog;->dismiss()V

    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    const-string v2, "post"

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    if-eq p1, v0, :cond_13

    .line 13
    .line 14
    if-eq p1, v1, :cond_12

    .line 15
    const/4 v4, 0x3

    .line 16
    .line 17
    if-eq p1, v4, :cond_11

    .line 18
    const/4 v5, 0x5

    .line 19
    const/4 v6, 0x4

    .line 20
    .line 21
    if-eq p1, v6, :cond_10

    .line 22
    const/4 v7, 0x7

    .line 23
    .line 24
    if-eq p1, v5, :cond_e

    .line 25
    .line 26
    const/16 v5, 0xc

    .line 27
    .line 28
    if-eq p1, v5, :cond_c

    .line 29
    .line 30
    const/16 v4, 0x14

    .line 31
    const/4 v5, 0x0

    .line 32
    .line 33
    const/16 v8, 0x17

    .line 34
    .line 35
    if-eq p1, v4, :cond_3

    .line 36
    .line 37
    if-eq p1, v8, :cond_3

    .line 38
    .line 39
    const/16 p2, 0xf

    .line 40
    .line 41
    const/16 v4, 0x10

    .line 42
    .line 43
    if-eq p1, p2, :cond_0

    .line 44
    .line 45
    if-eq p1, v4, :cond_0

    .line 46
    :goto_0
    move-object p2, v3

    .line 47
    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_0
    new-instance p2, Landroid/content/Intent;

    .line 51
    .line 52
    iget-object v8, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    .line 53
    .line 54
    const-class v9, Lcom/narvii/blog/post/PollPostActivity;

    .line 55
    .line 56
    .line 57
    invoke-direct {p2, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .line 59
    new-instance v8, Lcom/narvii/blog/post/BlogPost;

    .line 60
    .line 61
    .line 62
    invoke-direct {v8}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    .line 63
    .line 64
    iput v6, v8, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 68
    move-result-object v6

    .line 69
    .line 70
    const-string v9, "pollSettings"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, v9}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putObject(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 74
    move-result-object v9

    .line 75
    .line 76
    if-ne p1, v4, :cond_1

    .line 77
    move v5, v0

    .line 78
    .line 79
    :cond_1
    const-string p1, "polloptType"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9, p1, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 83
    .line 84
    const-string p1, "joinEnabled"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v9, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 88
    .line 89
    iput-object v6, v8, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 90
    .line 91
    iput v7, v8, Lcom/narvii/blog/post/BlogPost;->durationInDays:I

    .line 92
    .line 93
    iget p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->entry:I

    .line 94
    .line 95
    if-ne p1, v1, :cond_2

    .line 96
    .line 97
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->blogCategoryList:Ljava/util/List;

    .line 98
    .line 99
    iput-object p1, v8, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-static {v8}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :cond_3
    if-ne p1, v8, :cond_4

    .line 111
    goto :goto_1

    .line 112
    :cond_4
    move v0, v5

    .line 113
    .line 114
    :goto_1
    sget-object p1, Lcom/narvii/logging/ActSemantic;->createChat:Lcom/narvii/logging/ActSemantic;

    .line 115
    .line 116
    .line 117
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    const-string v1, "GoLive"

    .line 123
    goto :goto_2

    .line 124
    .line 125
    :cond_5
    const-string v1, "Chat"

    .line 126
    .line 127
    .line 128
    :goto_2
    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 133
    .line 134
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 135
    .line 136
    const-string v1, "config"

    .line 137
    .line 138
    .line 139
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    move-result-object p1

    .line 141
    .line 142
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 146
    move-result p1

    .line 147
    .line 148
    const-string v1, "GO_LIVE"

    .line 149
    .line 150
    const-string v4, "doAfter"

    .line 151
    .line 152
    const-class v5, Lcom/narvii/chat/post/ThreadPostNewActivity;

    .line 153
    .line 154
    if-nez p1, :cond_b

    .line 155
    .line 156
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 157
    .line 158
    const-string v6, "account"

    .line 159
    .line 160
    .line 161
    invoke-interface {p1, v6}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    move-result-object p1

    .line 163
    .line 164
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserAccount()Lcom/narvii/model/User;

    .line 168
    move-result-object p1

    .line 169
    .line 170
    if-eqz p1, :cond_a

    .line 171
    .line 172
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 173
    .line 174
    const-string v6, "membership"

    .line 175
    .line 176
    .line 177
    invoke-interface {p1, v6}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    move-result-object p1

    .line 179
    .line 180
    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 181
    .line 182
    new-instance v6, Lcom/narvii/modulization/entry/EntryManager;

    .line 183
    .line 184
    iget-object v7, p0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 185
    .line 186
    .line 187
    invoke-direct {v6, v7}, Lcom/narvii/modulization/entry/EntryManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 188
    .line 189
    iget-object v7, p0, Lcom/narvii/post/entry/PostEntryDialog;->accountService:Lcom/narvii/account/AccountService;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v7}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 193
    move-result-object v7

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6, v7, v0}, Lcom/narvii/modulization/entry/EntryManager;->canUserChat(Lcom/narvii/model/User;Z)Lcom/narvii/modulization/entry/EntryEligibleCheckResult;

    .line 197
    move-result-object v6

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 201
    move-result p1

    .line 202
    .line 203
    if-nez p1, :cond_6

    .line 204
    .line 205
    iget-boolean p1, v6, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    .line 206
    .line 207
    if-nez p1, :cond_6

    .line 208
    .line 209
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 210
    .line 211
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    .line 212
    .line 213
    .line 214
    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 215
    .line 216
    iget-object p2, v6, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->errorString:Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 220
    .line 221
    new-instance p2, Lcom/narvii/post/entry/c;

    .line 222
    .line 223
    .line 224
    invoke-direct {p2, p1}, Lcom/narvii/post/entry/c;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    .line 225
    .line 226
    .line 227
    const v0, 0x104000a

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v0, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :cond_6
    new-instance p1, Landroid/content/Intent;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 241
    move-result-object v6

    .line 242
    .line 243
    .line 244
    invoke-direct {p1, v6, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .line 246
    new-instance v5, Lcom/narvii/chat/post/ThreadPost;

    .line 247
    .line 248
    .line 249
    invoke-direct {v5}, Lcom/narvii/chat/post/ThreadPost;-><init>()V

    .line 250
    .line 251
    if-eqz v0, :cond_7

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    .line 256
    .line 257
    invoke-static {v5}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    move-result-object p2

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    goto :goto_4

    .line 263
    .line 264
    :cond_7
    if-eqz p2, :cond_8

    .line 265
    .line 266
    const-string v0, "default_story_topic"

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    move-result-object p2

    .line 271
    .line 272
    const-class v0, Lcom/narvii/model/story/StoryTopic;

    .line 273
    .line 274
    .line 275
    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 276
    move-result-object p2

    .line 277
    .line 278
    check-cast p2, Lcom/narvii/model/story/StoryTopic;

    .line 279
    goto :goto_3

    .line 280
    :cond_8
    move-object p2, v3

    .line 281
    .line 282
    :goto_3
    if-eqz p2, :cond_9

    .line 283
    .line 284
    new-instance v0, Ljava/util/ArrayList;

    .line 285
    .line 286
    .line 287
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .line 289
    iput-object v0, v5, Lcom/narvii/chat/post/ThreadPost;->userAddedTopicList:Ljava/util/List;

    .line 290
    .line 291
    .line 292
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    :cond_9
    invoke-static {v5}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 296
    move-result-object v0

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    .line 301
    const-string v0, "topic"

    .line 302
    .line 303
    .line 304
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 305
    move-result-object p2

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    :goto_4
    move-object p2, p1

    .line 310
    .line 311
    goto/16 :goto_5

    .line 312
    .line 313
    :cond_a
    new-instance p1, Landroid/content/Intent;

    .line 314
    .line 315
    const-string p2, "ndc://login"

    .line 316
    .line 317
    .line 318
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 319
    move-result-object p2

    .line 320
    .line 321
    const-string v0, "android.intent.action.VIEW"

    .line 322
    .line 323
    .line 324
    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 325
    .line 326
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 327
    .line 328
    .line 329
    invoke-static {p2, p1}, Lcom/narvii/post/entry/PostEntryDialog;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 330
    return-void

    .line 331
    .line 332
    :cond_b
    new-instance p2, Landroid/content/Intent;

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 336
    move-result-object p1

    .line 337
    .line 338
    .line 339
    invoke-direct {p2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    .line 341
    new-instance p1, Lcom/narvii/chat/post/ThreadPost;

    .line 342
    .line 343
    .line 344
    invoke-direct {p1}, Lcom/narvii/chat/post/ThreadPost;-><init>()V

    .line 345
    .line 346
    .line 347
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 348
    move-result-object p1

    .line 349
    .line 350
    .line 351
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    .line 353
    if-eqz v0, :cond_15

    .line 354
    .line 355
    .line 356
    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    .line 358
    goto/16 :goto_5

    .line 359
    .line 360
    :cond_c
    new-instance p2, Landroid/content/Intent;

    .line 361
    .line 362
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    .line 363
    .line 364
    const-class v0, Lcom/narvii/blog/post/TopicPostActivity;

    .line 365
    .line 366
    .line 367
    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 368
    .line 369
    new-instance p1, Lcom/narvii/blog/post/BlogPost;

    .line 370
    .line 371
    .line 372
    invoke-direct {p1}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    .line 373
    .line 374
    iput v4, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 375
    .line 376
    iget v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->entry:I

    .line 377
    .line 378
    if-ne v0, v1, :cond_d

    .line 379
    .line 380
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->blogCategoryList:Ljava/util/List;

    .line 381
    .line 382
    iput-object v0, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 383
    .line 384
    .line 385
    :cond_d
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 386
    move-result-object p1

    .line 387
    .line 388
    .line 389
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    .line 391
    goto/16 :goto_5

    .line 392
    .line 393
    :cond_e
    new-instance p2, Landroid/content/Intent;

    .line 394
    .line 395
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    .line 396
    .line 397
    const-class v0, Lcom/narvii/blog/post/ImagePostActivity;

    .line 398
    .line 399
    .line 400
    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 401
    .line 402
    new-instance p1, Lcom/narvii/blog/post/BlogPost;

    .line 403
    .line 404
    .line 405
    invoke-direct {p1}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    .line 406
    .line 407
    iput v7, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 408
    .line 409
    iget v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->entry:I

    .line 410
    .line 411
    if-ne v0, v1, :cond_f

    .line 412
    .line 413
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->blogCategoryList:Ljava/util/List;

    .line 414
    .line 415
    iput-object v0, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 416
    .line 417
    .line 418
    :cond_f
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 419
    move-result-object p1

    .line 420
    .line 421
    .line 422
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    goto :goto_5

    .line 424
    .line 425
    :cond_10
    new-instance p1, Lcom/narvii/blog/post/BlogPost;

    .line 426
    .line 427
    .line 428
    invoke-direct {p1}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    .line 429
    .line 430
    iput v5, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 431
    .line 432
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog;->blogCategoryList:Ljava/util/List;

    .line 433
    .line 434
    iput-object p2, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 435
    .line 436
    new-instance p2, Landroid/content/Intent;

    .line 437
    .line 438
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    .line 439
    .line 440
    const-class v1, Lcom/narvii/blog/post/LinkPostActivity;

    .line 441
    .line 442
    .line 443
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 444
    .line 445
    .line 446
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 447
    move-result-object p1

    .line 448
    .line 449
    .line 450
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    goto :goto_5

    .line 452
    .line 453
    :cond_11
    new-instance p1, Lcom/narvii/blog/post/BlogPost;

    .line 454
    .line 455
    .line 456
    invoke-direct {p1}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    .line 457
    const/4 p2, 0x6

    .line 458
    .line 459
    iput p2, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 460
    .line 461
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog;->blogCategoryList:Ljava/util/List;

    .line 462
    .line 463
    iput-object p2, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 464
    .line 465
    new-instance p2, Landroid/content/Intent;

    .line 466
    .line 467
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    .line 468
    .line 469
    const-class v1, Lcom/narvii/blog/post/QuizPostActivity;

    .line 470
    .line 471
    .line 472
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 473
    .line 474
    .line 475
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 476
    move-result-object p1

    .line 477
    .line 478
    .line 479
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    goto :goto_5

    .line 481
    .line 482
    :cond_12
    new-instance p2, Landroid/content/Intent;

    .line 483
    .line 484
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    .line 485
    .line 486
    const-class v0, Lcom/narvii/item/post/ItemPostActivity;

    .line 487
    .line 488
    .line 489
    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 490
    .line 491
    new-instance p1, Lcom/narvii/item/post/ItemPost;

    .line 492
    .line 493
    .line 494
    invoke-direct {p1}, Lcom/narvii/item/post/ItemPost;-><init>()V

    .line 495
    .line 496
    .line 497
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 498
    move-result-object p1

    .line 499
    .line 500
    .line 501
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    goto :goto_5

    .line 503
    .line 504
    :cond_13
    new-instance p2, Landroid/content/Intent;

    .line 505
    .line 506
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    .line 507
    .line 508
    const-class v0, Lcom/narvii/blog/post/BlogPostActivity;

    .line 509
    .line 510
    .line 511
    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 512
    .line 513
    new-instance p1, Lcom/narvii/blog/post/BlogPost;

    .line 514
    .line 515
    .line 516
    invoke-direct {p1}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    .line 517
    .line 518
    iget v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->entry:I

    .line 519
    .line 520
    if-ne v0, v1, :cond_14

    .line 521
    .line 522
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->blogCategoryList:Ljava/util/List;

    .line 523
    .line 524
    iput-object v0, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 525
    .line 526
    .line 527
    :cond_14
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 528
    move-result-object p1

    .line 529
    .line 530
    .line 531
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    .line 533
    :cond_15
    :goto_5
    if-eqz p2, :cond_17

    .line 534
    .line 535
    const-string p1, "Source"

    .line 536
    .line 537
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->source:Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    .line 542
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 543
    .line 544
    if-nez p1, :cond_16

    .line 545
    goto :goto_6

    .line 546
    .line 547
    .line 548
    :cond_16
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 549
    move-result-object v3

    .line 550
    .line 551
    :goto_6
    const-string p1, "loggingSource"

    .line 552
    .line 553
    .line 554
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    .line 556
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->context:Landroid/content/Context;

    .line 557
    .line 558
    .line 559
    invoke-static {p1, p2}, Lcom/narvii/post/entry/PostEntryDialog;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 560
    :cond_17
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

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    return-object p1

    .line 9
    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    array-length v2, p1

    .line 16
    .line 17
    if-ge v1, v2, :cond_3

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/post/entry/PostEntryDialog;->entryManager:Lcom/narvii/modulization/entry/EntryManager;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/narvii/post/entry/PostEntryDialog;->accountService:Lcom/narvii/account/AccountService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 25
    move-result v3

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    iget-object v3, p0, Lcom/narvii/post/entry/PostEntryDialog;->accountService:Lcom/narvii/account/AccountService;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 33
    move-result-object v3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v3, 0x0

    .line 36
    .line 37
    :goto_1
    aget-object v4, p1, v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3, v4}, Lcom/narvii/modulization/entry/EntryManager;->isEntryEnabled(Lcom/narvii/model/User;Ljava/lang/String;)Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    aget-object v2, p1, v1

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "compose_panel"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->current:I

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/post/entry/PostEntryDialog;->entry:I

    .line 5
    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 17
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    const-string v0, "poll"

    .line 7
    .line 8
    .line 9
    sparse-switch p1, :sswitch_data_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :sswitch_0
    const/16 p1, 0xf

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :sswitch_1
    const/16 p1, 0x10

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :sswitch_2
    invoke-virtual {p0}, Lcom/narvii/post/entry/PostEntryDialog;->dismiss()V

    .line 26
    :goto_0
    return-void

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    :sswitch_data_0
    .sparse-switch
        0x7f0a0b42 -> :sswitch_2
        0x7f0a0b5b -> :sswitch_1
        0x7f0a0b5c -> :sswitch_0
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

    iget v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->entry:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->blogCategoryList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->tmpExtraData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "key_entry"

    .line 1
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    const-string v0, "FAB"

    .line 2
    sget-object v2, Lcom/narvii/util/logging/LoggingSource;->GlobalComposeMenu:Lcom/narvii/util/logging/LoggingSource;

    invoke-virtual {p0, v1, v0, v2}, Lcom/narvii/post/entry/PostEntryDialog;->show(ILjava/lang/String;Lcom/narvii/util/logging/LoggingSource;)V

    return-void
.end method

.method public show(ILjava/lang/String;Lcom/narvii/util/logging/LoggingSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/post/entry/PostEntryDialog;->show(ILjava/lang/String;Lcom/narvii/util/logging/LoggingSource;Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;)V

    return-void
.end method

.method public show(ILjava/lang/String;Lcom/narvii/util/logging/LoggingSource;Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;)V
    .locals 2

    iget-boolean v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->dismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    .line 3
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 4
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserAccount()Lcom/narvii/model/User;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    new-instance p1, Landroid/content/Intent;

    const-string p2, "ndc://login"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 6
    invoke-static {p2, p1}, Lcom/narvii/post/entry/PostEntryDialog;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    return-void

    :cond_1
    iput p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->entry:I

    iput-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog;->source:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/post/entry/PostEntryDialog;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    const/4 p2, 0x0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/narvii/post/entry/PostEntryDialog;->setCurrent(IZ)V

    .line 8
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog;->postEntryContainerLayout:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    const/4 p2, 0x1

    .line 9
    invoke-virtual {p1, p2}, Lcom/narvii/post/entry/PostEntrySnakeLayout;->go(Z)I

    move-result p1

    const/4 p2, 0x2

    new-array p3, p2, [F

    fill-array-data p3, :array_0

    .line 10
    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 11
    div-int/2addr p1, p2

    const/16 p2, 0x12c

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 12
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    new-instance p1, Lcom/narvii/post/entry/PostEntryDialog$1;

    invoke-direct {p1, p0}, Lcom/narvii/post/entry/PostEntryDialog$1;-><init>(Lcom/narvii/post/entry/PostEntryDialog;)V

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    .line 15
    invoke-direct {p0, p4}, Lcom/narvii/post/entry/PostEntryDialog;->updatePostEntryIcon(Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
