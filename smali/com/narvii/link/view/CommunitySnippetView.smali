.class public Lcom/narvii/link/view/CommunitySnippetView;
.super Lcom/narvii/link/view/NVLinkSnippetView;
.source "CommunitySnippetView.java"


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

    .line 33
    invoke-direct {p0, p1}, Lcom/narvii/link/view/NVLinkSnippetView;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b043e

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090b9a

    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/link/view/CommunitySnippetView;->title:Landroid/widget/TextView;

    .line 36
    iget-object p1, p0, Lcom/narvii/link/view/CommunitySnippetView;->title:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    const p1, 0x7f0906e5

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/link/view/CommunitySnippetView;->membersCount:Landroid/widget/TextView;

    const p1, 0x7f0902b1

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/link/view/CommunitySnippetView;->language:Landroid/widget/TextView;

    const p1, 0x7f090b44

    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/link/view/CommunitySnippetView;->tagline:Landroid/widget/TextView;

    const p1, 0x7f0902af

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/link/view/CommunitySnippetView;->lock:Landroid/view/View;

    const p1, 0x7f090571

    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/PromotionalImageView;

    iput-object p1, p0, Lcom/narvii/link/view/CommunitySnippetView;->image:Lcom/narvii/widget/PromotionalImageView;

    .line 43
    iget-object p1, p0, Lcom/narvii/link/view/CommunitySnippetView;->image:Lcom/narvii/widget/PromotionalImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/widget/PromotionalImageView;->setNoAnim(Z)V

    const p1, 0x7f090562

    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/link/view/CommunitySnippetView;->icon:Lcom/narvii/widget/NVImageView;

    return-void
.end method


# virtual methods
.method public setObject(Lcom/narvii/model/Community;)V
    .locals 6

    .line 50
    iget-object v0, p0, Lcom/narvii/link/view/CommunitySnippetView;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/narvii/link/view/CommunitySnippetView;->membersCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/model/Community;->getMemberCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "language"

    .line 53
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/language/LanguageManager;

    .line 54
    iget-object v1, p0, Lcom/narvii/link/view/CommunitySnippetView;->language:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/narvii/language/LanguageManager;->getLocalDisplayText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/narvii/link/view/CommunitySnippetView;->tagline:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object v0, p1, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    .line 57
    iget v1, p1, Lcom/narvii/model/Community;->joinType:I

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0ff6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_2

    .line 60
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0ff5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/narvii/link/view/CommunitySnippetView;->tagline:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/narvii/link/view/CommunitySnippetView;->tagline:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/model/Community;->shouldShowLock()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v5, 0x3

    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 64
    iget-object v0, p0, Lcom/narvii/link/view/CommunitySnippetView;->lock:Landroid/view/View;

    invoke-virtual {p1}, Lcom/narvii/model/Community;->shouldShowLock()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0906de

    .line 65
    invoke-virtual {p1}, Lcom/narvii/model/Community;->shouldShowLock()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {p0, v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 66
    iget-object v0, p0, Lcom/narvii/link/view/CommunitySnippetView;->image:Lcom/narvii/widget/PromotionalImageView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 67
    iget-object v0, p0, Lcom/narvii/link/view/CommunitySnippetView;->icon:Lcom/narvii/widget/NVImageView;

    iget-object p1, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 69
    iget-object p1, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    iget-object v0, p0, Lcom/narvii/link/view/CommunitySnippetView;->image:Lcom/narvii/widget/PromotionalImageView;

    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    .line 70
    iget-object p1, p0, Lcom/narvii/link/view/LoadTrackView;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    iget-object v0, p0, Lcom/narvii/link/view/CommunitySnippetView;->icon:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/narvii/model/Community;

    invoke-virtual {p0, p1}, Lcom/narvii/link/view/CommunitySnippetView;->setObject(Lcom/narvii/model/Community;)V

    return-void
.end method
