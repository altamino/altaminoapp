.class public Lcom/narvii/leaderboard/LeaderBoardShareHelper;
.super Ljava/lang/Object;
.source "LeaderBoardShareHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;
    }
.end annotation


# static fields
.field private static final DYNAMICTHEMEBG:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ctx:Lcom/narvii/app/NVContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    sput-object v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->DYNAMICTHEMEBG:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/leaderboard/LeaderBoardShareHelper;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/narvii/model/Community;)Landroid/graphics/Bitmap;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->drawWaterMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/narvii/model/Community;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Lcom/narvii/util/statistics/TmpValue;
    .locals 1

    .line 29
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->DYNAMICTHEMEBG:Lcom/narvii/util/statistics/TmpValue;

    return-object v0
.end method

.method private drawWaterMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/narvii/model/Community;)Landroid/graphics/Bitmap;
    .locals 23

    move-object/from16 v0, p0

    .line 99
    iget-object v1, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0ac9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 100
    iget-object v1, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    move-object/from16 v5, p3

    iget-object v5, v5, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f0f010c

    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 104
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 105
    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    iget-object v5, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v5}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0701b1

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v15, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 108
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v9, p1

    .line 110
    invoke-virtual {v12, v9, v7, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v7, -0x1

    .line 112
    invoke-virtual {v14, v7}, Landroid/graphics/Paint;->setColor(I)V

    sub-int v11, v3, v5

    int-to-float v9, v11

    int-to-float v10, v15

    int-to-float v3, v3

    const/4 v8, 0x0

    move-object v7, v12

    move/from16 v17, v11

    move v11, v3

    move-object v3, v12

    move-object v12, v14

    .line 113
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 116
    iget-object v7, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v7}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x42a00000    # 80.0f

    invoke-static {v7, v8}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v7

    float-to-int v7, v7

    mul-int/lit8 v8, v7, 0x4e

    .line 117
    div-int/lit16 v8, v8, 0x115

    .line 118
    iget-object v9, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v9}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080080

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 119
    invoke-static {v9, v7, v8, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 121
    iget-object v9, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v9}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x42180000    # 38.0f

    invoke-static {v9, v10}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v10, p2

    .line 123
    invoke-static {v10, v9, v9, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 126
    iget-object v11, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v11}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v11

    const/high16 v12, 0x41900000    # 18.0f

    invoke-static {v11, v12}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v11

    float-to-int v12, v11

    .line 127
    iget-object v11, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v11}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v6, 0x7f080345

    invoke-static {v11, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 128
    invoke-static {v6, v12, v12, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 130
    iget-object v6, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v6}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v6, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v6

    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v6, -0x1000000

    .line 131
    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 133
    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 134
    invoke-virtual {v14}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    invoke-virtual {v14}, Landroid/graphics/Paint;->descent()F

    move-result v16

    add-float v6, v6, v16

    neg-float v6, v6

    float-to-int v6, v6

    move-object/from16 v16, v11

    .line 137
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v14}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    move-object/from16 v18, v13

    .line 138
    iget-object v13, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v13}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v19, v4

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v13, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v4

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v4, -0x1000000

    .line 139
    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v13, 0x0

    invoke-static {v4, v13}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 141
    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    .line 142
    invoke-virtual {v11}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Paint;->descent()F

    move-result v20

    add-float v4, v4, v20

    neg-float v4, v4

    float-to-int v4, v4

    sub-int v7, v15, v7

    .line 149
    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    move-object/from16 p2, v11

    iget-object v11, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v11}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v11

    move/from16 p3, v13

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v11, v13}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v11

    float-to-int v11, v11

    int-to-float v11, v11

    invoke-virtual {v3, v8, v7, v11, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sub-int v7, v5, v9

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-int v7, v7

    add-int v11, v7, v9

    .line 154
    iget-object v13, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v13}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v13

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v13, v8}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v8

    add-int/2addr v11, v8

    .line 156
    iget-object v8, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v8}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-static {v8, v13}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v8

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    sub-int/2addr v5, v8

    int-to-float v5, v5

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v5, v13

    float-to-int v5, v5

    add-int v20, v5, v6

    add-int v20, v20, v8

    int-to-float v8, v11

    add-float v13, v8, v2

    float-to-int v13, v13

    int-to-float v0, v5

    move/from16 v21, v4

    sub-int v4, v6, v12

    int-to-float v4, v4

    const/high16 v22, 0x40000000    # 2.0f

    div-float v4, v4, v22

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 163
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_1

    sub-int v4, v15, v7

    sub-int/2addr v4, v9

    int-to-float v4, v4

    add-int v7, v17, v7

    int-to-float v7, v7

    .line 164
    invoke-virtual {v3, v10, v4, v7, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 165
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v4, v7, :cond_0

    const/4 v7, 0x0

    .line 166
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v4, v15, v11

    int-to-float v11, v4

    sub-float v2, v11, v2

    add-int v4, v17, v5

    add-int/2addr v4, v6

    int-to-float v6, v4

    const/16 v22, 0x1

    move-object v5, v3

    move-object/from16 v4, v19

    move-object/from16 p1, v5

    move v5, v7

    move/from16 v19, v6

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v2

    move/from16 v10, v19

    move-object/from16 v2, v16

    move/from16 v16, v11

    move/from16 v11, v22

    move/from16 v22, v12

    move-object v12, v14

    invoke-virtual/range {v3 .. v12}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    const/4 v9, 0x0

    .line 167
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    sub-float v3, v16, p3

    add-int v4, v17, v20

    add-int v4, v4, v21

    int-to-float v4, v4

    const/4 v5, 0x1

    move-object/from16 v7, p1

    move-object v8, v1

    move v1, v13

    move v13, v3

    move-object v3, v14

    move v14, v4

    move v4, v15

    move v15, v5

    move-object/from16 v16, p2

    invoke-virtual/range {v7 .. v16}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    move-object/from16 v13, p1

    move v12, v1

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object/from16 p1, v3

    move/from16 v22, v12

    move v12, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v9, v16

    sub-int v15, v4, v11

    int-to-float v7, v15

    sub-float v2, v7, v2

    add-int v11, v17, v5

    add-int/2addr v11, v6

    int-to-float v5, v11

    move-object/from16 v13, p1

    move-object/from16 v11, v19

    .line 169
    invoke-virtual {v13, v11, v2, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sub-float v7, v7, p3

    add-int v11, v17, v20

    add-int v11, v11, v21

    int-to-float v2, v11

    move-object/from16 v14, p2

    .line 170
    invoke-virtual {v13, v1, v7, v2, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    sub-int v15, v4, v12

    sub-int v15, v15, v22

    int-to-float v1, v15

    add-int v11, v17, v0

    int-to-float v0, v11

    .line 172
    invoke-virtual {v13, v9, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    move v12, v13

    move-object/from16 v9, v16

    move-object/from16 v11, v19

    move-object v13, v3

    move-object v3, v14

    move-object/from16 v14, p2

    int-to-float v2, v7

    add-int v4, v17, v7

    int-to-float v4, v4

    .line 174
    invoke-virtual {v13, v10, v2, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int v2, v17, v5

    add-int/2addr v2, v6

    int-to-float v2, v2

    .line 175
    invoke-virtual {v13, v11, v8, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int v11, v17, v20

    add-int v11, v11, v21

    int-to-float v2, v11

    .line 176
    invoke-virtual {v13, v1, v8, v2, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    int-to-float v1, v12

    add-int v11, v17, v0

    int-to-float v0, v11

    .line 177
    invoke-virtual {v13, v9, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    return-object v18
.end method


# virtual methods
.method public getScreenShot()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 43
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->DYNAMICTHEMEBG:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v0}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0805a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public saveLeaderBoardBackGround(Landroid/app/Activity;ILcom/narvii/model/Community;Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 56
    :try_start_0
    invoke-static {p1, p2}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/app/Activity;F)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 62
    invoke-static {p1}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 65
    iget-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string p2, "imageLoader"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/image/NVImageLoader;

    .line 68
    iget-object p2, p3, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    new-instance v1, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;

    invoke-direct {v1, p0, v0, p3, p4}, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;-><init>(Lcom/narvii/leaderboard/LeaderBoardShareHelper;Landroid/graphics/Bitmap;Lcom/narvii/model/Community;Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;)V

    invoke-virtual {p1, p2, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    .line 92
    invoke-interface {p4}, Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;->onSaved()V

    :cond_3
    :goto_1
    return-void
.end method
