.class public Lcom/narvii/item/property/ItemPropertyEditPanel;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/item/property/ItemPropertyEditPanel$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/item/property/ItemPropertyEditPanel$1;-><init>(Lcom/narvii/item/property/ItemPropertyEditPanel;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->ratingCallback:Lcom/narvii/util/Callback;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/item/property/ItemPropertyEditPanel$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/item/property/ItemPropertyEditPanel$2;-><init>(Lcom/narvii/item/property/ItemPropertyEditPanel;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->dateListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 18
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/item/property/ItemPropertyEditPanel;)Lcom/narvii/item/property/ItemPropertyEditor;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/item/property/ItemPropertyEditPanel;->getFocusedEditor()Lcom/narvii/item/property/ItemPropertyEditor;

    move-result-object p0

    return-object p0
.end method

.method private getFocusedEditor()Lcom/narvii/item/property/ItemPropertyEditor;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->root:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    const/4 v2, 0x6

    .line 5
    .line 6
    if-ge v1, v2, :cond_2

    .line 7
    .line 8
    instance-of v2, v0, Lcom/narvii/item/property/ItemPropertyEditor;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/item/property/ItemPropertyEditor;

    .line 13
    return-object v0

    .line 14
    .line 15
    :cond_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    check-cast v0, Landroid/view/ViewGroup;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/4 v0, 0x0

    .line 28
    return-object v0
.end method

.method private hideKeyboard()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 8
    return-void
.end method

.method private showKeyboard(Landroid/widget/EditText;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->frame:Landroid/view/View;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 11
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->frame:Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/item/property/ItemPropertyEditPanel;->getFocusedEditor()Lcom/narvii/item/property/ItemPropertyEditor;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    const v2, 0x7f0a0b55

    .line 15
    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    const-string v1, "text"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/item/property/ItemPropertyEditor;->setType(Ljava/lang/String;)V

    .line 22
    .line 23
    iget-object v1, v0, Lcom/narvii/item/property/ItemPropertyEditor;->edit:Landroid/widget/EditText;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 27
    .line 28
    iget-object v1, v0, Lcom/narvii/item/property/ItemPropertyEditor;->edit:Landroid/widget/EditText;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v1}, Lcom/narvii/item/property/ItemPropertyEditPanel;->showKeyboard(Landroid/widget/EditText;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 35
    move-result v1

    .line 36
    .line 37
    .line 38
    const v2, 0x7f0a0b54

    .line 39
    .line 40
    if-ne v1, v2, :cond_2

    .line 41
    .line 42
    const-string v1, "date"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/narvii/item/property/ItemPropertyEditor;->setType(Ljava/lang/String;)V

    .line 46
    .line 47
    iget-object v1, v0, Lcom/narvii/item/property/ItemPropertyEditor;->date:Landroid/widget/TextView;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 54
    move-result v1

    .line 55
    .line 56
    .line 57
    const v2, 0x7f0a0b58

    .line 58
    .line 59
    if-ne v1, v2, :cond_3

    .line 60
    .line 61
    const-string v1, "levelStar"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/narvii/item/property/ItemPropertyEditor;->setType(Ljava/lang/String;)V

    .line 65
    .line 66
    iget-object v1, v0, Lcom/narvii/item/property/ItemPropertyEditor;->rating:Landroid/view/View;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 73
    move-result v1

    .line 74
    .line 75
    .line 76
    const v2, 0x7f0a0b57

    .line 77
    .line 78
    if-ne v1, v2, :cond_4

    .line 79
    .line 80
    const-string v1, "levelHeart"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/narvii/item/property/ItemPropertyEditor;->setType(Ljava/lang/String;)V

    .line 84
    .line 85
    iget-object v1, v0, Lcom/narvii/item/property/ItemPropertyEditor;->rating:Landroid/view/View;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 92
    move-result p1

    .line 93
    .line 94
    .line 95
    const v1, 0x7f0a0b56

    .line 96
    .line 97
    if-ne p1, v1, :cond_5

    .line 98
    .line 99
    const-string p1, "levelCost"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Lcom/narvii/item/property/ItemPropertyEditor;->setType(Ljava/lang/String;)V

    .line 103
    .line 104
    iget-object p1, v0, Lcom/narvii/item/property/ItemPropertyEditor;->rating:Landroid/view/View;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 108
    .line 109
    :cond_5
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    .line 114
    const-wide/16 v0, 0x78

    .line 115
    .line 116
    .line 117
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 118
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0b56

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0a0b57

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a0b58

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    const v0, 0x7f0a0b54

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    const v0, 0x7f0a0b55

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    const v0, 0x7f0a0b53

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    check-cast v0, Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->ratingCallback:Lcom/narvii/util/Callback;

    .line 65
    .line 66
    iput-object v1, v0, Lcom/narvii/widget/FontAwesomeRatingBar;->touchCallback:Lcom/narvii/util/Callback;

    .line 67
    .line 68
    .line 69
    const v0, 0x7f0a0b52

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    check-cast v0, Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->ratingCallback:Lcom/narvii/util/Callback;

    .line 78
    .line 79
    iput-object v1, v0, Lcom/narvii/widget/FontAwesomeRatingBar;->touchCallback:Lcom/narvii/util/Callback;

    .line 80
    .line 81
    .line 82
    const v0, 0x7f0a0b51

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    check-cast v0, Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->ratingCallback:Lcom/narvii/util/Callback;

    .line 91
    .line 92
    iput-object v1, v0, Lcom/narvii/widget/FontAwesomeRatingBar;->touchCallback:Lcom/narvii/util/Callback;

    .line 93
    .line 94
    .line 95
    const v0, 0x7f0a0b50

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    iput-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->frame:Landroid/view/View;

    .line 102
    return-void
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    move p1, v0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 9
    move-result p1

    .line 10
    .line 11
    .line 12
    :goto_0
    const v1, 0x7f0a076d

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    .line 17
    const v3, 0x7f0a076e

    .line 18
    .line 19
    if-ne p1, v3, :cond_1

    .line 20
    .line 21
    instance-of v4, p2, Landroid/widget/EditText;

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->frame:Landroid/view/View;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_1
    if-ne p1, v1, :cond_2

    .line 32
    .line 33
    instance-of p1, p2, Landroid/widget/EditText;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->frame:Landroid/view/View;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    :cond_2
    :goto_1
    if-nez p2, :cond_3

    .line 43
    goto :goto_2

    .line 44
    .line 45
    .line 46
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 47
    move-result v0

    .line 48
    .line 49
    :goto_2
    if-eq v0, v3, :cond_4

    .line 50
    .line 51
    if-ne v0, v1, :cond_5

    .line 52
    .line 53
    .line 54
    :cond_4
    invoke-direct {p0}, Lcom/narvii/item/property/ItemPropertyEditPanel;->hideKeyboard()V

    .line 55
    .line 56
    :cond_5
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    const-wide/16 v0, 0x78

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->prevViewHeight:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->root:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->root:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 16
    move-result v0

    .line 17
    .line 18
    iput v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->prevViewHeight:I

    .line 19
    .line 20
    new-instance v0, Landroid/graphics/Rect;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->root:Landroid/view/View;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->root:Landroid/view/View;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 38
    move-result v1

    .line 39
    .line 40
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 41
    sub-int/2addr v1, v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    check-cast v2, Landroid/app/Activity;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    .line 59
    move-result v3

    .line 60
    .line 61
    div-int/lit8 v3, v3, 0x4

    .line 62
    .line 63
    if-le v1, v3, :cond_0

    .line 64
    .line 65
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->frame:Landroid/view/View;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    .line 73
    move-result v2

    .line 74
    .line 75
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 76
    sub-int/2addr v2, v0

    .line 77
    .line 78
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 79
    const/4 v0, 0x1

    .line 80
    .line 81
    iput-boolean v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->keyboardShown:Z

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->frame:Landroid/view/View;

    .line 84
    .line 85
    const/16 v1, 0x8

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    const/4 v0, 0x0

    .line 91
    .line 92
    iput-boolean v0, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->keyboardShown:Z

    .line 93
    .line 94
    :goto_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    .line 99
    const-wide/16 v0, 0x78

    .line 100
    .line 101
    .line 102
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 103
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public run()V
    .locals 14

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/item/property/ItemPropertyEditPanel;->getFocusedEditor()Lcom/narvii/item/property/ItemPropertyEditor;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v1, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 12
    move-result-object v1

    .line 13
    :goto_0
    const/4 v2, 0x0

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    move v1, v2

    .line 17
    goto :goto_1

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    :goto_1
    const v3, 0x7f0a0772

    .line 25
    .line 26
    const/16 v4, 0x8

    .line 27
    .line 28
    if-ne v1, v3, :cond_3

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->frame:Landroid/view/View;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->keyboardShown:Z

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    move v1, v2

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move v1, v4

    .line 41
    .line 42
    .line 43
    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    goto :goto_3

    .line 45
    .line 46
    .line 47
    :cond_3
    const v3, 0x7f0a076d

    .line 48
    .line 49
    if-ne v1, v3, :cond_4

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->frame:Landroid/view/View;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    goto :goto_3

    .line 59
    .line 60
    .line 61
    :cond_4
    const v3, 0x7f0a076e

    .line 62
    .line 63
    if-ne v1, v3, :cond_5

    .line 64
    .line 65
    iget-object v1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->frame:Landroid/view/View;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    goto :goto_3

    .line 73
    .line 74
    .line 75
    :cond_5
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :goto_3
    const/4 v1, 0x5

    .line 77
    const/4 v3, 0x4

    .line 78
    const/4 v5, 0x3

    .line 79
    const/4 v6, 0x2

    .line 80
    const/4 v7, 0x1

    .line 81
    .line 82
    if-nez v0, :cond_6

    .line 83
    move v8, v2

    .line 84
    goto :goto_4

    .line 85
    .line 86
    :cond_6
    const-string v8, "levelCost"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditor;->getType()Ljava/lang/String;

    .line 90
    move-result-object v9

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v8

    .line 95
    .line 96
    if-eqz v8, :cond_7

    .line 97
    move v8, v7

    .line 98
    goto :goto_4

    .line 99
    .line 100
    :cond_7
    const-string v8, "levelHeart"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditor;->getType()Ljava/lang/String;

    .line 104
    move-result-object v9

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v8

    .line 109
    .line 110
    if-eqz v8, :cond_8

    .line 111
    move v8, v6

    .line 112
    goto :goto_4

    .line 113
    .line 114
    :cond_8
    const-string v8, "levelStar"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditor;->getType()Ljava/lang/String;

    .line 118
    move-result-object v9

    .line 119
    .line 120
    .line 121
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result v8

    .line 123
    .line 124
    if-eqz v8, :cond_9

    .line 125
    move v8, v5

    .line 126
    goto :goto_4

    .line 127
    .line 128
    :cond_9
    const-string v8, "date"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditor;->getType()Ljava/lang/String;

    .line 132
    move-result-object v9

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result v8

    .line 137
    .line 138
    if-eqz v8, :cond_a

    .line 139
    move v8, v3

    .line 140
    goto :goto_4

    .line 141
    :cond_a
    move v8, v1

    .line 142
    .line 143
    .line 144
    :goto_4
    const v9, 0x7f0a0b56

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    move-result-object v9

    .line 149
    .line 150
    check-cast v9, Landroid/widget/TextView;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 154
    move-result-object v10

    .line 155
    .line 156
    .line 157
    const v11, 0x7f06016d

    .line 158
    .line 159
    .line 160
    const v12, 0x7f06016c

    .line 161
    .line 162
    if-ne v8, v7, :cond_b

    .line 163
    move v13, v12

    .line 164
    goto :goto_5

    .line 165
    :cond_b
    move v13, v11

    .line 166
    .line 167
    .line 168
    :goto_5
    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 169
    move-result-object v10

    .line 170
    .line 171
    .line 172
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 173
    .line 174
    .line 175
    const v9, 0x7f0a0b57

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    move-result-object v9

    .line 180
    .line 181
    check-cast v9, Landroid/widget/TextView;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 185
    move-result-object v10

    .line 186
    .line 187
    if-ne v8, v6, :cond_c

    .line 188
    move v13, v12

    .line 189
    goto :goto_6

    .line 190
    :cond_c
    move v13, v11

    .line 191
    .line 192
    .line 193
    :goto_6
    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 194
    move-result-object v10

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 198
    .line 199
    .line 200
    const v9, 0x7f0a0b58

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 204
    move-result-object v9

    .line 205
    .line 206
    check-cast v9, Landroid/widget/TextView;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 210
    move-result-object v10

    .line 211
    .line 212
    if-ne v8, v5, :cond_d

    .line 213
    move v13, v12

    .line 214
    goto :goto_7

    .line 215
    :cond_d
    move v13, v11

    .line 216
    .line 217
    .line 218
    :goto_7
    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 219
    move-result-object v10

    .line 220
    .line 221
    .line 222
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 223
    .line 224
    .line 225
    const v9, 0x7f0a0b54

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 229
    move-result-object v9

    .line 230
    .line 231
    check-cast v9, Landroid/widget/TextView;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 235
    move-result-object v10

    .line 236
    .line 237
    if-ne v8, v3, :cond_e

    .line 238
    move v13, v12

    .line 239
    goto :goto_8

    .line 240
    :cond_e
    move v13, v11

    .line 241
    .line 242
    .line 243
    :goto_8
    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 244
    move-result-object v10

    .line 245
    .line 246
    .line 247
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 248
    .line 249
    .line 250
    const v9, 0x7f0a0b55

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 254
    move-result-object v9

    .line 255
    .line 256
    check-cast v9, Landroid/widget/TextView;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 260
    move-result-object v10

    .line 261
    .line 262
    if-ne v8, v1, :cond_f

    .line 263
    move v11, v12

    .line 264
    .line 265
    .line 266
    :cond_f
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 267
    move-result-object v10

    .line 268
    .line 269
    .line 270
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 271
    .line 272
    .line 273
    const v9, 0x7f0a0b53

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 277
    move-result-object v10

    .line 278
    .line 279
    check-cast v10, Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 280
    .line 281
    if-nez v0, :cond_10

    .line 282
    move v11, v2

    .line 283
    goto :goto_9

    .line 284
    .line 285
    .line 286
    :cond_10
    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditor;->getRating()I

    .line 287
    move-result v11

    .line 288
    .line 289
    .line 290
    :goto_9
    invoke-virtual {v10, v11}, Lcom/narvii/widget/FontAwesomeRatingBar;->setRating(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 294
    move-result-object v9

    .line 295
    .line 296
    check-cast v9, Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 297
    .line 298
    if-ne v8, v5, :cond_11

    .line 299
    move v5, v2

    .line 300
    goto :goto_a

    .line 301
    :cond_11
    move v5, v4

    .line 302
    .line 303
    .line 304
    :goto_a
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 305
    .line 306
    .line 307
    const v5, 0x7f0a0b52

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 311
    move-result-object v9

    .line 312
    .line 313
    check-cast v9, Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 314
    .line 315
    if-nez v0, :cond_12

    .line 316
    move v10, v2

    .line 317
    goto :goto_b

    .line 318
    .line 319
    .line 320
    :cond_12
    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditor;->getRating()I

    .line 321
    move-result v10

    .line 322
    .line 323
    .line 324
    :goto_b
    invoke-virtual {v9, v10}, Lcom/narvii/widget/FontAwesomeRatingBar;->setRating(I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 328
    move-result-object v5

    .line 329
    .line 330
    check-cast v5, Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 331
    .line 332
    if-ne v8, v6, :cond_13

    .line 333
    move v9, v2

    .line 334
    goto :goto_c

    .line 335
    :cond_13
    move v9, v4

    .line 336
    .line 337
    .line 338
    :goto_c
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 339
    .line 340
    .line 341
    const v5, 0x7f0a0b51

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 345
    move-result-object v9

    .line 346
    .line 347
    check-cast v9, Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 348
    .line 349
    if-nez v0, :cond_14

    .line 350
    move v10, v2

    .line 351
    goto :goto_d

    .line 352
    .line 353
    .line 354
    :cond_14
    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditor;->getRating()I

    .line 355
    move-result v10

    .line 356
    .line 357
    .line 358
    :goto_d
    invoke-virtual {v9, v10}, Lcom/narvii/widget/FontAwesomeRatingBar;->setRating(I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 362
    move-result-object v5

    .line 363
    .line 364
    check-cast v5, Lcom/narvii/widget/FontAwesomeRatingBar;

    .line 365
    .line 366
    if-ne v8, v7, :cond_15

    .line 367
    move v9, v2

    .line 368
    goto :goto_e

    .line 369
    :cond_15
    move v9, v4

    .line 370
    .line 371
    .line 372
    :goto_e
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 373
    .line 374
    .line 375
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 376
    move-result-object v5

    .line 377
    .line 378
    if-eqz v0, :cond_16

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditor;->getDate()Ljava/util/Date;

    .line 382
    move-result-object v9

    .line 383
    .line 384
    if-eqz v9, :cond_16

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0}, Lcom/narvii/item/property/ItemPropertyEditor;->getDate()Ljava/util/Date;

    .line 388
    move-result-object v0

    .line 389
    .line 390
    .line 391
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 392
    .line 393
    .line 394
    :cond_16
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    .line 395
    move-result v0

    .line 396
    .line 397
    .line 398
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    .line 399
    move-result v6

    .line 400
    .line 401
    .line 402
    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    .line 403
    move-result v1

    .line 404
    .line 405
    .line 406
    const v5, 0x7f0a0b4f

    .line 407
    .line 408
    .line 409
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 410
    move-result-object v7

    .line 411
    .line 412
    check-cast v7, Landroid/widget/DatePicker;

    .line 413
    .line 414
    iget-object v9, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->dateListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v7, v0, v6, v1, v9}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 421
    move-result-object v0

    .line 422
    .line 423
    check-cast v0, Landroid/widget/DatePicker;

    .line 424
    .line 425
    if-ne v8, v3, :cond_17

    .line 426
    goto :goto_f

    .line 427
    :cond_17
    move v2, v4

    .line 428
    .line 429
    .line 430
    :goto_f
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 431
    return-void
.end method

.method public setup(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditPanel;->root:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 17
    return-void
.end method
