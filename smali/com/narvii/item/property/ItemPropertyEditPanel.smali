.class public Lcom/narvii/item/property/ItemPropertyEditPanel;
.super Landroid/widget/LinearLayout;
.source "ItemPropertyEditPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Ljava/lang/Runnable;


# static fields
.field static final DELAY:I = 0x78


# instance fields
.field private dateListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field frame:Landroid/view/View;

.field keyboardShown:Z

.field prevViewHeight:I

.field private ratingCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field root:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    new-instance p1, Lcom/narvii/item/property/ItemPropertyEditPanel$1;

    invoke-direct {p1, p0}, Lcom/narvii/item/property/ItemPropertyEditPanel$1;-><init>(Lcom/narvii/item/property/ItemPropertyEditPanel;)V

    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->ratingCallback:Lcom/narvii/util/Callback;

    .line 167
    new-instance p1, Lcom/narvii/item/property/ItemPropertyEditPanel$2;

    invoke-direct {p1, p0}, Lcom/narvii/item/property/ItemPropertyEditPanel$2;-><init>(Lcom/narvii/item/property/ItemPropertyEditPanel;)V

    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->dateListener:Landroid/widget/DatePicker$OnDateChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/item/property/ItemPropertyEditPanel;)Lcom/narvii/item/property/ItemPropertyEditor;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/narvii/item/property/ItemPropertyEditPanel;->getFocusedEditor()Lcom/narvii/item/property/ItemPropertyEditor;

    move-result-object p0

    return-object p0
.end method

.method private getFocusedEditor()Lcom/narvii/item/property/ItemPropertyEditor;
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->root:Landroid/view/View;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 239
    instance-of v2, v0, Lcom/narvii/item/property/ItemPropertyEditor;

    if-eqz v2, :cond_0

    .line 240
    check-cast v0, Lcom/narvii/item/property/ItemPropertyEditor;

    return-object v0

    .line 242
    :cond_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 243
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private hideKeyboard()V
    .locals 1

    .line 149
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    return-void
.end method

.method private showKeyboard(Landroid/widget/EditText;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->frame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .line 62
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->frame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 120
    invoke-direct {p0}, Lcom/narvii/item/property/ItemPropertyEditPanel;->getFocusedEditor()Lcom/narvii/item/property/ItemPropertyEditor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090898

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "text"

    .line 124
    invoke-virtual {v0, v1}, Lcom/narvii/item/property/ItemPropertyEditor;->setType(Ljava/lang/String;)V

    .line 125
    iget-object v1, v0, Lcom/narvii/item/property/ItemPropertyEditor;->edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 126
    iget-object v1, v0, Lcom/narvii/item/property/ItemPropertyEditor;->edit:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/narvii/item/property/ItemPropertyEditPanel;->showKeyboard(Landroid/widget/EditText;)V

    .line 128
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090897

    if-ne v1, v2, :cond_2

    const-string v1, "date"

    .line 129
    invoke-virtual {v0, v1}, Lcom/narvii/item/property/ItemPropertyEditor;->setType(Ljava/lang/String;)V

    .line 130
    iget-object v1, v0, Lcom/narvii/item/property/ItemPropertyEditor;->date:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 132
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f09089b

    if-ne v1, v2, :cond_3

    const-string v1, "levelStar"

    .line 133
    invoke-virtual {v0, v1}, Lcom/narvii/item/property/ItemPropertyEditor;->setType(Ljava/lang/String;)V

    .line 134
    iget-object v1, v0, Lcom/narvii/item/property/ItemPropertyEditor;->rating:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 136
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f09089a

    if-ne v1, v2, :cond_4

    const-string v1, "levelHeart"

    .line 137
    invoke-virtual {v0, v1}, Lcom/narvii/item/property/ItemPropertyEditor;->setType(Ljava/lang/String;)V

    .line 138
    iget-object v1, v0, Lcom/narvii/item/property/ItemPropertyEditor;->rating:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 140
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090899

    if-ne p1, v1, :cond_5

    const-string p1, "levelCost"

    .line 141
    invoke-virtual {v0, p1}, Lcom/narvii/item/property/ItemPropertyEditor;->setType(Ljava/lang/String;)V

    .line 142
    iget-object p1, v0, Lcom/narvii/item/property/ItemPropertyEditor;->rating:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 144
    :cond_5
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x78

    .line 145
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 43
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090899

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09089a

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09089b

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090897

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090898

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090896

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/FontAwesomeRatingBar;

    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->ratingCallback:Lcom/narvii/util/Callback;

    iput-object v1, v0, Lcom/narvii/widget/FontAwesomeRatingBar;->touchCallback:Lcom/narvii/util/Callback;

    const v0, 0x7f090895

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/FontAwesomeRatingBar;

    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->ratingCallback:Lcom/narvii/util/Callback;

    iput-object v1, v0, Lcom/narvii/widget/FontAwesomeRatingBar;->touchCallback:Lcom/narvii/util/Callback;

    const v0, 0x7f090894

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/FontAwesomeRatingBar;

    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->ratingCallback:Lcom/narvii/util/Callback;

    iput-object v1, v0, Lcom/narvii/widget/FontAwesomeRatingBar;->touchCallback:Lcom/narvii/util/Callback;

    const v0, 0x7f090893

    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->frame:Landroid/view/View;

    return-void
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    :goto_0
    const/16 v1, 0x8

    const v2, 0x7f0905ed

    const v3, 0x7f0905ee

    if-ne p1, v3, :cond_1

    .line 73
    instance-of v4, p2, Landroid/widget/EditText;

    if-eqz v4, :cond_1

    .line 74
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->frame:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    if-ne p1, v2, :cond_2

    .line 75
    instance-of p1, p2, Landroid/widget/EditText;

    if-eqz p1, :cond_2

    .line 76
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->frame:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    if-nez p2, :cond_3

    goto :goto_2

    .line 79
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    :goto_2
    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_5

    .line 81
    :cond_4
    invoke-direct {p0}, Lcom/narvii/item/property/ItemPropertyEditPanel;->hideKeyboard()V

    .line 83
    :cond_5
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x78

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    .line 89
    iget v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->prevViewHeight:I

    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->root:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->prevViewHeight:I

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->root:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 95
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->root:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 98
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    if-le v1, v3, :cond_0

    .line 100
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->frame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->keyboardShown:Z

    .line 102
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->frame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->keyboardShown:Z

    .line 107
    :goto_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x78

    .line 108
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 57
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public run()V
    .locals 14

    .line 184
    invoke-direct {p0}, Lcom/narvii/item/property/ItemPropertyEditPanel;->getFocusedEditor()Lcom/narvii/item/property/ItemPropertyEditor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 186
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    :goto_1
    const v3, 0x7f0905f2

    const/16 v4, 0x8

    if-ne v1, v3, :cond_3

    .line 188
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->frame:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-boolean v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->keyboardShown:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_3
    const v3, 0x7f0905ed

    if-ne v1, v3, :cond_4

    .line 191
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->frame:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 192
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_4
    const v3, 0x7f0905ee

    if-ne v1, v3, :cond_5

    .line 194
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->frame:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 197
    :cond_5
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    const/4 v1, 0x4

    const/4 v3, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v0, :cond_6

    const/4 v8, 0x0

    goto :goto_4

    .line 202
    :cond_6
    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditor;->getType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "levelCost"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    goto :goto_4

    .line 204
    :cond_7
    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditor;->getType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "levelHeart"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x2

    goto :goto_4

    .line 206
    :cond_8
    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditor;->getType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "levelStar"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x3

    goto :goto_4

    .line 208
    :cond_9
    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditor;->getType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "date"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x4

    goto :goto_4

    :cond_a
    const/4 v8, 0x5

    :goto_4
    const v9, 0x7f090899

    .line 213
    invoke-virtual {p0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060118

    const v12, 0x7f060119

    if-ne v8, v7, :cond_b

    const v13, 0x7f060118

    goto :goto_5

    :cond_b
    const v13, 0x7f060119

    :goto_5
    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v9, 0x7f09089a

    .line 214
    invoke-virtual {p0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-ne v8, v6, :cond_c

    const v13, 0x7f060118

    goto :goto_6

    :cond_c
    const v13, 0x7f060119

    :goto_6
    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v9, 0x7f09089b

    .line 215
    invoke-virtual {p0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-ne v8, v5, :cond_d

    const v13, 0x7f060118

    goto :goto_7

    :cond_d
    const v13, 0x7f060119

    :goto_7
    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v9, 0x7f090897

    .line 216
    invoke-virtual {p0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-ne v8, v1, :cond_e

    const v13, 0x7f060118

    goto :goto_8

    :cond_e
    const v13, 0x7f060119

    :goto_8
    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v9, 0x7f090898

    .line 217
    invoke-virtual {p0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-ne v8, v3, :cond_f

    goto :goto_9

    :cond_f
    const v11, 0x7f060119

    :goto_9
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v9, 0x7f090896

    .line 219
    invoke-virtual {p0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/narvii/widget/FontAwesomeRatingBar;

    if-nez v0, :cond_10

    const/4 v11, 0x0

    goto :goto_a

    :cond_10
    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditor;->getRating()I

    move-result v11

    :goto_a
    invoke-virtual {v10, v11}, Lcom/narvii/widget/FontAwesomeRatingBar;->setRating(I)V

    .line 220
    invoke-virtual {p0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/narvii/widget/FontAwesomeRatingBar;

    if-ne v8, v5, :cond_11

    const/4 v5, 0x0

    goto :goto_b

    :cond_11
    const/16 v5, 0x8

    :goto_b
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v5, 0x7f090895

    .line 221
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/narvii/widget/FontAwesomeRatingBar;

    if-nez v0, :cond_12

    const/4 v10, 0x0

    goto :goto_c

    :cond_12
    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditor;->getRating()I

    move-result v10

    :goto_c
    invoke-virtual {v9, v10}, Lcom/narvii/widget/FontAwesomeRatingBar;->setRating(I)V

    .line 222
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/widget/FontAwesomeRatingBar;

    if-ne v8, v6, :cond_13

    const/4 v9, 0x0

    goto :goto_d

    :cond_13
    const/16 v9, 0x8

    :goto_d
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v5, 0x7f090894

    .line 223
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/narvii/widget/FontAwesomeRatingBar;

    if-nez v0, :cond_14

    const/4 v10, 0x0

    goto :goto_e

    :cond_14
    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditor;->getRating()I

    move-result v10

    :goto_e
    invoke-virtual {v9, v10}, Lcom/narvii/widget/FontAwesomeRatingBar;->setRating(I)V

    .line 224
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/widget/FontAwesomeRatingBar;

    if-ne v8, v7, :cond_15

    const/4 v9, 0x0

    goto :goto_f

    :cond_15
    const/16 v9, 0x8

    :goto_f
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    if-eqz v0, :cond_16

    .line 226
    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditor;->getDate()Ljava/util/Date;

    move-result-object v9

    if-eqz v9, :cond_16

    .line 227
    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditor;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 229
    :cond_16
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 230
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 231
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const v5, 0x7f090892

    .line 232
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/DatePicker;

    iget-object v9, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->dateListener:Landroid/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {v7, v0, v6, v3, v9}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 233
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DatePicker;

    if-ne v8, v1, :cond_17

    goto :goto_10

    :cond_17
    const/16 v2, 0x8

    :goto_10
    invoke-virtual {v0, v2}, Landroid/widget/DatePicker;->setVisibility(I)V

    return-void
.end method

.method public setup(Landroid/view/View;)V
    .locals 1

    .line 113
    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->root:Landroid/view/View;

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method
