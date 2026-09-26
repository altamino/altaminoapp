.class public Lcom/narvii/flag/report/FlagReportOptionDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;,
        Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;
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

    .line 2
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->showBlockUser:Z

    const/16 v1, 0x3e7

    iput v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqFlagType:I

    iput-boolean v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->miniProfile:Z

    .line 3
    new-instance v1, Lcom/narvii/flag/report/FlagReportOptionDialog$1;

    invoke-direct {v1, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$1;-><init>(Lcom/narvii/flag/report/FlagReportOptionDialog;)V

    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 4
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    const p1, 0x7f0d028c

    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const p1, 0x7f0a05c6

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1207a2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p1, 0xce

    const/16 v1, 0x7d

    const/4 v2, 0x0

    .line 8
    invoke-static {v2, p1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    const p1, 0x7f0a0c24

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mProgressView:Landroid/widget/ProgressBar;

    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1201e2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/narvii/flag/report/a;

    invoke-direct {v1, p0}, Lcom/narvii/flag/report/a;-><init>(Lcom/narvii/flag/report/FlagReportOptionDialog;)V

    invoke-virtual {p0, p1, v2, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mediaUrl:Ljava/lang/String;

    const p1, 0x7f0a0434

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/flag/report/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->itemEquals(Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic B(Lcom/narvii/flag/report/FlagReportOptionDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->sendRequest()V

    return-void
.end method

.method static bridge synthetic C(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupChatMessageOptions(Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method static bridge synthetic D(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupChatThreadOptions(Lcom/narvii/model/ChatThread;)V

    return-void
.end method

.method static bridge synthetic E(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupCommentOptions(Lcom/narvii/model/Comment;)V

    return-void
.end method

.method static bridge synthetic F(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/Community;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupCommunityOptions(Lcom/narvii/model/Community;)V

    return-void
.end method

.method static bridge synthetic G(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupFeedOptions(Lcom/narvii/model/Feed;)V

    return-void
.end method

.method static bridge synthetic H(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/QuizQuestion;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupQuizQuestionOptions(Lcom/narvii/model/QuizQuestion;)V

    return-void
.end method

.method static bridge synthetic I(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/SharedFile;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupSharedFileOptions(Lcom/narvii/model/SharedFile;)V

    return-void
.end method

.method static bridge synthetic J(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupStickerCoellctonOptions(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    return-void
.end method

.method static bridge synthetic K(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/Sticker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupStickerOptions(Lcom/narvii/model/Sticker;)V

    return-void
.end method

.method static bridge synthetic L(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupStoryTopicOptions(Lcom/narvii/model/story/StoryTopic;)V

    return-void
.end method

.method static bridge synthetic M(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->setupUserOptions(Lcom/narvii/model/User;)V

    return-void
.end method

.method static bridge synthetic N(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/widget/FlagItemLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->updateCell(Lcom/narvii/widget/FlagItemLayout;)V

    return-void
.end method

.method static bridge synthetic O(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->uploadCurFlagScreenShoot(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/flag/report/FlagReportOptionDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->lambda$setupQuizQuestionOptions$1(Landroid/view/View;)V

    return-void
.end method

.method private addBlockUser()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0d0282

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    const v1, 0x7f0a05bb

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Landroid/widget/CheckBox;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->blockCheck:Landroid/widget/CheckBox;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x1

    .line 52
    .line 53
    const/high16 v3, 0x41200000    # 10.0f

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 57
    move-result v1

    .line 58
    float-to-int v1, v1

    .line 59
    const/4 v2, 0x0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 63
    return-void
.end method

.method private addFlagPreviewView()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->flagPreview:Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0d0289

    .line 12
    .line 13
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0a05c4

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    const v1, 0x7f0a06d5

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 34
    .line 35
    .line 36
    const v2, 0x7f0a0e9e

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    check-cast v2, Landroid/widget/TextView;

    .line 43
    .line 44
    .line 45
    const v3, 0x7f0a0dea

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    check-cast v0, Landroid/widget/TextView;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->flagPreview:Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    .line 54
    .line 55
    iget-object v3, v3, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;->media:Lcom/narvii/model/Media;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->flagPreview:Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    .line 61
    .line 62
    iget-object v1, v1, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;->title:Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->flagPreview:Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;->subTitle:Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/narvii/flag/report/FlagReportOptionDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->flagPreview:Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->flagReason:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/flag/report/FlagReportOptionDialog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    return p0
.end method

.method static bridge synthetic f(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    return-object p0
.end method

.method private getFlagType(Ljava/lang/String;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/narvii/flag/model/Flag;->getFlagType(Landroid/content/Context;Ljava/lang/String;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method static bridge synthetic h(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mediaUrl:Ljava/lang/String;

    return-object p0
.end method

.method private hideProgress()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mProgressView:Landroid/widget/ProgressBar;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->btnSend:Landroid/view/View;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    :goto_0
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    move-result v2

    .line 26
    .line 27
    if-ge v0, v2, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->refMediaUrl:Ljava/lang/String;

    return-object p0
.end method

.method private initReqParam()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    :goto_0
    iput-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqObjId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    .line 23
    move-result v0

    .line 24
    .line 25
    :goto_1
    iput v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqObjType:I

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    move-object v0, v1

    .line 31
    goto :goto_2

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->parentId()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    :goto_2
    iput-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqParentId:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    .line 40
    .line 41
    instance-of v2, v0, Lcom/narvii/model/Feed;

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqMsg:Ljava/lang/String;

    .line 46
    .line 47
    check-cast v0, Lcom/narvii/model/Feed;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqUserId:Ljava/lang/String;

    .line 54
    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_3
    instance-of v2, v0, Lcom/narvii/model/Comment;

    .line 58
    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqMsg:Ljava/lang/String;

    .line 62
    move-object v1, v0

    .line 63
    .line 64
    check-cast v1, Lcom/narvii/model/Comment;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    .line 67
    .line 68
    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 69
    .line 70
    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqUserId:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->parentId()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    iput-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqParentId:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    .line 79
    .line 80
    check-cast v0, Lcom/narvii/model/Comment;

    .line 81
    .line 82
    iget v0, v0, Lcom/narvii/model/Comment;->parentType:I

    .line 83
    .line 84
    iput v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqParentType:I

    .line 85
    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    :cond_4
    instance-of v2, v0, Lcom/narvii/model/ChatMessage;

    .line 89
    .line 90
    if-eqz v2, :cond_5

    .line 91
    .line 92
    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqMsg:Ljava/lang/String;

    .line 93
    .line 94
    check-cast v0, Lcom/narvii/model/ChatMessage;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqUserId:Ljava/lang/String;

    .line 101
    .line 102
    const/16 v0, 0xc

    .line 103
    .line 104
    iput v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqParentType:I

    .line 105
    goto :goto_4

    .line 106
    .line 107
    :cond_5
    instance-of v2, v0, Lcom/narvii/model/ChatThread;

    .line 108
    .line 109
    if-eqz v2, :cond_6

    .line 110
    .line 111
    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqMsg:Ljava/lang/String;

    .line 112
    .line 113
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    .line 116
    .line 117
    iput-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqUserId:Ljava/lang/String;

    .line 118
    goto :goto_4

    .line 119
    .line 120
    :cond_6
    instance-of v2, v0, Lcom/narvii/model/User;

    .line 121
    .line 122
    if-eqz v2, :cond_7

    .line 123
    .line 124
    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqMsg:Ljava/lang/String;

    .line 125
    .line 126
    check-cast v0, Lcom/narvii/model/User;

    .line 127
    .line 128
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 129
    .line 130
    iput-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqUserId:Ljava/lang/String;

    .line 131
    goto :goto_4

    .line 132
    .line 133
    :cond_7
    instance-of v2, v0, Lcom/narvii/model/Community;

    .line 134
    .line 135
    if-eqz v2, :cond_8

    .line 136
    .line 137
    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqMsg:Ljava/lang/String;

    .line 138
    move-object v1, v0

    .line 139
    .line 140
    check-cast v1, Lcom/narvii/model/Community;

    .line 141
    .line 142
    iget-object v1, v1, Lcom/narvii/model/Community;->agent:Lcom/narvii/model/User;

    .line 143
    .line 144
    if-eqz v1, :cond_d

    .line 145
    .line 146
    check-cast v0, Lcom/narvii/model/Community;

    .line 147
    .line 148
    iget-object v0, v0, Lcom/narvii/model/Community;->agent:Lcom/narvii/model/User;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    iput-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqUserId:Ljava/lang/String;

    .line 155
    goto :goto_4

    .line 156
    .line 157
    :cond_8
    instance-of v2, v0, Lcom/narvii/model/QuizQuestion;

    .line 158
    .line 159
    if-eqz v2, :cond_9

    .line 160
    .line 161
    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqMsg:Ljava/lang/String;

    .line 162
    .line 163
    check-cast v0, Lcom/narvii/model/QuizQuestion;

    .line 164
    .line 165
    iget v0, v0, Lcom/narvii/model/QuizQuestion;->parentType:I

    .line 166
    .line 167
    iput v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqParentType:I

    .line 168
    goto :goto_4

    .line 169
    .line 170
    :cond_9
    instance-of v2, v0, Lcom/narvii/model/SharedFile;

    .line 171
    .line 172
    if-eqz v2, :cond_b

    .line 173
    .line 174
    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqMsg:Ljava/lang/String;

    .line 175
    .line 176
    check-cast v0, Lcom/narvii/model/SharedFile;

    .line 177
    .line 178
    iget-object v0, v0, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

    .line 179
    .line 180
    if-nez v0, :cond_a

    .line 181
    goto :goto_3

    .line 182
    .line 183
    :cond_a
    iget-object v1, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 184
    .line 185
    :goto_3
    iput-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqUserId:Ljava/lang/String;

    .line 186
    goto :goto_4

    .line 187
    .line 188
    :cond_b
    instance-of v1, v0, Lcom/narvii/model/Sticker;

    .line 189
    .line 190
    if-eqz v1, :cond_c

    .line 191
    .line 192
    const/16 v0, 0x72

    .line 193
    .line 194
    iput v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqParentType:I

    .line 195
    goto :goto_4

    .line 196
    .line 197
    :cond_c
    instance-of v0, v0, Lcom/narvii/model/story/StoryTopic;

    .line 198
    :cond_d
    :goto_4
    return-void
.end method

.method private itemEquals(Lcom/narvii/widget/FlagItemLayout;I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/widget/FlagItemLayout;->getLeftText()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method static bridge synthetic j(Lcom/narvii/flag/report/FlagReportOptionDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqFlagType:I

    return p0
.end method

.method static bridge synthetic k(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqObjId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/narvii/flag/report/FlagReportOptionDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqObjType:I

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 4
    return-void
.end method

.method private synthetic lambda$setupQuizQuestionOptions$1(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->sendQuizQuestionIncorrectAnswer()V

    .line 4
    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqParentId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/narvii/flag/report/FlagReportOptionDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqParentType:I

    return p0
.end method

.method static bridge synthetic o(Lcom/narvii/flag/report/FlagReportOptionDialog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->showBlockUser:Z

    return p0
.end method

.method static bridge synthetic p(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->flagPreview:Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/flag/report/FlagReportOptionDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->flagReason:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/flag/report/FlagReportOptionDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mediaUrl:Ljava/lang/String;

    return-void
.end method

.method private sendRequest()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v1, "config"

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/flag/report/FlagReportOptionDialog$3;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0, v2, v3, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$3;-><init>(Lcom/narvii/flag/report/FlagReportOptionDialog;Landroid/content/Context;Ljava/lang/Class;Lcom/narvii/config/ConfigService;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 28
    move-result v0

    .line 29
    .line 30
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqUserId:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0, v2}, Lcom/narvii/flag/report/FlagRequestDialog;->setFlagUserInfo(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    const v2, 0x7f120788

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lcom/narvii/flag/report/FlagRequestDialog;->setEditHint(Ljava/lang/String;)V

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    .line 54
    .line 55
    instance-of v0, v0, Lcom/narvii/model/QuizQuestion;

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Dialog;)V

    .line 61
    .line 62
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->fullScreen:Z

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    const/16 v2, 0x400

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 77
    return-void
.end method

.method private setupChatMessageOptions(Lcom/narvii/model/ChatMessage;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    const p1, 0x7f1207a7

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    const p1, 0x7f120784

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    const p1, 0x7f12079b

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    const p1, 0x7f120783

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    const p1, 0x7f12078b

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    const p1, 0x7f120773

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    iget-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    .line 56
    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    .line 60
    const p1, 0x7f12078c

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    const p1, 0x7f1207a0

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method private setupChatThreadOptions(Lcom/narvii/model/ChatThread;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    const p1, 0x7f1207a7

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    const p1, 0x7f120784

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    const p1, 0x7f12079b

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    const p1, 0x7f120783

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    const p1, 0x7f12078b

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    const p1, 0x7f120773

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    iget-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    .line 56
    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    .line 60
    const p1, 0x7f12078c

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    const p1, 0x7f1207a0

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method private setupCommentOptions(Lcom/narvii/model/Comment;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    const p1, 0x7f1207a7

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    const p1, 0x7f120784

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    const p1, 0x7f12079b

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    const p1, 0x7f120783

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    const p1, 0x7f12078b

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    const p1, 0x7f120773

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    iget-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    .line 56
    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    .line 60
    const p1, 0x7f12078c

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    const p1, 0x7f1207a0

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method private setupCommunityOptions(Lcom/narvii/model/Community;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    const p1, 0x7f120785

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    const p1, 0x7f1207a0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    const p1, 0x7f12078d

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 30
    return-void
.end method

.method private setupFeedOptions(Lcom/narvii/model/Feed;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    const p1, 0x7f1207a7

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    const p1, 0x7f120784

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    const p1, 0x7f12079b

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    const p1, 0x7f120783

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    const p1, 0x7f12078b

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    const p1, 0x7f120773

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    iget-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    .line 56
    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    .line 60
    const p1, 0x7f12078c

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    const p1, 0x7f1207a0

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method private setupQuizQuestionOptions(Lcom/narvii/model/QuizQuestion;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addFlagPreviewView()V

    .line 9
    .line 10
    new-instance p1, Lcom/narvii/flag/report/b;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/narvii/flag/report/b;-><init>(Lcom/narvii/flag/report/FlagReportOptionDialog;)V

    .line 14
    .line 15
    .line 16
    const v0, 0x7f120787

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    const p1, 0x7f1207a7

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    const p1, 0x7f120784

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    const p1, 0x7f12079b

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    const p1, 0x7f120783

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    const p1, 0x7f12078b

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    const p1, 0x7f120773

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    iget-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    .line 70
    .line 71
    if-nez p1, :cond_0

    .line 72
    .line 73
    .line 74
    const p1, 0x7f12078c

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    :cond_0
    const p1, 0x7f1207a0

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method private setupSharedFileOptions(Lcom/narvii/model/SharedFile;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    .line 12
    const p1, 0x7f12078c

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const p1, 0x7f120773

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    const p1, 0x7f12079c

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    const p1, 0x7f120786

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    const p1, 0x7f1207a8

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    const p1, 0x7f1207a0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    const p1, 0x7f12078d

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method private setupStickerCoellctonOptions(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    const p1, 0x7f1207a7

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    const p1, 0x7f120784

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    const p1, 0x7f12079b

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    const p1, 0x7f120783

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    const p1, 0x7f12078b

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    const p1, 0x7f120773

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    iget-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    .line 56
    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    .line 60
    const p1, 0x7f12078c

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    const p1, 0x7f1207a0

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method private setupStickerOptions(Lcom/narvii/model/Sticker;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    const p1, 0x7f1207a7

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    const p1, 0x7f120784

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    const p1, 0x7f12079b

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    const p1, 0x7f120783

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    const p1, 0x7f12078b

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    const p1, 0x7f120773

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    iget-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    .line 56
    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    .line 60
    const p1, 0x7f12078c

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    const p1, 0x7f1207a0

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method private setupStoryTopicOptions(Lcom/narvii/model/story/StoryTopic;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    const p1, 0x7f1207a7

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    const p1, 0x7f120784

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    const p1, 0x7f12079b

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    const p1, 0x7f120783

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    const p1, 0x7f12078b

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    const p1, 0x7f120773

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    const p1, 0x7f1207a0

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method private setupUserOptions(Lcom/narvii/model/User;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->miniProfile:Z

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    .line 12
    const p1, 0x7f12079e

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    const p1, 0x7f12079f

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const p1, 0x7f1207a7

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    const p1, 0x7f120784

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    const p1, 0x7f12079b

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    const p1, 0x7f120783

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    const p1, 0x7f12078b

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    const p1, 0x7f120773

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    iget-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->isGlobalScope:Z

    .line 76
    .line 77
    if-nez p1, :cond_1

    .line 78
    .line 79
    .line 80
    const p1, 0x7f12078c

    .line 81
    .line 82
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    const p1, 0x7f1207a0

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->listener:Landroid/view/View$OnClickListener;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method private showCheckDialog()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/CheckDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/CheckDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    const v2, 0x7f1207a1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/CheckDialog;->setText(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/util/dialog/CheckDialog;->show()V

    .line 27
    return-void
.end method

.method private showProgress()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mProgressView:Landroid/widget/ProgressBar;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->btnSend:Landroid/view/View;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 17
    move v0, v1

    .line 18
    .line 19
    :goto_0
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 23
    move-result v2

    .line 24
    .line 25
    if-ge v0, v2, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/flag/report/FlagReportOptionDialog;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->miniProfile:Z

    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/flag/report/FlagReportOptionDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->refMediaUrl:Ljava/lang/String;

    return-void
.end method

.method private updateCell(Lcom/narvii/widget/FlagItemLayout;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    .line 10
    :goto_0
    if-ge v2, v0, :cond_2

    .line 11
    .line 12
    iget-object v3, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    instance-of v3, v3, Lcom/narvii/widget/FlagItemLayout;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    if-ne v3, p1, :cond_0

    .line 29
    const/4 v3, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v3}, Lcom/narvii/widget/CheckableLinearLayout;->setChecked(Z)V

    .line 33
    .line 34
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    .line 45
    const v5, 0x7f06009e

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 49
    move-result v4

    .line 50
    .line 51
    .line 52
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_0
    iget-object v3, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    check-cast v3, Lcom/narvii/widget/FlagItemLayout;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v1}, Lcom/narvii/widget/CheckableLinearLayout;->setChecked(Z)V

    .line 68
    .line 69
    iget-object v3, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 76
    .line 77
    .line 78
    const v5, -0x50506

    .line 79
    .line 80
    .line 81
    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 85
    .line 86
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    return-void
.end method

.method private uploadCurFlagScreenShoot(Lcom/narvii/util/Callback;)V
    .locals 1

    const-string v0, "flag-image"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->uploadCurFlagScreenShoot(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private uploadCurFlagScreenShoot(Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 4

    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 2
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lcom/narvii/app/NVActivity;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->screenShotFlag:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {v0}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    const-string v3, "photo"

    .line 7
    invoke-interface {v1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/photos/PhotoManager;

    .line 8
    new-instance v3, Lcom/narvii/flag/report/FlagReportOptionDialog$4;

    invoke-direct {v3, p0, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$4;-><init>(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/util/Callback;)V

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V

    return-void

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/flag/report/FlagReportOptionDialog;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqFlagType:I

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/flag/report/FlagReportOptionDialog;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->screenShotFlag:Z

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/flag/report/FlagReportOptionDialog;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->showBlockUser:Z

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/flag/report/FlagReportOptionDialog;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->getFlagType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic z(Lcom/narvii/flag/report/FlagReportOptionDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->initReqParam()V

    return-void
.end method


# virtual methods
.method public addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 0

    .line 1
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

    const p2, 0x7f0d0196

    goto :goto_0

    :cond_0
    const p2, 0x7f0d019b

    goto :goto_0

    :cond_1
    const p2, 0x7f0d0197

    goto :goto_0

    :cond_2
    const p2, 0x7f0d0194

    :goto_0
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0195

    iget-object v1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_3
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method public addItem(IILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addItem(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/narvii/widget/FlagItemLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/FlagItemLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FlagItemLayout;->setLeftText(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/narvii/widget/FlagItemLayout;->setLeftTextColor(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080256

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/16 v0, 0x28

    .line 7
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 13
    :cond_0
    return-void
.end method

.method sendQuizQuestionIncorrectAnswer()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v1, "config"

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mObject:Lcom/narvii/model/NVObject;

    .line 16
    .line 17
    check-cast v1, Lcom/narvii/model/QuizQuestion;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x1

    .line 23
    .line 24
    new-array v3, v3, [Ljava/lang/Object;

    .line 25
    const/4 v4, 0x0

    .line 26
    .line 27
    iget-object v1, v1, Lcom/narvii/model/QuizQuestion;->title:Ljava/lang/String;

    .line 28
    .line 29
    aput-object v1, v3, v4

    .line 30
    .line 31
    .line 32
    const v1, 0x7f120f8f

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object v7

    .line 37
    .line 38
    new-instance v8, Lcom/narvii/flag/report/FlagReportOptionDialog$2;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    const-class v4, Lcom/narvii/model/api/CommentResponse;

    .line 45
    move-object v1, v8

    .line 46
    move-object v2, p0

    .line 47
    move-object v5, v0

    .line 48
    move-object v6, v7

    .line 49
    .line 50
    .line 51
    invoke-direct/range {v1 .. v6}, Lcom/narvii/flag/report/FlagReportOptionDialog$2;-><init>(Lcom/narvii/flag/report/FlagReportOptionDialog;Landroid/content/Context;Ljava/lang/Class;Lcom/narvii/config/ConfigService;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 55
    move-result v0

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->reqUserId:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8, v0, v1}, Lcom/narvii/flag/report/FlagRequestDialog;->setFlagUserInfo(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    const v1, 0x7f120788

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8, v0}, Lcom/narvii/flag/report/FlagRequestDialog;->setEditHint(Ljava/lang/String;)V

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v1, "\n"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8, v0}, Lcom/narvii/flag/report/FlagRequestDialog;->setEditText(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v8}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Dialog;)V

    .line 102
    .line 103
    iget-boolean v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->fullScreen:Z

    .line 104
    .line 105
    if-eqz v0, :cond_0

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    const/16 v1, 0x400

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 115
    .line 116
    .line 117
    :cond_0
    invoke-virtual {v8}, Lcom/narvii/app/NVDialog;->show()V

    .line 118
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->fullScreen:Z

    .line 3
    .line 4
    const/16 v0, 0x400

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 22
    :goto_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

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
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 23
    .line 24
    const-string v1, "flag"

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog;->mNvContext:Lcom/narvii/app/NVContext;

    .line 30
    .line 31
    instance-of v2, v1, Lcom/narvii/app/NVFragment;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    instance-of v2, v1, Lcom/narvii/app/NVActivity;

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lcom/narvii/app/NVActivity;->ensureLogin(Landroid/content/Intent;)V

    .line 49
    :cond_2
    :goto_0
    return-void
.end method
