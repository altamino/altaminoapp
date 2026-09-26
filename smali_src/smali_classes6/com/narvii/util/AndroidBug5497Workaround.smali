.class public Lcom/narvii/util/AndroidBug5497Workaround;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/util/AndroidBug5497Workaround;->assisted:Ljava/util/WeakHashMap;

    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->host:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->host:Ljava/lang/Object;

    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/narvii/util/AndroidBug5497Workaround;->assisted:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/narvii/util/AndroidBug5497Workaround;->assisted:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/narvii/util/AndroidBug5497Workaround;

    invoke-direct {v0, p0}, Lcom/narvii/util/AndroidBug5497Workaround;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0}, Lcom/narvii/util/AndroidBug5497Workaround;->prepare()V

    return-void
.end method

.method public static assistActivity(Landroid/app/Dialog;)V
    .locals 1

    .line 5
    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/narvii/util/AndroidBug5497Workaround;

    invoke-direct {v0, p0}, Lcom/narvii/util/AndroidBug5497Workaround;-><init>(Landroid/app/Dialog;)V

    invoke-direct {v0}, Lcom/narvii/util/AndroidBug5497Workaround;->prepare()V

    return-void
.end method

.method private computeBottom()I
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 11
    .line 12
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 13
    return v0
.end method

.method public static getKeyboardHeight(Landroid/app/Activity;)I
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/narvii/util/AndroidBug5497Workaround;->keyboardHeight:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/narvii/util/KeyboardSharedPreferences;->get(Landroid/content/Context;I)I

    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    return v0
.end method

.method private getNavBarHeight()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v2, "dimen"

    .line 17
    .line 18
    const-string v3, "android"

    .line 19
    .line 20
    const-string v4, "navigation_bar_height"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    move-result v2

    .line 25
    .line 26
    if-lez v2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    move-result v0

    .line 31
    return v0

    .line 32
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->host:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Landroid/app/Activity;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Landroid/app/Activity;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    instance-of v1, v0, Landroid/app/Dialog;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast v0, Landroid/app/Dialog;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    .line 41
    :goto_0
    if-eqz v0, :cond_2

    .line 42
    .line 43
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 50
    .line 51
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 55
    .line 56
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 57
    .line 58
    if-le v0, v2, :cond_2

    .line 59
    sub-int/2addr v0, v2

    .line 60
    return v0

    .line 61
    :cond_2
    const/4 v0, 0x0

    .line 62
    return v0
.end method

.method private prepare()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->getSoftButtonsBarHeight()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->softBarHeight:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 28
    .line 29
    iput-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    .line 33
    iput v2, p0, Lcom/narvii/util/AndroidBug5497Workaround;->origHeightParam:I

    .line 34
    .line 35
    iput v2, p0, Lcom/narvii/util/AndroidBug5497Workaround;->prevBottom:I

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 38
    .line 39
    if-nez v0, :cond_5

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->host:Ljava/lang/Object;

    .line 42
    .line 43
    instance-of v3, v0, Landroid/app/Activity;

    .line 44
    .line 45
    .line 46
    const v4, 0x1020002

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    check-cast v0, Landroid/app/Activity;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    move-object v1, v0

    .line 56
    .line 57
    check-cast v1, Landroid/widget/FrameLayout;

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    instance-of v3, v0, Landroid/app/Dialog;

    .line 61
    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    check-cast v0, Landroid/app/Dialog;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v0

    .line 69
    move-object v1, v0

    .line 70
    .line 71
    check-cast v1, Landroid/widget/FrameLayout;

    .line 72
    .line 73
    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 74
    move v0, v2

    .line 75
    .line 76
    .line 77
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 78
    move-result v3

    .line 79
    .line 80
    if-ge v0, v3, :cond_4

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 84
    move-result-object v3

    .line 85
    .line 86
    instance-of v3, v3, Lcom/narvii/util/SkipRequestLayoutFlag;

    .line 87
    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 91
    goto :goto_1

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    iput-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 98
    .line 99
    :cond_4
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 109
    .line 110
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 119
    .line 120
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 121
    .line 122
    iput v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->origHeightParam:I

    .line 123
    .line 124
    :cond_5
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 125
    .line 126
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 127
    .line 128
    if-eqz v0, :cond_7

    .line 129
    .line 130
    :goto_2
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 131
    .line 132
    check-cast v0, Landroid/view/ViewGroup;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 136
    move-result v0

    .line 137
    .line 138
    if-ge v2, v0, :cond_7

    .line 139
    .line 140
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 141
    .line 142
    check-cast v0, Landroid/view/ViewGroup;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 150
    move-result-object v1

    .line 151
    .line 152
    const-string v3, "resizeTarget"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    move-result v1

    .line 157
    .line 158
    if-eqz v1, :cond_6

    .line 159
    .line 160
    iput-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->targetView:Landroid/view/View;

    .line 161
    const/4 v1, 0x1

    .line 162
    .line 163
    iput-boolean v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->containTargetView:Z

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    iput-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->targetViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 170
    goto :goto_3

    .line 171
    .line 172
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 173
    goto :goto_2

    .line 174
    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->prepare()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->computeBottom()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->prevBottom:I

    .line 15
    .line 16
    if-eq v0, v1, :cond_d

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 26
    move-result v1

    .line 27
    sub-int/2addr v1, v0

    .line 28
    .line 29
    iget-boolean v2, p0, Lcom/narvii/util/AndroidBug5497Workaround;->heightDiffMatchActionBar:Z

    .line 30
    .line 31
    iget v3, p0, Lcom/narvii/util/AndroidBug5497Workaround;->softBarHeight:I

    .line 32
    const/4 v4, 0x1

    .line 33
    const/4 v5, 0x0

    .line 34
    .line 35
    if-ne v1, v3, :cond_1

    .line 36
    move v6, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v6, v5

    .line 39
    :goto_0
    or-int/2addr v2, v6

    .line 40
    .line 41
    iput-boolean v2, p0, Lcom/narvii/util/AndroidBug5497Workaround;->heightDiffMatchActionBar:Z

    .line 42
    .line 43
    if-le v1, v3, :cond_9

    .line 44
    .line 45
    iget-object v2, p0, Lcom/narvii/util/AndroidBug5497Workaround;->host:Ljava/lang/Object;

    .line 46
    .line 47
    instance-of v3, v2, Landroid/app/Activity;

    .line 48
    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    check-cast v2, Landroid/app/Activity;

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 v2, 0x0

    .line 54
    .line 55
    :goto_1
    if-eqz v2, :cond_5

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/app/ActionBar;->isShowing()Z

    .line 69
    move-result v3

    .line 70
    .line 71
    if-eqz v3, :cond_3

    .line 72
    move v3, v4

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    move v3, v5

    .line 75
    .line 76
    :goto_2
    instance-of v6, v2, Lcom/narvii/app/NVActivity;

    .line 77
    .line 78
    if-eqz v6, :cond_4

    .line 79
    move-object v7, v2

    .line 80
    .line 81
    check-cast v7, Lcom/narvii/app/NVActivity;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7}, Lcom/narvii/app/NVActivity;->isActionBarOverlaying()Z

    .line 85
    move-result v7

    .line 86
    xor-int/2addr v4, v7

    .line 87
    and-int/2addr v3, v4

    .line 88
    .line 89
    :cond_4
    if-eqz v3, :cond_5

    .line 90
    .line 91
    .line 92
    invoke-static {v2}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    .line 93
    move-result v3

    .line 94
    .line 95
    if-eqz v6, :cond_6

    .line 96
    move-object v4, v2

    .line 97
    .line 98
    check-cast v4, Lcom/narvii/app/NVActivity;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Lcom/narvii/app/NVActivity;->isTranslucentStatusBar()Z

    .line 102
    move-result v4

    .line 103
    .line 104
    if-eqz v4, :cond_6

    .line 105
    .line 106
    .line 107
    invoke-static {v2}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 108
    move-result v2

    .line 109
    add-int/2addr v3, v2

    .line 110
    goto :goto_3

    .line 111
    :cond_5
    move v3, v5

    .line 112
    .line 113
    .line 114
    :cond_6
    :goto_3
    invoke-static {}, Lcom/narvii/util/statusbar/StatusBarUtils;->isAmazingDevice()Z

    .line 115
    move-result v2

    .line 116
    .line 117
    if-eqz v2, :cond_7

    .line 118
    .line 119
    .line 120
    invoke-direct {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->getSoftButtonsBarHeight()I

    .line 121
    move-result v3

    .line 122
    .line 123
    :cond_7
    sub-int v2, v0, v3

    .line 124
    .line 125
    iget-boolean v3, p0, Lcom/narvii/util/AndroidBug5497Workaround;->heightDiffMatchActionBar:Z

    .line 126
    .line 127
    if-eqz v3, :cond_8

    .line 128
    .line 129
    iget v5, p0, Lcom/narvii/util/AndroidBug5497Workaround;->softBarHeight:I

    .line 130
    :cond_8
    sub-int/2addr v1, v5

    .line 131
    .line 132
    sput v1, Lcom/narvii/util/AndroidBug5497Workaround;->keyboardHeight:I

    .line 133
    .line 134
    iget-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 138
    move-result-object v1

    .line 139
    const/4 v3, -0x1

    .line 140
    .line 141
    .line 142
    invoke-static {v1, v3}, Lcom/narvii/util/KeyboardSharedPreferences;->get(Landroid/content/Context;I)I

    .line 143
    move-result v1

    .line 144
    .line 145
    sget v3, Lcom/narvii/util/AndroidBug5497Workaround;->keyboardHeight:I

    .line 146
    .line 147
    if-eq v1, v3, :cond_a

    .line 148
    .line 149
    if-lez v3, :cond_a

    .line 150
    .line 151
    iget-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 155
    move-result-object v1

    .line 156
    .line 157
    sget v3, Lcom/narvii/util/AndroidBug5497Workaround;->keyboardHeight:I

    .line 158
    .line 159
    .line 160
    invoke-static {v1, v3}, Lcom/narvii/util/KeyboardSharedPreferences;->save(Landroid/content/Context;I)Z

    .line 161
    goto :goto_4

    .line 162
    .line 163
    :cond_9
    iget v2, p0, Lcom/narvii/util/AndroidBug5497Workaround;->origHeightParam:I

    .line 164
    .line 165
    :cond_a
    :goto_4
    iget-boolean v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->containTargetView:Z

    .line 166
    .line 167
    if-eqz v1, :cond_b

    .line 168
    .line 169
    iget-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->targetViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 170
    .line 171
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 172
    .line 173
    if-eq v2, v3, :cond_c

    .line 174
    .line 175
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 176
    .line 177
    iget-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->targetView:Landroid/view/View;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 181
    goto :goto_5

    .line 182
    .line 183
    :cond_b
    iget-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 184
    .line 185
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 186
    .line 187
    if-eq v2, v3, :cond_c

    .line 188
    .line 189
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 190
    .line 191
    iget-object v1, p0, Lcom/narvii/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 195
    .line 196
    :cond_c
    :goto_5
    iput v0, p0, Lcom/narvii/util/AndroidBug5497Workaround;->prevBottom:I

    .line 197
    :cond_d
    return-void
.end method
