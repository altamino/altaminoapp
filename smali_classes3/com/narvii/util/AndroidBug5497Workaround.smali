.class public Lcom/narvii/util/AndroidBug5497Workaround;
.super Ljava/lang/Object;
.source "AndroidBug5497Workaround.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field private static assisted:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static keyboardHeight:I


# instance fields
.field private containTargetView:Z

.field private frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private heightDiffMatchActionBar:Z

.field private host:Ljava/lang/Object;

.field private mChildOfContent:Landroid/view/View;

.field private origHeightParam:I

.field private prevBottom:I

.field private softBarHeight:I

.field private targetView:Landroid/view/View;

.field private targetViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/narvii/util/AndroidBug5497Workaround;->assisted:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->host:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->host:Ljava/lang/Object;

    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;)V
    .locals 2

    .line 29
    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    sget-object v0, Lcom/narvii/util/AndroidBug5497Workaround;->assisted:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 35
    :cond_1
    sget-object v0, Lcom/narvii/util/AndroidBug5497Workaround;->assisted:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v0, Lcom/narvii/util/AndroidBug5497Workaround;

    invoke-direct {v0, p0}, Lcom/narvii/util/AndroidBug5497Workaround;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0}, Lcom/narvii/util/AndroidBug5497Workaround;->prepare()V

    return-void
.end method

.method public static assistActivity(Landroid/app/Dialog;)V
    .locals 1

    .line 40
    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    new-instance v0, Lcom/narvii/util/AndroidBug5497Workaround;

    invoke-direct {v0, p0}, Lcom/narvii/util/AndroidBug5497Workaround;-><init>(Landroid/app/Dialog;)V

    invoke-direct {v0}, Lcom/narvii/util/AndroidBug5497Workaround;->prepare()V

    return-void
.end method

.method private computeBottom()I
    .locals 2

    .line 212
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 213
    iget-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 214
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public static getKeyboardHeight(Landroid/app/Activity;)I
    .locals 1

    .line 47
    sget v0, Lcom/narvii/util/AndroidBug5497Workaround;->keyboardHeight:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 48
    invoke-static {p0, v0}, Lcom/narvii/util/KeyboardSharedPreferences;->get(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private getNavBarHeight()I
    .locals 5

    .line 218
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 221
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "navigation_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    .line 222
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 224
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method private getSoftButtonsBarHeight()I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->host:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 133
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_0
    instance-of v2, v1, Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 135
    check-cast v1, Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 137
    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 141
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 142
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 143
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 145
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v2, :cond_2

    sub-int/2addr v0, v2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private prepare()V
    .locals 5

    .line 76
    invoke-direct {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->getSoftButtonsBarHeight()I

    move-result v0

    iput v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->softBarHeight:I

    .line 78
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 82
    iput-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 83
    iput-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 84
    iput v2, p0, Lcom/narvii/util/AndroidBug5497Workaround;->origHeightParam:I

    .line 85
    iput v2, p0, Lcom/narvii/util/AndroidBug5497Workaround;->prevBottom:I

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    if-nez v0, :cond_5

    .line 91
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->host:Ljava/lang/Object;

    instance-of v3, v0, Landroid/app/Activity;

    const v4, 0x1020002

    if-eqz v3, :cond_1

    .line 92
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout;

    goto :goto_0

    .line 93
    :cond_1
    instance-of v3, v0, Landroid/app/Dialog;

    if-eqz v3, :cond_2

    .line 94
    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout;

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    const/4 v0, 0x0

    .line 98
    :goto_1
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 99
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/narvii/util/SkipRequestLayoutFlag;

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 109
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->origHeightParam:I

    .line 114
    :cond_5
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 115
    :goto_2
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 116
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "resizeTarget"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 118
    iput-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->targetView:Landroid/view/View;

    const/4 v1, 0x1

    .line 119
    iput-boolean v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->containTargetView:Z

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->targetViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .line 156
    invoke-direct {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->prepare()V

    .line 158
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->computeBottom()I

    move-result v0

    .line 163
    iget v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->prevBottom:I

    if-eq v0, v1, :cond_d

    .line 164
    iget-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    .line 168
    iget-boolean v2, p0, Lcom/narvii/util/AndroidBug5497Workaround;->heightDiffMatchActionBar:Z

    iget v3, p0, Lcom/narvii/util/AndroidBug5497Workaround;->softBarHeight:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/narvii/util/AndroidBug5497Workaround;->heightDiffMatchActionBar:Z

    .line 170
    iget v2, p0, Lcom/narvii/util/AndroidBug5497Workaround;->softBarHeight:I

    if-le v1, v2, :cond_9

    .line 173
    iget-object v2, p0, Lcom/narvii/util/AndroidBug5497Workaround;->host:Ljava/lang/Object;

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/app/Activity;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    .line 175
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 176
    :goto_2
    instance-of v6, v2, Lcom/narvii/app/NVActivity;

    if-eqz v6, :cond_4

    .line 177
    move-object v7, v2

    check-cast v7, Lcom/narvii/app/NVActivity;

    invoke-virtual {v7}, Lcom/narvii/app/NVActivity;->isActionBarOverlaying()Z

    move-result v7

    xor-int/2addr v4, v7

    and-int/2addr v3, v4

    :cond_4
    if-eqz v3, :cond_6

    .line 180
    invoke-static {v2}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    move-result v3

    if-eqz v6, :cond_5

    .line 181
    move-object v4, v2

    check-cast v4, Lcom/narvii/app/NVActivity;

    invoke-virtual {v4}, Lcom/narvii/app/NVActivity;->isTranslucentStatusBar()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 182
    invoke-static {v2}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v2, v3

    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    .line 186
    :goto_3
    invoke-static {}, Lcom/narvii/util/statusbar/StatusBarUtils;->isAmazingDevice()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->getSoftButtonsBarHeight()I

    move-result v2

    :cond_7
    sub-int v2, v0, v2

    .line 187
    iget-boolean v3, p0, Lcom/narvii/util/AndroidBug5497Workaround;->heightDiffMatchActionBar:Z

    if-eqz v3, :cond_8

    iget v5, p0, Lcom/narvii/util/AndroidBug5497Workaround;->softBarHeight:I

    :cond_8
    sub-int/2addr v1, v5

    sput v1, Lcom/narvii/util/AndroidBug5497Workaround;->keyboardHeight:I

    .line 188
    iget-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v1, v3}, Lcom/narvii/util/KeyboardSharedPreferences;->get(Landroid/content/Context;I)I

    move-result v1

    .line 189
    sget v3, Lcom/narvii/util/AndroidBug5497Workaround;->keyboardHeight:I

    if-eq v1, v3, :cond_a

    if-lez v3, :cond_a

    .line 190
    iget-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/narvii/util/AndroidBug5497Workaround;->keyboardHeight:I

    invoke-static {v1, v3}, Lcom/narvii/util/KeyboardSharedPreferences;->save(Landroid/content/Context;I)Z

    goto :goto_4

    .line 193
    :cond_9
    iget v2, p0, Lcom/narvii/util/AndroidBug5497Workaround;->origHeightParam:I

    .line 195
    :cond_a
    :goto_4
    iget-boolean v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->containTargetView:Z

    if-eqz v1, :cond_b

    .line 196
    iget-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->targetViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v3, :cond_c

    .line 197
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 198
    iget-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_5

    .line 201
    :cond_b
    iget-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v2, v1, :cond_c

    .line 202
    iget-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 203
    iget-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 207
    :cond_c
    :goto_5
    iput v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->prevBottom:I

    :cond_d
    return-void
.end method
