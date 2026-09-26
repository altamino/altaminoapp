.class public Lcom/narvii/monetization/bubble/BubbleEditFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$TemplatePickedListener;
.implements Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;
.implements Lcom/narvii/monetization/bubble/service/BubbleUploadListener;
.implements Lcom/narvii/monetization/sticker/picker/StickerSelectListener;
.implements Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;


# static fields
.field public static final KEY_BUBBLE_INFO:Ljava/lang/String; = "key_bubble_info"

.field public static final KEY_CHAT_BUBBLE:Ljava/lang/String; = "key_chat_bubble"

.field private static final TAG:Ljava/lang/String; = "BubbleEdit"

.field private static final TAG_FRAGMENT_PICKER:Ljava/lang/String; = "bubble_template_picker"

.field private static final TAG_FRAGMENT_STICKER:Ljava/lang/String; = "bubble_template_sticker"


# instance fields
.field private btnBack:Landroid/view/View;

.field private btnHideSticker:Landroid/view/View;

.field private btnSaveBubble:Landroid/view/View;

.field private bubbleEditorView:Lcom/narvii/monetization/bubble/BubbleEditView;

.field private bubbleInfo:Lcom/narvii/model/BubbleInfo;

.field private bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

.field private bubbleTemplate:Lcom/narvii/monetization/bubble/model/BubbleTemplate;

.field private curChatBubble:Lcom/narvii/model/ChatBubble;

.field private curFocusedSlot:Lcom/narvii/model/SlotPoint;

.field private downloadProgress:Landroid/view/View;

.field private editResourceDownloaed:Z

.field private rootContent:Landroid/view/View;

.field private stickerContainer:Landroid/view/View;

.field private uploadingDlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    .line 7
    return-void
.end method

.method private closeEditView()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 4
    return-void
.end method

.method private configAttachFragment()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "bubble_template_picker"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    check-cast v2, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;

    .line 13
    const/4 v3, 0x1

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;-><init>()V

    .line 21
    .line 22
    new-instance v4, Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->isEditMode()Z

    .line 29
    move-result v5

    .line 30
    xor-int/2addr v5, v3

    .line 31
    .line 32
    const-string v6, "autoChoose"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    .line 45
    const v5, 0x7f0a022a

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v5, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {v2, p0}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->setListener(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$TemplatePickedListener;)V

    .line 56
    .line 57
    const-string v1, "bubble_template_sticker"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    check-cast v2, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 64
    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    new-instance v2, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 68
    .line 69
    .line 70
    invoke-direct {v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;-><init>()V

    .line 71
    .line 72
    new-instance v4, Landroid/os/Bundle;

    .line 73
    .line 74
    .line 75
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 76
    .line 77
    const-string v5, "tabBottom"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    .line 82
    const-string v5, "showSelected"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    .line 87
    const-string v3, "source"

    .line 88
    .line 89
    const-string v5, "Bubble Edit"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    .line 102
    const v3, 0x7f0a0dab

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v3, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 110
    :cond_1
    const/4 v0, 0x0

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->setCurrentSticker(Lcom/narvii/model/Sticker;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->setStickerSelectListener(Lcom/narvii/monetization/sticker/picker/StickerSelectListener;)V

    .line 117
    return-void
.end method

.method private hideSticker()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->stickerContainer:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    const v1, 0x7f01005e

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleEditFragment$3;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment$3;-><init>(Lcom/narvii/monetization/bubble/BubbleEditFragment;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->stickerContainer:Landroid/view/View;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 34
    return-void
.end method

.method private isEditMode()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method static bridge synthetic n(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/monetization/bubble/BubbleEditView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleEditorView:Lcom/narvii/monetization/bubble/BubbleEditView;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/model/BubbleInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    return-object p0
.end method

.method static bridge synthetic p(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/monetization/bubble/BubbleService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->stickerContainer:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic r(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->uploadingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic s(Lcom/narvii/monetization/bubble/BubbleEditFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->saveBubble(Z)V

    return-void
.end method

.method private saveBubble(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->uploadingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleEditorView:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/bubble/BubbleEditView;->getPreviewBitmap(Lcom/narvii/model/BubbleInfo;)Landroid/graphics/Bitmap;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, p0, p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;-><init>(Lcom/narvii/monetization/bubble/BubbleEditFragment;Z)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0, v1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->uploadBubblePreview(Landroid/graphics/Bitmap;Lcom/narvii/util/Callback;)V

    .line 29
    return-void
.end method

.method private setSelectedSticker(Lcom/narvii/model/SlotPoint;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "bubble_template_sticker"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/model/Sticker;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Lcom/narvii/model/Sticker;-><init>()V

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Lcom/narvii/model/BubbleInfo;->getSlotByPosition(Lcom/narvii/model/SlotPoint;)Lcom/narvii/model/BubbleSlot;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p1, Lcom/narvii/model/BubbleSlot;->stickerId:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p1, v1, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->setCurrentSticker(Lcom/narvii/model/Sticker;)V

    .line 35
    :cond_1
    return-void
.end method

.method private showSticker()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->stickerContainer:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->stickerContainer:Landroid/view/View;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-string v1, "bubble_template_sticker"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    const/4 v1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->onLogLevelActiveChanged(Z)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    const v1, 0x7f010059

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->stickerContainer:Landroid/view/View;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 49
    :cond_1
    return-void
.end method

.method private updateBubbleEditView(Lcom/narvii/model/SlotPoint;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleEditorView:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/bubble/BubbleEditView;->updateSlotViews(Lcom/narvii/model/BubbleInfo;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->setSelectedSticker(Lcom/narvii/model/SlotPoint;)V

    .line 11
    return-void
.end method

.method private updateSaveButton()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->editResourceDownloaed:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/model/ChatBubble;->config:Lcom/narvii/model/BubbleInfo;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    :goto_0
    move v1, v2

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v3, v0, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    iget-object v3, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/narvii/model/ChatBubble;->config:Lcom/narvii/model/BubbleInfo;

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->btnSaveBubble:Landroid/view/View;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 51
    return-void
.end method

.method private updateSlots(Lcom/narvii/model/SlotPoint;Lcom/narvii/model/Sticker;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/model/BubbleInfo;->updateSlot(Lcom/narvii/model/SlotPoint;Lcom/narvii/model/Sticker;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method private uploadBubblePreview(Landroid/graphics/Bitmap;Lcom/narvii/util/Callback;)V
    .locals 7

    .line 1
    .line 2
    const-string v0, "photo"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    .line 9
    check-cast v1, Lcom/narvii/photos/PhotoManager;

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    const-string v4, "chat-bubble-thumbnail"

    .line 13
    const/4 v5, 0x1

    .line 14
    .line 15
    new-instance v6, Lcom/narvii/monetization/bubble/BubbleEditFragment$6;

    .line 16
    .line 17
    .line 18
    invoke-direct {v6, p0, p2}, Lcom/narvii/monetization/bubble/BubbleEditFragment$6;-><init>(Lcom/narvii/monetization/bubble/BubbleEditFragment;Lcom/narvii/util/Callback;)V

    .line 19
    move-object v3, p1

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLcom/narvii/photos/PhotoUploadListener;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public onCancelEdit()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleEditorView:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/narvii/monetization/bubble/BubbleEditView;->loseFocus(Lcom/narvii/model/BubbleInfo;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->updateBubbleEditView(Lcom/narvii/model/SlotPoint;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->hideSticker()V

    .line 17
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0321

    .line 8
    .line 9
    if-eq p1, v0, :cond_3

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0663

    .line 13
    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0c64

    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->isEditMode()Z

    .line 24
    move-result p1

    .line 25
    const/4 v0, 0x0

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    const v1, 0x7f121036

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 43
    .line 44
    .line 45
    const v1, 0x7f1201cb

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 49
    .line 50
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleEditFragment$2;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment$2;-><init>(Lcom/narvii/monetization/bubble/BubbleEditFragment;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-direct {p0, v0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->saveBubble(Z)V

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->hideSticker()V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->closeEditView()V

    .line 72
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 25
    .line 26
    :cond_0
    const-string v0, "bubble"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/monetization/bubble/BubbleService;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->uploadingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleEditFragment$1;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment$1;-><init>(Lcom/narvii/monetization/bubble/BubbleEditFragment;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 54
    .line 55
    const-class v0, Lcom/narvii/model/ChatBubble;

    .line 56
    .line 57
    const-string v1, "key_chat_bubble"

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    const-string v2, "key_bubble_info"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    const-class v3, Lcom/narvii/model/BubbleInfo;

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    check-cast v1, Lcom/narvii/model/BubbleInfo;

    .line 78
    .line 79
    iput-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    check-cast v0, Lcom/narvii/model/ChatBubble;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    .line 88
    .line 89
    const-string v0, "downloaded"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 93
    move-result p1

    .line 94
    .line 95
    iput-boolean p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->editResourceDownloaed:Z

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_1
    new-instance p1, Lcom/narvii/model/BubbleInfo;

    .line 99
    .line 100
    .line 101
    invoke-direct {p1}, Lcom/narvii/model/BubbleInfo;-><init>()V

    .line 102
    .line 103
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    if-eqz p1, :cond_2

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    .line 116
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    check-cast p1, Lcom/narvii/model/ChatBubble;

    .line 120
    .line 121
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    .line 122
    .line 123
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    .line 124
    .line 125
    if-nez p1, :cond_3

    .line 126
    .line 127
    new-instance p1, Lcom/narvii/model/ChatBubble;

    .line 128
    .line 129
    .line 130
    invoke-direct {p1}, Lcom/narvii/model/ChatBubble;-><init>()V

    .line 131
    .line 132
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    .line 133
    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02b0

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDownloadFail(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->downloadProgress:Landroid/view/View;

    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    return-void
.end method

.method public onDownloadProgressUpdate(II)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "cur "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p1, " total "

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-string p2, "BubbleEdit"

    .line 28
    .line 29
    .line 30
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method public onDownloadSuccess(Lcom/narvii/model/ChatBubble;Ljava/io/File;)V
    .locals 4

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 3
    .line 4
    new-instance v1, Ljava/io/File;

    .line 5
    .line 6
    const-string v2, "config.json"

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    const-class v2, Lcom/narvii/model/BubbleInfo;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/model/BubbleInfo;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 20
    .line 21
    new-instance v0, Ljava/io/File;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iput-object p1, v1, Lcom/narvii/model/BubbleInfo;->id:Ljava/lang/String;

    .line 57
    .line 58
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    iput-object v0, p1, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    .line 73
    .line 74
    if-eqz p1, :cond_0

    .line 75
    .line 76
    .line 77
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v0

    .line 83
    .line 84
    if-eqz v0, :cond_0

    .line 85
    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    check-cast v0, Lcom/narvii/model/BubbleSlot;

    .line 91
    .line 92
    new-instance v1, Ljava/io/File;

    .line 93
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    iget-object v3, v0, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    .line 116
    .line 117
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    iput-object v1, v0, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    .line 128
    goto :goto_0

    .line 129
    :catch_0
    move-exception p1

    .line 130
    goto :goto_1

    .line 131
    .line 132
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    .line 133
    .line 134
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/narvii/model/BubbleInfo;->clone()Lcom/narvii/model/BubbleInfo;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    iput-object v0, p1, Lcom/narvii/model/ChatBubble;->config:Lcom/narvii/model/BubbleInfo;

    .line 141
    const/4 p1, 0x1

    .line 142
    .line 143
    iput-boolean p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->editResourceDownloaed:Z

    .line 144
    .line 145
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleEditorView:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 146
    .line 147
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/bubble/BubbleEditView;->updateEditorView(Lcom/narvii/model/BubbleInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_2

    .line 152
    .line 153
    .line 154
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    .line 156
    :goto_2
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->downloadProgress:Landroid/view/View;

    .line 157
    .line 158
    const/16 v0, 0x8

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->rootContent:Landroid/view/View;

    .line 164
    const/4 v0, 0x0

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    const-string v0, "download bubble file success "

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 181
    move-result-object p2

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object p1

    .line 189
    .line 190
    const-string p2, "BubbleEdit"

    .line 191
    .line 192
    .line 193
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "key_bubble_info"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const-string v1, "key_chat_bubble"

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    :cond_0
    const-string v0, "downloaded"

    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->editResourceDownloaed:Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    return-void
.end method

.method public onSlotDeleted(Lcom/narvii/model/SlotPoint;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, v0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->updateSlots(Lcom/narvii/model/SlotPoint;Lcom/narvii/model/Sticker;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->updateBubbleEditView(Lcom/narvii/model/SlotPoint;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->updateSaveButton()V

    .line 11
    return-void
.end method

.method public onSlotSelected(Lcom/narvii/model/SlotPoint;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->showSticker()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->updateBubbleEditView(Lcom/narvii/model/SlotPoint;)V

    .line 9
    return-void
.end method

.method public onStickerSelected(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result p2

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    const-string p2, "stickerCache"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    check-cast p2, Lcom/narvii/sticker/StickerCacheService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Lcom/narvii/sticker/StickerCacheService;->getIconUri(Lcom/narvii/model/Sticker;)Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->updateSlots(Lcom/narvii/model/SlotPoint;Lcom/narvii/model/Sticker;Ljava/lang/String;)V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleEditorView:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/bubble/BubbleEditView;->updateSlotViews(Lcom/narvii/model/BubbleInfo;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->updateSaveButton()V

    .line 39
    return-void

    .line 40
    .line 41
    :cond_1
    :goto_0
    const-string p1, "BubbleEdit"

    .line 42
    .line 43
    const-string p2, "try to update slot when cur focus is null"

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/bubble/BubbleService;->cancelEditDownload(Lcom/narvii/model/ChatBubble;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/narvii/model/BubbleInfo;->getBubbleUploadId()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/bubble/BubbleService;->cancelUpload(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public onTemplatePicked(Lcom/narvii/monetization/bubble/model/BubbleTemplate;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    goto :goto_2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/model/BubbleInfo;->templateId:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/monetization/bubble/model/BubbleTemplate;->id()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    return-void

    .line 25
    .line 26
    :cond_1
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleTemplate:Lcom/narvii/monetization/bubble/model/BubbleTemplate;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/narvii/model/BubbleInfo;->id:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v1, p1, Lcom/narvii/monetization/bubble/model/BubbleTemplate;->config:Lcom/narvii/model/BubbleInfo;

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    new-instance v1, Lcom/narvii/model/BubbleInfo;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Lcom/narvii/model/BubbleInfo;-><init>()V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-virtual {v1}, Lcom/narvii/model/BubbleInfo;->clone()Lcom/narvii/model/BubbleInfo;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    :goto_0
    iput-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 47
    .line 48
    iput-object v0, v1, Lcom/narvii/model/BubbleInfo;->id:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v0, p1, Lcom/narvii/monetization/bubble/model/BubbleTemplate;->id:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v0, v1, Lcom/narvii/model/BubbleInfo;->templateId:Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/monetization/bubble/model/BubbleTemplate;->getMaterialUrl()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iput-object v0, v1, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/narvii/monetization/bubble/model/BubbleTemplate;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 64
    move-result-object v1

    .line 65
    const/4 v2, 0x0

    .line 66
    .line 67
    if-nez v1, :cond_3

    .line 68
    move-object p1, v2

    .line 69
    goto :goto_1

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/monetization/bubble/model/BubbleTemplate;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    :goto_1
    iput-object p1, v0, Lcom/narvii/model/BubbleInfo;->previewBackgroundUrl:Ljava/lang/String;

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleEditorView:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/bubble/BubbleEditView;->updateEditorView(Lcom/narvii/model/BubbleInfo;)V

    .line 87
    .line 88
    iput-object v2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    .line 89
    .line 90
    .line 91
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->updateSaveButton()V

    .line 92
    :cond_4
    :goto_2
    return-void
.end method

.method public onUploadFail(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->uploadingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 18
    return-void
.end method

.method public onUploadSuccess(Lcom/narvii/model/ChatBubble;)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->uploadingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->version()I

    .line 24
    move-result v2

    .line 25
    .line 26
    iget-object v3, p1, Lcom/narvii/model/ChatBubble;->resourceUrl:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/monetization/bubble/BubbleService;->requireBubble(Ljava/lang/String;ILjava/lang/String;)V

    .line 30
    .line 31
    :cond_1
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object v0, p1, Lcom/narvii/model/ChatBubble;->config:Lcom/narvii/model/BubbleInfo;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/narvii/model/BubbleInfo;->clone()Lcom/narvii/model/BubbleInfo;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    iput-object v1, v0, Lcom/narvii/model/ChatBubble;->config:Lcom/narvii/model/BubbleInfo;

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->updateSaveButton()V

    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    move-result v0

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 71
    .line 72
    const-string v1, "update"

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_3
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 82
    .line 83
    const-string v1, "new"

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 96
    .line 97
    .line 98
    const v0, 0x7f121041

    .line 99
    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 104
    move-result-object p1

    .line 105
    move-object v1, p1

    .line 106
    .line 107
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    .line 114
    const v2, 0x7f0801d7

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 126
    move-result-object v3

    .line 127
    .line 128
    .line 129
    const v4, 0x7f01006a

    .line 130
    .line 131
    const-wide/16 v5, 0x258

    .line 132
    .line 133
    .line 134
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/app/NVActivity;->toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V

    .line 135
    goto :goto_1

    .line 136
    .line 137
    .line 138
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 139
    move-result-object p1

    .line 140
    const/4 v1, 0x1

    .line 141
    .line 142
    .line 143
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 148
    .line 149
    :goto_1
    new-instance p1, Lcom/narvii/monetization/bubble/BubbleEditFragment$5;

    .line 150
    .line 151
    .line 152
    invoke-direct {p1, p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment$5;-><init>(Lcom/narvii/monetization/bubble/BubbleEditFragment;)V

    .line 153
    .line 154
    const-wide/16 v0, 0x1f4

    .line 155
    .line 156
    .line 157
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 158
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0321

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->btnBack:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    const p2, 0x7f0a0c64

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->btnSaveBubble:Landroid/view/View;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    const p2, 0x7f0a0226

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    check-cast p2, Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleEditorView:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p0}, Lcom/narvii/monetization/bubble/BubbleEditView;->setListener(Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;)V

    .line 42
    .line 43
    .line 44
    const p2, 0x7f0a0db2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->stickerContainer:Landroid/view/View;

    .line 51
    .line 52
    .line 53
    const p2, 0x7f0a0663

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->btnHideSticker:Landroid/view/View;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    const p2, 0x102000d

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->downloadProgress:Landroid/view/View;

    .line 72
    .line 73
    .line 74
    const p2, 0x7f0a039d

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->rootContent:Landroid/view/View;

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->isEditMode()Z

    .line 84
    move-result p1

    .line 85
    .line 86
    const/16 p2, 0x8

    .line 87
    const/4 v0, 0x0

    .line 88
    .line 89
    if-eqz p1, :cond_0

    .line 90
    .line 91
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v1, p0}, Lcom/narvii/monetization/bubble/BubbleService;->downloadEditChatBubble(Lcom/narvii/model/ChatBubble;Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;)V

    .line 97
    .line 98
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->downloadProgress:Landroid/view/View;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->rootContent:Landroid/view/View;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    goto :goto_0

    .line 108
    .line 109
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->rootContent:Landroid/view/View;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->downloadProgress:Landroid/view/View;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    :goto_0
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->updateSaveButton()V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->configAttachFragment()V

    .line 124
    return-void
.end method

.method public onZipFail()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->uploadingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    const v1, 0x7f121039

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 25
    return-void
.end method
