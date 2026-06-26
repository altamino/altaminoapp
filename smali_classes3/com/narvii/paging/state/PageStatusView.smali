.class public final Lcom/narvii/paging/state/PageStatusView;
.super Landroid/widget/FrameLayout;
.source "PageStatusView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/paging/state/PageStatusView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/paging/state/PageStatusView$Companion;

.field public static final STATUS_EMPTY:I = 0x3

.field public static final STATUS_FAILED:I = 0x2

.field public static final STATUS_IDLE:I = 0x0

.field public static final STATUS_LOADING:I = 0x1


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private btnEmptyRetry:Landroid/view/View;

.field private btnErrorRetry:Landroid/view/View;

.field private darkThemeColor:I

.field private final emptyLayoutId:I

.field private emptyRetryListener:Landroid/view/View$OnClickListener;

.field private emptyView:Landroid/view/View;

.field private final errorLayoutId:I

.field private errorRetryListener:Landroid/view/View$OnClickListener;

.field private errorView:Landroid/view/View;

.field private isDarkTheme:Z

.field private final progressLayoutId:I

.field private progressView:Landroid/view/View;

.field private tvEmpty:Landroid/widget/TextView;

.field private tvError:Landroid/widget/TextView;

.field private tvErrorTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/paging/state/PageStatusView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/paging/state/PageStatusView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/paging/state/PageStatusView;->Companion:Lcom/narvii/paging/state/PageStatusView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/narvii/paging/state/PageStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/narvii/paging/state/PageStatusView;->darkThemeColor:I

    .line 49
    sget-object v0, Lcom/narvii/lib/R$styleable;->PageStatusView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    sget p2, Lcom/narvii/lib/R$styleable;->PageStatusView_emptyLayoutId:I

    sget v0, Lcom/narvii/lib/R$layout;->empty_view:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/paging/state/PageStatusView;->emptyLayoutId:I

    .line 51
    sget p2, Lcom/narvii/lib/R$styleable;->PageStatusView_progressLayoutId:I

    sget v0, Lcom/narvii/lib/R$layout;->status_layout_progress:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/paging/state/PageStatusView;->progressLayoutId:I

    .line 52
    sget p2, Lcom/narvii/lib/R$styleable;->PageStatusView_errorLayoutId:I

    sget v0, Lcom/narvii/lib/R$layout;->error_view:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/paging/state/PageStatusView;->errorLayoutId:I

    .line 53
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget p2, p0, Lcom/narvii/paging/state/PageStatusView;->errorLayoutId:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->errorView:Landroid/view/View;

    .line 56
    iget-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->errorView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0}, Lcom/narvii/paging/state/PageStatusView;->configErrorView()V

    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget p2, p0, Lcom/narvii/paging/state/PageStatusView;->progressLayoutId:I

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->progressView:Landroid/view/View;

    .line 60
    iget-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->progressView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0}, Lcom/narvii/paging/state/PageStatusView;->configProgressView()V

    .line 63
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget p2, p0, Lcom/narvii/paging/state/PageStatusView;->emptyLayoutId:I

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->emptyView:Landroid/view/View;

    .line 64
    iget-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->emptyView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 65
    invoke-virtual {p0}, Lcom/narvii/paging/state/PageStatusView;->configEmptyView()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 17
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/paging/state/PageStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/paging/state/PageStatusView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final configEmptyView()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->emptyView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v2, Lcom/narvii/lib/R$id;->empty_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->tvEmpty:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    sget v1, Lcom/narvii/lib/R$id;->empty_retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lcom/narvii/paging/state/PageStatusView;->btnEmptyRetry:Landroid/view/View;

    return-void
.end method

.method public final configErrorView()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->errorView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->errorView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v2, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->tvError:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->errorView:Landroid/view/View;

    if-eqz v0, :cond_2

    sget v2, Lcom/narvii/lib/R$id;->error:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->tvErrorTitle:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->errorView:Landroid/view/View;

    if-eqz v0, :cond_3

    sget v1, Lcom/narvii/lib/R$id;->retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_3
    iput-object v1, p0, Lcom/narvii/paging/state/PageStatusView;->btnErrorRetry:Landroid/view/View;

    return-void
.end method

.method public final configProgressView()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->progressView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final getBtnEmptyRetry()Landroid/view/View;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->btnEmptyRetry:Landroid/view/View;

    return-object v0
.end method

.method public final getEmptyRetryListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->emptyRetryListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getErrorRetryListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->errorRetryListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getTvEmpty()Landroid/widget/TextView;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->tvEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setBtnEmptyRetry(Landroid/view/View;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->btnEmptyRetry:Landroid/view/View;

    return-void
.end method

.method public final setDarkTheme(Z)V
    .locals 3

    .line 96
    iput-boolean p1, p0, Lcom/narvii/paging/state/PageStatusView;->isDarkTheme:Z

    if-eqz p1, :cond_0

    .line 97
    iget p1, p0, Lcom/narvii/paging/state/PageStatusView;->darkThemeColor:I

    goto :goto_0

    :cond_0
    const p1, -0xaaaaab

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->tvErrorTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->tvError:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->tvEmpty:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->progressView:Landroid/view/View;

    instance-of v1, v0, Lcom/narvii/widget/SpinningView;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    move-object v0, v2

    :cond_4
    check-cast v0, Lcom/narvii/widget/SpinningView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 102
    :cond_5
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->btnEmptyRetry:Landroid/view/View;

    instance-of v1, v0, Lcom/narvii/widget/FontAwesomeView;

    if-nez v1, :cond_6

    move-object v0, v2

    :cond_6
    check-cast v0, Lcom/narvii/widget/FontAwesomeView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    :cond_7
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->btnErrorRetry:Landroid/view/View;

    instance-of v1, v0, Lcom/narvii/widget/FontAwesomeView;

    if-nez v1, :cond_8

    move-object v0, v2

    :cond_8
    check-cast v0, Lcom/narvii/widget/FontAwesomeView;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    return-void
.end method

.method public final setDarkThemeColor(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/narvii/paging/state/PageStatusView;->darkThemeColor:I

    .line 114
    iget-boolean p1, p0, Lcom/narvii/paging/state/PageStatusView;->isDarkTheme:Z

    invoke-virtual {p0, p1}, Lcom/narvii/paging/state/PageStatusView;->setDarkTheme(Z)V

    return-void
.end method

.method public final setEmptyMessage(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->tvEmpty:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public final setEmptyMessageTextSize(FI)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->tvEmpty:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public final setEmptyRetryListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 44
    iput-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->emptyRetryListener:Landroid/view/View$OnClickListener;

    .line 45
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->btnEmptyRetry:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final setEmptyView(I)Landroid/view/View;
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->emptyView:Landroid/view/View;

    .line 128
    iget-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->emptyView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 129
    invoke-virtual {p0}, Lcom/narvii/paging/state/PageStatusView;->configEmptyView()V

    .line 130
    iget-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->btnEmptyRetry:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->emptyRetryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->emptyView:Landroid/view/View;

    return-object p1
.end method

.method public final setErrorMessage(Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->tvError:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setErrorRetryListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->btnErrorRetry:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->errorRetryListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setErrorView(I)Landroid/view/View;
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->errorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->errorView:Landroid/view/View;

    .line 149
    iget-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->errorView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 150
    invoke-virtual {p0}, Lcom/narvii/paging/state/PageStatusView;->configErrorView()V

    .line 151
    iget-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->btnErrorRetry:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->errorRetryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->errorView:Landroid/view/View;

    return-object p1
.end method

.method public final setLoadingView(I)Landroid/view/View;
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->progressView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->progressView:Landroid/view/View;

    .line 139
    iget-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->progressView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 140
    invoke-virtual {p0}, Lcom/narvii/paging/state/PageStatusView;->configProgressView()V

    .line 141
    iget-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->progressView:Landroid/view/View;

    return-object p1
.end method

.method public final setTvEmpty(Landroid/widget/TextView;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->tvEmpty:Landroid/widget/TextView;

    return-void
.end method

.method public final updateStatus(I)V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->emptyView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->progressView:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->errorView:Landroid/view/View;

    if-eqz v0, :cond_5

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method
