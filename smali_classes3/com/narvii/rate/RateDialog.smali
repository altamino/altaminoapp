.class public Lcom/narvii/rate/RateDialog;
.super Lcom/narvii/app/NVDialog;
.source "RateDialog.java"


# instance fields
.field btnClose:Landroid/view/View;

.field btnNeverReminder:Landroid/view/View;

.field btnRateNow:Landroid/view/View;

.field configService:Lcom/narvii/config/ConfigService;

.field fiveStar:Landroid/view/View;

.field fourStar:Landroid/view/View;

.field oneStar:Landroid/view/View;

.field packageUtils:Lcom/narvii/util/PackageUtils;

.field twoStar:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const v0, 0x7f1000cd

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/narvii/rate/RateDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 3

    const p2, 0x7f1000cd

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    const p2, 0x7f0b01ab

    .line 51
    invoke-super {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 53
    new-instance p2, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/rate/RateDialog;->packageUtils:Lcom/narvii/util/PackageUtils;

    const-string p2, "config"

    .line 56
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/config/ConfigService;

    iput-object p2, p0, Lcom/narvii/rate/RateDialog;->configService:Lcom/narvii/config/ConfigService;

    const-string p2, "community"

    .line 57
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 58
    iget-object p2, p0, Lcom/narvii/rate/RateDialog;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    const p1, 0x7f090916

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/app/NVApplication;->getApplicationIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f090915

    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/rate/RateDialog;->btnClose:Landroid/view/View;

    .line 62
    iget-object p1, p0, Lcom/narvii/rate/RateDialog;->btnClose:Landroid/view/View;

    new-instance p2, Lcom/narvii/rate/RateDialog$1;

    invoke-direct {p2, p0}, Lcom/narvii/rate/RateDialog$1;-><init>(Lcom/narvii/rate/RateDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09091c

    .line 68
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/rate/RateDialog;->btnRateNow:Landroid/view/View;

    const p1, 0x7f09091b

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/rate/RateDialog;->btnNeverReminder:Landroid/view/View;

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0f0e89

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/narvii/rate/RateDialog;->packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {p2}, Lcom/narvii/util/PackageUtils;->getAppName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/narvii/rate/RateDialog;->packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 74
    new-instance v0, Lcom/narvii/util/CustomTypefaceSpan;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/ViewUtils;->getMontserratExtraBoldTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/narvii/util/CustomTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/narvii/rate/RateDialog;->packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    const/16 v2, 0x21

    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const p1, 0x7f090918

    .line 75
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090917

    .line 76
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/rate/RateDialog;->packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f09091d

    .line 78
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/rate/RateDialog;->oneStar:Landroid/view/View;

    const p2, 0x7f09091f

    .line 79
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/rate/RateDialog;->twoStar:Landroid/view/View;

    const p2, 0x7f09091a

    .line 80
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/rate/RateDialog;->fourStar:Landroid/view/View;

    const p2, 0x7f090919

    .line 81
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/rate/RateDialog;->fiveStar:Landroid/view/View;

    const p2, 0x7f090914

    .line 82
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/ThumbImageView;

    .line 84
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060199

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 85
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 86
    iget-object v1, p0, Lcom/narvii/rate/RateDialog;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/narvii/rate/RateDialog;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/rate/RateDialog;->packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private startShitAnimation(Landroid/view/View;)V
    .locals 6

    .line 110
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, -0x3d380000    # -100.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 111
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-direct {v1, v2, v3, v2, v4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 112
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v2, v4, v2, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 113
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 114
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 116
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 117
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 118
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 119
    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0x5dc

    .line 120
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 121
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public setNeverReminderListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/narvii/rate/RateDialog;->btnNeverReminder:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/narvii/rate/RateDialog;->oneStar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/narvii/rate/RateDialog;->twoStar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method

.method public setRateNowListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/narvii/rate/RateDialog;->btnRateNow:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/narvii/rate/RateDialog;->fourStar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/narvii/rate/RateDialog;->fiveStar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
