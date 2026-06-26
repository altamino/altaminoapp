.class public Lcom/narvii/amino/speeddial/LiveVVChatItemView;
.super Landroid/widget/FrameLayout;
.source "LiveVVChatItemView.java"


# instance fields
.field private avtiveUserLayout:Lcom/narvii/amino/speeddial/VVActiveUserLayout;

.field private chatThread:Lcom/narvii/model/ChatThread;

.field private imageOverlay:Landroid/view/View;

.field private imgBg:Lcom/narvii/widget/NVImageView;

.field private oneUserSize:I

.field private tvTitle:Landroid/widget/TextView;

.field private twoUserSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/LiveVVChatItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 41
    iput p2, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->oneUserSize:I

    .line 42
    iput p2, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->twoUserSize:I

    const v0, 0x7f0b03e8

    .line 53
    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->initViews()V

    .line 55
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 56
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/amino/speeddial/LiveVVChatItemView;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->imageOverlay:Landroid/view/View;

    return-object p0
.end method

.method private initViews()V
    .locals 3

    const v0, 0x7f090ce7

    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->imgBg:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f09057f

    .line 67
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->imageOverlay:Landroid/view/View;

    .line 68
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, -0x70000000

    .line 69
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 70
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 71
    iget-object v1, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->imgBg:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v1, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->imgBg:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->imgBg:Lcom/narvii/widget/NVImageView;

    new-instance v1, Lcom/narvii/amino/speeddial/LiveVVChatItemView$1;

    invoke-direct {v1, p0}, Lcom/narvii/amino/speeddial/LiveVVChatItemView$1;-><init>(Lcom/narvii/amino/speeddial/LiveVVChatItemView;)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    const v0, 0x7f090c17

    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->avtiveUserLayout:Lcom/narvii/amino/speeddial/VVActiveUserLayout;

    const v0, 0x7f090b9a

    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->tvTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public addUser()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->avtiveUserLayout:Lcom/narvii/amino/speeddial/VVActiveUserLayout;

    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->addUser()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 62
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->initViews()V

    return-void
.end method

.method public removeUser()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->avtiveUserLayout:Lcom/narvii/amino/speeddial/VVActiveUserLayout;

    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->removeUser()V

    return-void
.end method

.method public updateViews(Lcom/narvii/model/ChatThread;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatThread;",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->imgBg:Lcom/narvii/widget/NVImageView;

    iget-object v1, p1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 88
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->avtiveUserLayout:Lcom/narvii/amino/speeddial/VVActiveUserLayout;

    invoke-virtual {v0, p2}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->updateUserList(Ljava/util/List;)V

    .line 89
    iget-object p2, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->tvTitle:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
