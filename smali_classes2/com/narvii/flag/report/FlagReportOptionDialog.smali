.class public Lcom/narvii/flag/report/FlagReportOptionDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "FlagReportOptionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;,
        Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;
    }
.end annotation


# instance fields
.field private blockCheck:Landroid/widget/CheckBox;

.field private btnSend:Landroid/view/View;

.field private flagPreview:Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

.field private flagReason:Ljava/lang/String;

.field fullScreen:Z

.field private isGlobalScope:Z

.field listener:Landroid/view/View$OnClickListener;

.field private mFlagOptionLayout:Landroid/widget/LinearLayout;

.field private mNvContext:Lcom/narvii/app/NVContext;

.field private mObject:Lcom/narvii/model/NVObject;

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mediaUrl:Ljava/lang/String;

.field private miniProfile:Z

.field private refMediaUrl:Ljava/lang/String;

.field private reqFlagType:I

.field private reqMsg:Ljava/lang/String;

.field private reqObjId:Ljava/lang/String;

.field private reqObjType:I

.field private reqParentId:Ljava/lang/String;

.field private reqParentType:I

.field private reqUserId:Ljava/lang/String;

.field private screenShotFlag:Z

.field private showBlockUser:Z


# direct methods
.method private constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 103
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->showBlockUser:Z

    const/16 v1, 0x3e7

    .line 84
    iput v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqFlagType:I

    .line 96
    iput-boolean v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->miniProfile:Z

    const/4 v1, 0x0

    .line 100
    iput-boolean v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    .line 395
    new-instance v2, Lcom/narvii/flag/report/FlagReportOptionDialog$3;

    invoke-direct {v2, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$3;-><init>(Lcom/narvii/flag/report/FlagReportOptionDialog;)V

    iput-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 104
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 105
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    const p1, 0x7f0b0262

    .line 106
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const p1, 0x7f090486

    .line 107
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 108
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f0f06f9

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p1, 0xce

    const/16 v2, 0x7d

    .line 109
    invoke-static {v1, p1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    const p1, 0x7f090966

    .line 110
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mProgressView:Landroid/widget/ProgressBar;

    .line 111
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f0f0193

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/narvii/flag/report/FlagReportOptionDialog$1;

    invoke-direct {v2, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$1;-><init>(Lcom/narvii/flag/report/FlagReportOptionDialog;)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mediaUrl:Ljava/lang/String;

    const p1, 0x7f090350

    .line 118
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/flag/report/FlagReportOptionDialog$1;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/widget/FlagItemLayout;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->updateCell(Lcom/narvii/widget/FlagItemLayout;)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->flagReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/flag/report/FlagReportOptionDialog;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->uploadCurFlagScreenShoot(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method static synthetic access$102(Lcom/narvii/flag/report/FlagReportOptionDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->flagReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/narvii/flag/report/FlagReportOptionDialog;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqObjType:I

    return p0
.end method

.method static synthetic access$1200(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqObjId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/narvii/flag/report/FlagReportOptionDialog;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqParentId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/narvii/flag/report/FlagReportOptionDialog;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqParentType:I

    return p0
.end method

.method static synthetic access$1600(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->refMediaUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/narvii/flag/report/FlagReportOptionDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->refMediaUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/narvii/flag/report/FlagReportOptionDialog;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->showBlockUser:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/narvii/flag/report/FlagReportOptionDialog;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->showBlockUser:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->uploadCurFlagScreenShoot(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/flag/report/FlagReportOptionDialog;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqFlagType:I

    return p0
.end method

.method static synthetic access$202(Lcom/narvii/flag/report/FlagReportOptionDialog;I)I
    .locals 0

    .line 70
    iput p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqFlagType:I

    return p1
.end method

.method static synthetic access$2100(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupFeedOptions(Lcom/narvii/model/Feed;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupCommentOptions(Lcom/narvii/model/Comment;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupChatMessageOptions(Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupChatThreadOptions(Lcom/narvii/model/ChatThread;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/Community;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupCommunityOptions(Lcom/narvii/model/Community;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/User;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupUserOptions(Lcom/narvii/model/User;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/QuizQuestion;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupQuizQuestionOptions(Lcom/narvii/model/QuizQuestion;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/SharedFile;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupSharedFileOptions(Lcom/narvii/model/SharedFile;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/Sticker;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupStickerOptions(Lcom/narvii/model/Sticker;)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/flag/report/FlagReportOptionDialog;Ljava/lang/String;)I
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->getFlagType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupStickerCoellctonOptions(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupStoryTopicOptions(Lcom/narvii/model/story/StoryTopic;)V

    return-void
.end method

.method static synthetic access$3202(Lcom/narvii/flag/report/FlagReportOptionDialog;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->miniProfile:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/narvii/flag/report/FlagReportOptionDialog;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->screenShotFlag:Z

    return p1
.end method

.method static synthetic access$400(Lcom/narvii/flag/report/FlagReportOptionDialog;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->initReqParam()V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->itemEquals(Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/narvii/flag/report/FlagReportOptionDialog;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->sendRequest()V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    return-object p0
.end method

.method static synthetic access$702(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/NVObject;)Lcom/narvii/model/NVObject;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    return-object p1
.end method

.method static synthetic access$800(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mediaUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/narvii/flag/report/FlagReportOptionDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mediaUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->flagPreview:Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    return-object p0
.end method

.method static synthetic access$902(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;)Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->flagPreview:Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    return-object p1
.end method

.method private addBlockUser()V
    .locals 4

    .line 386
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0258

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v1, 0x7f09047b

    .line 388
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->blockCheck:Landroid/widget/CheckBox;

    .line 389
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 390
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 391
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-void
.end method

.method private addFlagPreviewView()V
    .locals 4

    .line 352
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->flagPreview:Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b025f

    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090484

    .line 354
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090562

    .line 355
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    const v2, 0x7f090b9a

    .line 356
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090b08

    .line 357
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 358
    iget-object v3, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->flagPreview:Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    iget-object v3, v3, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;->media:Lcom/narvii/model/Media;

    invoke-virtual {v1, v3}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 359
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->flagPreview:Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    iget-object v1, v1, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;->title:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->flagPreview:Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    iget-object v1, v1, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;->subTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private getFlagType(Ljava/lang/String;)I
    .locals 1

    .line 419
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/flag/model/Flag;->getFlagType(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private hideProgress()V
    .locals 3

    .line 689
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 691
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->btnSend:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const/4 v0, 0x0

    .line 692
    :goto_0
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 693
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initReqParam()V
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqObjId:Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqObjType:I

    .line 425
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->parentId()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqParentId:Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    instance-of v2, v0, Lcom/narvii/model/Feed;

    if-eqz v2, :cond_3

    .line 427
    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqMsg:Ljava/lang/String;

    .line 428
    check-cast v0, Lcom/narvii/model/Feed;

    iget-object v0, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqUserId:Ljava/lang/String;

    goto/16 :goto_4

    .line 429
    :cond_3
    instance-of v2, v0, Lcom/narvii/model/Comment;

    if-eqz v2, :cond_4

    .line 430
    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqMsg:Ljava/lang/String;

    .line 431
    move-object v1, v0

    check-cast v1, Lcom/narvii/model/Comment;

    iget-object v1, v1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqUserId:Ljava/lang/String;

    .line 432
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->parentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqParentId:Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    check-cast v0, Lcom/narvii/model/Comment;

    iget v0, v0, Lcom/narvii/model/Comment;->parentType:I

    iput v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqParentType:I

    goto/16 :goto_4

    .line 434
    :cond_4
    instance-of v2, v0, Lcom/narvii/model/ChatMessage;

    if-eqz v2, :cond_5

    .line 435
    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqMsg:Ljava/lang/String;

    .line 436
    check-cast v0, Lcom/narvii/model/ChatMessage;

    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqUserId:Ljava/lang/String;

    const/16 v0, 0xc

    .line 437
    iput v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqParentType:I

    goto :goto_4

    .line 438
    :cond_5
    instance-of v2, v0, Lcom/narvii/model/ChatThread;

    if-eqz v2, :cond_6

    .line 439
    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqMsg:Ljava/lang/String;

    .line 440
    check-cast v0, Lcom/narvii/model/ChatThread;

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqUserId:Ljava/lang/String;

    goto :goto_4

    .line 441
    :cond_6
    instance-of v2, v0, Lcom/narvii/model/User;

    if-eqz v2, :cond_7

    .line 442
    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqMsg:Ljava/lang/String;

    .line 443
    check-cast v0, Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqUserId:Ljava/lang/String;

    goto :goto_4

    .line 444
    :cond_7
    instance-of v2, v0, Lcom/narvii/model/Community;

    if-eqz v2, :cond_8

    .line 445
    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqMsg:Ljava/lang/String;

    .line 446
    move-object v1, v0

    check-cast v1, Lcom/narvii/model/Community;

    iget-object v1, v1, Lcom/narvii/model/Community;->agent:Lcom/narvii/model/User;

    if-eqz v1, :cond_d

    .line 447
    check-cast v0, Lcom/narvii/model/Community;

    iget-object v0, v0, Lcom/narvii/model/Community;->agent:Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqUserId:Ljava/lang/String;

    goto :goto_4

    .line 449
    :cond_8
    instance-of v2, v0, Lcom/narvii/model/QuizQuestion;

    if-eqz v2, :cond_9

    .line 450
    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqMsg:Ljava/lang/String;

    .line 451
    check-cast v0, Lcom/narvii/model/QuizQuestion;

    iget v0, v0, Lcom/narvii/model/QuizQuestion;->parentType:I

    iput v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqParentType:I

    goto :goto_4

    .line 452
    :cond_9
    instance-of v2, v0, Lcom/narvii/model/SharedFile;

    if-eqz v2, :cond_b

    .line 453
    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqMsg:Ljava/lang/String;

    .line 454
    check-cast v0, Lcom/narvii/model/SharedFile;

    .line 455
    iget-object v0, v0, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    iget-object v1, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_3
    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqUserId:Ljava/lang/String;

    goto :goto_4

    .line 456
    :cond_b
    instance-of v1, v0, Lcom/narvii/model/Sticker;

    if-eqz v1, :cond_c

    const/16 v0, 0x72

    .line 457
    iput v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqParentType:I

    goto :goto_4

    .line 458
    :cond_c
    instance-of v0, v0, Lcom/narvii/model/story/StoryTopic;

    :cond_d
    :goto_4
    return-void
.end method

.method private itemEquals(Lcom/narvii/widget/FlagItemLayout;I)Z
    .locals 1

    .line 729
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private sendRequest()V
    .locals 4

    .line 540
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 541
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 542
    new-instance v1, Lcom/narvii/flag/report/FlagReportOptionDialog$5;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$5;-><init>(Lcom/narvii/flag/report/FlagReportOptionDialog;Landroid/content/Context;Ljava/lang/Class;Lcom/narvii/config/ConfigService;)V

    .line 625
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqUserId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/flag/report/FlagRequestDialog;->setFlagUserInfo(ILjava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f06df

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/flag/report/FlagRequestDialog;->setEditHint(Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    instance-of v0, v0, Lcom/narvii/model/QuizQuestion;

    if-eqz v0, :cond_0

    .line 628
    invoke-static {v1}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Dialog;)V

    .line 630
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->fullScreen:Z

    if-eqz v0, :cond_1

    .line 631
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 633
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private setupChatMessageOptions(Lcom/narvii/model/ChatMessage;)V
    .locals 1

    .line 255
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 256
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06fe

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 257
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06d8

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 258
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06f2

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 259
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06d7

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 260
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06e2

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 261
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06c7

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 262
    iget-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    if-nez p1, :cond_0

    const p1, 0x7f0f06e3

    .line 263
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_0
    const p1, 0x7f0f06f7

    .line 265
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupChatThreadOptions(Lcom/narvii/model/ChatThread;)V
    .locals 1

    .line 270
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 271
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06fe

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 272
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06d8

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 273
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06f2

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 274
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06d7

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 275
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06e2

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 276
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06c7

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 277
    iget-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    if-nez p1, :cond_0

    const p1, 0x7f0f06e3

    .line 278
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_0
    const p1, 0x7f0f06f7

    .line 280
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupCommentOptions(Lcom/narvii/model/Comment;)V
    .locals 1

    .line 226
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 227
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06fe

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 228
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06d8

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 229
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06f2

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 230
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06d7

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 231
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06e2

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 232
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06c7

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 233
    iget-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    if-nez p1, :cond_0

    const p1, 0x7f0f06e3

    .line 234
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_0
    const p1, 0x7f0f06f7

    .line 236
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupCommunityOptions(Lcom/narvii/model/Community;)V
    .locals 1

    .line 285
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 286
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06d9

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 287
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06f7

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 288
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06e4

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupFeedOptions(Lcom/narvii/model/Feed;)V
    .locals 1

    .line 212
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 213
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06fe

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 214
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06d8

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 215
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06f2

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 216
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06d7

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 217
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06e2

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 218
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06c7

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 219
    iget-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    if-nez p1, :cond_0

    const p1, 0x7f0f06e3

    .line 220
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_0
    const p1, 0x7f0f06f7

    .line 222
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupQuizQuestionOptions(Lcom/narvii/model/QuizQuestion;)V
    .locals 1

    .line 292
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 293
    invoke-direct {p0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addFlagPreviewView()V

    .line 294
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$2;

    invoke-direct {p1, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$2;-><init>(Lcom/narvii/flag/report/FlagReportOptionDialog;)V

    const v0, 0x7f0f06db

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 300
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06fe

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 301
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06d8

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 302
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06f2

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 303
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06d7

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 304
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06e2

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 305
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06c7

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 306
    iget-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    if-nez p1, :cond_0

    const p1, 0x7f0f06e3

    .line 307
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_0
    const p1, 0x7f0f06f7

    .line 309
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupSharedFileOptions(Lcom/narvii/model/SharedFile;)V
    .locals 1

    .line 241
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 242
    iget-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    if-nez p1, :cond_0

    const p1, 0x7f0f06e3

    .line 243
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_0
    const p1, 0x7f0f06c7

    .line 245
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    const p1, 0x7f0f06f3

    .line 246
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    const p1, 0x7f0f06da

    .line 247
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    const p1, 0x7f0f06ff

    .line 248
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    const p1, 0x7f0f06f7

    .line 249
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    const p1, 0x7f0f06e4

    .line 250
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupStickerCoellctonOptions(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 1

    .line 327
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 328
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06fe

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 329
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06d8

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 330
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06f2

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 331
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06d7

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 332
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06e2

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 333
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06c7

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 334
    iget-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    if-nez p1, :cond_0

    const p1, 0x7f0f06e3

    .line 335
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_0
    const p1, 0x7f0f06f7

    .line 337
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupStickerOptions(Lcom/narvii/model/Sticker;)V
    .locals 1

    .line 313
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 314
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06fe

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 315
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06d8

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 316
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06f2

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 317
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06d7

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 318
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06e2

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 319
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06c7

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 320
    iget-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    if-nez p1, :cond_0

    const p1, 0x7f0f06e3

    .line 321
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_0
    const p1, 0x7f0f06f7

    .line 323
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupStoryTopicOptions(Lcom/narvii/model/story/StoryTopic;)V
    .locals 1

    .line 341
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 342
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06fe

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 343
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06d8

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 344
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06f2

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 345
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06d7

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 346
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06e2

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 347
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06c7

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 348
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0f06f7

    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupUserOptions(Lcom/narvii/model/User;)V
    .locals 1

    .line 366
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 368
    iget-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->miniProfile:Z

    if-nez p1, :cond_0

    const p1, 0x7f0f06f5

    .line 369
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    const p1, 0x7f0f06f6

    .line 370
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_0
    const p1, 0x7f0f06fe

    .line 372
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    const p1, 0x7f0f06d8

    .line 373
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    const p1, 0x7f0f06f2

    .line 374
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    const p1, 0x7f0f06d7

    .line 375
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    const p1, 0x7f0f06e2

    .line 376
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    const p1, 0x7f0f06c7

    .line 377
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 378
    iget-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    if-nez p1, :cond_1

    const p1, 0x7f0f06e3

    .line 379
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    :cond_1
    const p1, 0x7f0f06f7

    .line 381
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showCheckDialog()V
    .locals 3

    .line 699
    new-instance v0, Lcom/narvii/util/dialog/CheckDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/CheckDialog;-><init>(Landroid/content/Context;)V

    .line 700
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f06f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/CheckDialog;->setText(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v0}, Lcom/narvii/util/dialog/CheckDialog;->show()V

    return-void
.end method

.method private showProgress()V
    .locals 3

    .line 680
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 681
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 682
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->btnSend:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const/4 v0, 0x0

    .line 683
    :goto_0
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 684
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateCell(Lcom/narvii/widget/FlagItemLayout;)V
    .locals 6

    .line 706
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 708
    iget-object v3, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/narvii/widget/FlagItemLayout;

    if-eqz v3, :cond_3

    .line 709
    iget-object v3, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x10

    if-ne v3, p1, :cond_1

    const/4 v3, 0x1

    .line 710
    invoke-virtual {p1, v3}, Lcom/narvii/widget/CheckableLinearLayout;->setChecked(Z)V

    .line 711
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const v5, 0x7f06007a

    if-lt v3, v4, :cond_0

    .line 712
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 714
    :cond_0
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 717
    :cond_1
    iget-object v3, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/FlagItemLayout;

    invoke-virtual {v3, v1}, Lcom/narvii/widget/CheckableLinearLayout;->setChecked(Z)V

    .line 718
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const v5, -0x50506

    if-lt v3, v4, :cond_2

    .line 719
    iget-object v3, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/FlagItemLayout;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 721
    :cond_2
    iget-object v3, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/FlagItemLayout;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private uploadCurFlagScreenShoot(Lcom/narvii/util/Callback;)V
    .locals 1

    const-string v0, "flag-image"

    .line 638
    invoke-direct {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->uploadCurFlagScreenShoot(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private uploadCurFlagScreenShoot(Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 4

    .line 643
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 644
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    goto :goto_0

    .line 645
    :cond_0
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_1

    .line 646
    check-cast v0, Lcom/narvii/app/NVActivity;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 648
    iget-boolean v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->screenShotFlag:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 654
    :cond_2
    invoke-static {v0}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 655
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    const-string v3, "photo"

    invoke-interface {v1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/photos/PhotoManager;

    .line 656
    new-instance v3, Lcom/narvii/flag/report/FlagReportOptionDialog$6;

    invoke-direct {v3, p0, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$6;-><init>(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/util/Callback;)V

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V

    return-void

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    const/4 p1, 0x0

    .line 650
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 0

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const p2, 0x7f0b0178

    goto :goto_0

    :cond_0
    const p2, 0x7f0b017d

    goto :goto_0

    :cond_1
    const p2, 0x7f0b0179

    goto :goto_0

    :cond_2
    const p2, 0x7f0b0176

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 173
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_3

    .line 175
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b0177

    iget-object v1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 177
    :cond_3
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 178
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-object p2
.end method

.method public addItem(IILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 204
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addItem(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 208
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 186
    new-instance v0, Lcom/narvii/widget/FlagItemLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/FlagItemLayout;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FlagItemLayout;->setLeftText(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p2}, Lcom/narvii/widget/FlagItemLayout;->setLeftTextColor(I)V

    .line 189
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const p2, 0x7f0801cb

    const/16 v1, 0x10

    if-lt p1, v1, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/16 v0, 0x28

    .line 200
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 812
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 817
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 818
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method sendQuizQuestionIncorrectAnswer()V
    .locals 9

    .line 464
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 465
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 466
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    check-cast v1, Lcom/narvii/model/QuizQuestion;

    .line 467
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const v1, 0x7f0f0e6e

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 468
    new-instance v8, Lcom/narvii/flag/report/FlagReportOptionDialog$4;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/narvii/model/api/CommentResponse;

    move-object v1, v8

    move-object v2, p0

    move-object v5, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/narvii/flag/report/FlagReportOptionDialog$4;-><init>(Lcom/narvii/flag/report/FlagReportOptionDialog;Landroid/content/Context;Ljava/lang/Class;Lcom/narvii/config/ConfigService;Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqUserId:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Lcom/narvii/flag/report/FlagRequestDialog;->setFlagUserInfo(ILjava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f06df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/narvii/flag/report/FlagRequestDialog;->setEditHint(Ljava/lang/String;)V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/narvii/flag/report/FlagRequestDialog;->setEditText(Ljava/lang/String;)V

    .line 532
    invoke-static {v8}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Dialog;)V

    .line 533
    iget-boolean v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->fullScreen:Z

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 536
    :cond_0
    invoke-virtual {v8}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1

    .line 126
    iput-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->fullScreen:Z

    const/16 v0, 0x400

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 137
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "flag"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    instance-of v2, v1, Lcom/narvii/app/NVFragment;

    if-eqz v2, :cond_1

    .line 142
    check-cast v1, Lcom/narvii/app/NVFragment;

    invoke-virtual {v1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    goto :goto_0

    .line 143
    :cond_1
    instance-of v2, v1, Lcom/narvii/app/NVActivity;

    if-eqz v2, :cond_2

    .line 144
    check-cast v1, Lcom/narvii/app/NVActivity;

    invoke-virtual {v1, v0}, Lcom/narvii/app/NVActivity;->ensureLogin(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method
