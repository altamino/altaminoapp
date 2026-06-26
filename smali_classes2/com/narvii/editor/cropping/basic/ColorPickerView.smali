.class public Lcom/narvii/editor/cropping/basic/ColorPickerView;
.super Landroid/widget/FrameLayout;
.source "ColorPickerView.java"


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

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTextView:Landroid/widget/TextView;

.field private pickerCheckedListener:Lcom/narvii/editor/cropping/basic/ColorPickerView$IPickerChecked;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/narvii/editor/cropping/basic/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/editor/cropping/basic/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public init([Ljava/lang/String;)V
    .locals 5

    .line 46
    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 47
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 48
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 49
    new-instance v2, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;

    iget-object v3, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mContext:Landroid/content/Context;

    invoke-direct {v2, p1, v3}, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;-><init>([Ljava/lang/String;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mAdapter:Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;

    .line 50
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mAdapter:Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 51
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 52
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 53
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 54
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mTextView:Landroid/widget/TextView;

    .line 57
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    .line 58
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 59
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mContext:Landroid/content/Context;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 60
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mTextView:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mTextView:Landroid/widget/TextView;

    sget v4, Lcom/narvii/meisheeditor/R$string;->background:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 63
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 64
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance p1, Lcom/narvii/widget/EasyButton;

    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {p1, v2, v4}, Lcom/narvii/widget/EasyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mButton:Lcom/narvii/widget/EasyButton;

    .line 67
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800005

    .line 68
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 69
    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 70
    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 71
    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mButton:Lcom/narvii/widget/EasyButton;

    sget v2, Lcom/narvii/meisheeditor/R$drawable;->dynamic_cropping_check:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mButton:Lcom/narvii/widget/EasyButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 73
    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mButton:Lcom/narvii/widget/EasyButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 74
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mButton:Lcom/narvii/widget/EasyButton;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mButton:Lcom/narvii/widget/EasyButton;

    new-instance v0, Lcom/narvii/editor/cropping/basic/-$$Lambda$ColorPickerView$vpmS1t3RU8uVdj7gfQ1Rv7mgZ7k;

    invoke-direct {v0, p0}, Lcom/narvii/editor/cropping/basic/-$$Lambda$ColorPickerView$vpmS1t3RU8uVdj7gfQ1Rv7mgZ7k;-><init>(Lcom/narvii/editor/cropping/basic/ColorPickerView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$init$0$ColorPickerView(Landroid/view/View;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->pickerCheckedListener:Lcom/narvii/editor/cropping/basic/ColorPickerView$IPickerChecked;

    if-eqz p1, :cond_0

    .line 77
    invoke-interface {p1}, Lcom/narvii/editor/cropping/basic/ColorPickerView$IPickerChecked;->onChecked()V

    :cond_0
    return-void
.end method

.method public setColorSelectedListener(Lcom/narvii/editor/cropping/basic/IColorSelectedListener;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mAdapter:Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;->setListener(Lcom/narvii/editor/cropping/basic/IColorSelectedListener;)V

    return-void
.end method

.method public setPickerCheckedListener(Lcom/narvii/editor/cropping/basic/ColorPickerView$IPickerChecked;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->pickerCheckedListener:Lcom/narvii/editor/cropping/basic/ColorPickerView$IPickerChecked;

    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerView;->mAdapter:Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Lcom/narvii/editor/cropping/basic/ColorPickerAdapter;->setSelectedIndex(I)V

    :cond_0
    return-void
.end method
