.class public final Lcom/narvii/nested/FakeActionBar;
.super Landroid/widget/FrameLayout;
.source "FakeActionBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private rightViewClickListener:Lcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$layout;->fake_action_bar_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    sget p1, Lcom/narvii/lib/R$id;->actionbar_back:I

    invoke-virtual {p0, p1}, Lcom/narvii/nested/FakeActionBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    new-instance v0, Lcom/narvii/nested/FakeActionBar$1;

    invoke-direct {v0, p0}, Lcom/narvii/nested/FakeActionBar$1;-><init>(Lcom/narvii/nested/FakeActionBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    sget p1, Lcom/narvii/lib/R$id;->actionbar_right:I

    invoke-virtual {p0, p1}, Lcom/narvii/nested/FakeActionBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    new-instance v0, Lcom/narvii/nested/FakeActionBar$2;

    invoke-direct {v0, p0}, Lcom/narvii/nested/FakeActionBar$2;-><init>(Lcom/narvii/nested/FakeActionBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$layout;->fake_action_bar_layout:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    sget p1, Lcom/narvii/lib/R$id;->actionbar_back:I

    invoke-virtual {p0, p1}, Lcom/narvii/nested/FakeActionBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    new-instance p2, Lcom/narvii/nested/FakeActionBar$1;

    invoke-direct {p2, p0}, Lcom/narvii/nested/FakeActionBar$1;-><init>(Lcom/narvii/nested/FakeActionBar;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    sget p1, Lcom/narvii/lib/R$id;->actionbar_right:I

    invoke-virtual {p0, p1}, Lcom/narvii/nested/FakeActionBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    new-instance p2, Lcom/narvii/nested/FakeActionBar$2;

    invoke-direct {p2, p0}, Lcom/narvii/nested/FakeActionBar$2;-><init>(Lcom/narvii/nested/FakeActionBar;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$layout;->fake_action_bar_layout:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    sget p1, Lcom/narvii/lib/R$id;->actionbar_back:I

    invoke-virtual {p0, p1}, Lcom/narvii/nested/FakeActionBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    new-instance p2, Lcom/narvii/nested/FakeActionBar$1;

    invoke-direct {p2, p0}, Lcom/narvii/nested/FakeActionBar$1;-><init>(Lcom/narvii/nested/FakeActionBar;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    sget p1, Lcom/narvii/lib/R$id;->actionbar_right:I

    invoke-virtual {p0, p1}, Lcom/narvii/nested/FakeActionBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    new-instance p2, Lcom/narvii/nested/FakeActionBar$2;

    invoke-direct {p2, p0}, Lcom/narvii/nested/FakeActionBar$2;-><init>(Lcom/narvii/nested/FakeActionBar;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/nested/FakeActionBar;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/nested/FakeActionBar;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/nested/FakeActionBar;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/nested/FakeActionBar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/nested/FakeActionBar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getRightViewClickListener()Lcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/narvii/nested/FakeActionBar;->rightViewClickListener:Lcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;

    return-object v0
.end method

.method public final setRightView(ILcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;)V
    .locals 2

    const-string v0, "rightViewClickListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget v0, Lcom/narvii/lib/R$id;->actionbar_right:I

    invoke-virtual {p0, v0}, Lcom/narvii/nested/FakeActionBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iput-object p2, p0, Lcom/narvii/nested/FakeActionBar;->rightViewClickListener:Lcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;

    return-void
.end method

.method public final setRightViewClickListener(Lcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/narvii/nested/FakeActionBar;->rightViewClickListener:Lcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;

    return-void
.end method

.method public final setTitle(I)V
    .locals 2

    .line 38
    sget v0, Lcom/narvii/lib/R$id;->actionbar_title:I

    invoke-virtual {p0, v0}, Lcom/narvii/nested/FakeActionBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "actionbar_title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
