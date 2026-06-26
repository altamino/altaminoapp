.class public Lcom/narvii/chat/post/ThreadPostNewActivity;
.super Lcom/narvii/chat/post/ThreadPostActivity;
.source "ThreadPostNewActivity.java"


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

    .line 48
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostActivity;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/post/ThreadPostNewActivity;)Lcom/narvii/chat/ChatBackgroundFragment;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->backgroundFragment:Lcom/narvii/chat/ChatBackgroundFragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/post/ThreadPostNewActivity;Lcom/narvii/model/Media;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/narvii/chat/post/ThreadPostNewActivity;->setCurrentBackground(Lcom/narvii/model/Media;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/chat/post/ThreadPostNewActivity;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/chat/post/ThreadPostNewActivity;)Lcom/narvii/post/DraftManager;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/chat/post/ThreadPostNewActivity;)Lcom/narvii/media/MediaPickerFragment;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/chat/post/ThreadPostNewActivity;)Lcom/narvii/chat/ChatBackgroundPickerRecycler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/chat/post/ThreadPostNewActivity;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic lambda$null$1(Lcom/narvii/suggest/interest/ThreadPostTopicView;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 272
    invoke-virtual {p0, p1}, Lcom/narvii/suggest/interest/ThreadPostTopicView;->setChecked(Z)V

    return-void
.end method

.method private setCurrentBackground(Lcom/narvii/model/Media;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->setCurrentSelect(Lcom/narvii/model/Media;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->backgroundFragment:Lcom/narvii/chat/ChatBackgroundFragment;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 183
    invoke-virtual {v0}, Lcom/narvii/chat/ChatBackgroundFragment;->setDefaultBackground()V

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatBackgroundFragment;->setBackground(Lcom/narvii/model/Media;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateTopicAddView()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 297
    instance-of v1, v0, Lcom/narvii/suggest/interest/ThreadPostAddTopicView;

    if-eqz v1, :cond_2

    .line 298
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private updateTopicView()V
    .locals 6

    .line 244
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 249
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 251
    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 252
    iget-object v3, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/story/StoryTopic;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const v4, 0x7f0b0690

    .line 256
    iget-object v5, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {v0, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/suggest/interest/ThreadPostTopicView;

    .line 257
    invoke-virtual {v4, v3}, Lcom/narvii/suggest/interest/ThreadPostTopicView;->setStoryTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 258
    invoke-virtual {v4, v2}, Lcom/narvii/suggest/interest/ThreadPostTopicView;->setChecked(Z)V

    .line 259
    new-instance v5, Lcom/narvii/chat/post/-$$Lambda$ThreadPostNewActivity$k5G4GYjRBMexqzY0NA6KInBNQZ0;

    invoke-direct {v5, p0, v4, v3}, Lcom/narvii/chat/post/-$$Lambda$ThreadPostNewActivity$k5G4GYjRBMexqzY0NA6KInBNQZ0;-><init>(Lcom/narvii/chat/post/ThreadPostNewActivity;Lcom/narvii/suggest/interest/ThreadPostTopicView;Lcom/narvii/model/story/StoryTopic;)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v3, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const v1, 0x7f0b068f

    .line 278
    iget-object v3, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/suggest/interest/ThreadPostAddTopicView;

    .line 279
    new-instance v1, Lcom/narvii/chat/post/ThreadPostNewActivity$3;

    invoke-direct {v1, p0}, Lcom/narvii/chat/post/ThreadPostNewActivity$3;-><init>(Lcom/narvii/chat/post/ThreadPostNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    invoke-virtual {v0}, Lcom/narvii/suggest/interest/ThreadPostAddTopicView;->setUp()V

    .line 288
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 289
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->updateTopicAddView()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0b05a1

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "ChatCompose"

    return-object v0
.end method

.method protected getPostHelper()Lcom/narvii/post/PostHelper;
    .locals 1

    .line 200
    new-instance v0, Lcom/narvii/chat/post/ThreadPostNewActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/narvii/chat/post/ThreadPostNewActivity$2;-><init>(Lcom/narvii/chat/post/ThreadPostNewActivity;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public synthetic lambda$null$0$ThreadPostNewActivity(Lcom/narvii/suggest/interest/ThreadPostTopicView;Lcom/narvii/model/story/StoryTopic;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p3, 0x0

    .line 264
    invoke-virtual {p1, p3}, Lcom/narvii/suggest/interest/ThreadPostTopicView;->setChecked(Z)V

    if-nez p4, :cond_0

    .line 266
    iget-object p3, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 267
    iget-object p2, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 268
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->updateTopicAddView()V

    .line 269
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->saveDraft()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$updateTopicView$2$ThreadPostNewActivity(Lcom/narvii/suggest/interest/ThreadPostTopicView;Lcom/narvii/model/story/StoryTopic;Landroid/view/View;)V
    .locals 2

    .line 260
    new-instance p3, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    const v1, 0x7f0f0eb6

    .line 261
    invoke-virtual {p3, v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 262
    invoke-virtual {p1, v0}, Lcom/narvii/suggest/interest/ThreadPostTopicView;->setChecked(Z)V

    .line 263
    new-instance v0, Lcom/narvii/chat/post/-$$Lambda$ThreadPostNewActivity$KuoSXK8hWJLQP8dZEGINsxpeMvA;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/chat/post/-$$Lambda$ThreadPostNewActivity$KuoSXK8hWJLQP8dZEGINsxpeMvA;-><init>(Lcom/narvii/chat/post/ThreadPostNewActivity;Lcom/narvii/suggest/interest/ThreadPostTopicView;Lcom/narvii/model/story/StoryTopic;)V

    invoke-virtual {p3, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 272
    new-instance p2, Lcom/narvii/chat/post/-$$Lambda$ThreadPostNewActivity$WbQcDloWPnlJmVdEYUTysdRp8ac;

    invoke-direct {p2, p1}, Lcom/narvii/chat/post/-$$Lambda$ThreadPostNewActivity$WbQcDloWPnlJmVdEYUTysdRp8ac;-><init>(Lcom/narvii/suggest/interest/ThreadPostTopicView;)V

    invoke-virtual {p3, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 273
    invoke-virtual {p3}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const v0, 0xfd11

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "topicList"

    .line 232
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 233
    const-class p2, Lcom/narvii/model/TopicTag;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/model/TopicTag;->convertToStoryTopicList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 234
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    .line 235
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->saveDraft()V

    .line 236
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->updateTopicView()V

    :cond_0
    return-void

    .line 240
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/chat/post/ThreadPostActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 173
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    .line 174
    invoke-super {p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 63
    invoke-super {p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    move-result v0

    const v1, 0x7f0901d3

    .line 66
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    iput-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 67
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    check-cast v0, Lcom/narvii/chat/post/ThreadPost;

    iget-object v0, v0, Lcom/narvii/chat/post/ThreadPost;->backgroundMedia:Lcom/narvii/model/Media;

    invoke-direct {p0, v0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->setCurrentBackground(Lcom/narvii/model/Media;)V

    .line 71
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "chatBackground"

    if-nez p1, :cond_1

    .line 73
    new-instance p1, Lcom/narvii/chat/ChatBackgroundFragment;

    invoke-direct {p1}, Lcom/narvii/chat/ChatBackgroundFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->backgroundFragment:Lcom/narvii/chat/ChatBackgroundFragment;

    .line 74
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0901d5

    iget-object v2, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->backgroundFragment:Lcom/narvii/chat/ChatBackgroundFragment;

    invoke-virtual {p1, v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/ChatBackgroundFragment;

    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->backgroundFragment:Lcom/narvii/chat/ChatBackgroundFragment;

    :goto_1
    const p1, 0x7f090bcd

    .line 79
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicLayout:Landroid/widget/FrameLayout;

    const p1, 0x7f090bce

    .line 80
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/layouts/NVFlowLayout;

    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;

    const-string p1, "topic"

    .line 81
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/story/StoryTopic;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->defaultTopic:Lcom/narvii/model/story/StoryTopic;

    .line 82
    iget-object p1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->defaultTopic:Lcom/narvii/model/story/StoryTopic;

    if-eqz p1, :cond_2

    .line 83
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_2
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->updateTopicView()V

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

    if-eqz p2, :cond_0

    const-string v0, "MediaRequestType"

    .line 213
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    .line 214
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 215
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    invoke-direct {p0, p1}, Lcom/narvii/chat/post/ThreadPostNewActivity;->setCurrentBackground(Lcom/narvii/model/Media;)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/post/ThreadPostActivity;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected savePost()Lcom/narvii/chat/post/ThreadPost;
    .locals 2

    .line 192
    invoke-super {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-virtual {v1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->getCurrentSelect()Lcom/narvii/model/Media;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/chat/post/ThreadPost;->backgroundMedia:Lcom/narvii/model/Media;

    .line 194
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    iput-object v1, v0, Lcom/narvii/chat/post/ThreadPost;->userAddedTopicList:Ljava/util/List;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->savePost()Lcom/narvii/chat/post/ThreadPost;

    move-result-object v0

    return-object v0
.end method

.method protected showFansOnlyLabel()Z
    .locals 1

    const-string v0, "config"

    .line 224
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 225
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected updateView(Lcom/narvii/chat/post/ThreadPost;)V
    .locals 10

    .line 95
    invoke-super {p0, p1}, Lcom/narvii/chat/post/ThreadPostActivity;->updateView(Lcom/narvii/chat/post/ThreadPost;)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 97
    invoke-virtual {p0}, Lcom/narvii/chat/post/ThreadPostActivity;->isGroupChat()Z

    move-result v0

    const v1, 0x7f090206

    .line 99
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const v3, 0x7f0f0e02

    .line 103
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0f0224

    .line 104
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 105
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

    .line 106
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

    .line 107
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

    .line 108
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v1, 0x7f090062

    .line 111
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0902ff

    .line 112
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 113
    invoke-virtual {p1}, Lcom/narvii/chat/post/ThreadPost;->icon()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 116
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const-string v4, "account"

    .line 118
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/account/AccountService;

    .line 119
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v4

    .line 120
    invoke-virtual {v4}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 121
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090571

    .line 123
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 124
    invoke-virtual {v4}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 125
    invoke-virtual {v4}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/chat/post/ThreadPost;->setIcon(Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 128
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 132
    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :goto_1
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->backgroundFragment:Lcom/narvii/chat/ChatBackgroundFragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    if-eqz v1, :cond_4

    .line 137
    invoke-virtual {v1}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->getCurrentSelect()Lcom/narvii/model/Media;

    move-result-object v1

    .line 138
    invoke-direct {p0, v1}, Lcom/narvii/chat/post/ThreadPostNewActivity;->setCurrentBackground(Lcom/narvii/model/Media;)V

    .line 141
    :cond_4
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->chatPicker:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 142
    new-instance v0, Lcom/narvii/chat/post/ThreadPostNewActivity$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/post/ThreadPostNewActivity$1;-><init>(Lcom/narvii/chat/post/ThreadPostNewActivity;)V

    invoke-virtual {v1, v0}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->setOnSelectBackgroundListener(Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;)V

    .line 160
    :cond_5
    iget-object v0, p1, Lcom/narvii/chat/post/ThreadPost;->userAddedTopicList:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 161
    iget-object p1, p1, Lcom/narvii/chat/post/ThreadPost;->userAddedTopicList:Ljava/util/List;

    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity;->topicList:Ljava/util/List;

    .line 162
    invoke-direct {p0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->updateTopicView()V

    :cond_6
    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 48
    check-cast p1, Lcom/narvii/chat/post/ThreadPost;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/post/ThreadPostNewActivity;->updateView(Lcom/narvii/chat/post/ThreadPost;)V

    return-void
.end method
