.class public Lcom/narvii/widget/CodeEditView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/CodeEditView$CodeContentChangeListener;
    }
.end annotation


# static fields
.field public static CODE_HINT:Ljava/lang/String; = "X"


# instance fields
.field blink:Ljava/lang/Runnable;

.field private blinkShow:Z

.field private final codeLayout:Landroid/view/ViewGroup;

.field private currentCursor:Landroid/view/View;

.field private final editText:Landroid/widget/EditText;

.field private isError:Z

.field listener:Lcom/narvii/widget/CodeEditView$CodeContentChangeListener;

.field private final underline:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/widget/CodeEditView;->isError:Z

    .line 7
    .line 8
    new-instance p1, Lcom/narvii/widget/CodeEditView$2;

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/narvii/widget/CodeEditView$2;-><init>(Lcom/narvii/widget/CodeEditView;)V

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/widget/CodeEditView;->blink:Ljava/lang/Runnable;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    const p2, 0x7f0d078a

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    const p1, 0x7f0a04b2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Landroid/widget/EditText;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/widget/CodeEditView;->editText:Landroid/widget/EditText;

    .line 35
    .line 36
    .line 37
    const p2, 0x7f0a032b

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    check-cast p2, Landroid/view/ViewGroup;

    .line 44
    .line 45
    iput-object p2, p0, Lcom/narvii/widget/CodeEditView;->codeLayout:Landroid/view/ViewGroup;

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a044f

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/widget/CodeEditView;->underline:Landroid/view/View;

    .line 55
    .line 56
    new-instance v0, Lcom/narvii/widget/CodeEditView$1;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/narvii/widget/CodeEditView$1;-><init>(Lcom/narvii/widget/CodeEditView;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 73
    float-to-int p1, p1

    .line 74
    .line 75
    mul-int/lit8 p1, p1, 0xa

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 79
    move-result v0

    .line 80
    .line 81
    div-int/lit8 v0, v0, 0x2

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    instance-of v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 92
    .line 93
    if-eqz v0, :cond_0

    .line 94
    .line 95
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 99
    :cond_0
    const/4 p1, 0x0

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, p1}, Lcom/narvii/widget/CodeEditView;->updateCodeViews(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/CodeEditView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/widget/CodeEditView;->blinkShow:Z

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/widget/CodeEditView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/CodeEditView;->currentCursor:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/widget/CodeEditView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/widget/CodeEditView;->blinkShow:Z

    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/widget/CodeEditView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/widget/CodeEditView;->isError:Z

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/widget/CodeEditView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/CodeEditView;->updateCodeViews(Ljava/lang/String;)V

    return-void
.end method

.method private updateCodeViews(Ljava/lang/String;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/widget/CodeEditView;->currentCursor:Landroid/view/View;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/widget/CodeEditView;->blink:Ljava/lang/Runnable;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/widget/CodeEditView;->codeLayout:Landroid/view/ViewGroup;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    .line 18
    :goto_0
    if-ge v3, v1, :cond_a

    .line 19
    .line 20
    iget-object v4, p0, Lcom/narvii/widget/CodeEditView;->codeLayout:Landroid/view/ViewGroup;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    .line 27
    const v5, 0x7f0a032c

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    instance-of v5, v4, Landroid/widget/TextView;

    .line 34
    .line 35
    if-eqz v5, :cond_2

    .line 36
    .line 37
    check-cast v4, Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 43
    move-result v5

    .line 44
    .line 45
    if-gt v5, v3, :cond_0

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 55
    move-result v5

    .line 56
    .line 57
    .line 58
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 59
    move-result-object v5

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    goto :goto_2

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_1
    const v5, 0x3e99999a    # 0.3f

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 70
    .line 71
    sget-object v5, Lcom/narvii/widget/CodeEditView;->CODE_HINT:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    move-object v4, v0

    .line 77
    .line 78
    :goto_2
    iget-object v5, p0, Lcom/narvii/widget/CodeEditView;->codeLayout:Landroid/view/ViewGroup;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 82
    move-result-object v5

    .line 83
    .line 84
    .line 85
    const v6, 0x7f0a03f1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object v5

    .line 90
    .line 91
    if-eqz v5, :cond_7

    .line 92
    const/4 v6, 0x1

    .line 93
    .line 94
    if-nez p1, :cond_4

    .line 95
    .line 96
    if-nez v3, :cond_3

    .line 97
    :goto_3
    move v7, v6

    .line 98
    goto :goto_4

    .line 99
    :cond_3
    move v7, v2

    .line 100
    goto :goto_4

    .line 101
    .line 102
    .line 103
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 104
    move-result v7

    .line 105
    .line 106
    if-ne v3, v7, :cond_3

    .line 107
    goto :goto_3

    .line 108
    .line 109
    :goto_4
    if-eqz v7, :cond_5

    .line 110
    move v8, v2

    .line 111
    goto :goto_5

    .line 112
    .line 113
    :cond_5
    const/16 v8, 0x8

    .line 114
    .line 115
    .line 116
    :goto_5
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    if-eqz v7, :cond_7

    .line 119
    .line 120
    if-eqz v4, :cond_6

    .line 121
    .line 122
    const-string v7, ""

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    :cond_6
    iput-boolean v6, p0, Lcom/narvii/widget/CodeEditView;->blinkShow:Z

    .line 128
    .line 129
    iput-object v5, p0, Lcom/narvii/widget/CodeEditView;->currentCursor:Landroid/view/View;

    .line 130
    .line 131
    iget-object v4, p0, Lcom/narvii/widget/CodeEditView;->blink:Ljava/lang/Runnable;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 135
    .line 136
    :cond_7
    iget-object v4, p0, Lcom/narvii/widget/CodeEditView;->underline:Landroid/view/View;

    .line 137
    .line 138
    if-eqz v4, :cond_9

    .line 139
    .line 140
    iget-boolean v5, p0, Lcom/narvii/widget/CodeEditView;->isError:Z

    .line 141
    .line 142
    if-eqz v5, :cond_8

    .line 143
    .line 144
    const/high16 v5, -0x10000

    .line 145
    goto :goto_6

    .line 146
    .line 147
    .line 148
    :cond_8
    const v5, -0x7f000001

    .line 149
    .line 150
    .line 151
    :goto_6
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 152
    .line 153
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    :cond_a
    return-void
.end method


# virtual methods
.method public clearCode()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/CodeEditView;->editText:Landroid/widget/EditText;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_0
    return-void
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/CodeEditView;->editText:Landroid/widget/EditText;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public isError(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/CodeEditView;->isError:Z

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/widget/CodeEditView;->isError:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/widget/CodeEditView;->getCode()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/widget/CodeEditView;->updateCodeViews(Ljava/lang/String;)V

    .line 14
    :cond_0
    return-void
.end method

.method public setNumericCodeType(Z)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/widget/CodeEditView;->editText:Landroid/widget/EditText;

    .line 5
    const/4 v0, 0x2

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/CodeEditView;->editText:Landroid/widget/EditText;

    .line 12
    .line 13
    const/16 v0, 0x1000

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 17
    :goto_0
    return-void
.end method

.method public setOnCodeContentChangeListener(Lcom/narvii/widget/CodeEditView$CodeContentChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/CodeEditView;->listener:Lcom/narvii/widget/CodeEditView$CodeContentChangeListener;

    return-void
.end method
