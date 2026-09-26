.class public Lcom/narvii/link/view/CommunitySnippetView;
.super Lcom/narvii/link/view/NVLinkSnippetView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/link/view/NVLinkSnippetView<",
        "Lcom/narvii/model/Community;",
        ">;"
    }
.end annotation


# instance fields
.field icon:Lcom/narvii/widget/NVImageView;

.field image:Lcom/narvii/widget/PromotionalImageView;

.field language:Landroid/widget/TextView;

.field lock:Landroid/view/View;

.field membersCount:Landroid/widget/TextView;

.field tagline:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/link/view/NVLinkSnippetView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0d0473

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0a0e9e

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/link/view/CommunitySnippetView;->title:Landroid/widget/TextView;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 28
    .line 29
    .line 30
    const p1, 0x7f0a0946

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/narvii/link/view/CommunitySnippetView;->membersCount:Landroid/widget/TextView;

    .line 39
    .line 40
    .line 41
    const p1, 0x7f0a0377

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    check-cast p1, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/narvii/link/view/CommunitySnippetView;->language:Landroid/widget/TextView;

    .line 50
    .line 51
    .line 52
    const p1, 0x7f0a0e36

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    check-cast p1, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/narvii/link/view/CommunitySnippetView;->tagline:Landroid/widget/TextView;

    .line 61
    .line 62
    .line 63
    const p1, 0x7f0a0375

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    iput-object p1, p0, Lcom/narvii/link/view/CommunitySnippetView;->lock:Landroid/view/View;

    .line 70
    .line 71
    .line 72
    const p1, 0x7f0a06eb

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    check-cast p1, Lcom/narvii/widget/PromotionalImageView;

    .line 79
    .line 80
    iput-object p1, p0, Lcom/narvii/link/view/CommunitySnippetView;->image:Lcom/narvii/widget/PromotionalImageView;

    .line 81
    const/4 v0, 0x1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/narvii/widget/PromotionalImageView;->setNoAnim(Z)V

    .line 85
    .line 86
    .line 87
    const p1, 0x7f0a06d5

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 94
    .line 95
    iput-object p1, p0, Lcom/narvii/link/view/CommunitySnippetView;->icon:Lcom/narvii/widget/NVImageView;

    .line 96
    return-void
.end method


# virtual methods
.method public setObject(Lcom/narvii/model/Community;)V
    .locals 6

    iget-object v0, p0, Lcom/narvii/link/view/CommunitySnippetView;->title:Landroid/widget/TextView;

    .line 2
    iget-object v1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/narvii/link/view/CommunitySnippetView;->membersCount:Landroid/widget/TextView;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/model/Community;->getMemberCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "language"

    .line 5
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/language/LanguageManager;

    iget-object v1, p0, Lcom/narvii/link/view/CommunitySnippetView;->language:Landroid/widget/TextView;

    .line 6
    iget-object v2, p1, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/narvii/language/LanguageManager;->getLocalDisplayText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/narvii/link/view/CommunitySnippetView;->tagline:Landroid/widget/TextView;

    .line 7
    iget-object v1, p1, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p1, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    .line 9
    iget v1, p1, Lcom/narvii/model/Community;->joinType:I

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12110c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_2

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12110b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/narvii/link/view/CommunitySnippetView;->tagline:Landroid/widget/TextView;

    .line 12
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/narvii/link/view/CommunitySnippetView;->tagline:Landroid/widget/TextView;

    .line 13
    invoke-virtual {p1}, Lcom/narvii/model/Community;->shouldShowLock()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v5, 0x3

    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/narvii/link/view/CommunitySnippetView;->lock:Landroid/view/View;

    .line 14
    invoke-virtual {p1}, Lcom/narvii/model/Community;->shouldShowLock()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-virtual {p1}, Lcom/narvii/model/Community;->shouldShowLock()Z

    move-result v0

    xor-int/2addr v0, v4

    const v1, 0x7f0a093f

    invoke-static {p0, v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    iget-object v0, p0, Lcom/narvii/link/view/CommunitySnippetView;->image:Lcom/narvii/widget/PromotionalImageView;

    .line 16
    invoke-virtual {v0, p1}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    iget-object v0, p0, Lcom/narvii/link/view/CommunitySnippetView;->icon:Lcom/narvii/widget/NVImageView;

    .line 17
    iget-object p1, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    iget-object v0, p0, Lcom/narvii/link/view/CommunitySnippetView;->image:Lcom/narvii/widget/PromotionalImageView;

    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    iget-object p1, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    iget-object v0, p0, Lcom/narvii/link/view/CommunitySnippetView;->icon:Lcom/narvii/widget/NVImageView;

    .line 19
    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/Community;

    invoke-virtual {p0, p1}, Lcom/narvii/link/view/CommunitySnippetView;->setObject(Lcom/narvii/model/Community;)V

    return-void
.end method
