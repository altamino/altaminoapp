.class public abstract Lcom/narvii/share/ShareDarkRoomFragment;
.super Lcom/narvii/app/NVFragment;
.source "ShareDarkRoomFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/share/ShareDarkRoomFragment$FakeElement;
    }
.end annotation


# static fields
.field public static KEY_SHARE_OBJECT:Ljava/lang/String; = "share_object"

.field public static KEY_STATISTIC_CONTENT:Ljava/lang/String; = "statistic_content"

.field public static KEY_STATISTIC_SOURCE:Ljava/lang/String; = "statistic_source"


# instance fields
.field private final checkForScreenshot:Ljava/lang/Runnable;

.field private contentContainer:Landroid/view/ViewGroup;

.field private contentView:Landroid/view/View;

.field elementUtils:Lcom/narvii/share/elements/ElementUtils;

.field private inflater:Landroid/view/LayoutInflater;

.field readyForScreenshot:Z

.field private rootView:Landroid/view/View;

.field private scrollView:Landroid/widget/ScrollView;

.field shareDarkRoomHelper:Lcom/narvii/share/ShareDarkRoomHelper;

.field protected shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

.field shareListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

.field sharePayload:Lcom/narvii/share/SharePayload;

.field shareToolBarContainer:Landroid/widget/GridLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 149
    new-instance v0, Lcom/narvii/share/ShareDarkRoomFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/share/ShareDarkRoomFragment$1;-><init>(Lcom/narvii/share/ShareDarkRoomFragment;)V

    iput-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment;->checkForScreenshot:Ljava/lang/Runnable;

    .line 164
    new-instance v0, Lcom/narvii/share/ShareDarkRoomFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/share/ShareDarkRoomFragment$2;-><init>(Lcom/narvii/share/ShareDarkRoomFragment;)V

    iput-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/share/ShareDarkRoomFragment;)Landroid/view/View;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/narvii/share/ShareDarkRoomFragment;->contentView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method protected captureScreen(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 227
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 227
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 230
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 236
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to capture screenshot because:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public abstract configContentView(Landroid/view/View;)V
.end method

.method public abstract contentLayoutId()I
.end method

.method public getCustomTheme()I
    .locals 1

    .line 187
    sget v0, Lcom/narvii/lib/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method public abstract getPreContentPayload(Landroid/view/View;)Lcom/narvii/share/SharePayload;
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    new-instance p1, Lcom/narvii/share/ShareDarkRoomHelper;

    invoke-direct {p1, p0}, Lcom/narvii/share/ShareDarkRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareDarkRoomHelper:Lcom/narvii/share/ShareDarkRoomHelper;

    .line 66
    new-instance p1, Lcom/narvii/share/elements/ElementUtils;

    invoke-direct {p1, p0}, Lcom/narvii/share/elements/ElementUtils;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/share/ShareDarkRoomFragment;->elementUtils:Lcom/narvii/share/elements/ElementUtils;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 72
    sget p3, Lcom/narvii/lib/R$layout;->share_dark_room_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/share/ShareDarkRoomFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 145
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 146
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/share/ShareDarkRoomFragment;->checkForScreenshot:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 140
    iget-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment;->checkForScreenshot:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 77
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p2

    .line 79
    invoke-virtual {p2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 81
    sget v0, Lcom/narvii/lib/R$id;->actionbar_back:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 82
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 83
    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$drawable;->share_close:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_0
    sget p2, Lcom/narvii/lib/R$string;->share:I

    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 87
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->inflater:Landroid/view/LayoutInflater;

    .line 88
    sget p2, Lcom/narvii/lib/R$id;->share_content_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->contentContainer:Landroid/view/ViewGroup;

    .line 90
    iget-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/narvii/share/ShareDarkRoomFragment;->contentLayoutId()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/share/ShareDarkRoomFragment;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->contentView:Landroid/view/View;

    .line 91
    iget-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->contentView:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/narvii/share/ShareDarkRoomFragment;->configContentView(Landroid/view/View;)V

    .line 93
    sget p2, Lcom/narvii/lib/R$id;->scroll:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->scrollView:Landroid/widget/ScrollView;

    .line 95
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 96
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xebebec    # -1.9683E38f

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :cond_1
    sget p2, Lcom/narvii/lib/R$id;->bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 100
    iget-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareDarkRoomHelper:Lcom/narvii/share/ShareDarkRoomHelper;

    invoke-virtual {v0}, Lcom/narvii/share/ShareDarkRoomHelper;->getDynamicThemeBg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const-string p2, "config"

    .line 104
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/config/ConfigService;

    const-string v0, "community"

    .line 105
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 106
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 109
    :goto_0
    sget p2, Lcom/narvii/lib/R$id;->share_targets_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridLayout;

    iput-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareToolBarContainer:Landroid/widget/GridLayout;

    .line 111
    new-instance p2, Lcom/narvii/share/ShareViewHelper;

    invoke-direct {p2, p0}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    .line 112
    iget-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    sget-object v0, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_STATISTIC_SOURCE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 113
    iget-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    sget-object v0, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_STATISTIC_CONTENT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/narvii/share/ShareViewHelper;->statContent:Ljava/lang/String;

    .line 114
    iget-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    iget-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareListener:Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;

    iget-object v1, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareToolBarContainer:Landroid/widget/GridLayout;

    invoke-virtual {p2, v0, v1}, Lcom/narvii/share/ShareViewHelper;->configShareToolBar(Lcom/narvii/share/ShareViewHelper$OnClickShareItemListener;Landroid/view/ViewGroup;)V

    .line 116
    sget p2, Lcom/narvii/lib/R$id;->share_dialog_first_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/share/ShareDialogButton;

    if-eqz p2, :cond_3

    .line 118
    new-instance v0, Lcom/narvii/share/ShareButtonCopyLink;

    invoke-direct {v0, p0}, Lcom/narvii/share/ShareButtonCopyLink;-><init>(Lcom/narvii/app/NVContext;)V

    .line 119
    invoke-virtual {v0}, Lcom/narvii/share/ShareButtonCopyLink;->getTextString()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/narvii/share/ShareDialogButton;->setText(I)V

    .line 120
    invoke-virtual {v0}, Lcom/narvii/share/ShareButtonCopyLink;->getIcon()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/narvii/share/ShareDialogButton;->setIcon(I)V

    .line 121
    sget v1, Lcom/narvii/lib/R$id;->share_button_target_info:I

    invoke-virtual {p2, v1, v0}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :cond_3
    sget p2, Lcom/narvii/lib/R$id;->share_dialog_second_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/share/ShareDialogButton;

    if-eqz p1, :cond_4

    .line 127
    new-instance p2, Lcom/narvii/share/ShareButtonSaveImage;

    invoke-direct {p2, p0}, Lcom/narvii/share/ShareButtonSaveImage;-><init>(Lcom/narvii/app/NVContext;)V

    .line 128
    invoke-virtual {p2}, Lcom/narvii/share/ShareButtonSaveImage;->getTextString()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/share/ShareDialogButton;->setText(I)V

    .line 129
    invoke-virtual {p2}, Lcom/narvii/share/ShareButtonSaveImage;->getIcon()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/share/ShareDialogButton;->setIcon(I)V

    .line 131
    sget v0, Lcom/narvii/lib/R$id;->share_button_target_info:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 132
    iget-object p2, p0, Lcom/narvii/share/ShareDarkRoomFragment;->shareDialogHelper:Lcom/narvii/share/ShareViewHelper;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method protected preCheck()V
    .locals 0

    return-void
.end method

.method protected scrollToTop()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/narvii/share/ShareDarkRoomFragment;->scrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 289
    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method protected storageBitmapScreen(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "jpg"

    invoke-static {v1, p1, v2}, Lcom/narvii/util/image/Screenshot;->getNewScreenshotFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 208
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x64

    .line 209
    invoke-static {p2, v2, v1}, Lcom/narvii/util/image/BitmapUtils;->compressJpeg(Landroid/graphics/Bitmap;ILjava/io/OutputStream;)V

    .line 210
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 211
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 212
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/narvii/util/Utils;->getUriFromFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 214
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 215
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_0

    sget p1, Lcom/narvii/lib/R$string;->out_of_memory:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/narvii/lib/R$string;->normal_error:I

    :goto_0
    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_1
    return-object v0
.end method
