.class public Lcom/narvii/sharedfolder/MediaSelectFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# instance fields
.field item:Lcom/narvii/media/MediaSelectItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v0, "class"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Class;

    .line 20
    .line 21
    const-string v0, "item"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/media/MediaSelectItem;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/sharedfolder/MediaSelectFragment;->item:Lcom/narvii/media/MediaSelectItem;

    .line 34
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
    const p3, 0x7f0d02ec

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

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    iget-object p2, p0, Lcom/narvii/sharedfolder/MediaSelectFragment;->item:Lcom/narvii/media/MediaSelectItem;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    const p2, 0x7f0a06eb

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    check-cast p2, Lcom/narvii/widget/TouchImageView;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/sharedfolder/MediaSelectFragment;->item:Lcom/narvii/media/MediaSelectItem;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Lcom/narvii/media/MediaSelectItem;->getSelectMedia()Lcom/narvii/model/Media;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 27
    .line 28
    .line 29
    const v0, 0x7f0a0705

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    check-cast p1, Landroid/widget/ProgressBar;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/narvii/widget/NVImageView;->getStatus()I

    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v2, 0x1

    .line 42
    .line 43
    if-ne v0, v2, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/narvii/widget/NVImageView;->getStatus()I

    .line 47
    move-result v0

    .line 48
    .line 49
    if-ne v0, v2, :cond_1

    .line 50
    move v0, v2

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v0, v1

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-static {p1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 56
    .line 57
    new-instance v0, Lcom/narvii/sharedfolder/MediaSelectFragment$1;

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/sharedfolder/MediaSelectFragment$1;-><init>(Lcom/narvii/sharedfolder/MediaSelectFragment;Landroid/widget/ProgressBar;Lcom/narvii/widget/TouchImageView;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 64
    .line 65
    :cond_2
    new-instance p1, Lcom/narvii/sharedfolder/MediaSelectFragment$2;

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, p0}, Lcom/narvii/sharedfolder/MediaSelectFragment$2;-><init>(Lcom/narvii/sharedfolder/MediaSelectFragment;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    iget-object p1, p0, Lcom/narvii/sharedfolder/MediaSelectFragment;->item:Lcom/narvii/media/MediaSelectItem;

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    .line 78
    invoke-interface {p1}, Lcom/narvii/media/MediaSelectItem;->getSelectMedia()Lcom/narvii/model/Media;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/sharedfolder/MediaSelectFragment;->item:Lcom/narvii/media/MediaSelectItem;

    .line 84
    .line 85
    .line 86
    invoke-interface {p1}, Lcom/narvii/media/MediaSelectItem;->getSelectMedia()Lcom/narvii/model/Media;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/narvii/model/Media;->isImage()Z

    .line 91
    move-result p1

    .line 92
    .line 93
    if-eqz p1, :cond_3

    .line 94
    move v1, v2

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-virtual {p2, v1}, Lcom/narvii/widget/TouchImageView;->setZoomEnabled(Z)V

    .line 98
    return-void
.end method
