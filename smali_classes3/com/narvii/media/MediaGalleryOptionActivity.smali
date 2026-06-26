.class public Lcom/narvii/media/MediaGalleryOptionActivity;
.super Lcom/narvii/media/MediaGalleryActivity;
.source "MediaGalleryOptionActivity.java"


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field backIcon:Landroid/widget/ImageView;

.field chatService:Lcom/narvii/chat/core/ChatService;

.field fragment:Lcom/narvii/optionmenu/OptionMenuFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/narvii/media/MediaGalleryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0503

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 26
    invoke-super {p0, p1}, Lcom/narvii/media/MediaGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090a30

    .line 27
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "account"

    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/media/MediaGalleryOptionActivity;->accountService:Lcom/narvii/account/AccountService;

    const-string p1, "chat"

    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/core/ChatService;

    iput-object p1, p0, Lcom/narvii/media/MediaGalleryOptionActivity;->chatService:Lcom/narvii/chat/core/ChatService;

    const p1, 0x7f090048

    .line 30
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/media/MediaGalleryOptionActivity;->backIcon:Landroid/widget/ImageView;

    .line 31
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryOptionActivity;->backIcon:Landroid/widget/ImageView;

    new-instance v0, Lcom/narvii/media/MediaGalleryOptionActivity$1;

    invoke-direct {v0, p0}, Lcom/narvii/media/MediaGalleryOptionActivity$1;-><init>(Lcom/narvii/media/MediaGalleryOptionActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "__communityId"

    .line 37
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    move-result p1

    const-string v0, "forceUHQ"

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const-string p1, "preview"

    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const p1, 0x7f0907e9

    .line 38
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    invoke-virtual {p0}, Lcom/narvii/media/MediaGalleryActivity;->getCurrentMedia()Lcom/narvii/model/Media;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parent"

    .line 41
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "parentClass"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    .line 43
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    .line 39
    invoke-static {v1, v2, v3, v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;Z)Lcom/narvii/optionmenu/OptionMenuFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/media/MediaGalleryOptionActivity;->fragment:Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 44
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/media/MediaGalleryOptionActivity;->fragment:Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_2
    return-void
.end method

.method protected onPageSelectedFinished(I)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/narvii/media/MediaGalleryActivity;->onPageSelectedFinished(I)V

    .line 56
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryOptionActivity;->fragment:Lcom/narvii/optionmenu/OptionMenuFragment;

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/narvii/media/MediaGalleryActivity;->getCurrentMedia()Lcom/narvii/model/Media;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->setMedia(Lcom/narvii/model/Media;)V

    :cond_0
    return-void
.end method
