.class public Lcom/narvii/widget/CodeEditView;
.super Landroid/widget/FrameLayout;
.source "CodeEditView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/CodeEditView$CodeContentChangeListener;
    }
.end annotation


# instance fields
.field blink:Ljava/lang/Runnable;

.field blinkShow:Z

.field codeLayout:Landroid/view/ViewGroup;

.field currentCursor:Landroid/view/View;

.field editText:Landroid/widget/EditText;

.field isError:Z

.field listener:Lcom/narvii/widget/CodeEditView$CodeContentChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/narvii/widget/CodeEditView;->isError:Z

    .line 148
    new-instance p2, Lcom/narvii/widget/CodeEditView$2;

    invoke-direct {p2, p0}, Lcom/narvii/widget/CodeEditView$2;-><init>(Lcom/narvii/widget/CodeEditView;)V

    iput-object p2, p0, Lcom/narvii/widget/CodeEditView;->blink:Ljava/lang/Runnable;

    .line 42
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0b06d6

    invoke-static {p2, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f0903bb

    .line 43
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/narvii/widget/CodeEditView;->editText:Landroid/widget/EditText;

    const p2, 0x7f090263

    .line 44
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/narvii/widget/CodeEditView;->codeLayout:Landroid/view/ViewGroup;

    .line 46
    iget-object p2, p0, Lcom/narvii/widget/CodeEditView;->editText:Landroid/widget/EditText;

    new-instance v0, Lcom/narvii/widget/CodeEditView$1;

    invoke-direct {v0, p0}, Lcom/narvii/widget/CodeEditView$1;-><init>(Lcom/narvii/widget/CodeEditView;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 67
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p2, p2

    const v0, 0x3c83126f    # 0.016f

    mul-float v0, v0, p2

    float-to-int v0, v0

    const v1, 0x3da3d70a    # 0.08f

    mul-float p2, p2, v1

    float-to-int p2, p2

    const/4 v1, 0x0

    .line 71
    :goto_0
    iget-object v2, p0, Lcom/narvii/widget/CodeEditView;->codeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 72
    iget-object v2, p0, Lcom/narvii/widget/CodeEditView;->codeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v1, :cond_3

    .line 75
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_3

    .line 76
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 77
    iget-object v3, p0, Lcom/narvii/widget/CodeEditView;->codeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ne v3, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    move v3, p2

    goto :goto_2

    :cond_1
    move v3, v0

    .line 79
    :goto_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_2

    .line 80
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_3

    .line 82
    :cond_2
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/narvii/widget/CodeEditView;->updateCodeViews(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/CodeEditView;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/narvii/widget/CodeEditView;->updateCodeViews(Ljava/lang/String;)V

    return-void
.end method

.method private updateCodeViews(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/narvii/widget/CodeEditView;->currentCursor:Landroid/view/View;

    .line 105
    iget-object v1, p0, Lcom/narvii/widget/CodeEditView;->blink:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 106
    iget-object v1, p0, Lcom/narvii/widget/CodeEditView;->codeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_9

    .line 108
    iget-object v4, p0, Lcom/narvii/widget/CodeEditView;->codeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090264

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 109
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 110
    check-cast v4, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v3, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 112
    :cond_1
    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/narvii/widget/CodeEditView;->codeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090318

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v5, 0x1

    if-nez p1, :cond_4

    if-nez v3, :cond_3

    :goto_3
    const/4 v6, 0x1

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    .line 124
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v3, v6, :cond_3

    goto :goto_3

    :goto_4
    if-eqz v6, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    const/16 v7, 0x8

    .line 126
    :goto_5
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    if-eqz v6, :cond_6

    .line 128
    iput-boolean v5, p0, Lcom/narvii/widget/CodeEditView;->blinkShow:Z

    .line 129
    iput-object v4, p0, Lcom/narvii/widget/CodeEditView;->currentCursor:Landroid/view/View;

    .line 130
    iget-object v4, p0, Lcom/narvii/widget/CodeEditView;->blink:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 134
    :cond_6
    iget-object v4, p0, Lcom/narvii/widget/CodeEditView;->codeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090c02

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 136
    iget-boolean v5, p0, Lcom/narvii/widget/CodeEditView;->isError:Z

    if-eqz v5, :cond_7

    const/high16 v5, -0x10000

    goto :goto_6

    :cond_7
    const v5, -0x33000001    # -1.3421772E8f

    :goto_6
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method


# virtual methods
.method public clearCode()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/narvii/widget/CodeEditView;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/narvii/widget/CodeEditView;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isError(Z)V
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/narvii/widget/CodeEditView;->isError:Z

    if-eq p1, v0, :cond_0

    .line 143
    iput-boolean p1, p0, Lcom/narvii/widget/CodeEditView;->isError:Z

    .line 144
    invoke-virtual {p0}, Lcom/narvii/widget/CodeEditView;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/widget/CodeEditView;->updateCodeViews(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnCodeContentChangeListener(Lcom/narvii/widget/CodeEditView$CodeContentChangeListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/narvii/widget/CodeEditView;->listener:Lcom/narvii/widget/CodeEditView$CodeContentChangeListener;

    return-void
.end method
