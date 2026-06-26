.class public Lcom/narvii/widget/NicknameView;
.super Landroid/view/ViewGroup;
.source "NicknameView.java"

# interfaces
.implements Lcom/narvii/app/theme/NVThemeObserver;


# static fields
.field private static final MEASURE_CACHE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected allowShowUnsubscribe:Z

.field badgeDrawable:Landroid/graphics/drawable/Drawable;

.field public badgeScale:F

.field protected hideInfluencerBadge:Z

.field protected hideMembershipBadge:Z

.field protected hideRankingBadge:Z

.field public hideRole:Z

.field protected hideVerifiedBadge:Z

.field influencerBadge:Landroid/graphics/drawable/Drawable;

.field isDarkTheme:Z

.field isMe:Z

.field isMembership:Z

.field public isReverse:Z

.field isVerified:Z

.field membershipDrawable:Landroid/graphics/drawable/Drawable;

.field public nameCenter:Z

.field final nameView:Landroid/widget/TextView;

.field final paint:Landroid/graphics/Paint;

.field rankingService:Lcom/narvii/util/ranking/RankingService;

.field final rectf:Landroid/graphics/RectF;

.field role1:Ljava/lang/String;

.field role1Bg:I

.field role2:Ljava/lang/String;

.field role2Bg:I

.field public roleMarginRatio:F

.field public rolePaddingRatio:F

.field public roleRadiusRatio:F

.field public roleScale:F

.field final rtl:Z

.field setHideInfluencerBadge:Z

.field showAuthorViewBorder:Z

.field final strokePaint:Landroid/graphics/Paint;

.field textColor:Landroid/content/res/ColorStateList;

.field unsubscribeDrawable:Landroid/graphics/drawable/Drawable;

.field public useBigBadge:Z

.field verifiedDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 536
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/widget/NicknameView;->MEASURE_CACHE:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    iput v0, p0, Lcom/narvii/widget/NicknameView;->badgeScale:F

    const/4 v1, 0x1

    .line 56
    iput-boolean v1, p0, Lcom/narvii/widget/NicknameView;->showAuthorViewBorder:Z

    const/4 v2, 0x0

    .line 113
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 114
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "config"

    .line 116
    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/config/ConfigService;

    .line 117
    sget v5, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    invoke-virtual {v4}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v4, "ranking"

    .line 118
    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/ranking/RankingService;

    iput-object v3, p0, Lcom/narvii/widget/NicknameView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    .line 122
    :cond_1
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v3

    iput-boolean v3, p0, Lcom/narvii/widget/NicknameView;->rtl:Z

    .line 123
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 124
    iget-object v3, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 125
    iget-object v3, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 126
    sget-object v3, Lcom/narvii/lib/R$styleable;->NicknameView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 127
    sget v3, Lcom/narvii/lib/R$styleable;->NicknameView_android_textSize:I

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p1, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    .line 128
    sget v3, Lcom/narvii/lib/R$styleable;->NicknameView_roleScale:I

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/narvii/widget/NicknameView;->roleScale:F

    .line 129
    sget v3, Lcom/narvii/lib/R$styleable;->NicknameView_rolePaddingRatio:I

    const v4, 0x3eae147b    # 0.34f

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/narvii/widget/NicknameView;->rolePaddingRatio:F

    .line 130
    sget v3, Lcom/narvii/lib/R$styleable;->NicknameView_roleMarginRatio:I

    const v4, 0x3ef5c28f    # 0.48f

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/narvii/widget/NicknameView;->roleMarginRatio:F

    .line 131
    sget v3, Lcom/narvii/lib/R$styleable;->NicknameView_roleRadiusRatio:I

    const v4, 0x3ed70a3d    # 0.42f

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/narvii/widget/NicknameView;->roleRadiusRatio:F

    .line 132
    sget v3, Lcom/narvii/lib/R$styleable;->NicknameView_nameCenter:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/narvii/widget/NicknameView;->nameCenter:Z

    .line 133
    iget-object v3, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    invoke-virtual {v3, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 134
    sget v3, Lcom/narvii/lib/R$styleable;->NicknameView_android_textStyle:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 135
    iget-object v4, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 136
    iget-object v3, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    sget v4, Lcom/narvii/lib/R$styleable;->NicknameView_android_shadowRadius:I

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    sget v6, Lcom/narvii/lib/R$styleable;->NicknameView_android_shadowDx:I

    .line 137
    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    sget v7, Lcom/narvii/lib/R$styleable;->NicknameView_android_shadowDy:I

    .line 138
    invoke-virtual {p2, v7, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    sget v7, Lcom/narvii/lib/R$styleable;->NicknameView_android_shadowColor:I

    .line 139
    invoke-virtual {p2, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 136
    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 140
    sget v3, Lcom/narvii/lib/R$styleable;->NicknameView_android_textColor:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/narvii/widget/NicknameView;->textColor:Landroid/content/res/ColorStateList;

    .line 141
    iget-object v3, p0, Lcom/narvii/widget/NicknameView;->textColor:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_2

    const v3, -0xbbbbbc

    .line 142
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/narvii/widget/NicknameView;->textColor:Landroid/content/res/ColorStateList;

    .line 144
    :cond_2
    iget-object v3, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/narvii/widget/NicknameView;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 145
    sget v3, Lcom/narvii/lib/R$styleable;->NicknameView_hideRankingBadge:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/narvii/widget/NicknameView;->hideRankingBadge:Z

    .line 146
    sget v3, Lcom/narvii/lib/R$styleable;->NicknameView_hideInfluencerBadge:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 147
    sget v3, Lcom/narvii/lib/R$styleable;->NicknameView_hideInfluencerBadge:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/narvii/widget/NicknameView;->hideInfluencerBadge:Z

    .line 148
    iput-boolean v1, p0, Lcom/narvii/widget/NicknameView;->setHideInfluencerBadge:Z

    goto :goto_0

    .line 150
    :cond_3
    iget-boolean v3, p0, Lcom/narvii/widget/NicknameView;->hideRankingBadge:Z

    iput-boolean v3, p0, Lcom/narvii/widget/NicknameView;->hideInfluencerBadge:Z

    .line 152
    :goto_0
    sget v3, Lcom/narvii/lib/R$styleable;->NicknameView_hideVerifiedBadge:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/narvii/widget/NicknameView;->hideVerifiedBadge:Z

    .line 153
    sget v3, Lcom/narvii/lib/R$styleable;->NicknameView_hideMembershipBadge:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/narvii/widget/NicknameView;->hideMembershipBadge:Z

    .line 154
    sget v3, Lcom/narvii/lib/R$styleable;->NicknameView_hideRole:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/narvii/widget/NicknameView;->hideRole:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/narvii/widget/NicknameView;->useBigBadge:Z

    .line 156
    sget v3, Lcom/narvii/lib/R$styleable;->NicknameView_allowShowUnsubscribe:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/narvii/widget/NicknameView;->allowShowUnsubscribe:Z

    .line 157
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    iget-object p2, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/narvii/widget/NicknameView;->rectf:Landroid/graphics/RectF;

    .line 161
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    .line 162
    iget-object p2, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    iget-object p2, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    iget-object p2, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/narvii/widget/NicknameView;->roleScale:F

    mul-float p1, p1, v2

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 166
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/NicknameView;->strokePaint:Landroid/graphics/Paint;

    .line 167
    iget-object p1, p0, Lcom/narvii/widget/NicknameView;->strokePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    iget-object p1, p0, Lcom/narvii/widget/NicknameView;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 169
    iget-object p1, p0, Lcom/narvii/widget/NicknameView;->strokePaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iget-object p1, p0, Lcom/narvii/widget/NicknameView;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$drawable;->ic_badge_verified:I

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/NicknameView;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    .line 173
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$drawable;->ic_badge_membership:I

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/NicknameView;->membershipDrawable:Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$drawable;->ic_badge_unsubscribe:I

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/NicknameView;->unsubscribeDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private addInfluencerBadge()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->influencerBadge:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$drawable;->ic_badge_influencer:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/NicknameView;->influencerBadge:Landroid/graphics/drawable/Drawable;

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->influencerBadge:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 247
    iput-object v0, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 248
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    return-void
.end method

.method private calcBadgeSize()I
    .locals 2

    .line 319
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->showVerifiedBadge()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/narvii/widget/NicknameView;->getBadgeWidthWithMargin(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    add-int/2addr v1, v0

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->showMembershipBadge()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->membershipDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/narvii/widget/NicknameView;->getBadgeWidthWithMargin(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    add-int/2addr v1, v0

    .line 325
    :cond_1
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->showUnsubscribeBadge()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->unsubscribeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/narvii/widget/NicknameView;->getBadgeWidthWithMargin(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    add-int/2addr v1, v0

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 329
    invoke-direct {p0, v0}, Lcom/narvii/widget/NicknameView;->getBadgeWidthWithMargin(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    return v1
.end method

.method private calcRoleSize()I
    .locals 5

    .line 306
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/narvii/widget/NicknameView;->rolePaddingRatio:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 307
    iget-object v1, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/narvii/widget/NicknameView;->roleMarginRatio:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 308
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->role1:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 309
    iget-object v4, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-static {v4, v2}, Lcom/narvii/widget/NicknameView;->measureText(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v2, v4

    add-int/2addr v2, v1

    add-int/2addr v3, v2

    .line 311
    :cond_0
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->role2:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 312
    iget-object v4, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-static {v4, v2}, Lcom/narvii/widget/NicknameView;->measureText(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/2addr v3, v2

    :cond_1
    return v3
.end method

.method private getBadgeWidthWithMargin(Landroid/graphics/drawable/Drawable;)I
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/narvii/widget/NicknameView;->badgeScale:F

    mul-float v0, v0, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-int p1, v0

    .line 336
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const v1, 0x3ea3d70a    # 0.32f

    mul-float v0, v0, v1

    float-to-int v0, v0

    add-int/2addr p1, v0

    return p1
.end method

.method private getBageWidth(Landroid/graphics/drawable/Drawable;I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 344
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int p2, p2, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    div-int/2addr p2, p1

    return p2
.end method

.method private getFinalBadgeHeight(I)I
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/narvii/widget/NicknameView;->badgeScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 526
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getX(Landroid/graphics/Canvas;IIIILandroid/graphics/drawable/Drawable;)I
    .locals 2

    .line 509
    invoke-direct {p0, p6, p4}, Lcom/narvii/widget/NicknameView;->getBageWidth(Landroid/graphics/drawable/Drawable;I)I

    move-result v0

    .line 510
    invoke-virtual {p0}, Lcom/narvii/widget/NicknameView;->isRtlOrReverse()Z

    move-result v1

    if-eqz v1, :cond_0

    sub-int/2addr p2, v0

    :cond_0
    add-int v1, p2, v0

    add-int/2addr p4, p5

    .line 513
    invoke-virtual {p6, p2, p5, v1, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 514
    invoke-virtual {p6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 515
    invoke-virtual {p0}, Lcom/narvii/widget/NicknameView;->isRtlOrReverse()Z

    move-result p1

    if-eqz p1, :cond_1

    sub-int/2addr p2, p3

    goto :goto_0

    :cond_1
    add-int/2addr v0, p3

    add-int/2addr p2, v0

    :goto_0
    return p2
.end method

.method private hideInfluencerBadge(Lcom/narvii/model/User;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 300
    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->hideInfluencerBadge:Z

    if-nez v0, :cond_1

    iget v0, p1, Lcom/narvii/model/User;->role:I

    const/16 v1, 0xfe

    if-eq v0, v1, :cond_1

    const/16 v1, 0xfd

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->isDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private hideRankingBadge(Lcom/narvii/model/User;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 296
    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->hideRankingBadge:Z

    if-nez v0, :cond_1

    iget v0, p1, Lcom/narvii/model/User;->role:I

    const/16 v1, 0xfe

    if-eq v0, v1, :cond_1

    const/16 v1, 0xfd

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->isDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static measureText(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 3

    .line 539
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    .line 540
    sget-object v1, Lcom/narvii/widget/NicknameView;->MEASURE_CACHE:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    if-nez v1, :cond_0

    .line 542
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 543
    sget-object v2, Lcom/narvii/widget/NicknameView;->MEASURE_CACHE:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 545
    :cond_0
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-eqz v2, :cond_1

    return v2

    .line 551
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 552
    invoke-virtual {v1, v0, p0}, Landroid/util/SparseIntArray;->put(II)V

    return p0
.end method

.method private showMembershipBadge()Z
    .locals 1

    .line 405
    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->isMembership:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->hideMembershipBadge:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showUnsubscribeBadge()Z
    .locals 1

    .line 409
    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->isMembership:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->isMe:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->allowShowUnsubscribe:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showVerifiedBadge()Z
    .locals 1

    .line 401
    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->isVerified:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->hideVerifiedBadge:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getNameView()Landroid/widget/TextView;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isHideInfluencerBadge()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->hideInfluencerBadge:Z

    return v0
.end method

.method public isHideRankingBadge()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->hideRankingBadge:Z

    return v0
.end method

.method public isRtlOrReverse()Z
    .locals 1

    .line 566
    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->rtl:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->isReverse:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 414
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 417
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->calcBadgeSize()I

    move-result v0

    if-lez v0, :cond_6

    .line 420
    iget-object v1, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    const v2, 0x3ea3d70a    # 0.32f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 423
    invoke-virtual {p0}, Lcom/narvii/widget/NicknameView;->isRtlOrReverse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    sub-int/2addr v2, v1

    goto :goto_0

    .line 426
    :cond_0
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getRight()I

    move-result v2

    add-int/2addr v2, v1

    :goto_0
    move v4, v2

    .line 429
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/narvii/widget/NicknameView;->getFinalBadgeHeight(I)I

    move-result v9

    .line 430
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f666666    # 0.9f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/narvii/widget/NicknameView;->getFinalBadgeHeight(I)I

    move-result v10

    .line 431
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v2, v9

    div-int/lit8 v11, v2, 0x2

    .line 432
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->showVerifiedBadge()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 433
    iget-object v8, p0, Lcom/narvii/widget/NicknameView;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, p0

    move-object v3, p1

    move v5, v1

    move v6, v9

    move v7, v11

    invoke-direct/range {v2 .. v8}, Lcom/narvii/widget/NicknameView;->getX(Landroid/graphics/Canvas;IIIILandroid/graphics/drawable/Drawable;)I

    move-result v2

    move v4, v2

    .line 435
    :cond_1
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->showMembershipBadge()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 436
    iget-object v8, p0, Lcom/narvii/widget/NicknameView;->membershipDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, p0

    move-object v3, p1

    move v5, v1

    move v6, v9

    move v7, v11

    invoke-direct/range {v2 .. v8}, Lcom/narvii/widget/NicknameView;->getX(Landroid/graphics/Canvas;IIIILandroid/graphics/drawable/Drawable;)I

    move-result v2

    move v4, v2

    .line 438
    :cond_2
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->showUnsubscribeBadge()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 439
    iget-object v8, p0, Lcom/narvii/widget/NicknameView;->unsubscribeDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, p0

    move-object v3, p1

    move v5, v1

    move v6, v9

    move v7, v11

    invoke-direct/range {v2 .. v8}, Lcom/narvii/widget/NicknameView;->getX(Landroid/graphics/Canvas;IIIILandroid/graphics/drawable/Drawable;)I

    move-result v4

    .line 441
    :cond_3
    iget-object v1, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 442
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->influencerBadge:Landroid/graphics/drawable/Drawable;

    if-eq v1, v2, :cond_4

    .line 444
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int/2addr v1, v10

    div-int/lit8 v11, v1, 0x2

    move v9, v10

    .line 446
    :cond_4
    iget-object v1, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v9}, Lcom/narvii/widget/NicknameView;->getBageWidth(Landroid/graphics/drawable/Drawable;I)I

    move-result v1

    .line 447
    invoke-virtual {p0}, Lcom/narvii/widget/NicknameView;->isRtlOrReverse()Z

    move-result v2

    if-eqz v2, :cond_5

    sub-int/2addr v4, v1

    .line 450
    :cond_5
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v1, v4

    add-int/2addr v9, v11

    invoke-virtual {v2, v4, v11, v1, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 451
    iget-object v1, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 455
    :cond_6
    iget-object v1, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/narvii/widget/NicknameView;->rolePaddingRatio:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 456
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    iget v3, p0, Lcom/narvii/widget/NicknameView;->roleMarginRatio:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 457
    iget-object v3, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    iget v4, p0, Lcom/narvii/widget/NicknameView;->roleRadiusRatio:F

    mul-float v3, v3, v4

    .line 458
    invoke-virtual {p0}, Lcom/narvii/widget/NicknameView;->isRtlOrReverse()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 459
    iget-object v4, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLeft()I

    move-result v4

    sub-int/2addr v4, v0

    goto :goto_1

    .line 461
    :cond_7
    iget-object v4, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getRight()I

    move-result v4

    add-int/2addr v4, v0

    .line 463
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v5, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    iget-object v6, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v5, v5, v6

    sub-float/2addr v0, v5

    .line 465
    iget-object v5, p0, Lcom/narvii/widget/NicknameView;->role1:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, -0x1

    if-nez v5, :cond_a

    .line 466
    iget-object v5, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->role1:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/narvii/widget/NicknameView;->measureText(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v5

    .line 467
    invoke-virtual {p0}, Lcom/narvii/widget/NicknameView;->isRtlOrReverse()Z

    move-result v7

    if-eqz v7, :cond_8

    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v5

    mul-int/lit8 v8, v2, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    .line 470
    :cond_8
    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/narvii/widget/NicknameView;->role1Bg:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 471
    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->rectf:Landroid/graphics/RectF;

    add-int v8, v4, v2

    int-to-float v9, v8

    iput v9, v7, Landroid/graphics/RectF;->left:F

    .line 472
    iget-object v9, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    add-float/2addr v9, v0

    div-int/lit8 v10, v1, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, v7, Landroid/graphics/RectF;->top:F

    .line 473
    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->rectf:Landroid/graphics/RectF;

    add-int v9, v8, v5

    mul-int/lit8 v11, v1, 0x2

    add-int/2addr v9, v11

    int-to-float v9, v9

    iput v9, v7, Landroid/graphics/RectF;->right:F

    .line 474
    iget-object v9, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    move-result v9

    add-float/2addr v9, v0

    add-float/2addr v9, v10

    iput v9, v7, Landroid/graphics/RectF;->bottom:F

    .line 475
    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->rectf:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v3, v3, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 476
    iget-boolean v7, p0, Lcom/narvii/widget/NicknameView;->isDarkTheme:Z

    if-eqz v7, :cond_9

    .line 477
    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->rectf:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/narvii/widget/NicknameView;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v3, v3, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 479
    :cond_9
    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 480
    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->role1:Ljava/lang/String;

    add-int/2addr v8, v1

    int-to-float v8, v8

    iget-object v9, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v0, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 482
    invoke-virtual {p0}, Lcom/narvii/widget/NicknameView;->isRtlOrReverse()Z

    move-result v7

    if-nez v7, :cond_a

    add-int/2addr v5, v2

    add-int/2addr v5, v11

    add-int/2addr v4, v5

    .line 487
    :cond_a
    iget-object v5, p0, Lcom/narvii/widget/NicknameView;->role2:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 488
    iget-object v5, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->role2:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/narvii/widget/NicknameView;->measureText(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v5

    .line 489
    invoke-virtual {p0}, Lcom/narvii/widget/NicknameView;->isRtlOrReverse()Z

    move-result v7

    if-eqz v7, :cond_b

    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v5

    add-int/2addr v7, v2

    sub-int/2addr v4, v7

    .line 492
    :cond_b
    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/narvii/widget/NicknameView;->role2Bg:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 493
    iget-object v7, p0, Lcom/narvii/widget/NicknameView;->rectf:Landroid/graphics/RectF;

    add-int/2addr v4, v2

    int-to-float v2, v4

    iput v2, v7, Landroid/graphics/RectF;->left:F

    .line 494
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v2, v0

    div-int/lit8 v8, v1, 0x2

    int-to-float v8, v8

    sub-float/2addr v2, v8

    iput v2, v7, Landroid/graphics/RectF;->top:F

    .line 495
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->rectf:Landroid/graphics/RectF;

    add-int/2addr v5, v4

    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v5, v7

    int-to-float v5, v5

    iput v5, v2, Landroid/graphics/RectF;->right:F

    .line 496
    iget-object v5, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    add-float/2addr v5, v0

    add-float/2addr v5, v8

    iput v5, v2, Landroid/graphics/RectF;->bottom:F

    .line 497
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->rectf:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 499
    iget-boolean v2, p0, Lcom/narvii/widget/NicknameView;->isDarkTheme:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/narvii/widget/NicknameView;->showAuthorViewBorder:Z

    if-eqz v2, :cond_c

    .line 500
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->rectf:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/narvii/widget/NicknameView;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 503
    :cond_c
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 504
    iget-object v2, p0, Lcom/narvii/widget/NicknameView;->role2:Ljava/lang/String;

    add-int/2addr v4, v1

    int-to-float v1, v4

    iget-object v3, p0, Lcom/narvii/widget/NicknameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_d
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 379
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->calcRoleSize()I

    move-result p1

    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->calcBadgeSize()I

    move-result p2

    add-int/2addr p1, p2

    .line 380
    iget-boolean p2, p0, Lcom/narvii/widget/NicknameView;->nameCenter:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 381
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/widget/NicknameView;->isRtlOrReverse()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 382
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    sub-int/2addr p4, p1

    .line 383
    iget-object p1, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 384
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    sub-int p2, p4, p2

    div-int/lit8 p5, p5, 0x2

    iget-object p3, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 385
    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int p3, p5, p3

    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 387
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p5, v0

    .line 383
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_1

    .line 389
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    add-int/2addr p2, p1

    .line 390
    iget-object p1, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    div-int/lit8 p5, p5, 0x2

    .line 392
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int p3, p5, p3

    iget-object p4, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 393
    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    .line 394
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p5, v0

    .line 390
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 349
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 351
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 352
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 353
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 354
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 356
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->calcRoleSize()I

    move-result v4

    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->calcBadgeSize()I

    move-result v5

    add-int/2addr v4, v5

    .line 357
    iget-boolean v5, p0, Lcom/narvii/widget/NicknameView;->nameCenter:Z

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    mul-int v5, v5, v4

    sub-int v5, v0, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v5, v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    sub-int/2addr v5, v8

    const/4 v8, 0x0

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 358
    iget-object v8, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 p1, -0x80000000

    invoke-static {v5, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 359
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    add-int/2addr v5, v9

    const/4 v9, -0x2

    invoke-static {p2, v5, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 358
    invoke-virtual {v8, p1, p2}, Landroid/widget/TextView;->measure(II)V

    const/high16 p1, 0x40000000    # 2.0f

    if-ne v1, p1, :cond_2

    goto :goto_3

    .line 364
    :cond_2
    iget-object p2, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->nameCenter:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x1

    :goto_2
    mul-int v4, v4, v6

    add-int/2addr p2, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, p2

    :goto_3
    if-ne v3, p1, :cond_4

    goto :goto_4

    .line 370
    :cond_4
    iget-object p1, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p2

    add-int v2, p1, p2

    .line 372
    :goto_4
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onThemeChange(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 562
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NicknameView;->setDarkTheme(Z)V

    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->isDarkTheme:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 185
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->isDarkTheme:Z

    .line 186
    iget-object p1, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->isDarkTheme:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->textColor:Landroid/content/res/ColorStateList;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 187
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setHideInfluencerBadge(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->hideInfluencerBadge:Z

    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->setHideInfluencerBadge:Z

    return-void
.end method

.method public setHideMembershipBadge(Z)V
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->hideMembershipBadge:Z

    if-eq v0, p1, :cond_0

    .line 199
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->hideMembershipBadge:Z

    .line 200
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setHideRankingBadge(Z)V
    .locals 1

    .line 92
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->hideRankingBadge:Z

    .line 93
    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->setHideInfluencerBadge:Z

    if-nez v0, :cond_0

    .line 94
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->hideInfluencerBadge:Z

    :cond_0
    return-void
.end method

.method public setHideVerifiedBadge(Z)V
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/narvii/widget/NicknameView;->hideVerifiedBadge:Z

    if-eq v0, p1, :cond_0

    .line 192
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->hideVerifiedBadge:Z

    .line 193
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMembership(Z)V
    .locals 0

    .line 292
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->isMembership:Z

    return-void
.end method

.method public setRankingBadge(I)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/narvii/widget/NicknameView;->useBigBadge:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/narvii/util/ranking/RankingService;->getBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/util/ranking/RankingService;->getBadgeSmall(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_2

    .line 255
    iput-object p1, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 256
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setRankingBadge(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    .line 262
    iput-object p1, p0, Lcom/narvii/widget/NicknameView;->badgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 263
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setRankingService(Lcom/narvii/util/ranking/RankingService;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/narvii/widget/NicknameView;->rankingService:Lcom/narvii/util/ranking/RankingService;

    return-void
.end method

.method public setReverse(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->isReverse:Z

    return-void
.end method

.method public setRole1(Ljava/lang/String;I)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->role1:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/widget/NicknameView;->role1Bg:I

    if-ne v0, p2, :cond_0

    return-void

    .line 228
    :cond_0
    iput-object p1, p0, Lcom/narvii/widget/NicknameView;->role1:Ljava/lang/String;

    .line 229
    iput p2, p0, Lcom/narvii/widget/NicknameView;->role1Bg:I

    .line 230
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setRole2(Ljava/lang/String;I)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->role2:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/widget/NicknameView;->role2Bg:I

    if-ne v0, p2, :cond_0

    return-void

    .line 237
    :cond_0
    iput-object p1, p0, Lcom/narvii/widget/NicknameView;->role2:Ljava/lang/String;

    .line 238
    iput p2, p0, Lcom/narvii/widget/NicknameView;->role2Bg:I

    .line 239
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setShowAuthorViewBorder(Z)V
    .locals 0

    .line 557
    iput-boolean p1, p0, Lcom/narvii/widget/NicknameView;->showAuthorViewBorder:Z

    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/narvii/widget/NicknameView;->nameView:Landroid/widget/TextView;

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setUser(Lcom/narvii/model/User;)V
    .locals 1

    const/4 v0, 0x0

    .line 268
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;Z)V

    return-void
.end method

.method public setUser(Lcom/narvii/model/User;Z)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 272
    invoke-virtual {p1}, Lcom/narvii/model/User;->nicknameForCatalog()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lcom/narvii/widget/NicknameView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_3

    .line 273
    iget-boolean p2, p0, Lcom/narvii/widget/NicknameView;->hideRole:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/User;->roleName()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    :goto_1
    move-object p2, v0

    :goto_2
    const/4 v1, 0x0

    if-nez p1, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/User;->roleColor()I

    move-result v2

    :goto_3
    invoke-virtual {p0, p2, v2}, Lcom/narvii/widget/NicknameView;->setRole1(Ljava/lang/String;I)V

    const/4 p2, 0x1

    if-eqz p1, :cond_5

    .line 274
    invoke-virtual {p1}, Lcom/narvii/model/User;->isNicknameVerified()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, p0, Lcom/narvii/widget/NicknameView;->isVerified:Z

    if-eqz p1, :cond_6

    .line 275
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    iput-boolean v2, p0, Lcom/narvii/widget/NicknameView;->isMembership:Z

    .line 276
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v2

    const-string v3, "account"

    .line 277
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    if-eqz v2, :cond_7

    .line 280
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    :cond_7
    if-eqz p1, :cond_8

    .line 282
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    const/4 p2, 0x0

    :goto_6
    iput-boolean p2, p0, Lcom/narvii/widget/NicknameView;->isMe:Z

    if-eqz p1, :cond_9

    .line 283
    invoke-virtual {p1}, Lcom/narvii/model/User;->isInfluencer()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-direct {p0, p1}, Lcom/narvii/widget/NicknameView;->hideInfluencerBadge(Lcom/narvii/model/User;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 284
    invoke-direct {p0}, Lcom/narvii/widget/NicknameView;->addInfluencerBadge()V

    goto :goto_7

    .line 286
    :cond_9
    invoke-direct {p0, p1}, Lcom/narvii/widget/NicknameView;->hideRankingBadge(Lcom/narvii/model/User;)Z

    move-result p2

    if-nez p2, :cond_a

    iget v1, p1, Lcom/narvii/model/User;->level:I

    :cond_a
    invoke-virtual {p0, v1}, Lcom/narvii/widget/NicknameView;->setRankingBadge(I)V

    .line 288
    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
