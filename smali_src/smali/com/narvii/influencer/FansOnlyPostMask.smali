.class public final Lcom/narvii/influencer/FansOnlyPostMask;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFansOnlyPostMask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FansOnlyPostMask.kt\ncom/narvii/influencer/FansOnlyPostMask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"
.end annotation


# instance fields
.field public accountService:Lcom/narvii/account/AccountService;

.field private becomeFansClickListener:Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final bgBottom$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final btnBecomeFans$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final hint$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final marginBottomPlaceholder$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maskFansLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/influencer/FansOnlyPostMask;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0a0848

    .line 3
    invoke-direct {p0, p0, v0}, Lcom/narvii/influencer/FansOnlyPostMask;->bind(Lcom/narvii/influencer/FansOnlyPostMask;I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->marginBottomPlaceholder$delegate:Lw7/m;

    const v0, 0x7f0a01bb

    .line 4
    invoke-direct {p0, p0, v0}, Lcom/narvii/influencer/FansOnlyPostMask;->bind(Lcom/narvii/influencer/FansOnlyPostMask;I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->btnBecomeFans$delegate:Lw7/m;

    const v0, 0x7f0a01c9

    .line 5
    invoke-direct {p0, p0, v0}, Lcom/narvii/influencer/FansOnlyPostMask;->bind(Lcom/narvii/influencer/FansOnlyPostMask;I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->bgBottom$delegate:Lw7/m;

    const v0, 0x7f0a0666

    .line 6
    invoke-direct {p0, p0, v0}, Lcom/narvii/influencer/FansOnlyPostMask;->bind(Lcom/narvii/influencer/FansOnlyPostMask;I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->hint$delegate:Lw7/m;

    const v0, 0x7f0a084b

    .line 7
    invoke-direct {p0, p0, v0}, Lcom/narvii/influencer/FansOnlyPostMask;->bind(Lcom/narvii/influencer/FansOnlyPostMask;I)Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->maskFansLayout$delegate:Lw7/m;

    .line 8
    sget-object v0, Lcom/narvii/amino/R$styleable;->FansOnlyPostMask:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const v0, 0x7f0d0522

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    :cond_0
    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    :cond_1
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    invoke-direct {p0}, Lcom/narvii/influencer/FansOnlyPostMask;->getBtnBecomeFans()Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Lcom/narvii/influencer/a;

    invoke-direct {v0, p0}, Lcom/narvii/influencer/a;-><init>(Lcom/narvii/influencer/FansOnlyPostMask;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-direct {p0}, Lcom/narvii/influencer/FansOnlyPostMask;->getMaskFansLayout()Landroid/widget/LinearLayout;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_2
    invoke-direct {p0}, Lcom/narvii/influencer/FansOnlyPostMask;->getBgBottom()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance v0, Lcom/narvii/influencer/b;

    invoke-direct {v0}, Lcom/narvii/influencer/b;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_3
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "account"

    .line 16
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getService(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/account/AccountService;

    invoke-virtual {p0, p1}, Lcom/narvii/influencer/FansOnlyPostMask;->setAccountService(Lcom/narvii/account/AccountService;)V

    return-void
.end method

.method private static final _init_$lambda$1(Lcom/narvii/influencer/FansOnlyPostMask;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->becomeFansClickListener:Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;->onBecomeFansClicked()V

    .line 13
    :cond_0
    return-void
.end method

.method private static final _init_$lambda$2(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/influencer/FansOnlyPostMask;->_init_$lambda$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/influencer/FansOnlyPostMask;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/influencer/FansOnlyPostMask;->_init_$lambda$1(Lcom/narvii/influencer/FansOnlyPostMask;Landroid/view/View;)V

    return-void
.end method

.method private final bind(Lcom/narvii/influencer/FansOnlyPostMask;I)Lw7/m;
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/influencer/FansOnlyPostMask;",
            "I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/influencer/FansOnlyPostMask$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Lcom/narvii/influencer/FansOnlyPostMask$bind$1;-><init>(Lcom/narvii/influencer/FansOnlyPostMask;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private final getBgBottom()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->bgBottom$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getBtnBecomeFans()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->btnBecomeFans$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getHint()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->hint$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getMarginBottomPlaceholder()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->marginBottomPlaceholder$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getMaskFansLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->maskFansLayout$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/LinearLayout;

    .line 9
    return-object v0
.end method

.method public static synthetic setAuthor$default(Lcom/narvii/influencer/FansOnlyPostMask;Lcom/narvii/model/User;IILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p2, -0x1

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/influencer/FansOnlyPostMask;->setAuthor(Lcom/narvii/model/User;I)V

    .line 9
    return-void
.end method

.method private final setIsFansBefore(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/influencer/FansOnlyPostMask;->getBtnBecomeFans()Landroid/widget/TextView;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    const p1, 0x7f120fed

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    const p1, 0x7f1201a1

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 17
    return-void
.end method


# virtual methods
.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "accountService"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getBecomeFansClickListener()Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/influencer/FansOnlyPostMask;->becomeFansClickListener:Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;

    return-object v0
.end method

.method public final setAccountService(Lcom/narvii/account/AccountService;)V
    .locals 1
    .param p1    # Lcom/narvii/account/AccountService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/influencer/FansOnlyPostMask;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public final setAuthor(Lcom/narvii/model/User;)V
    .locals 3
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/narvii/influencer/FansOnlyPostMask;->setAuthor$default(Lcom/narvii/influencer/FansOnlyPostMask;Lcom/narvii/model/User;IILjava/lang/Object;)V

    return-void
.end method

.method public final setAuthor(Lcom/narvii/model/User;I)V
    .locals 7
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/narvii/influencer/FansOnlyPostMask;->getHint()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const v1, 0x7f120743

    invoke-virtual {v3, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/narvii/influencer/FansOnlyPostMask;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object p2

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :cond_2
    invoke-virtual {p2, v0}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/narvii/influencer/FansOnlyPostMask;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object v1

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :cond_4
    invoke-virtual {v1, p2, v0}, Lcom/narvii/account/AccountService;->getFanClub(ILjava/lang/String;)Lcom/narvii/influencer/FanClub;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_5

    .line 5
    invoke-virtual {p1}, Lcom/narvii/influencer/FanClub;->hasSubscriptionBefore()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move v4, v6

    :goto_2
    invoke-direct {p0, v4}, Lcom/narvii/influencer/FansOnlyPostMask;->setIsFansBefore(Z)V

    return-void
.end method

.method public final setBecomeFansClickListener(Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;)V
    .locals 0
    .param p1    # Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/influencer/FansOnlyPostMask;->becomeFansClickListener:Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;

    return-void
.end method

.method public final setMarginBottomHeight(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/influencer/FansOnlyPostMask;->getMarginBottomPlaceholder()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    return-void
.end method
