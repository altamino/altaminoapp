.class public Lcom/narvii/chat/post/ThreadPostNewActivity;
.super Lcom/narvii/chat/post/ThreadPostActivity;
.source "SourceFile"


# static fields
.field static final EDIT_TOPIC_REQUEST:I = 0xfd11

.field private static final MAX_TOPIC_COUNT:I = 0xa


# instance fields
.field private backgroundFragment:Lcom/narvii/chat/ChatBackgroundFragment;

.field private chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

.field private defaultTopic:Lcom/narvii/model/story/StoryTopic;

.field private topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;

.field private topicLayout:Landroid/widget/FrameLayout;

.field private topicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    .line 11
    return-void
.end method

.method public static synthetic C(Lcom/narvii/chat/post/ThreadPostNewActivity;Lcom/narvii/suggest/interest/ThreadPostTopicView;Lcom/narvii/model/story/StoryTopic;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/post/ThreadPostNewActivity;->lambda$updateTopicView$2(Lcom/narvii/suggest/interest/ThreadPostTopicView;Lcom/narvii/model/story/StoryTopic;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D(Lcom/narvii/chat/post/ThreadPostNewActivity;Lcom/narvii/suggest/interest/ThreadPostTopicView;Lcom/narvii/model/story/StoryTopic;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/chat/post/ThreadPostNewActivity;->lambda$updateTopicView$0(Lcom/narvii/suggest/interest/ThreadPostTopicView;Lcom/narvii/model/story/StoryTopic;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic E(Lcom/narvii/suggest/interest/ThreadPostTopicView;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/post/ThreadPostNewActivity;->lambda$updateTopicView$1(Lcom/narvii/suggest/interest/ThreadPostTopicView;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic F(Lcom/narvii/chat/post/ThreadPostNewActivity;)Lcom/narvii/chat/ChatBackgroundFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->backgroundFragment:Lcom/narvii/chat/ChatBackgroundFragment;

    return-object p0
.end method

.method static bridge synthetic G(Lcom/narvii/chat/post/ThreadPostNewActivity;)Lcom/narvii/chat/ChatBackgroundPickerRecycler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    return-object p0
.end method

.method static bridge synthetic H(Lcom/narvii/chat/post/ThreadPostNewActivity;Lcom/narvii/model/Media;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/post/ThreadPostNewActivity;->setCurrentBackground(Lcom/narvii/model/Media;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/post/ThreadPostNewActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/post/ThreadPostNewActivity;)Lcom/narvii/post/DraftManager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/post/ThreadPostNewActivity;)Lcom/narvii/media/MediaPickerFragment;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 3
    return-object p0
.end method

.method private synthetic lambda$updateTopicView$0(Lcom/narvii/suggest/interest/ThreadPostTopicView;Lcom/narvii/model/story/StoryTopic;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const/4 p3, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p3}, Lcom/narvii/suggest/interest/ThreadPostTopicView;->setChecked(Z)V

    .line 5
    .line 6
    if-nez p4, :cond_0

    .line 7
    .line 8
    iget-object p3, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    iget-object p2, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->updateTopicAddView()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->saveDraft()V

    .line 23
    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateTopicView$1(Lcom/narvii/suggest/interest/ThreadPostTopicView;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/narvii/suggest/interest/ThreadPostTopicView;->setChecked(Z)V

    .line 5
    return-void
.end method

.method private synthetic lambda$updateTopicView$2(Lcom/narvii/suggest/interest/ThreadPostTopicView;Lcom/narvii/model/story/StoryTopic;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    new-instance p3, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p3, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v0, 0x7f120fd5

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lcom/narvii/suggest/interest/ThreadPostTopicView;->setChecked(Z)V

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/chat/post/e;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/chat/post/e;-><init>(Lcom/narvii/chat/post/ThreadPostNewActivity;Lcom/narvii/suggest/interest/ThreadPostTopicView;Lcom/narvii/model/story/StoryTopic;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 28
    .line 29
    new-instance p2, Lcom/narvii/chat/post/f;

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, p1}, Lcom/narvii/chat/post/f;-><init>(Lcom/narvii/suggest/interest/ThreadPostTopicView;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 39
    return-void
.end method

.method private setCurrentBackground(Lcom/narvii/model/Media;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->setCurrentSelect(Lcom/narvii/model/Media;)V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->backgroundFragment:Lcom/narvii/chat/ChatBackgroundFragment;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/chat/ChatBackgroundFragment;->setDefaultBackground()V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatBackgroundFragment;->setBackground(Lcom/narvii/model/Media;)V

    .line 21
    :cond_2
    :goto_0
    return-void
.end method

.method private updateTopicAddView()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    move-result v2

    .line 17
    sub-int/2addr v2, v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    instance-of v1, v0, Lcom/narvii/suggest/interest/ThreadPostAddTopicView;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 31
    move-result v1

    .line 32
    .line 33
    const/16 v2, 0xa

    .line 34
    .line 35
    if-ge v1, v2, :cond_1

    .line 36
    const/4 v1, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v1, 0x4

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    :cond_2
    return-void
.end method

.method private updateTopicView()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicLayout:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    move v1, v2

    .line 34
    .line 35
    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 39
    move-result v3

    .line 40
    .line 41
    if-ge v1, v3, :cond_2

    .line 42
    .line 43
    iget-object v3, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    .line 44
    .line 45
    .line 46
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    check-cast v3, Lcom/narvii/model/story/StoryTopic;

    .line 50
    .line 51
    if-nez v3, :cond_1

    .line 52
    goto :goto_1

    .line 53
    .line 54
    .line 55
    :cond_1
    const v4, 0x7f0d0746

    .line 56
    .line 57
    iget-object v5, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 61
    move-result-object v4

    .line 62
    .line 63
    check-cast v4, Lcom/narvii/suggest/interest/ThreadPostTopicView;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v3}, Lcom/narvii/suggest/interest/ThreadPostTopicView;->setStoryTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v2}, Lcom/narvii/suggest/interest/ThreadPostTopicView;->setChecked(Z)V

    .line 70
    .line 71
    new-instance v5, Lcom/narvii/chat/post/d;

    .line 72
    .line 73
    .line 74
    invoke-direct {v5, p0, v4, v3}, Lcom/narvii/chat/post/d;-><init>(Lcom/narvii/chat/post/ThreadPostNewActivity;Lcom/narvii/suggest/interest/ThreadPostTopicView;Lcom/narvii/model/story/StoryTopic;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    iget-object v3, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    .line 84
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 85
    goto :goto_0

    .line 86
    .line 87
    .line 88
    :cond_2
    const v1, 0x7f0d0745

    .line 89
    .line 90
    iget-object v3, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    check-cast v0, Lcom/narvii/suggest/interest/ThreadPostAddTopicView;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/narvii/suggest/interest/ThreadPostAddTopicView;->setUp()V

    .line 100
    .line 101
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->updateTopicAddView()V

    .line 108
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0648

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "chat_compose"

    return-object v0
.end method

.method protected getPostHelper()Lcom/narvii/post/PostHelper;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/post/ThreadPostNewActivity$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p0}, Lcom/narvii/chat/post/ThreadPostNewActivity$2;-><init>(Lcom/narvii/chat/post/ThreadPostNewActivity;Lcom/narvii/app/NVContext;)V

    .line 6
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0xfd11

    .line 4
    .line 5
    if-ne p1, v0, :cond_1

    .line 6
    const/4 v0, -0x1

    .line 7
    .line 8
    if-ne p2, v0, :cond_1

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    const-string p1, "topicList"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-class p2, Lcom/narvii/model/TopicTag;

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/model/TopicTag;->convertToStoryTopicList(Ljava/util/List;)Ljava/util/List;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->saveDraft()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->updateTopicView()V

    .line 35
    :cond_0
    return-void

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/post/ThreadPostActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 39
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->onClick(Landroid/view/View;)V

    .line 7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setShouldInflateAd(Z)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f0a028a

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/16 v0, 0x8

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/chat/post/ThreadPost;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/narvii/chat/post/ThreadPost;->backgroundMedia:Lcom/narvii/model/Media;

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->setCurrentBackground(Lcom/narvii/model/Media;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    const-string v1, "chatBackground"

    .line 47
    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    new-instance p1, Lcom/narvii/chat/ChatBackgroundFragment;

    .line 51
    .line 52
    .line 53
    invoke-direct {p1}, Lcom/narvii/chat/ChatBackgroundFragment;-><init>()V

    .line 54
    .line 55
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->backgroundFragment:Lcom/narvii/chat/ChatBackgroundFragment;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    const v0, 0x7f0a028c

    .line 63
    .line 64
    iget-object v2, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->backgroundFragment:Lcom/narvii/chat/ChatBackgroundFragment;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 72
    goto :goto_1

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    check-cast p1, Lcom/narvii/chat/ChatBackgroundFragment;

    .line 79
    .line 80
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->backgroundFragment:Lcom/narvii/chat/ChatBackgroundFragment;

    .line 81
    .line 82
    .line 83
    :goto_1
    const p1, 0x7f0a0ee8

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    check-cast p1, Landroid/widget/FrameLayout;

    .line 90
    .line 91
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicLayout:Landroid/widget/FrameLayout;

    .line 92
    .line 93
    .line 94
    const p1, 0x7f0a0ee9

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    check-cast p1, Lcom/narvii/util/layouts/NVFlowLayout;

    .line 101
    .line 102
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 103
    .line 104
    const-string p1, "topic"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    const-class v0, Lcom/narvii/model/story/StoryTopic;

    .line 111
    .line 112
    .line 113
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    .line 117
    .line 118
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->defaultTopic:Lcom/narvii/model/story/StoryTopic;

    .line 119
    .line 120
    if-eqz p1, :cond_2

    .line 121
    .line 122
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    .line 123
    .line 124
    .line 125
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    :cond_2
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->updateTopicView()V

    .line 129
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
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

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    const-string v0, "MediaRequestType"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 17
    move-result p2

    .line 18
    .line 19
    if-nez p2, :cond_1

    .line 20
    const/4 p2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/model/Media;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/narvii/chat/post/ThreadPostNewActivity;->setCurrentBackground(Lcom/narvii/model/Media;)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/post/ThreadPostActivity;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V

    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method protected savePost()Lcom/narvii/chat/post/ThreadPost;
    .locals 2

    .line 2
    invoke-super {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 3
    invoke-virtual {v1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->getCurrentSelect()Lcom/narvii/model/Media;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/chat/post/ThreadPost;->backgroundMedia:Lcom/narvii/model/Media;

    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    .line 4
    iput-object v1, v0, Lcom/narvii/chat/post/ThreadPost;->userAddedTopicList:Ljava/util/List;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    move-result-object v0

    return-object v0
.end method

.method protected showFansOnlyLabel()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method protected updateView(Lcom/narvii/chat/post/ThreadPost;)V
    .locals 10

    .line 2
    invoke-super {p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->updateView(Lcom/narvii/chat/post/ThreadPost;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 4
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    move-result v0

    const v1, 0x7f0a02be

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const v3, 0x7f120f2d

    .line 7
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120267

    .line 8
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 9
    new-instance v5, Landroid/text/SpannableStringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 10
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const/4 v7, -0x1

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    const/16 v9, 0x12

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 11
    new-instance v6, Landroid/text/style/UnderlineSpan;

    invoke-direct {v6}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v5, v6, v7, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 12
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v1, 0x7f0a009a

    .line 13
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0a03d2

    .line 14
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 15
    invoke-virtual {p1}, Lcom/narvii/chat/post/ThreadPost;->icon()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const-string v4, "account"

    .line 18
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/account/AccountService;

    .line 19
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a06eb

    .line 23
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 24
    invoke-virtual {v4}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 25
    invoke-virtual {v4}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/chat/post/ThreadPost;->setIcon(Ljava/lang/String;)V

    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 27
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 28
    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->backgroundFragment:Lcom/narvii/chat/ChatBackgroundFragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    if-eqz v1, :cond_4

    .line 30
    invoke-virtual {v1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->getCurrentSelect()Lcom/narvii/model/Media;

    move-result-object v1

    .line 31
    invoke-direct {p0, v1}, Lcom/narvii/chat/post/ThreadPostNewActivity;->setCurrentBackground(Lcom/narvii/model/Media;)V

    :cond_4
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 32
    new-instance v0, Lcom/narvii/chat/post/ThreadPostNewActivity$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/post/ThreadPostNewActivity$1;-><init>(Lcom/narvii/chat/post/ThreadPostNewActivity;)V

    invoke-virtual {v1, v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->setOnSelectBackgroundListener(Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;)V

    .line 33
    :cond_5
    iget-object v0, p1, Lcom/narvii/chat/post/ThreadPost;->userAddedTopicList:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 34
    iget-object p1, p1, Lcom/narvii/chat/post/ThreadPost;->userAddedTopicList:Ljava/util/List;

    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    .line 35
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->updateTopicView()V

    :cond_6
    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/post/ThreadPostNewActivity;->updateView(Lcom/narvii/chat/post/ThreadPost;)V

    return-void
.end method
