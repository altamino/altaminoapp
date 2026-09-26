.class public final Lcom/narvii/nested/FakeActionBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;
    }
.end annotation


# instance fields
.field private rightViewClickListener:Lcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$layout;->fake_action_bar_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/narvii/lib/R$id;->actionbar_back:I

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    new-instance v0, Lcom/narvii/nested/d;

    invoke-direct {v0, p0}, Lcom/narvii/nested/d;-><init>(Lcom/narvii/nested/FakeActionBar;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/narvii/lib/R$id;->actionbar_right:I

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    new-instance v0, Lcom/narvii/nested/e;

    invoke-direct {v0, p0}, Lcom/narvii/nested/e;-><init>(Lcom/narvii/nested/FakeActionBar;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$layout;->fake_action_bar_layout:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/narvii/lib/R$id;->actionbar_back:I

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    new-instance p2, Lcom/narvii/nested/d;

    invoke-direct {p2, p0}, Lcom/narvii/nested/d;-><init>(Lcom/narvii/nested/FakeActionBar;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/narvii/lib/R$id;->actionbar_right:I

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    new-instance p2, Lcom/narvii/nested/e;

    invoke-direct {p2, p0}, Lcom/narvii/nested/e;-><init>(Lcom/narvii/nested/FakeActionBar;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$layout;->fake_action_bar_layout:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/narvii/lib/R$id;->actionbar_back:I

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    new-instance p2, Lcom/narvii/nested/d;

    invoke-direct {p2, p0}, Lcom/narvii/nested/d;-><init>(Lcom/narvii/nested/FakeActionBar;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/narvii/lib/R$id;->actionbar_right:I

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    new-instance p2, Lcom/narvii/nested/e;

    invoke-direct {p2, p0}, Lcom/narvii/nested/e;-><init>(Lcom/narvii/nested/FakeActionBar;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/narvii/nested/FakeActionBar;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    const-string p1, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    check-cast p0, Lcom/narvii/app/NVActivity;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 28
    :cond_0
    return-void
.end method

.method private static final _init_$lambda$1(Lcom/narvii/nested/FakeActionBar;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p0, p0, Lcom/narvii/nested/FakeActionBar;->rightViewClickListener:Lcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Lcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;->onRightViewClick()V

    .line 13
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/narvii/nested/FakeActionBar;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nested/FakeActionBar;->_init_$lambda$0(Lcom/narvii/nested/FakeActionBar;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/nested/FakeActionBar;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nested/FakeActionBar;->_init_$lambda$1(Lcom/narvii/nested/FakeActionBar;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getRightViewClickListener()Lcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/nested/FakeActionBar;->rightViewClickListener:Lcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;

    return-object v0
.end method

.method public final setRightView(ILcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;)V
    .locals 2
    .param p2    # Lcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "rightViewClickListener"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget v0, Lcom/narvii/lib/R$id;->actionbar_right:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    iput-object p2, p0, Lcom/narvii/nested/FakeActionBar;->rightViewClickListener:Lcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;

    .line 27
    return-void
.end method

.method public final setRightViewClickListener(Lcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;)V
    .locals 0
    .param p1    # Lcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/nested/FakeActionBar;->rightViewClickListener:Lcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;

    return-void
.end method

.method public final setTitle(I)V
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->actionbar_title:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    return-void
.end method
