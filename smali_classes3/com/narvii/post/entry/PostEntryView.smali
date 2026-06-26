.class public Lcom/narvii/post/entry/PostEntryView;
.super Landroid/widget/RelativeLayout;
.source "PostEntryView.java"

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

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private update(Z)V
    .locals 3

    .line 66
    iget v0, p0, Lcom/narvii/post/entry/PostEntryView;->lift1:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    iget v2, p0, Lcom/narvii/post/entry/PostEntryView;->lift2:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v0, v2

    goto :goto_2

    .line 67
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/narvii/post/entry/PostEntryView;->frame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    sub-int/2addr v1, v0

    move v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/narvii/post/entry/PostEntryView;->pendingUpdate:Z

    const/4 v0, 0x0

    :goto_2
    if-eqz p1, :cond_4

    .line 79
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryView;->frame:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    .line 81
    :cond_4
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryView;->frame:Landroid/view/View;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :goto_3
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/narvii/lib/R$id;->post_entry_btn:I

    if-ne v0, v1, :cond_3

    .line 155
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryView;->onPostButtonClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "account"

    .line 160
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ndc://login"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "promptType"

    const-string v2, "Required"

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    :try_start_0
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "unable to start login activity"

    .line 167
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "postEntry"

    .line 170
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Dialog;

    if-eqz p1, :cond_3

    .line 172
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 87
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 89
    sget v0, Lcom/narvii/lib/R$id;->post_entry_frame:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/post/entry/PostEntryView;->frame:Landroid/view/View;

    .line 91
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "config"

    .line 93
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 94
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, -0x777778

    .line 97
    :goto_0
    sget v1, Lcom/narvii/lib/R$id;->post_entry_btn2:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/ThumbImageView;

    .line 98
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, v1, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 100
    sget v1, Lcom/narvii/lib/R$id;->theme_bg:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 102
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 103
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v0, v4}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_1
    sget v0, Lcom/narvii/lib/R$id;->post_entry_btn:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 124
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 126
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryView;->activityRootView:Landroid/view/View;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p2, 0x1020002

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryView;->activityRootView:Landroid/view/View;

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryView;->activityRootView:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryView;->activityRootView:Landroid/view/View;

    .line 132
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 133
    sget p2, Lcom/narvii/post/entry/PostEntryView;->screenSize:I

    if-nez p2, :cond_1

    .line 134
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 135
    iget p3, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sput p2, Lcom/narvii/post/entry/PostEntryView;->screenSize:I

    .line 137
    :cond_1
    sget p2, Lcom/narvii/post/entry/PostEntryView;->screenSize:I

    div-int/lit8 p2, p2, 0x2

    const/4 p3, 0x0

    if-le p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    const/4 p3, 0x4

    .line 138
    :cond_3
    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public setButtonColor(I)V
    .locals 4

    .line 110
    sget v0, Lcom/narvii/lib/R$id;->post_entry_btn2:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    if-eqz v0, :cond_0

    .line 112
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, v0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    sget v0, Lcom/narvii/lib/R$id;->theme_bg:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 116
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const v3, 0x3e99999a    # 0.3f

    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setEntryIcon(I)V
    .locals 2

    .line 143
    sget v0, Lcom/narvii/lib/R$id;->post_entry_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setLift1(IZ)V
    .locals 1

    .line 51
    iget v0, p0, Lcom/narvii/post/entry/PostEntryView;->lift1:I

    if-eq v0, p1, :cond_0

    .line 52
    iput p1, p0, Lcom/narvii/post/entry/PostEntryView;->lift1:I

    .line 53
    invoke-direct {p0, p2}, Lcom/narvii/post/entry/PostEntryView;->update(Z)V

    :cond_0
    return-void
.end method

.method public setLift2(IZ)V
    .locals 1

    .line 58
    iget v0, p0, Lcom/narvii/post/entry/PostEntryView;->lift2:I

    if-eq v0, p1, :cond_0

    .line 59
    iput p1, p0, Lcom/narvii/post/entry/PostEntryView;->lift2:I

    .line 60
    invoke-direct {p0, p2}, Lcom/narvii/post/entry/PostEntryView;->update(Z)V

    :cond_0
    return-void
.end method

.method public setOnPostButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryView;->onPostButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public updateThemeUI()V
    .locals 5

    .line 184
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "config"

    .line 186
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 187
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    .line 188
    sget v1, Lcom/narvii/lib/R$id;->post_entry_btn2:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/ThumbImageView;

    if-eqz v1, :cond_0

    .line 190
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    :cond_0
    sget v1, Lcom/narvii/lib/R$id;->theme_bg:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 194
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 195
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v0, v4}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
