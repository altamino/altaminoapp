.class Lcom/github/mmin18/widget/FlexLayout$Ref;
.super Ljava/lang/Object;
.source "FlexLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mmin18/widget/FlexLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Ref"
.end annotation


# static fields
.field public static final PROP_BOTTOM:I = 0x3

.field public static final PROP_CENTER_X:I = 0x4

.field public static final PROP_CENTER_Y:I = 0x5

.field public static final PROP_GONE:I = 0xb

.field public static final PROP_HEIGHT:I = 0x7

.field public static final PROP_LEFT:I = 0x0

.field public static final PROP_RIGHT:I = 0x2

.field public static final PROP_TAG:I = 0xf

.field public static final PROP_TOP:I = 0x1

.field public static final PROP_VISIBLE:I = 0xa

.field public static final PROP_WIDTH:I = 0x6

.field public static final TARGET_NEXT:I = 0x2

.field public static final TARGET_PARENT:I = 0x3

.field public static final TARGET_PREV:I = 0x1

.field public static final TARGET_SCREEN:I = 0x4

.field public static final TARGET_THIS:I


# instance fields
.field public final property:I

.field public final target:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1148
    iput p1, p0, Lcom/github/mmin18/widget/FlexLayout$Ref;->target:I

    .line 1149
    iput p2, p0, Lcom/github/mmin18/widget/FlexLayout$Ref;->property:I

    return-void
.end method


# virtual methods
.method public eval(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    .line 1219
    iget v4, v0, Lcom/github/mmin18/widget/FlexLayout$Ref;->target:I

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-nez v4, :cond_1

    .line 1220
    invoke-virtual/range {p1 .. p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :cond_0
    :goto_0
    move-object v12, v1

    goto/16 :goto_9

    :cond_1
    if-ne v4, v11, :cond_3

    if-lez v2, :cond_2

    sub-int/2addr v2, v11

    .line 1222
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_9

    :cond_3
    if-ne v4, v10, :cond_4

    .line 1224
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v11

    if-ge v2, v3, :cond_2

    add-int/2addr v2, v11

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v2, ""

    const-string v13, ")"

    const-string v14, " ("

    if-ne v4, v9, :cond_b

    .line 1226
    iget v4, v0, Lcom/github/mmin18/widget/FlexLayout$Ref;->property:I

    const/4 v12, -0x1

    if-ne v4, v7, :cond_6

    .line 1227
    iget v1, v1, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    if-ne v1, v12, :cond_5

    return v5

    :cond_5
    int-to-float v1, v1

    return v1

    :cond_6
    if-ne v4, v6, :cond_8

    .line 1233
    iget v1, v1, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    if-ne v1, v12, :cond_7

    return v5

    :cond_7
    int-to-float v1, v1

    return v1

    :cond_8
    if-eqz v4, :cond_9

    if-eq v4, v11, :cond_9

    if-eq v4, v10, :cond_9

    if-eq v4, v9, :cond_9

    if-eq v4, v8, :cond_9

    const/4 v12, 0x5

    if-ne v4, v12, :cond_0

    .line 1239
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/github/mmin18/widget/FlexLayout$Ref;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_a

    goto :goto_1

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    if-ne v4, v8, :cond_f

    .line 1244
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1245
    iget v4, v0, Lcom/github/mmin18/widget/FlexLayout$Ref;->property:I

    if-ne v4, v7, :cond_c

    .line 1246
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    return v1

    :cond_c
    if-ne v4, v6, :cond_d

    .line 1248
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    return v1

    .line 1250
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/github/mmin18/widget/FlexLayout$Ref;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_e

    goto :goto_2

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1253
    :cond_f
    invoke-static {v4}, Lcom/github/mmin18/widget/FlexLayout;->isEditModeId(I)Z

    move-result v4

    const/4 v15, 0x0

    if-eqz v4, :cond_14

    .line 1254
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    :goto_3
    if-ge v15, v4, :cond_11

    .line 1255
    invoke-virtual {v1, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1256
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    instance-of v12, v12, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    if-eqz v12, :cond_10

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    iget v12, v12, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->editModeId:I

    iget v5, v0, Lcom/github/mmin18/widget/FlexLayout$Ref;->target:I

    if-ne v12, v5, :cond_10

    goto :goto_4

    :cond_10
    add-int/lit8 v15, v15, 0x1

    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_3

    :cond_11
    const/16 v16, 0x0

    :goto_4
    if-nez v16, :cond_13

    .line 1262
    iget v1, v0, Lcom/github/mmin18/widget/FlexLayout$Ref;->target:I

    invoke-static {v1}, Lcom/github/mmin18/widget/FlexLayout;->getEditModeIdName(I)Ljava/lang/String;

    move-result-object v1

    .line 1263
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_12

    goto :goto_5

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_13
    move-object/from16 v12, v16

    goto :goto_9

    .line 1266
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    :goto_6
    if-ge v15, v4, :cond_16

    .line 1267
    invoke-virtual {v1, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1268
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v12

    iget v6, v0, Lcom/github/mmin18/widget/FlexLayout$Ref;->target:I

    if-ne v12, v6, :cond_15

    goto :goto_7

    :cond_15
    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x7

    goto :goto_6

    :cond_16
    const/4 v5, 0x0

    :goto_7
    if-nez v5, :cond_19

    .line 1274
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v4, v0, Lcom/github/mmin18/widget/FlexLayout$Ref;->target:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 1275
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_17

    const-string/jumbo v1, "view"

    :cond_17
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_18

    goto :goto_8

    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_19
    move-object v12, v5

    :goto_9
    const/4 v1, 0x0

    if-nez v12, :cond_1a

    return v1

    .line 1282
    :cond_1a
    iget v2, v0, Lcom/github/mmin18/widget/FlexLayout$Ref;->property:I

    if-nez v2, :cond_1b

    .line 1283
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    .line 1284
    invoke-virtual {v1}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getLeft()F

    move-result v1

    return v1

    :cond_1b
    if-ne v2, v11, :cond_1c

    .line 1286
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    .line 1287
    invoke-virtual {v1}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getTop()F

    move-result v1

    return v1

    :cond_1c
    if-ne v2, v10, :cond_1d

    .line 1289
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    .line 1290
    invoke-virtual {v1}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getRight()F

    move-result v1

    return v1

    :cond_1d
    if-ne v2, v9, :cond_1e

    .line 1292
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    .line 1293
    invoke-virtual {v1}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getBottom()F

    move-result v1

    return v1

    :cond_1e
    if-ne v2, v8, :cond_1f

    .line 1295
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    .line 1296
    invoke-virtual {v1}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getCenterX()F

    move-result v1

    return v1

    :cond_1f
    const/4 v3, 0x5

    if-ne v2, v3, :cond_20

    .line 1298
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    .line 1299
    invoke-virtual {v1}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getCenterY()F

    move-result v1

    return v1

    :cond_20
    if-ne v2, v7, :cond_21

    .line 1301
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    .line 1302
    invoke-virtual {v1}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getWidth()F

    move-result v1

    return v1

    :cond_21
    const/4 v3, 0x7

    if-ne v2, v3, :cond_22

    .line 1304
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    .line 1305
    invoke-virtual {v1}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getHeight()F

    move-result v1

    return v1

    :cond_22
    const/16 v3, 0xa

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v2, v3, :cond_24

    .line 1307
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_23

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_23
    return v1

    :cond_24
    const/16 v3, 0xb

    if-ne v2, v3, :cond_26

    .line 1309
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_25

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_25
    return v1

    :cond_26
    const/16 v3, 0xf

    if-ne v2, v3, :cond_29

    .line 1311
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 1312
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_27

    .line 1313
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v1

    return v1

    .line 1314
    :cond_27
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_28

    .line 1315
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_28

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_28
    return v1

    :cond_29
    const/high16 v1, 0x7fc00000    # Float.NaN

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1155
    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$Ref;->target:I

    const-string v2, "?"

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 1172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "screen"

    .line 1169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "parent"

    .line 1166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "next"

    .line 1163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "prev"

    .line 1160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "this"

    .line 1157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x2e

    .line 1175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1176
    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$Ref;->property:I

    const/16 v3, 0xa

    if-eq v1, v3, :cond_7

    const/16 v3, 0xb

    if-eq v1, v3, :cond_6

    const/16 v3, 0xf

    if-eq v1, v3, :cond_5

    packed-switch v1, :pswitch_data_0

    .line 1211
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    const-string v1, "height"

    .line 1199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string/jumbo v1, "width"

    .line 1196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string v1, "centerY"

    .line 1193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string v1, "centerX"

    .line 1190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const-string v1, "bottom"

    .line 1187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    const-string/jumbo v1, "right"

    .line 1184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_6
    const-string/jumbo v1, "top"

    .line 1181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_7
    const-string v1, "left"

    .line 1178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "tag"

    .line 1208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string v1, "gone"

    .line 1205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const-string/jumbo v1, "visible"

    .line 1202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
