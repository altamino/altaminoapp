.class public final Lcom/narvii/paging/state/PageStatusView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/paging/state/PageStatusView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/paging/state/PageStatusView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STATUS_EMPTY:I = 0x3

.field public static final STATUS_FAILED:I = 0x2

.field public static final STATUS_IDLE:I = 0x0

.field public static final STATUS_LOADING:I = 0x1


# instance fields
.field private btnEmptyRetry:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private btnErrorRetry:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private darkThemeColor:I

.field private final emptyLayoutId:I

.field private emptyRetryListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private emptyView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final errorLayoutId:I

.field private errorRetryListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private errorView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isDarkTheme:Z

.field private final progressLayoutId:I

.field private progressView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tvEmpty:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tvError:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tvErrorTitle:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/paging/state/PageStatusView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/paging/state/PageStatusView$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/paging/state/PageStatusView;->Companion:Lcom/narvii/paging/state/PageStatusView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/narvii/paging/state/PageStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
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

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/paging/state/PageStatusView;->darkThemeColor:I

    .line 3
    sget-object v0, Lcom/narvii/lib/R$styleable;->PageStatusView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget p2, Lcom/narvii/lib/R$styleable;->PageStatusView_emptyLayoutId:I

    sget v0, Lcom/narvii/lib/R$layout;->empty_view:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/paging/state/PageStatusView;->emptyLayoutId:I

    .line 5
    sget v0, Lcom/narvii/lib/R$styleable;->PageStatusView_progressLayoutId:I

    sget v1, Lcom/narvii/lib/R$layout;->status_layout_progress:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/paging/state/PageStatusView;->progressLayoutId:I

    .line 6
    sget v1, Lcom/narvii/lib/R$styleable;->PageStatusView_errorLayoutId:I

    sget v2, Lcom/narvii/lib/R$layout;->error_view:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/narvii/paging/state/PageStatusView;->errorLayoutId:I

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->errorView:Landroid/view/View;

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    invoke-virtual {p0}, Lcom/narvii/paging/state/PageStatusView;->configErrorView()V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->progressView:Landroid/view/View;

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    invoke-virtual {p0}, Lcom/narvii/paging/state/PageStatusView;->configProgressView()V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p2, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->emptyView:Landroid/view/View;

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    invoke-virtual {p0}, Lcom/narvii/paging/state/PageStatusView;->configEmptyView()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/k;)V
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
.method public final configEmptyView()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->emptyView:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x4

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    :goto_0
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->emptyView:Landroid/view/View;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget v2, Lcom/narvii/lib/R$id;->empty_text:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-object v0, v1

    .line 25
    .line 26
    :goto_1
    iput-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->tvEmpty:Landroid/widget/TextView;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->emptyView:Landroid/view/View;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    sget v1, Lcom/narvii/lib/R$id;->empty_retry:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    :cond_2
    iput-object v1, p0, Lcom/narvii/paging/state/PageStatusView;->btnEmptyRetry:Landroid/view/View;

    .line 39
    return-void
.end method

.method public final configErrorView()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->errorView:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x4

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    :goto_0
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->errorView:Landroid/view/View;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget v2, Lcom/narvii/lib/R$id;->text:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-object v0, v1

    .line 25
    .line 26
    :goto_1
    iput-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->tvError:Landroid/widget/TextView;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->errorView:Landroid/view/View;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    sget v2, Lcom/narvii/lib/R$id;->error:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move-object v0, v1

    .line 41
    .line 42
    :goto_2
    iput-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->tvErrorTitle:Landroid/widget/TextView;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->errorView:Landroid/view/View;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    sget v1, Lcom/narvii/lib/R$id;->retry:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    :cond_3
    iput-object v1, p0, Lcom/narvii/paging/state/PageStatusView;->btnErrorRetry:Landroid/view/View;

    .line 55
    return-void
.end method

.method public final configProgressView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->progressView:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x4

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :goto_0
    return-void
.end method

.method public final getBtnEmptyRetry()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->btnEmptyRetry:Landroid/view/View;

    return-object v0
.end method

.method public final getEmptyRetryListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->emptyRetryListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getErrorRetryListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->errorRetryListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getTvEmpty()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->tvEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setBtnEmptyRetry(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->btnEmptyRetry:Landroid/view/View;

    return-void
.end method

.method public final setDarkTheme(Z)V
    .locals 3

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/paging/state/PageStatusView;->isDarkTheme:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget p1, p0, Lcom/narvii/paging/state/PageStatusView;->darkThemeColor:I

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    const p1, -0xaaaaab

    .line 11
    .line 12
    :goto_0
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->tvErrorTitle:Landroid/widget/TextView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->tvError:Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    .line 26
    :cond_2
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->tvEmpty:Landroid/widget/TextView;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    :cond_3
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->progressView:Landroid/view/View;

    .line 34
    .line 35
    instance-of v1, v0, Lcom/narvii/widget/SpinningView;

    .line 36
    const/4 v2, 0x0

    .line 37
    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    check-cast v0, Lcom/narvii/widget/SpinningView;

    .line 41
    goto :goto_1

    .line 42
    :cond_4
    move-object v0, v2

    .line 43
    .line 44
    :goto_1
    if-eqz v0, :cond_5

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 48
    .line 49
    :cond_5
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->btnEmptyRetry:Landroid/view/View;

    .line 50
    .line 51
    instance-of v1, v0, Lcom/narvii/widget/FontAwesomeView;

    .line 52
    .line 53
    if-eqz v1, :cond_6

    .line 54
    .line 55
    check-cast v0, Lcom/narvii/widget/FontAwesomeView;

    .line 56
    goto :goto_2

    .line 57
    :cond_6
    move-object v0, v2

    .line 58
    .line 59
    :goto_2
    if-eqz v0, :cond_7

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    .line 64
    :cond_7
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->btnErrorRetry:Landroid/view/View;

    .line 65
    .line 66
    instance-of v1, v0, Lcom/narvii/widget/FontAwesomeView;

    .line 67
    .line 68
    if-eqz v1, :cond_8

    .line 69
    move-object v2, v0

    .line 70
    .line 71
    check-cast v2, Lcom/narvii/widget/FontAwesomeView;

    .line 72
    .line 73
    :cond_8
    if-eqz v2, :cond_9

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    :cond_9
    return-void
.end method

.method public final setDarkThemeColor(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/paging/state/PageStatusView;->darkThemeColor:I

    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/narvii/paging/state/PageStatusView;->isDarkTheme:Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/paging/state/PageStatusView;->setDarkTheme(Z)V

    .line 8
    return-void
.end method

.method public final setEmptyMessage(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->tvEmpty:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 8
    :cond_0
    return-void
.end method

.method public final setEmptyMessageTextSize(FI)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->tvEmpty:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8
    :cond_0
    return-void
.end method

.method public final setEmptyRetryListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->emptyRetryListener:Landroid/view/View$OnClickListener;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->btnEmptyRetry:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_0
    return-void
.end method

.method public final setEmptyView(I)Landroid/view/View;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->emptyView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->emptyView:Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/paging/state/PageStatusView;->configEmptyView()V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->btnEmptyRetry:Landroid/view/View;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->emptyRetryListener:Landroid/view/View$OnClickListener;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->emptyView:Landroid/view/View;

    .line 40
    return-object p1
.end method

.method public final setErrorMessage(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->tvError:Landroid/widget/TextView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :goto_0
    return-void
.end method

.method public final setErrorRetryListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->btnErrorRetry:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    :cond_0
    iput-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->errorRetryListener:Landroid/view/View$OnClickListener;

    .line 10
    return-void
.end method

.method public final setErrorView(I)Landroid/view/View;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->errorView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->errorView:Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/paging/state/PageStatusView;->configErrorView()V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->btnErrorRetry:Landroid/view/View;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->errorRetryListener:Landroid/view/View$OnClickListener;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->errorView:Landroid/view/View;

    .line 40
    return-object p1
.end method

.method public final setLoadingView(I)Landroid/view/View;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->progressView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->progressView:Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/paging/state/PageStatusView;->configProgressView()V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->progressView:Landroid/view/View;

    .line 31
    return-object p1
.end method

.method public final setTvEmpty(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/paging/state/PageStatusView;->tvEmpty:Landroid/widget/TextView;

    return-void
.end method

.method public final updateStatus(I)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->emptyView:Landroid/view/View;

    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v3, 0x3

    .line 9
    .line 10
    if-ne p1, v3, :cond_1

    .line 11
    move v3, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move v3, v1

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    :goto_1
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->progressView:Landroid/view/View;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    goto :goto_3

    .line 22
    :cond_2
    const/4 v3, 0x1

    .line 23
    .line 24
    if-ne p1, v3, :cond_3

    .line 25
    move v3, v2

    .line 26
    goto :goto_2

    .line 27
    :cond_3
    move v3, v1

    .line 28
    .line 29
    .line 30
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    :goto_3
    iget-object v0, p0, Lcom/narvii/paging/state/PageStatusView;->errorView:Landroid/view/View;

    .line 33
    .line 34
    if-nez v0, :cond_4

    .line 35
    goto :goto_4

    .line 36
    :cond_4
    const/4 v3, 0x2

    .line 37
    .line 38
    if-ne p1, v3, :cond_5

    .line 39
    move v1, v2

    .line 40
    .line 41
    .line 42
    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :goto_4
    return-void
.end method
