.class public Lcom/narvii/flag/FlagListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "FlagListFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/app/FragmentWillFinishListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/flag/FlagListFragment$FlagListAdapter;
    }
.end annotation


# static fields
.field private static final FAKE_EXTERNAL_POST_TYPE:I = 0x68

.field private static final FAKE_LINK_POST_TYPE:I = 0x67

.field private static final FAKE_POLL_TYPE:I = 0x65

.field private static final FAKE_QUESTION_TYPE:I = 0x64

.field private static final FAKE_QUIZ_TYPE:I = 0x66

.field private static final KEY_API_FILTER_RESOLVED:Ljava/lang/String; = "resolved"

.field private static final KEY_DEFAULT_FILTER_TYPE:Ljava/lang/String; = "all"

.field private static final KEY_DEFAULT_REQUEST_TYPE:Ljava/lang/String; = "pending"

.field private static final RESOLVE_MODE_REQUEST:I = 0x64


# instance fields
.field private apiMapper:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private emptyView:Landroid/view/View;

.field private mAdapter:Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

.field private mReqFilter:Ljava/lang/String;

.field private mReqType:Ljava/lang/String;

.field private mResolveLayout:Landroid/view/View;

.field private mStopTime:Ljava/lang/String;

.field private objectFakeTypeMapper:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private objectNameMapper:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const-string v0, "pending"

    .line 62
    iput-object v0, p0, Lcom/narvii/flag/FlagListFragment;->mReqType:Ljava/lang/String;

    const-string v0, "all"

    .line 63
    iput-object v0, p0, Lcom/narvii/flag/FlagListFragment;->mReqFilter:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectFakeTypeMapper:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/flag/FlagListFragment;->mReqType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment;->mReqType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/flag/FlagListFragment;->mReqFilter:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment;->mReqFilter:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/narvii/flag/FlagListFragment;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/flag/FlagListFragment;->mStopTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/narvii/flag/FlagListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment;->mStopTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/narvii/flag/FlagListFragment;)Lcom/narvii/flag/FlagListFragment$FlagListAdapter;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/flag/FlagListFragment;->mAdapter:Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/flag/FlagListFragment;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/flag/FlagListFragment;->mResolveLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/flag/FlagListFragment;)Landroid/util/SparseArray;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/flag/FlagListFragment;->objectFakeTypeMapper:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/flag/FlagListFragment;I)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/narvii/flag/FlagListFragment;->getFlagObjectName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getApiName(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private getFilterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    return-object v1

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFlagObjectName(I)Ljava/lang/String;
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 455
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0f0ffd

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 456
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private initApiMapper()V
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f06cc

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f06ce

    const-string v2, "bullying"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f06cf

    const-string v2, "nappropriate-content"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f06d2

    const-string v2, "spam"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f06cd

    const-string v2, "art-theft"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f06d0

    const-string v2, "off-topic"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f06d3

    const-string/jumbo v2, "trolling"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 470
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f0d13

    const-string v2, "others"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 471
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->apiMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f06d1

    const-string v2, "resolved"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private initObjectFakeMapper()V
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectFakeTypeMapper:Landroid/util/SparseArray;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 498
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectFakeTypeMapper:Landroid/util/SparseArray;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 499
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectFakeTypeMapper:Landroid/util/SparseArray;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 500
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectFakeTypeMapper:Landroid/util/SparseArray;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 501
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectFakeTypeMapper:Landroid/util/SparseArray;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private initObjectNameMapper()V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f0cf4

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f036f

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f119a

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f029b

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f0d87

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f0223

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 481
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f06fa

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f06fc

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 483
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f01b4

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 484
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f02c2

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 485
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f06fb

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 486
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f0170

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 487
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f0e77

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 488
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f0d50

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f0379

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f0378

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 491
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f0d7a

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 492
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f037a

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 493
    iget-object v0, p0, Lcom/narvii/flag/FlagListFragment;->objectNameMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f0d1a

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x68

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 268
    new-instance p1, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;-><init>(Lcom/narvii/flag/FlagListFragment;)V

    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment;->mAdapter:Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    return-object p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    const-string p2, "flag_resolve_back_mode"

    .line 152
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 156
    new-instance p2, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const p3, 0x7f0f06e6

    .line 157
    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setTitle(I)V

    const/16 p3, 0xce

    const/16 v0, 0x7d

    .line 158
    invoke-static {p1, p3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    const p1, 0x7f0f06eb

    .line 159
    invoke-virtual {p2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const p1, 0x104000a

    const/4 p3, 0x4

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p2, p1, p3, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 161
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 78
    invoke-direct {p0}, Lcom/narvii/flag/FlagListFragment;->initApiMapper()V

    .line 79
    invoke-direct {p0}, Lcom/narvii/flag/FlagListFragment;->initObjectNameMapper()V

    .line 80
    invoke-direct {p0}, Lcom/narvii/flag/FlagListFragment;->initObjectFakeMapper()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 169
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f06ba

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 170
    invoke-interface {p1, v0, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f080368

    .line 171
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 172
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b025e

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 2

    .line 248
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/16 p2, 0xa

    .line 249
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    const p1, 0x7f0b0268

    .line 250
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment;->emptyView:Landroid/view/View;

    .line 251
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment;->emptyView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 253
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment;->mReqType:Ljava/lang/String;

    const-string p2, "resolved"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, " "

    const v1, 0x7f0f06ea

    if-eqz p1, :cond_0

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/narvii/flag/FlagListFragment;->getFilterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment;->mReqFilter:Ljava/lang/String;

    const-string p2, "all"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0f06e8

    .line 257
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 259
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/narvii/flag/FlagListFragment;->mReqFilter:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/narvii/flag/FlagListFragment;->getFilterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 262
    :goto_0
    iget-object p2, p0, Lcom/narvii/flag/FlagListFragment;->emptyView:Landroid/view/View;

    const v0, 0x7f0903e3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 139
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/flag/model/Flag;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "delete"

    if-ne v0, v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f06ba

    if-eq v0, v1, :cond_0

    .line 231
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 179
    :cond_0
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x7

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0f06cc

    aput v2, v0, v1

    .line 184
    iget-object v1, p0, Lcom/narvii/flag/FlagListFragment;->mReqType:Ljava/lang/String;

    const-string v3, "resolved"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x8

    const/4 v4, 0x4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/narvii/flag/FlagListFragment;->mReqFilter:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/narvii/flag/FlagListFragment;->getApiName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const v5, 0x7f0f06d0

    aput v5, v0, v2

    .line 186
    iget-object v6, p0, Lcom/narvii/flag/FlagListFragment;->mReqFilter:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/narvii/flag/FlagListFragment;->getApiName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    goto :goto_1

    :cond_2
    const/16 v6, 0x8

    :goto_1
    invoke-virtual {p1, v5, v6}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const/4 v5, 0x3

    const v6, 0x7f0f06ce

    aput v6, v0, v1

    .line 188
    iget-object v1, p0, Lcom/narvii/flag/FlagListFragment;->mReqFilter:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/narvii/flag/FlagListFragment;->getApiName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p1, v6, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const v1, 0x7f0f06d2

    aput v1, v0, v5

    .line 190
    iget-object v5, p0, Lcom/narvii/flag/FlagListFragment;->mReqFilter:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/narvii/flag/FlagListFragment;->getApiName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    goto :goto_3

    :cond_4
    const/16 v5, 0x8

    :goto_3
    invoke-virtual {p1, v1, v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const/4 v1, 0x5

    const v5, 0x7f0f0d13

    aput v5, v0, v4

    .line 192
    iget-object v6, p0, Lcom/narvii/flag/FlagListFragment;->mReqFilter:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/narvii/flag/FlagListFragment;->getApiName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x4

    goto :goto_4

    :cond_5
    const/16 v6, 0x8

    :goto_4
    invoke-virtual {p1, v5, v6}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const v5, 0x7f0f06d1

    aput v5, v0, v1

    .line 194
    iget-object v1, p0, Lcom/narvii/flag/FlagListFragment;->mReqType:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/narvii/flag/FlagListFragment;->getApiName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v3, 0x4

    :cond_6
    invoke-virtual {p1, v5, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 195
    new-instance v1, Lcom/narvii/flag/FlagListFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/narvii/flag/FlagListFragment$2;-><init>(Lcom/narvii/flag/FlagListFragment;[I)V

    invoke-virtual {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 227
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return v2
.end method

.method public onResume()V
    .locals 1

    .line 115
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 116
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 95
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0f0b10

    .line 96
    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const p2, 0x7f09096f

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment;->mResolveLayout:Landroid/view/View;

    .line 99
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment;->mResolveLayout:Landroid/view/View;

    new-instance p2, Lcom/narvii/flag/FlagListFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/flag/FlagListFragment$1;-><init>(Lcom/narvii/flag/FlagListFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment;->mResolveLayout:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 2

    const-string p1, "drawerHost"

    .line 133
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerHost;

    const-wide/16 v0, 0x0

    .line 134
    invoke-virtual {p1, v0, v1}, Lcom/narvii/drawer/DrawerHost;->refreshGeneralCount(J)Z

    return-void
.end method
