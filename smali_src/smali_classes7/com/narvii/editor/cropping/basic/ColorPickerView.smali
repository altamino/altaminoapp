.class public Lcom/narvii/editor/cropping/basic/ColorPickerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/basic/ColorPickerView$IPickerChecked;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;

.field private mButton:Lcom/narvii/widget/EasyButton;

.field private mContext:Landroid/content/Context;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mTextView:Landroid/widget/TextView;

.field private pickerCheckedListener:Lcom/narvii/editor/cropping/basic/ColorPickerView$IPickerChecked;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/editor/cropping/basic/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/editor/cropping/basic/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/narvii/editor/cropping/basic/ColorPickerView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/editor/cropping/basic/ColorPickerView;->lambda$init$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->pickerCheckedListener:Lcom/narvii/editor/cropping/basic/ColorPickerView$IPickerChecked;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lcom/narvii/editor/cropping/basic/ColorPickerView$IPickerChecked;->onChecked()V

    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public init([Ljava/lang/String;)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    const/4 v1, -0x2

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    const/16 v2, 0x11

    .line 18
    .line 19
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 20
    .line 21
    new-instance v2, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, p1, v3}, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;-><init>([Ljava/lang/String;Landroid/content/Context;)V

    .line 27
    .line 28
    iput-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mAdapter:Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 34
    .line 35
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v2, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 45
    .line 46
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    .line 56
    new-instance p1, Landroid/widget/TextView;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mTextView:Landroid/widget/TextView;

    .line 64
    .line 65
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    const/4 v0, 0x1

    .line 70
    .line 71
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 72
    .line 73
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    const/high16 v3, 0x41b00000    # 22.0f

    .line 76
    .line 77
    .line 78
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 79
    move-result v2

    .line 80
    .line 81
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 82
    .line 83
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mTextView:Landroid/widget/TextView;

    .line 84
    const/4 v4, -0x1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    .line 89
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mTextView:Landroid/widget/TextView;

    .line 90
    .line 91
    sget v4, Lcom/narvii/meisheeditor/R$string;->background:I

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 95
    .line 96
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mTextView:Landroid/widget/TextView;

    .line 97
    .line 98
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    .line 103
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mTextView:Landroid/widget/TextView;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    new-instance p1, Lcom/narvii/widget/EasyButton;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mContext:Landroid/content/Context;

    .line 111
    const/4 v4, 0x0

    .line 112
    .line 113
    .line 114
    invoke-direct {p1, v2, v4}, Lcom/narvii/widget/EasyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    .line 116
    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mButton:Lcom/narvii/widget/EasyButton;

    .line 117
    .line 118
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 119
    .line 120
    .line 121
    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 122
    .line 123
    .line 124
    const v1, 0x800005

    .line 125
    .line 126
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 127
    .line 128
    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mContext:Landroid/content/Context;

    .line 129
    .line 130
    const/high16 v2, 0x41a00000    # 20.0f

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 134
    move-result v1

    .line 135
    .line 136
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 137
    .line 138
    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mContext:Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 142
    move-result v1

    .line 143
    .line 144
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 145
    .line 146
    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mButton:Lcom/narvii/widget/EasyButton;

    .line 147
    .line 148
    sget v2, Lcom/narvii/meisheeditor/R$drawable;->dynamic_cropping_check:I

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    .line 153
    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mButton:Lcom/narvii/widget/EasyButton;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 157
    .line 158
    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mButton:Lcom/narvii/widget/EasyButton;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 162
    .line 163
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mButton:Lcom/narvii/widget/EasyButton;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    .line 168
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mButton:Lcom/narvii/widget/EasyButton;

    .line 169
    .line 170
    new-instance v0, Lcom/narvii/editor/cropping/basic/b;

    .line 171
    .line 172
    .line 173
    invoke-direct {v0, p0}, Lcom/narvii/editor/cropping/basic/b;-><init>(Lcom/narvii/editor/cropping/basic/ColorPickerView;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    return-void
.end method

.method public setColorSelectedListener(Lcom/narvii/editor/cropping/basic/IColorSelectedListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mAdapter:Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;->setListener(Lcom/narvii/editor/cropping/basic/IColorSelectedListener;)V

    .line 6
    return-void
.end method

.method public setPickerCheckedListener(Lcom/narvii/editor/cropping/basic/ColorPickerView$IPickerChecked;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->pickerCheckedListener:Lcom/narvii/editor/cropping/basic/ColorPickerView$IPickerChecked;

    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mAdapter:Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;->setSelectedIndex(I)V

    .line 8
    :cond_0
    return-void
.end method
