.class public Lcom/narvii/amino/speeddial/LiveVVChatItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/LiveVVChatItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->oneUserSize:I

    iput p2, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->twoUserSize:I

    const v0, 0x7f0d041e

    .line 3
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->initViews()V

    .line 5
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 6
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/amino/speeddial/LiveVVChatItemView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->imageOverlay:Landroid/view/View;

    return-object p0
.end method

.method private initViews()V
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a100c

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->imgBg:Lcom/narvii/widget/NVImageView;

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0a0706

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->imageOverlay:Landroid/view/View;

    .line 21
    .line 22
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 26
    .line 27
    const/high16 v1, -0x70000000

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    const/high16 v2, 0x40800000    # 4.0f

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 40
    move-result v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->imgBg:Lcom/narvii/widget/NVImageView;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->imgBg:Lcom/narvii/widget/NVImageView;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->imgBg:Lcom/narvii/widget/NVImageView;

    .line 56
    .line 57
    new-instance v1, Lcom/narvii/amino/speeddial/LiveVVChatItemView$1;

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/narvii/amino/speeddial/LiveVVChatItemView$1;-><init>(Lcom/narvii/amino/speeddial/LiveVVChatItemView;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 64
    .line 65
    .line 66
    const v0, 0x7f0a0f3d

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    check-cast v0, Lcom/narvii/amino/speeddial/VVActiveUserLayout;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->avtiveUserLayout:Lcom/narvii/amino/speeddial/VVActiveUserLayout;

    .line 75
    .line 76
    .line 77
    const v0, 0x7f0a0e9e

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    check-cast v0, Landroid/widget/TextView;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->tvTitle:Landroid/widget/TextView;

    .line 86
    return-void
.end method


# virtual methods
.method public addUser()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->avtiveUserLayout:Lcom/narvii/amino/speeddial/VVActiveUserLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->addUser()V

    .line 6
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->initViews()V

    .line 7
    return-void
.end method

.method public removeUser()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->avtiveUserLayout:Lcom/narvii/amino/speeddial/VVActiveUserLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->removeUser()V

    .line 6
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

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->imgBg:Lcom/narvii/widget/NVImageView;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->avtiveUserLayout:Lcom/narvii/amino/speeddial/VVActiveUserLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Lcom/narvii/amino/speeddial/VVActiveUserLayout;->updateUserList(Ljava/util/List;)V

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->tvTitle:Landroid/widget/TextView;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :cond_1
    :goto_0
    return-void
.end method
