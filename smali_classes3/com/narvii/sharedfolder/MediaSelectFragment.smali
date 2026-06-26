.class public Lcom/narvii/sharedfolder/MediaSelectFragment;
.super Lcom/narvii/app/NVFragment;
.source "MediaSelectFragment.java"


# instance fields
.field item:Lcom/narvii/media/MediaSelectItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "class"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string v0, "item"

    .line 32
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/MediaSelectItem;

    iput-object p1, p0, Lcom/narvii/sharedfolder/MediaSelectFragment;->item:Lcom/narvii/media/MediaSelectItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02ba

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 43
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 44
    iget-object p2, p0, Lcom/narvii/sharedfolder/MediaSelectFragment;->item:Lcom/narvii/media/MediaSelectItem;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const p2, 0x7f090571

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/TouchImageView;

    .line 48
    iget-object v0, p0, Lcom/narvii/sharedfolder/MediaSelectFragment;->item:Lcom/narvii/media/MediaSelectItem;

    invoke-interface {v0}, Lcom/narvii/media/MediaSelectItem;->getSelectMedia()Lcom/narvii/model/Media;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    const v0, 0x7f09057d

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 50
    invoke-virtual {p2}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 51
    invoke-virtual {p2}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 52
    new-instance v0, Lcom/narvii/sharedfolder/MediaSelectFragment$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/sharedfolder/MediaSelectFragment$1;-><init>(Lcom/narvii/sharedfolder/MediaSelectFragment;Landroid/widget/ProgressBar;Lcom/narvii/widget/TouchImageView;)V

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 59
    :cond_2
    new-instance p1, Lcom/narvii/sharedfolder/MediaSelectFragment$2;

    invoke-direct {p1, p0}, Lcom/narvii/sharedfolder/MediaSelectFragment$2;-><init>(Lcom/narvii/sharedfolder/MediaSelectFragment;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    instance-of p1, p2, Lcom/narvii/widget/TouchImageView;

    if-eqz p1, :cond_4

    .line 68
    iget-object p1, p0, Lcom/narvii/sharedfolder/MediaSelectFragment;->item:Lcom/narvii/media/MediaSelectItem;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/narvii/media/MediaSelectItem;->getSelectMedia()Lcom/narvii/model/Media;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/sharedfolder/MediaSelectFragment;->item:Lcom/narvii/media/MediaSelectItem;

    invoke-interface {p1}, Lcom/narvii/media/MediaSelectItem;->getSelectMedia()Lcom/narvii/model/Media;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/model/Media;->isImage()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p2, v1}, Lcom/narvii/widget/TouchImageView;->setZoomEnabled(Z)V

    :cond_4
    return-void
.end method
