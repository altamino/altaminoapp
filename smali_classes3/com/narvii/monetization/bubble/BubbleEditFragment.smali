.class public Lcom/narvii/monetization/bubble/BubbleEditFragment;
.super Lcom/narvii/app/NVFragment;
.source "BubbleEditFragment.java"

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

    .line 52
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/model/BubbleInfo;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/monetization/bubble/BubbleService;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/monetization/bubble/BubbleEditFragment;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->saveBubble(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->stickerContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/monetization/bubble/BubbleEditView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleEditorView:Lcom/narvii/monetization/bubble/BubbleEditView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->uploadingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    return-object p0
.end method

.method private closeEditView()V
    .locals 0

    .line 298
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method private configAttachFragment()V
    .locals 7

    .line 177
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "bubble_template_picker"

    .line 178
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 180
    new-instance v2, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;

    invoke-direct {v2}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;-><init>()V

    .line 181
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 182
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->isEditMode()Z

    move-result v5

    xor-int/2addr v5, v3

    const-string v6, "autoChoose"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    invoke-virtual {v2, v4}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 184
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f090180

    invoke-virtual {v4, v5, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 187
    :cond_0
    invoke-virtual {v2, p0}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->setListener(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$TemplatePickedListener;)V

    const-string v1, "bubble_template_sticker"

    .line 189
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    if-nez v2, :cond_1

    .line 191
    new-instance v2, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-direct {v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;-><init>()V

    .line 192
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "tabBottom"

    .line 193
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "showSelected"

    .line 194
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "source"

    const-string v5, "Bubble Edit"

    .line 195
    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2, v4}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 197
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v3, 0x7f090ab1

    invoke-virtual {v0, v3, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    const/4 v0, 0x0

    .line 200
    invoke-virtual {v2, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->setCurrentSticker(Lcom/narvii/model/Sticker;)V

    .line 201
    invoke-virtual {v2, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->setStickerSelectListener(Lcom/narvii/monetization/sticker/picker/StickerSelectListener;)V

    return-void
.end method

.method private hideSticker()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->stickerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010040

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 261
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleEditFragment$3;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment$3;-><init>(Lcom/narvii/monetization/bubble/BubbleEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 281
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->stickerContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private isEditMode()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private saveBubble(Z)V
    .locals 2

    .line 381
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->uploadingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 385
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleEditorView:Lcom/narvii/monetization/bubble/BubbleEditView;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/bubble/BubbleEditView;->getPreviewBitmap(Lcom/narvii/model/BubbleInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 386
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;-><init>(Lcom/narvii/monetization/bubble/BubbleEditFragment;Z)V

    invoke-direct {p0, v0, v1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->uploadBubblePreview(Landroid/graphics/Bitmap;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private setSelectedSticker(Lcom/narvii/model/SlotPoint;)V
    .locals 3

    .line 467
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "bubble_template_sticker"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    if-eqz v0, :cond_1

    .line 469
    new-instance v1, Lcom/narvii/model/Sticker;

    invoke-direct {v1}, Lcom/narvii/model/Sticker;-><init>()V

    .line 470
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    invoke-virtual {v2, p1}, Lcom/narvii/model/BubbleInfo;->getSlotByPosition(Lcom/narvii/model/SlotPoint;)Lcom/narvii/model/BubbleSlot;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 472
    iget-object p1, p1, Lcom/narvii/model/BubbleSlot;->stickerId:Ljava/lang/String;

    iput-object p1, v1, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 474
    :cond_0
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->setCurrentSticker(Lcom/narvii/model/Sticker;)V

    :cond_1
    return-void
.end method

.method private showSticker()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->stickerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->stickerContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 287
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "bubble_template_sticker"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 289
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->onLogLevelActiveChanged(Z)V

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01003b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->stickerContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method private updateBubbleEditView(Lcom/narvii/model/SlotPoint;)V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleEditorView:Lcom/narvii/monetization/bubble/BubbleEditView;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/bubble/BubbleEditView;->updateSlotViews(Lcom/narvii/model/BubbleInfo;)V

    .line 364
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->setSelectedSticker(Lcom/narvii/model/SlotPoint;)V

    return-void
.end method

.method private updateSaveButton()V
    .locals 4

    .line 369
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->isEditMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 371
    iget-boolean v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->editResourceDownloaed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    iget-object v0, v0, Lcom/narvii/model/ChatBubble;->config:Lcom/narvii/model/BubbleInfo;

    iget-object v3, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    iget-object v3, v3, Lcom/narvii/model/ChatBubble;->config:Lcom/narvii/model/BubbleInfo;

    invoke-static {v3, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    :goto_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->btnSaveBubble:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private updateSlots(Lcom/narvii/model/SlotPoint;Lcom/narvii/model/Sticker;Ljava/lang/String;)V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/model/BubbleInfo;->updateSlot(Lcom/narvii/model/SlotPoint;Lcom/narvii/model/Sticker;Ljava/lang/String;)V

    return-void
.end method

.method private uploadBubblePreview(Landroid/graphics/Bitmap;Lcom/narvii/util/Callback;)V
    .locals 7

    const-string v0, "photo"

    .line 479
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/narvii/photos/PhotoManager;

    .line 480
    new-instance v6, Lcom/narvii/monetization/bubble/BubbleEditFragment$6;

    invoke-direct {v6, p0, p2}, Lcom/narvii/monetization/bubble/BubbleEditFragment$6;-><init>(Lcom/narvii/monetization/bubble/BubbleEditFragment;Lcom/narvii/util/Callback;)V

    const/4 v2, 0x0

    const-string v4, "chat-bubble-thumbnail"

    const/4 v5, 0x1

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLcom/narvii/photos/PhotoUploadListener;)V

    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public onCancelEdit()V
    .locals 3

    const/4 v0, 0x0

    .line 342
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    .line 343
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleEditorView:Lcom/narvii/monetization/bubble/BubbleEditView;

    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    invoke-virtual {v1, v2}, Lcom/narvii/monetization/bubble/BubbleEditView;->loseFocus(Lcom/narvii/model/BubbleInfo;)V

    .line 344
    invoke-direct {p0, v0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->updateBubbleEditView(Lcom/narvii/model/SlotPoint;)V

    .line 345
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->hideSticker()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09025e

    if-eq p1, v0, :cond_3

    const v0, 0x7f09050c

    if-eq p1, v0, :cond_2

    const v0, 0x7f09099c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->isEditMode()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 229
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0f24

    .line 230
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const v1, 0x7f0f017f

    .line 231
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 232
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleEditFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment$2;-><init>(Lcom/narvii/monetization/bubble/BubbleEditFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 245
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    goto :goto_0

    .line 247
    :cond_1
    invoke-direct {p0, v0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->saveBubble(Z)V

    goto :goto_0

    .line 251
    :cond_2
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->hideSticker()V

    goto :goto_0

    .line 225
    :cond_3
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->closeEditView()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 90
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    const-string v0, "bubble"

    .line 95
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/bubble/BubbleService;

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 96
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->uploadingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 97
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->uploadingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    new-instance v1, Lcom/narvii/monetization/bubble/BubbleEditFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment$1;-><init>(Lcom/narvii/monetization/bubble/BubbleEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const-string v0, "key_chat_bubble"

    if-eqz p1, :cond_1

    const-string v1, "key_bubble_info"

    .line 107
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    const-class v2, Lcom/narvii/model/BubbleInfo;

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/BubbleInfo;

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 110
    const-class v0, Lcom/narvii/model/ChatBubble;

    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatBubble;

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    const-string v0, "downloaded"

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->editResourceDownloaed:Z

    goto :goto_0

    .line 113
    :cond_1
    new-instance p1, Lcom/narvii/model/BubbleInfo;

    invoke-direct {p1}, Lcom/narvii/model/BubbleInfo;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 114
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 115
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/ChatBubble;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatBubble;

    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    .line 118
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    if-nez p1, :cond_3

    .line 119
    new-instance p1, Lcom/narvii/model/ChatBubble;

    invoke-direct {p1}, Lcom/narvii/model/ChatBubble;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0285

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDownloadFail(Ljava/lang/String;)V
    .locals 2

    .line 537
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 538
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->downloadProgress:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onDownloadProgressUpdate(II)V
    .locals 2

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cur "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " total "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BubbleEdit"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDownloadSuccess(Lcom/narvii/model/ChatBubble;Ljava/io/File;)V
    .locals 4

    .line 506
    :try_start_0
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    new-instance v1, Ljava/io/File;

    const-string v2, "config.json"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-class v2, Lcom/narvii/model/BubbleInfo;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/BubbleInfo;

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 507
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    iget-object v2, v2, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/narvii/model/BubbleInfo;->id:Ljava/lang/String;

    .line 509
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    .line 510
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    iget-object p1, p1, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 511
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    iget-object p1, p1, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/BubbleSlot;

    .line 512
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 513
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    goto :goto_0

    .line 517
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    invoke-virtual {v0}, Lcom/narvii/model/BubbleInfo;->clone()Lcom/narvii/model/BubbleInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/model/ChatBubble;->config:Lcom/narvii/model/BubbleInfo;

    const/4 p1, 0x1

    .line 518
    iput-boolean p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->editResourceDownloaed:Z

    .line 519
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleEditorView:Lcom/narvii/monetization/bubble/BubbleEditView;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/bubble/BubbleEditView;->updateEditorView(Lcom/narvii/model/BubbleInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 521
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 524
    :goto_1
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->downloadProgress:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 525
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->rootContent:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 526
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download bubble file success "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BubbleEdit"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 206
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 207
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_bubble_info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    if-eqz v0, :cond_0

    .line 209
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_chat_bubble"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->editResourceDownloaed:Z

    const-string v1, "downloaded"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSlotDeleted(Lcom/narvii/model/SlotPoint;)V
    .locals 1

    const/4 v0, 0x0

    .line 335
    invoke-direct {p0, p1, v0, v0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->updateSlots(Lcom/narvii/model/SlotPoint;Lcom/narvii/model/Sticker;Ljava/lang/String;)V

    .line 336
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->updateBubbleEditView(Lcom/narvii/model/SlotPoint;)V

    .line 337
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->updateSaveButton()V

    return-void
.end method

.method public onSlotSelected(Lcom/narvii/model/SlotPoint;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    .line 328
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->showSticker()V

    .line 329
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->updateBubbleEditView(Lcom/narvii/model/SlotPoint;)V

    return-void
.end method

.method public onStickerSelected(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 1

    .line 350
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "stickerCache"

    .line 354
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/sticker/StickerCacheService;

    .line 355
    invoke-virtual {p2, p1}, Lcom/narvii/sticker/StickerCacheService;->getIconUri(Lcom/narvii/model/Sticker;)Ljava/lang/String;

    move-result-object p2

    .line 356
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    invoke-direct {p0, v0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->updateSlots(Lcom/narvii/model/SlotPoint;Lcom/narvii/model/Sticker;Ljava/lang/String;)V

    .line 357
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleEditorView:Lcom/narvii/monetization/bubble/BubbleEditView;

    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/bubble/BubbleEditView;->updateSlotViews(Lcom/narvii/model/BubbleInfo;)V

    .line 358
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->updateSaveButton()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "BubbleEdit"

    const-string p2, "try to update slot when cur focus is null"

    .line 351
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 166
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    .line 167
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/bubble/BubbleService;->cancelEditDownload(Lcom/narvii/model/ChatBubble;)V

    .line 168
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    invoke-virtual {v1}, Lcom/narvii/model/BubbleInfo;->getBubbleUploadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/bubble/BubbleService;->cancelUpload(Ljava/lang/String;)V

    return-void
.end method

.method public onTemplatePicked(Lcom/narvii/monetization/bubble/model/BubbleTemplate;)V
    .locals 3

    .line 305
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    iget-object v0, v0, Lcom/narvii/model/BubbleInfo;->templateId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/narvii/monetization/bubble/model/BubbleTemplate;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 311
    :cond_1
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleTemplate:Lcom/narvii/monetization/bubble/model/BubbleTemplate;

    .line 312
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    iget-object v0, v0, Lcom/narvii/model/BubbleInfo;->id:Ljava/lang/String;

    .line 313
    iget-object v1, p1, Lcom/narvii/monetization/bubble/model/BubbleTemplate;->config:Lcom/narvii/model/BubbleInfo;

    if-nez v1, :cond_2

    new-instance v1, Lcom/narvii/model/BubbleInfo;

    invoke-direct {v1}, Lcom/narvii/model/BubbleInfo;-><init>()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/narvii/model/BubbleInfo;->clone()Lcom/narvii/model/BubbleInfo;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    .line 314
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    iput-object v0, v1, Lcom/narvii/model/BubbleInfo;->id:Ljava/lang/String;

    .line 315
    iget-object v0, p1, Lcom/narvii/monetization/bubble/model/BubbleTemplate;->id:Ljava/lang/String;

    iput-object v0, v1, Lcom/narvii/model/BubbleInfo;->templateId:Ljava/lang/String;

    .line 316
    invoke-virtual {p1}, Lcom/narvii/monetization/bubble/model/BubbleTemplate;->getMaterialUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    invoke-virtual {p1}, Lcom/narvii/monetization/bubble/model/BubbleTemplate;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/narvii/monetization/bubble/model/BubbleTemplate;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, v0, Lcom/narvii/model/BubbleInfo;->previewBackgroundUrl:Ljava/lang/String;

    .line 318
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleEditorView:Lcom/narvii/monetization/bubble/BubbleEditView;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/bubble/BubbleEditView;->updateEditorView(Lcom/narvii/model/BubbleInfo;)V

    .line 321
    iput-object v2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    .line 322
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->updateSaveButton()V

    :cond_4
    :goto_2
    return-void
.end method

.method public onUploadFail(Ljava/lang/String;)V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->uploadingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 452
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public onUploadSuccess(Lcom/narvii/model/ChatBubble;)V
    .locals 7

    .line 412
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->uploadingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 413
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    if-eqz v0, :cond_1

    .line 418
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->version()I

    move-result v2

    iget-object v3, p1, Lcom/narvii/model/ChatBubble;->resourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/monetization/bubble/BubbleService;->requireBubble(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 421
    iget-object v0, p1, Lcom/narvii/model/ChatBubble;->config:Lcom/narvii/model/BubbleInfo;

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleInfo:Lcom/narvii/model/BubbleInfo;

    invoke-virtual {v1}, Lcom/narvii/model/BubbleInfo;->clone()Lcom/narvii/model/BubbleInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/ChatBubble;->config:Lcom/narvii/model/BubbleInfo;

    .line 423
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->updateSaveButton()V

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 427
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 428
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    goto :goto_0

    .line 430
    :cond_3
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "new"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 431
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 433
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    const v0, 0x7f0f0f30

    if-eqz p1, :cond_4

    .line 434
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f080148

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 435
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f01004c

    const-wide/16 v5, 0x258

    .line 434
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/app/NVActivity;->toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V

    goto :goto_1

    .line 437
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 439
    :goto_1
    new-instance p1, Lcom/narvii/monetization/bubble/BubbleEditFragment$5;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment$5;-><init>(Lcom/narvii/monetization/bubble/BubbleEditFragment;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 132
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09025e

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->btnBack:Landroid/view/View;

    .line 134
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->btnBack:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09099c

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->btnSaveBubble:Landroid/view/View;

    .line 137
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->btnSaveBubble:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09017c

    .line 139
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/bubble/BubbleEditView;

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleEditorView:Lcom/narvii/monetization/bubble/BubbleEditView;

    .line 140
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleEditorView:Lcom/narvii/monetization/bubble/BubbleEditView;

    invoke-virtual {p2, p0}, Lcom/narvii/monetization/bubble/BubbleEditView;->setListener(Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;)V

    const p2, 0x7f090ab8

    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->stickerContainer:Landroid/view/View;

    const p2, 0x7f09050c

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->btnHideSticker:Landroid/view/View;

    .line 145
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->btnHideSticker:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x102000d

    .line 147
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->downloadProgress:Landroid/view/View;

    const p2, 0x7f0902d0

    .line 148
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->rootContent:Landroid/view/View;

    .line 151
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->isEditMode()Z

    move-result p1

    const/16 p2, 0x8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->curChatBubble:Lcom/narvii/model/ChatBubble;

    invoke-virtual {p1, v1, p0}, Lcom/narvii/monetization/bubble/BubbleService;->downloadEditChatBubble(Lcom/narvii/model/ChatBubble;Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;)V

    .line 153
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->downloadProgress:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->rootContent:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->rootContent:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->downloadProgress:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :goto_0
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->updateSaveButton()V

    .line 161
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->configAttachFragment()V

    return-void
.end method

.method public onZipFail()V
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment;->uploadingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 458
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0f27

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method
