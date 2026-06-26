.class public Lcom/narvii/amino/page/PageSecondLevelLayout;
.super Landroid/widget/FrameLayout;
.source "PageSecondLevelLayout.java"


# static fields
.field private static final COUNT_COLUMN:I = 0x3

.field private static final DIVIDER_WIDTH:F = 1.0f


# instance fields
.field private backgoundColor:I

.field private chatChildView:Landroid/view/View;

.field clickListener:Lcom/narvii/amino/page/PageItemClickListener;

.field gridLayout:Landroid/widget/GridLayout;

.field private height:I

.field inflater:Landroid/view/LayoutInflater;

.field pageItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/modulization/page/Page;",
            ">;"
        }
    .end annotation
.end field

.field private paint:Landroid/graphics/Paint;

.field private rowCount:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/page/PageSecondLevelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->inflater:Landroid/view/LayoutInflater;

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->paint:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0600d5

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->backgoundColor:I

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v1, v2, :cond_0

    .line 82
    iget v5, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->width:I

    mul-int v5, v5, v1

    div-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v6

    div-float/2addr v6, v3

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 83
    iget v6, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->width:I

    mul-int v6, v6, v1

    div-int/2addr v6, v2

    int-to-float v2, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v7, v5

    const/4 v8, 0x0

    int-to-float v9, v2

    .line 84
    iget v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->height:I

    int-to-float v10, v2

    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_0
    :goto_1
    iget v1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->rowCount:I

    if-ge v0, v1, :cond_1

    .line 88
    iget v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->height:I

    mul-int v2, v2, v0

    div-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 89
    iget v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->height:I

    mul-int v2, v2, v0

    iget v5, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->rowCount:I

    div-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v5

    div-float/2addr v5, v3

    add-float/2addr v2, v5

    float-to-int v2, v2

    const/4 v6, 0x0

    int-to-float v7, v1

    .line 90
    iget v1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->width:I

    int-to-float v8, v1

    int-to-float v9, v2

    sget-object v10, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->backgoundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 93
    iget v0, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->width:I

    int-to-float v5, v0

    iget v0, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->height:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 95
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getChatChildView()Landroid/view/View;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->chatChildView:Landroid/view/View;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 66
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0904e3

    .line 67
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->gridLayout:Landroid/widget/GridLayout;

    .line 68
    iget-object v0, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->gridLayout:Landroid/widget/GridLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 74
    iput p1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->width:I

    .line 75
    iput p2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->height:I

    return-void
.end method

.method public setPageItemClickListener(Lcom/narvii/amino/page/PageItemClickListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->clickListener:Lcom/narvii/amino/page/PageItemClickListener;

    return-void
.end method

.method public setPageItems(Lcom/narvii/app/NVContext;Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "Lcom/narvii/modulization/page/Page;",
            ">;I)V"
        }
    .end annotation

    .line 108
    iput-object p2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->pageItems:Ljava/util/List;

    const/4 p2, 0x0

    .line 109
    iput-object p2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->chatChildView:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->pageItems:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 115
    div-int/lit8 v1, v0, 0x3

    rem-int/lit8 v2, v0, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    add-int/2addr v1, v2

    .line 117
    :goto_1
    iget-object v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->gridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v2}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    if-le v2, v0, :cond_2

    .line 118
    iget-object v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->gridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v2}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v2, v5}, Landroid/widget/GridLayout;->removeViewAt(I)V

    goto :goto_1

    .line 121
    :cond_2
    iget-object v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->gridLayout:Landroid/widget/GridLayout;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 122
    iput v1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->rowCount:I

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->gridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v2, v1}, Landroid/widget/GridLayout;->setRowCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_8

    .line 129
    iget-object v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->gridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v2}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    if-le v2, v1, :cond_3

    iget-object v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->gridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v2, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, p2

    :goto_3
    if-nez v2, :cond_4

    .line 131
    iget-object v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b040f

    iget-object v5, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->gridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v2, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 132
    iget-object v3, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->gridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 135
    :cond_4
    iget-object v3, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->pageItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/modulization/page/Page;

    const v5, 0x7f090814

    .line 137
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 138
    invoke-virtual {v3, p1}, Lcom/narvii/modulization/page/Page;->getIconBackgroundDrawable(Lcom/narvii/app/NVContext;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/narvii/modulization/page/Page;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x7f090815

    .line 141
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 142
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/narvii/modulization/page/Page;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f090813

    .line 144
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 145
    invoke-virtual {v3}, Lcom/narvii/modulization/page/Page;->isMyChatPage()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 146
    iput-object v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->chatChildView:Landroid/view/View;

    .line 148
    :cond_5
    invoke-virtual {v3}, Lcom/narvii/modulization/page/Page;->isMyChatPage()Z

    move-result v6

    if-eqz v6, :cond_6

    if-lez p3, :cond_6

    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    const/16 v6, 0x8

    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v6, 0x9

    if-le p3, v6, :cond_7

    const-string v6, "9+"

    goto :goto_5

    .line 149
    :cond_7
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 152
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07012c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x2

    .line 153
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 158
    new-instance v5, Lcom/narvii/amino/page/PageSecondLevelLayout$1;

    invoke-direct {v5, p0, v1, v3}, Lcom/narvii/amino/page/PageSecondLevelLayout$1;-><init>(Lcom/narvii/amino/page/PageSecondLevelLayout;ILcom/narvii/modulization/page/Page;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 167
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
