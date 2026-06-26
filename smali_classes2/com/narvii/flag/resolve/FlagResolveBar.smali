.class public Lcom/narvii/flag/resolve/FlagResolveBar;
.super Landroid/widget/LinearLayout;
.source "FlagResolveBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/flag/resolve/FlagResolveBar$FlagAttachObject;
    }
.end annotation


# static fields
.field private static final deleteObjectTypes:[I

.field private static final disableObjectTypes:[I


# instance fields
.field private flagListener:Landroid/view/View$OnClickListener;

.field private isEnd:Z

.field private mContext:Lcom/narvii/app/NVContext;

.field public mFlag:Lcom/narvii/flag/model/Flag;

.field mFlagActionLayout:Landroid/widget/LinearLayout;

.field private mFlagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/flag/model/Flag;",
            ">;"
        }
    .end annotation
.end field

.field private mFlagSize:I

.field mFlagTagLayout:Lcom/narvii/flag/widgets/FlagTagsLayout;

.field mHideActionLayout:Landroid/widget/RelativeLayout;

.field mKeepActionLayout:Landroid/widget/RelativeLayout;

.field private mReqFilter:Ljava/lang/String;

.field private mReqType:Ljava/lang/String;

.field mResolvedLayout:Landroid/widget/RelativeLayout;

.field private pageSize:I

.field private shouldSenReq:Z

.field private stopTime:Ljava/lang/String;

.field tvHideView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 79
    fill-array-data v0, :array_0

    sput-object v0, Lcom/narvii/flag/resolve/FlagResolveBar;->disableObjectTypes:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 82
    fill-array-data v0, :array_1

    sput-object v0, Lcom/narvii/flag/resolve/FlagResolveBar;->deleteObjectTypes:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0xc
        0x0
        0x17
        0x6d
    .end array-data

    :array_1
    .array-data 4
        0x7
        0x3
    .end array-data
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;Lcom/narvii/flag/model/Flag;)V
    .locals 1

    .line 115
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "all"

    .line 70
    iput-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mReqFilter:Ljava/lang/String;

    const-string p2, "pending"

    .line 71
    iput-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mReqType:Ljava/lang/String;

    const/4 p2, 0x0

    .line 76
    iput-boolean p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->shouldSenReq:Z

    .line 168
    new-instance p2, Lcom/narvii/flag/resolve/FlagResolveBar$2;

    invoke-direct {p2, p0}, Lcom/narvii/flag/resolve/FlagResolveBar$2;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;)V

    iput-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->flagListener:Landroid/view/View$OnClickListener;

    .line 116
    iput-object p3, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 117
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    .line 118
    invoke-direct {p0}, Lcom/narvii/flag/resolve/FlagResolveBar;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/flag/resolve/FlagResolveBar;-><init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;Lcom/narvii/flag/model/Flag;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/flag/model/Flag;",
            "Ljava/util/List<",
            "Lcom/narvii/flag/model/Flag;",
            ">;I)V"
        }
    .end annotation

    const-string v5, "all"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 91
    invoke-direct/range {v0 .. v6}, Lcom/narvii/flag/resolve/FlagResolveBar;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/flag/model/Flag;",
            "Ljava/util/List<",
            "Lcom/narvii/flag/model/Flag;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/flag/resolve/FlagResolveBar;-><init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;Lcom/narvii/flag/model/Flag;)V

    .line 96
    iput-object p3, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagList:Ljava/util/List;

    .line 97
    iput p4, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagSize:I

    const-string p2, "config"

    .line 98
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 99
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getPageSize()I

    move-result p1

    iput p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->pageSize:I

    .line 100
    iput-object p6, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->stopTime:Ljava/lang/String;

    const-string p1, "all"

    if-eqz p5, :cond_0

    const-string p2, "resolved"

    .line 101
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 102
    iput-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mReqType:Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mReqFilter:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p2, "pending"

    .line 105
    iput-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mReqType:Ljava/lang/String;

    if-eqz p5, :cond_1

    move-object p1, p5

    .line 106
    :cond_1
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mReqFilter:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/flag/resolve/FlagResolveBar;ILjava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/narvii/flag/resolve/FlagResolveBar;->sendHideRequest(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVActivity;
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/narvii/flag/resolve/FlagResolveBar;->getCurActivity()Lcom/narvii/app/NVActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1102(Lcom/narvii/flag/resolve/FlagResolveBar;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->isEnd:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/narvii/flag/resolve/FlagResolveBar;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/narvii/flag/resolve/FlagResolveBar;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagSize:I

    return p0
.end method

.method static synthetic access$1302(Lcom/narvii/flag/resolve/FlagResolveBar;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagSize:I

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/flag/resolve/FlagResolveBar;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/narvii/flag/resolve/FlagResolveBar;->keep()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/flag/resolve/FlagResolveBar;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->shouldSenReq:Z

    return p0
.end method

.method static synthetic access$400(Lcom/narvii/flag/resolve/FlagResolveBar;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mReqType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/flag/resolve/FlagResolveBar;ILjava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/narvii/flag/resolve/FlagResolveBar;->sendDisableRequest(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/flag/resolve/FlagResolveBar;ILjava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/narvii/flag/resolve/FlagResolveBar;->sendResolveRequest(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/flag/resolve/FlagResolveBar;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->showMessageUserDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/flag/resolve/FlagResolveBar;Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->messageMember(Lcom/narvii/model/NVObject;)V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/flag/resolve/FlagResolveBar;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/narvii/flag/resolve/FlagResolveBar;->sendStrike()V

    return-void
.end method

.method private finishFlagMode()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    .line 469
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 470
    :cond_0
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_1

    .line 471
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method private getCurActivity()Lcom/narvii/app/NVActivity;
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    .line 477
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    return-object v0

    .line 478
    :cond_0
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_1

    .line 479
    check-cast v0, Lcom/narvii/app/NVActivity;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private init()V
    .locals 4

    .line 128
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0264

    invoke-static {v0, v1, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f090479

    .line 129
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagActionLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f09048d

    .line 130
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/flag/widgets/FlagTagsLayout;

    iput-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagTagLayout:Lcom/narvii/flag/widgets/FlagTagsLayout;

    const v0, 0x7f090487

    .line 131
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mHideActionLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090488

    .line 132
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mKeepActionLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f09047a

    .line 133
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mResolvedLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f09050d

    .line 134
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->tvHideView:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mHideActionLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->flagListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mKeepActionLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->flagListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mResolvedLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->flagListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    if-eqz v0, :cond_1

    .line 141
    new-instance v0, Lcom/narvii/flag/FlagTag;

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0e8d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/narvii/flag/FlagTag;-><init>(ZLjava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget-object v1, v1, Lcom/narvii/flag/model/Flag;->flaggedTypes:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/flag/FlagTag;->getFlagTagList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v2, 0x0

    .line 146
    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagTagLayout:Lcom/narvii/flag/widgets/FlagTagsLayout;

    invoke-virtual {v0, v1}, Lcom/narvii/flag/widgets/FlagTagsLayout;->addTag(Ljava/util/List;)V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagTagLayout:Lcom/narvii/flag/widgets/FlagTagsLayout;

    new-instance v1, Lcom/narvii/flag/resolve/FlagResolveBar$1;

    invoke-direct {v1, p0}, Lcom/narvii/flag/resolve/FlagResolveBar$1;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;)V

    invoke-virtual {v0, v1}, Lcom/narvii/flag/widgets/FlagTagsLayout;->setTagsClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isDeleteType(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 548
    :goto_0
    sget-object v2, Lcom/narvii/flag/resolve/FlagResolveBar;->deleteObjectTypes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 549
    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isDisableType(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 539
    :goto_0
    sget-object v2, Lcom/narvii/flag/resolve/FlagResolveBar;->disableObjectTypes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 540
    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isQuizzesQuestion()Z
    .locals 5

    .line 557
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 558
    :cond_0
    iget v2, v0, Lcom/narvii/flag/model/Flag;->objectType:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    iget v0, v0, Lcom/narvii/flag/model/Flag;->parentType:I

    if-ne v0, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private keep()V
    .locals 5

    .line 194
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 195
    new-instance v1, Lcom/narvii/flag/resolve/FlagResolveBar$3;

    invoke-direct {v1, p0}, Lcom/narvii/flag/resolve/FlagResolveBar$3;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 201
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 202
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget v2, v1, Lcom/narvii/flag/model/Flag;->objectType:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    .line 204
    :goto_0
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flag/target-object/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget-object v3, v3, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/resolved"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    new-instance v3, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v3}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 207
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 208
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "resolveType"

    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "resolveMessage"

    .line 209
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 210
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    .line 211
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private launchNextFragment(Lcom/narvii/flag/model/Flag;Ljava/util/List;Lcom/narvii/app/NVActivity;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/flag/model/Flag;",
            "Ljava/util/List<",
            "Lcom/narvii/flag/model/Flag;",
            ">;",
            "Lcom/narvii/app/NVActivity;",
            ")V"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    iget v3, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagSize:I

    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mReqType:Ljava/lang/String;

    const-string v2, "resolved"

    .line 486
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mReqFilter:Ljava/lang/String;

    move-object v4, v1

    :goto_0
    iget-object v5, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->stopTime:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 485
    invoke-static/range {v0 .. v6}, Lcom/narvii/flag/resolve/FlagModeHelper;->launchFlagMode(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lcom/narvii/app/NVActivity;)V

    return-void
.end method

.method private loadNextPageList()V
    .locals 5

    .line 490
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 491
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 492
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v2, "/flag"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "status"

    const-string v3, "pending"

    .line 493
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 494
    iget-object v2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mReqFilter:Ljava/lang/String;

    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 495
    iget v2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "start"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 496
    iget v2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "size"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 497
    iget-object v2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->stopTime:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 498
    iget-object v2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->stopTime:Ljava/lang/String;

    const-string v3, "stoptime"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 500
    :cond_0
    iget-object v2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    const-string v3, "api"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 501
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    new-instance v3, Lcom/narvii/flag/resolve/FlagResolveBar$12;

    const-class v4, Lcom/narvii/flag/model/FlagListResponse;

    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/flag/resolve/FlagResolveBar$12;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private messageMember(Lcom/narvii/model/NVObject;)V
    .locals 4

    .line 426
    new-instance v0, Lcom/narvii/chat/RequestChatUserHelper;

    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/chat/RequestChatUserHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 427
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget v1, v1, Lcom/narvii/flag/model/Flag;->objectType:I

    new-instance v2, Lcom/narvii/flag/resolve/FlagResolveBar$11;

    invoke-direct {v2, p0}, Lcom/narvii/flag/resolve/FlagResolveBar$11;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;)V

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/narvii/chat/RequestChatUserHelper;->request(Lcom/narvii/model/NVObject;ILjava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private removeFlag(Lcom/narvii/flag/model/Flag;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 455
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 456
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/flag/model/Flag;

    .line 457
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 459
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/flag/model/Flag;

    .line 460
    iget-object v3, p1, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    iget-object v4, v2, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 461
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private sendDeletePlusRequest(ILjava/lang/String;)V
    .locals 4

    .line 285
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 286
    new-instance p2, Lcom/narvii/flag/resolve/FlagResolveBar$6;

    invoke-direct {p2, p0}, Lcom/narvii/flag/resolve/FlagResolveBar$6;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;)V

    iput-object p2, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 292
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 293
    iget-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 295
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget v0, v0, Lcom/narvii/flag/model/Flag;->objectType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/chat/thread/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget-object v1, v1, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/message/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget-object v1, v1, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 299
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v0

    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget v2, v1, Lcom/narvii/flag/model/Flag;->parentType:I

    iget-object v3, v1, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    iget-object v1, v1, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 302
    :goto_0
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 304
    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p2, v0, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private sendDisablePlusRequest(ILjava/lang/String;)V
    .locals 1

    .line 224
    invoke-direct {p0}, Lcom/narvii/flag/resolve/FlagResolveBar;->isQuizzesQuestion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/narvii/flag/resolve/FlagResolveBar;->showQuizzesConfirmDialog()V

    goto :goto_0

    .line 227
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/flag/resolve/FlagResolveBar;->sendDisableRequest(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendDisableRequest(ILjava/lang/String;)V
    .locals 4

    .line 258
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 259
    new-instance v1, Lcom/narvii/flag/resolve/FlagResolveBar$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/flag/resolve/FlagResolveBar$5;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;ILjava/lang/String;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 265
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 267
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    const-string p2, "api"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 268
    iget-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget v1, p2, Lcom/narvii/flag/model/Flag;->objectType:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_0

    iget v1, p2, Lcom/narvii/flag/model/Flag;->parentType:I

    .line 270
    :cond_0
    iget-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget v3, p2, Lcom/narvii/flag/model/Flag;->objectType:I

    if-ne v3, v2, :cond_1

    iget-object p2, p2, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    .line 272
    :goto_0
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    invoke-static {v1}, Lcom/narvii/model/NVObject;->apiTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/admin"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 274
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget v1, v1, Lcom/narvii/flag/model/Flag;->objectType:I

    const-string v2, "adminOpName"

    if-nez v1, :cond_2

    const/16 v1, 0x12

    .line 275
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_1

    :cond_2
    const/16 v1, 0x6e

    .line 277
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 v1, 0x9

    .line 278
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminOpValue"

    invoke-virtual {p2, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 280
    :goto_1
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    .line 281
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private sendHideRequest(ILjava/lang/String;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget v0, v0, Lcom/narvii/flag/model/Flag;->objectType:I

    invoke-direct {p0, v0}, Lcom/narvii/flag/resolve/FlagResolveBar;->isDisableType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/narvii/flag/resolve/FlagResolveBar;->sendDisablePlusRequest(ILjava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget v0, v0, Lcom/narvii/flag/model/Flag;->objectType:I

    invoke-direct {p0, v0}, Lcom/narvii/flag/resolve/FlagResolveBar;->isDeleteType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/narvii/flag/resolve/FlagResolveBar;->sendDeletePlusRequest(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendResolveRequest(ILjava/lang/String;)V
    .locals 4

    .line 308
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 309
    new-instance v0, Lcom/narvii/flag/resolve/FlagResolveBar$7;

    invoke-direct {v0, p0}, Lcom/narvii/flag/resolve/FlagResolveBar$7;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;)V

    iput-object v0, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 324
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 325
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flag/target-object/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget-object v2, v2, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/resolved"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 328
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "resolveType"

    const/4 v3, 0x0

    .line 329
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "resolveMessage"

    .line 330
    invoke-virtual {v1, v2, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 331
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    .line 332
    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p2, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private sendStrike()V
    .locals 4

    .line 409
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/chat/template/SendStrikeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 410
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 411
    iget-object v2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget-object v2, v2, Lcom/narvii/flag/model/Flag;->objectUser:Lcom/narvii/model/User;

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "attachObject"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "attachType"

    .line 412
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 413
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 414
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    check-cast v1, Lcom/narvii/app/NVFragment;

    const/16 v3, 0x12d

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 415
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    const v3, 0x7f01000e

    if-eqz v1, :cond_0

    .line 416
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 418
    :cond_0
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_1

    .line 419
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showMessageUserDialog(Ljava/lang/String;)V
    .locals 6

    .line 336
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 337
    new-instance v1, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 338
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result v1

    .line 339
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    move-result v0

    .line 342
    new-instance v2, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 343
    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f0b0046

    .line 344
    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    if-eqz v0, :cond_0

    const p1, 0x7f0902d0

    .line 346
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f106b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const p1, 0x7f090175

    .line 348
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090173

    .line 349
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 350
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f00ad

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 351
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0f79

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, Lcom/narvii/flag/resolve/FlagResolveBar$8;

    invoke-direct {v1, p0, v2}, Lcom/narvii/flag/resolve/FlagResolveBar$8;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/narvii/flag/resolve/FlagResolveBar$9;

    invoke-direct {v0, p0, v2}, Lcom/narvii/flag/resolve/FlagResolveBar$9;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090171

    .line 394
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0f03aa

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 395
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/narvii/flag/resolve/FlagResolveBar$10;

    invoke-direct {v0, p0, v2}, Lcom/narvii/flag/resolve/FlagResolveBar$10;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private showQuizzesConfirmDialog()V
    .locals 5

    .line 232
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/blog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget-object v2, v2, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 235
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v3, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/narvii/model/api/BlogResponse;

    invoke-direct {v2, v3, v4}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    new-instance v3, Lcom/narvii/flag/resolve/FlagResolveBar$4;

    invoke-direct {v3, p0}, Lcom/narvii/flag/resolve/FlagResolveBar$4;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;)V

    iput-object v3, v2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 254
    iget-object v2, v2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public loadNextFlag()V
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->isEnd:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    invoke-direct {p0, v0}, Lcom/narvii/flag/resolve/FlagResolveBar;->removeFlag(Lcom/narvii/flag/model/Flag;)V

    .line 440
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/flag/model/Flag;

    .line 442
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagList:Ljava/util/List;

    invoke-direct {p0}, Lcom/narvii/flag/resolve/FlagResolveBar;->getCurActivity()Lcom/narvii/app/NVActivity;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/narvii/flag/resolve/FlagResolveBar;->launchNextFragment(Lcom/narvii/flag/model/Flag;Ljava/util/List;Lcom/narvii/app/NVActivity;)V

    if-nez v0, :cond_3

    .line 444
    invoke-direct {p0}, Lcom/narvii/flag/resolve/FlagResolveBar;->finishFlagMode()V

    goto :goto_1

    .line 448
    :cond_1
    invoke-direct {p0}, Lcom/narvii/flag/resolve/FlagResolveBar;->loadNextPageList()V

    goto :goto_1

    .line 437
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/narvii/flag/resolve/FlagResolveBar;->finishFlagMode()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setLeftText(Ljava/lang/String;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->tvHideView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showAlreadyResolved()V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mResolvedLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagActionLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagTagLayout:Lcom/narvii/flag/widgets/FlagTagsLayout;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 528
    iput-boolean v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->shouldSenReq:Z

    return-void
.end method

.method public showResolvedWithoutReq()V
    .locals 3

    .line 532
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mResolvedLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagActionLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagTagLayout:Lcom/narvii/flag/widgets/FlagTagsLayout;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 535
    iput-boolean v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->shouldSenReq:Z

    return-void
.end method
