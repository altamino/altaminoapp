.class public Lcom/narvii/flag/resolve/FlagResolveBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


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
    .locals 2

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/narvii/flag/resolve/FlagResolveBar;->disableObjectTypes:[I

    const/4 v0, 0x7

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v0

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
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;Lcom/narvii/flag/model/Flag;)V
    .locals 1

    .line 7
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "all"

    iput-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mReqFilter:Ljava/lang/String;

    const-string p2, "pending"

    iput-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mReqType:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->shouldSenReq:Z

    .line 8
    new-instance p2, Lcom/narvii/flag/resolve/FlagResolveBar$2;

    invoke-direct {p2, p0}, Lcom/narvii/flag/resolve/FlagResolveBar$2;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;)V

    iput-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->flagListener:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    .line 9
    invoke-direct {p0}, Lcom/narvii/flag/resolve/FlagResolveBar;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
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

    .line 1
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

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/flag/resolve/FlagResolveBar;-><init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;Lcom/narvii/flag/model/Flag;)V

    iput-object p3, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagList:Ljava/util/List;

    iput p4, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagSize:I

    const-string p2, "config"

    .line 3
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 4
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getPageSize()I

    move-result p1

    iput p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->pageSize:I

    iput-object p6, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->stopTime:Ljava/lang/String;

    const-string p1, "all"

    if-eqz p5, :cond_0

    const-string p2, "resolved"

    .line 5
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iput-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mReqType:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mReqFilter:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string p2, "pending"

    iput-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mReqType:Ljava/lang/String;

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    move-object p5, p1

    :goto_0
    iput-object p5, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mReqFilter:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/flag/resolve/FlagResolveBar;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/flag/resolve/FlagResolveBar;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagSize:I

    return p0
.end method

.method static bridge synthetic d(Lcom/narvii/flag/resolve/FlagResolveBar;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mReqType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/flag/resolve/FlagResolveBar;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->shouldSenReq:Z

    return p0
.end method

.method static bridge synthetic f(Lcom/narvii/flag/resolve/FlagResolveBar;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->isEnd:Z

    return-void
.end method

.method private finishFlagMode()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/flag/resolve/FlagResolveBar;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagSize:I

    return-void
.end method

.method private getCurActivity()Lcom/narvii/app/NVActivity;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_0
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 22
    return-object v0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return-object v0
.end method

.method static bridge synthetic h(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVActivity;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/flag/resolve/FlagResolveBar;->getCurActivity()Lcom/narvii/app/NVActivity;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic i(Lcom/narvii/flag/resolve/FlagResolveBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/flag/resolve/FlagResolveBar;->keep()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0d028e

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0a05b9

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Landroid/widget/LinearLayout;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagActionLayout:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a05cd

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/flag/widgets/FlagTagsLayout;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagTagLayout:Lcom/narvii/flag/widgets/FlagTagsLayout;

    .line 33
    .line 34
    .line 35
    const v0, 0x7f0a05c7

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mHideActionLayout:Landroid/widget/RelativeLayout;

    .line 44
    .line 45
    .line 46
    const v0, 0x7f0a05c8

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mKeepActionLayout:Landroid/widget/RelativeLayout;

    .line 55
    .line 56
    .line 57
    const v0, 0x7f0a05ba

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mResolvedLayout:Landroid/widget/RelativeLayout;

    .line 66
    .line 67
    .line 68
    const v0, 0x7f0a0664

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    check-cast v0, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->tvHideView:Landroid/widget/TextView;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mHideActionLayout:Landroid/widget/RelativeLayout;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->flagListener:Landroid/view/View$OnClickListener;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mKeepActionLayout:Landroid/widget/RelativeLayout;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->flagListener:Landroid/view/View$OnClickListener;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mResolvedLayout:Landroid/widget/RelativeLayout;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->flagListener:Landroid/view/View$OnClickListener;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 100
    .line 101
    if-eqz v0, :cond_1

    .line 102
    .line 103
    new-instance v0, Lcom/narvii/flag/FlagTag;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    .line 110
    const v2, 0x7f120fb0

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    const/4 v2, 0x1

    .line 116
    .line 117
    .line 118
    invoke-direct {v0, v2, v1}, Lcom/narvii/flag/FlagTag;-><init>(ZLjava/lang/String;)V

    .line 119
    .line 120
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 121
    .line 122
    iget-object v1, v1, Lcom/narvii/flag/model/Flag;->flaggedTypes:Ljava/util/List;

    .line 123
    .line 124
    .line 125
    invoke-static {v1}, Lcom/narvii/flag/FlagTag;->getFlagTagList(Ljava/util/List;)Ljava/util/List;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    if-nez v1, :cond_0

    .line 129
    .line 130
    new-instance v1, Ljava/util/ArrayList;

    .line 131
    .line 132
    .line 133
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    :cond_0
    const/4 v2, 0x0

    .line 135
    .line 136
    .line 137
    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 138
    .line 139
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagTagLayout:Lcom/narvii/flag/widgets/FlagTagsLayout;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Lcom/narvii/flag/widgets/FlagTagsLayout;->addTag(Ljava/util/List;)V

    .line 143
    .line 144
    :cond_1
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagTagLayout:Lcom/narvii/flag/widgets/FlagTagsLayout;

    .line 145
    .line 146
    new-instance v1, Lcom/narvii/flag/resolve/FlagResolveBar$1;

    .line 147
    .line 148
    .line 149
    invoke-direct {v1, p0}, Lcom/narvii/flag/resolve/FlagResolveBar$1;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Lcom/narvii/flag/widgets/FlagTagsLayout;->setTagsClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void
.end method

.method private isDeleteType(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    sget-object v2, Lcom/narvii/flag/resolve/FlagResolveBar;->deleteObjectTypes:[I

    .line 5
    array-length v3, v2

    .line 6
    .line 7
    if-ge v1, v3, :cond_1

    .line 8
    .line 9
    aget v2, v2, v1

    .line 10
    .line 11
    if-ne v2, p1, :cond_0

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return v0
.end method

.method private isDisableType(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    sget-object v2, Lcom/narvii/flag/resolve/FlagResolveBar;->disableObjectTypes:[I

    .line 5
    array-length v3, v2

    .line 6
    .line 7
    if-ge v1, v3, :cond_1

    .line 8
    .line 9
    aget v2, v2, v1

    .line 10
    .line 11
    if-ne v2, p1, :cond_0

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return v0
.end method

.method private isQuizzesQuestion()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget v2, v0, Lcom/narvii/flag/model/Flag;->objectType:I

    .line 9
    .line 10
    const/16 v3, 0x17

    .line 11
    .line 12
    if-ne v2, v3, :cond_1

    .line 13
    .line 14
    iget v0, v0, Lcom/narvii/flag/model/Flag;->parentType:I

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    move v1, v2

    .line 19
    :cond_1
    return v1
.end method

.method static bridge synthetic j(Lcom/narvii/flag/resolve/FlagResolveBar;Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->messageMember(Lcom/narvii/model/NVObject;)V

    return-void
.end method

.method static bridge synthetic k(Lcom/narvii/flag/resolve/FlagResolveBar;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/flag/resolve/FlagResolveBar;->sendDisableRequest(ILjava/lang/String;)V

    return-void
.end method

.method private keep()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/flag/resolve/FlagResolveBar$3;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/narvii/flag/resolve/FlagResolveBar$3;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;)V

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 22
    .line 23
    iget v2, v1, Lcom/narvii/flag/model/Flag;->objectType:I

    .line 24
    .line 25
    const/16 v3, 0x17

    .line 26
    .line 27
    if-ne v2, v3, :cond_0

    .line 28
    .line 29
    iget-object v1, v1, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    iget-object v1, v1, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    .line 33
    .line 34
    :goto_0
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    .line 35
    .line 36
    const-string v2, "api"

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    const-string v3, "flag/target-object/"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 55
    .line 56
    iget-object v3, v3, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v3, "/resolved"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    new-instance v3, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 71
    .line 72
    .line 73
    invoke-direct {v3}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 81
    move-result-object v2

    .line 82
    const/4 v3, 0x0

    .line 83
    .line 84
    .line 85
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    const-string v4, "resolveType"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    const-string v3, "resolveMessage"

    .line 95
    const/4 v4, 0x0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 103
    move-result-object v2

    .line 104
    .line 105
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 109
    return-void
.end method

.method static bridge synthetic l(Lcom/narvii/flag/resolve/FlagResolveBar;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/flag/resolve/FlagResolveBar;->sendHideRequest(ILjava/lang/String;)V

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    iget v3, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagSize:I

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mReqType:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "resolved"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    move-object v4, v2

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mReqFilter:Ljava/lang/String;

    .line 19
    move-object v4, v1

    .line 20
    .line 21
    :goto_0
    iget-object v5, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->stopTime:Ljava/lang/String;

    .line 22
    move-object v1, p1

    .line 23
    move-object v2, p2

    .line 24
    move-object v6, p3

    .line 25
    .line 26
    .line 27
    invoke-static/range {v0 .. v6}, Lcom/narvii/flag/resolve/FlagModeHelper;->launchFlagMode(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lcom/narvii/app/NVActivity;)V

    .line 28
    return-void
.end method

.method private loadNextPageList()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 18
    .line 19
    const-string v2, "/flag"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    const-string v2, "status"

    .line 26
    .line 27
    const-string v3, "pending"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    .line 32
    const-string v2, "type"

    .line 33
    .line 34
    iget-object v3, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mReqFilter:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    .line 39
    iget v2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagSize:I

    .line 40
    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    const-string v3, "start"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    .line 50
    iget v2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->pageSize:I

    .line 51
    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    const-string v3, "size"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->stopTime:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    move-result v2

    .line 66
    .line 67
    if-nez v2, :cond_0

    .line 68
    .line 69
    const-string v2, "stoptime"

    .line 70
    .line 71
    iget-object v3, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->stopTime:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 75
    .line 76
    :cond_0
    iget-object v2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    .line 77
    .line 78
    const-string v3, "api"

    .line 79
    .line 80
    .line 81
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    new-instance v3, Lcom/narvii/flag/resolve/FlagResolveBar$12;

    .line 91
    .line 92
    const-class v4, Lcom/narvii/flag/model/FlagListResponse;

    .line 93
    .line 94
    .line 95
    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/flag/resolve/FlagResolveBar$12;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 99
    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/flag/resolve/FlagResolveBar;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/flag/resolve/FlagResolveBar;->sendResolveRequest(ILjava/lang/String;)V

    return-void
.end method

.method private messageMember(Lcom/narvii/model/NVObject;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/RequestChatUserHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/chat/RequestChatUserHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 10
    .line 11
    iget v1, v1, Lcom/narvii/flag/model/Flag;->objectType:I

    .line 12
    .line 13
    new-instance v2, Lcom/narvii/flag/resolve/FlagResolveBar$11;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, p0}, Lcom/narvii/flag/resolve/FlagResolveBar$11;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;)V

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/narvii/chat/RequestChatUserHelper;->request(Lcom/narvii/model/NVObject;ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 21
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/flag/resolve/FlagResolveBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/flag/resolve/FlagResolveBar;->sendStrike()V

    return-void
.end method

.method static bridge synthetic o(Lcom/narvii/flag/resolve/FlagResolveBar;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->showMessageUserDialog(Ljava/lang/String;)V

    return-void
.end method

.method private removeFlag(Lcom/narvii/flag/model/Flag;)V
    .locals 5

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagList:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    check-cast v2, Lcom/narvii/flag/model/Flag;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    check-cast v2, Lcom/narvii/flag/model/Flag;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v4, v2, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v3

    .line 55
    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagList:Ljava/util/List;

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 62
    move-result v0

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 66
    :cond_3
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private sendDeletePlusRequest(ILjava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    new-instance p2, Lcom/narvii/flag/resolve/FlagResolveBar$6;

    .line 12
    .line 13
    .line 14
    invoke-direct {p2, p0}, Lcom/narvii/flag/resolve/FlagResolveBar$6;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;)V

    .line 15
    .line 16
    iput-object p2, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    const-string v0, "api"

    .line 24
    .line 25
    .line 26
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 32
    .line 33
    iget v0, v0, Lcom/narvii/flag/model/Flag;->objectType:I

    .line 34
    const/4 v1, 0x7

    .line 35
    .line 36
    if-ne v0, v1, :cond_0

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    const-string v1, "/chat/thread/"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v1, "/message/"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 61
    .line 62
    iget-object v1, v1, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const/4 v1, 0x3

    .line 72
    .line 73
    if-ne v0, v1, :cond_1

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    .line 79
    move-result v0

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 82
    .line 83
    iget v2, v1, Lcom/narvii/flag/model/Flag;->parentType:I

    .line 84
    .line 85
    iget-object v3, v1, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v1, v1, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v2, v3, v1}, Lcom/narvii/comment/CommentHelper;->getBaseCommentPath(ZILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x0

    .line 94
    .line 95
    :goto_0
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 96
    .line 97
    .line 98
    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, v0, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 120
    return-void
.end method

.method private sendDisablePlusRequest(ILjava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/flag/resolve/FlagResolveBar;->isQuizzesQuestion()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/flag/resolve/FlagResolveBar;->showQuizzesConfirmDialog()V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/flag/resolve/FlagResolveBar;->sendDisableRequest(ILjava/lang/String;)V

    .line 14
    :goto_0
    return-void
.end method

.method private sendDisableRequest(ILjava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/flag/resolve/FlagResolveBar$5;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/flag/resolve/FlagResolveBar$5;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;ILjava/lang/String;)V

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    const-string p2, "api"

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 32
    .line 33
    iget v1, p2, Lcom/narvii/flag/model/Flag;->objectType:I

    .line 34
    .line 35
    const/16 v2, 0x17

    .line 36
    .line 37
    if-ne v1, v2, :cond_0

    .line 38
    .line 39
    iget v3, p2, Lcom/narvii/flag/model/Flag;->parentType:I

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v3, v1

    .line 42
    .line 43
    :goto_0
    if-ne v1, v2, :cond_1

    .line 44
    .line 45
    iget-object p2, p2, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_1
    iget-object p2, p2, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    .line 49
    .line 50
    :goto_1
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    .line 52
    .line 53
    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {v3}, Lcom/narvii/model/NVObject;->apiTypeName(I)Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v3, "/"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string p2, "/admin"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 94
    move-result-object p2

    .line 95
    .line 96
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 97
    .line 98
    iget v1, v1, Lcom/narvii/flag/model/Flag;->objectType:I

    .line 99
    .line 100
    const-string v2, "adminOpName"

    .line 101
    .line 102
    if-nez v1, :cond_2

    .line 103
    .line 104
    const/16 v1, 0x12

    .line 105
    .line 106
    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 112
    goto :goto_2

    .line 113
    .line 114
    :cond_2
    const/16 v1, 0x6e

    .line 115
    .line 116
    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 122
    .line 123
    const/16 v1, 0x9

    .line 124
    .line 125
    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    const-string v2, "adminOpValue"

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 133
    .line 134
    .line 135
    :goto_2
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 136
    move-result-object p2

    .line 137
    .line 138
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 142
    return-void
.end method

.method private sendHideRequest(ILjava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/flag/model/Flag;->objectType:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/narvii/flag/resolve/FlagResolveBar;->isDisableType(I)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/narvii/flag/resolve/FlagResolveBar;->sendDisablePlusRequest(ILjava/lang/String;)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 17
    .line 18
    iget v0, v0, Lcom/narvii/flag/model/Flag;->objectType:I

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/narvii/flag/resolve/FlagResolveBar;->isDeleteType(I)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/narvii/flag/resolve/FlagResolveBar;->sendDeletePlusRequest(ILjava/lang/String;)V

    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method private sendResolveRequest(ILjava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/flag/resolve/FlagResolveBar$7;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/narvii/flag/resolve/FlagResolveBar$7;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;)V

    .line 15
    .line 16
    iput-object v0, p1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    const-string v1, "api"

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    const-string v2, "flag/target-object/"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "/resolved"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    .line 59
    .line 60
    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    const-string v2, "resolveType"

    .line 71
    const/4 v3, 0x0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    const-string v2, "resolveMessage"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 81
    move-result-object p2

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    iget-object p1, p1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p2, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 91
    return-void
.end method

.method private sendStrike()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-class v2, Lcom/narvii/chat/template/SendStrikeActivity;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    new-instance v1, Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/narvii/flag/model/Flag;->objectUser:Lcom/narvii/model/User;

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    const-string v3, "attachObject"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    const-string v2, "attachType"

    .line 34
    const/4 v3, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    .line 43
    .line 44
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 45
    .line 46
    const/16 v2, 0x12d

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v0, v2}, Lcom/narvii/flag/resolve/FlagResolveBar;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    .line 52
    .line 53
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 54
    .line 55
    .line 56
    const v2, 0x7f01000e

    .line 57
    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_0
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 67
    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 78
    :cond_1
    :goto_0
    return-void
.end method

.method private showMessageUserDialog(Ljava/lang/String;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    new-instance v2, Lcom/narvii/util/dialog/AlertDialog;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    const p1, 0x7f0d004a

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    .line 52
    const p1, 0x7f0a039d

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    check-cast p1, Landroid/widget/TextView;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    .line 65
    const v4, 0x7f121168

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    const p1, 0x7f0a021f

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v3

    .line 80
    .line 81
    const/16 v4, 0x8

    .line 82
    const/4 v5, 0x0

    .line 83
    .line 84
    if-eqz v0, :cond_1

    .line 85
    move v0, v5

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    move v0, v4

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    const v0, 0x7f0a021d

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    if-eqz v1, :cond_2

    .line 100
    move v4, v5

    .line 101
    .line 102
    .line 103
    :cond_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    check-cast v1, Landroid/widget/Button;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    move-result-object v3

    .line 114
    .line 115
    .line 116
    const v4, 0x7f1200b6

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    move-result-object v3

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    check-cast v1, Landroid/widget/Button;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 133
    move-result-object v3

    .line 134
    .line 135
    .line 136
    const v4, 0x7f121086

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 140
    move-result-object v3

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    check-cast p1, Landroid/widget/Button;

    .line 150
    .line 151
    new-instance v1, Lcom/narvii/flag/resolve/FlagResolveBar$8;

    .line 152
    .line 153
    .line 154
    invoke-direct {v1, p0, v2}, Lcom/narvii/flag/resolve/FlagResolveBar$8;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 161
    move-result-object p1

    .line 162
    .line 163
    check-cast p1, Landroid/widget/Button;

    .line 164
    .line 165
    new-instance v0, Lcom/narvii/flag/resolve/FlagResolveBar$9;

    .line 166
    .line 167
    .line 168
    invoke-direct {v0, p0, v2}, Lcom/narvii/flag/resolve/FlagResolveBar$9;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .line 173
    .line 174
    const p1, 0x7f0a021b

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    check-cast v0, Landroid/widget/Button;

    .line 181
    .line 182
    .line 183
    const v1, 0x7f120402

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 190
    move-result-object p1

    .line 191
    .line 192
    new-instance v0, Lcom/narvii/flag/resolve/FlagResolveBar$10;

    .line 193
    .line 194
    .line 195
    invoke-direct {v0, p0, v2}, Lcom/narvii/flag/resolve/FlagResolveBar$10;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    .line 202
    return-void
.end method

.method private showQuizzesConfirmDialog()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v2, "/blog/"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    .line 42
    .line 43
    const-string v2, "api"

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 50
    .line 51
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mContext:Lcom/narvii/app/NVContext;

    .line 54
    .line 55
    .line 56
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    const-class v4, Lcom/narvii/model/api/BlogResponse;

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, v3, v4}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .line 64
    new-instance v3, Lcom/narvii/flag/resolve/FlagResolveBar$4;

    .line 65
    .line 66
    .line 67
    invoke-direct {v3, p0}, Lcom/narvii/flag/resolve/FlagResolveBar$4;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar;)V

    .line 68
    .line 69
    iput-object v3, v2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 70
    .line 71
    iget-object v2, v2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 75
    return-void
.end method


# virtual methods
.method public loadNextFlag()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->isEnd:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/narvii/flag/resolve/FlagResolveBar;->removeFlag(Lcom/narvii/flag/model/Flag;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagList:Ljava/util/List;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagList:Ljava/util/List;

    .line 33
    const/4 v1, 0x0

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Lcom/narvii/flag/model/Flag;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagList:Ljava/util/List;

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/narvii/flag/resolve/FlagResolveBar;->getCurActivity()Lcom/narvii/app/NVActivity;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v0, v1, v2}, Lcom/narvii/flag/resolve/FlagResolveBar;->launchNextFragment(Lcom/narvii/flag/model/Flag;Ljava/util/List;Lcom/narvii/app/NVActivity;)V

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/narvii/flag/resolve/FlagResolveBar;->finishFlagMode()V

    .line 54
    goto :goto_1

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-direct {p0}, Lcom/narvii/flag/resolve/FlagResolveBar;->loadNextPageList()V

    .line 58
    goto :goto_1

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/narvii/flag/resolve/FlagResolveBar;->finishFlagMode()V

    .line 62
    :cond_3
    :goto_1
    return-void
.end method

.method public setLeftText(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->tvHideView:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_0
    return-void
.end method

.method public showAlreadyResolved()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mResolvedLayout:Landroid/widget/RelativeLayout;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagActionLayout:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagTagLayout:Lcom/narvii/flag/widgets/FlagTagsLayout;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    const/4 v0, 0x1

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->shouldSenReq:Z

    .line 22
    return-void
.end method

.method public showResolvedWithoutReq()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mResolvedLayout:Landroid/widget/RelativeLayout;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagActionLayout:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlagTagLayout:Lcom/narvii/flag/widgets/FlagTagsLayout;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar;->shouldSenReq:Z

    .line 21
    return-void
.end method
