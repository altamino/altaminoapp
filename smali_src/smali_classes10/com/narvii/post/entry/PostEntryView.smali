.class public Lcom/narvii/post/entry/PostEntryView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static screenSize:I


# instance fields
.field private activityRootView:Landroid/view/View;

.field private frame:Landroid/view/View;

.field private lift1:I

.field private lift2:I

.field onPostButtonClickListener:Landroid/view/View$OnClickListener;

.field private pendingUpdate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private update(Z)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/post/entry/PostEntryView;->lift1:I

    .line 3
    .line 4
    const/high16 v1, -0x80000000

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    iget v2, p0, Lcom/narvii/post/entry/PostEntryView;->lift2:I

    .line 9
    .line 10
    if-ne v2, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    add-int/2addr v0, v2

    .line 13
    goto :goto_2

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    move-result v0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/post/entry/PostEntryView;->frame:Landroid/view/View;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    sub-int/2addr v1, v0

    .line 30
    move v0, v1

    .line 31
    goto :goto_2

    .line 32
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/narvii/post/entry/PostEntryView;->pendingUpdate:Z

    .line 35
    const/4 v0, 0x0

    .line 36
    .line 37
    :goto_2
    if-eqz p1, :cond_4

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryView;->frame:Landroid/view/View;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 43
    move-result-object p1

    .line 44
    neg-int v0, v0

    .line 45
    int-to-float v0, v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    const-wide/16 v0, 0x190

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 68
    goto :goto_3

    .line 69
    .line 70
    :cond_4
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryView;->frame:Landroid/view/View;

    .line 71
    neg-int v0, v0

    .line 72
    int-to-float v0, v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 76
    :goto_3
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$id;->post_entry_btn:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryView;->onPostButtonClickListener:Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    const-string v0, "account"

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    new-instance v0, Landroid/content/Intent;

    .line 44
    .line 45
    const-string v1, "ndc://login"

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    const-string v2, "android.intent.action.VIEW"

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 55
    .line 56
    const-string v1, "promptType"

    .line 57
    .line 58
    const-string v2, "Required"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    :try_start_0
    invoke-static {p1, v0}, Lcom/narvii/post/entry/PostEntryView;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :catch_0
    const-string p1, "unable to start login activity"

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_1
    const-string v0, "postEntry"

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    check-cast p1, Landroid/app/Dialog;

    .line 80
    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 85
    move-result v0

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 91
    goto :goto_0

    .line 92
    .line 93
    .line 94
    :cond_2
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 95
    :cond_3
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 4
    .line 5
    sget v0, Lcom/narvii/lib/R$id;->post_entry_frame:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/post/entry/PostEntryView;->frame:Landroid/view/View;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v1, "config"

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 37
    move-result v0

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_0
    const v0, -0x777778

    .line 42
    .line 43
    :goto_0
    sget v1, Lcom/narvii/lib/R$id;->post_entry_btn2:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    check-cast v1, Lcom/narvii/widget/ThumbImageView;

    .line 50
    .line 51
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 55
    .line 56
    iput-object v2, v1, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    sget v1, Lcom/narvii/lib/R$id;->theme_bg:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    .line 67
    .line 68
    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    .line 69
    .line 70
    .line 71
    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    .line 81
    const v4, 0x3e99999a    # 0.3f

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v4}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 85
    move-result v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    .line 93
    :cond_1
    sget v0, Lcom/narvii/lib/R$id;->post_entry_btn:I

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryView;->activityRootView:Landroid/view/View;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    instance-of p1, p1, Landroid/view/ViewGroup;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Landroid/view/ViewGroup;

    .line 22
    .line 23
    .line 24
    const p2, 0x1020002

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryView;->activityRootView:Landroid/view/View;

    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryView;->activityRootView:Landroid/view/View;

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 42
    move-result p1

    .line 43
    .line 44
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryView;->activityRootView:Landroid/view/View;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 48
    move-result p2

    .line 49
    sub-int/2addr p1, p2

    .line 50
    .line 51
    sget p2, Lcom/narvii/post/entry/PostEntryView;->screenSize:I

    .line 52
    .line 53
    if-nez p2, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    iget p3, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 64
    .line 65
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 66
    .line 67
    .line 68
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    .line 69
    move-result p2

    .line 70
    .line 71
    sput p2, Lcom/narvii/post/entry/PostEntryView;->screenSize:I

    .line 72
    .line 73
    :cond_1
    sget p2, Lcom/narvii/post/entry/PostEntryView;->screenSize:I

    .line 74
    .line 75
    div-int/lit8 p2, p2, 0x2

    .line 76
    .line 77
    if-le p1, p2, :cond_2

    .line 78
    const/4 p1, 0x4

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/4 p1, 0x0

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :cond_3
    return-void
.end method

.method public setButtonColor(I)V
    .locals 4

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->post_entry_btn2:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 16
    .line 17
    iput-object v1, v0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    sget v0, Lcom/narvii/lib/R$id;->theme_bg:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    .line 28
    .line 29
    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    .line 30
    .line 31
    .line 32
    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    const v3, 0x3e99999a    # 0.3f

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 46
    move-result p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_0
    return-void
.end method

.method public setEntryIcon(I)V
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->post_entry_icon:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    :cond_0
    return-void
.end method

.method public setLift1(IZ)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/post/entry/PostEntryView;->lift1:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/post/entry/PostEntryView;->lift1:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/post/entry/PostEntryView;->update(Z)V

    .line 10
    :cond_0
    return-void
.end method

.method public setLift2(IZ)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/post/entry/PostEntryView;->lift2:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/post/entry/PostEntryView;->lift2:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/post/entry/PostEntryView;->update(Z)V

    .line 10
    :cond_0
    return-void
.end method

.method public setOnPostButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryView;->onPostButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public updateThemeUI()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string v1, "config"

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 26
    move-result v0

    .line 27
    .line 28
    sget v1, Lcom/narvii/lib/R$id;->post_entry_btn2:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Lcom/narvii/widget/ThumbImageView;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    .line 46
    :cond_0
    sget v1, Lcom/narvii/lib/R$id;->theme_bg:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    .line 55
    .line 56
    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    .line 57
    .line 58
    .line 59
    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    .line 69
    const v4, 0x3e99999a    # 0.3f

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v4}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 73
    move-result v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :cond_1
    return-void
.end method
