.class public Lcom/narvii/widget/HSVColorPickerView;
.super Landroid/widget/FrameLayout;
.source "HSVColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;,
        Lcom/narvii/widget/HSVColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final COLORS:[I


# instance fields
.field private colorChangedListener:Lcom/narvii/widget/HSVColorPickerView$OnColorChangedListener;

.field private hue:F

.field private hueSeekBar:Landroid/widget/SeekBar;

.field private isSetColor:Z

.field private saturation:F

.field private saturationSeekBar:Landroid/widget/SeekBar;

.field private value:F

.field private valueSeekBar:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 25
    fill-array-data v0, :array_0

    sput-object v0, Lcom/narvii/widget/HSVColorPickerView;->COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
        -0x10000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/HSVColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/HSVColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/narvii/widget/HSVColorPickerView;->isSetColor:Z

    .line 46
    invoke-direct {p0}, Lcom/narvii/widget/HSVColorPickerView;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/widget/HSVColorPickerView;F)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/narvii/widget/HSVColorPickerView;->setHue(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/widget/HSVColorPickerView;F)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/narvii/widget/HSVColorPickerView;->setSaturation(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/widget/HSVColorPickerView;F)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/narvii/widget/HSVColorPickerView;->setValue(F)V

    return-void
.end method

.method private getGradientDrawable([I)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 197
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 p1, 0x0

    .line 198
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    return-object v0
.end method

.method private init()V
    .locals 4

    .line 50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->hsv_color_picker_layout:I

    invoke-static {v0, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    sget v0, Lcom/narvii/lib/R$id;->hue_seek_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->hueSeekBar:Landroid/widget/SeekBar;

    .line 52
    iget-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->hueSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;

    iget-object v2, p0, Lcom/narvii/widget/HSVColorPickerView;->hueSeekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;-><init>(Lcom/narvii/widget/HSVColorPickerView;Landroid/widget/SeekBar;Lcom/narvii/widget/HSVColorPickerView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    iget-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->hueSeekBar:Landroid/widget/SeekBar;

    sget-object v1, Lcom/narvii/widget/HSVColorPickerView;->COLORS:[I

    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/HSVColorPickerView;->setSeekBarProgressDrawable(Landroid/widget/SeekBar;[I)V

    .line 55
    sget v0, Lcom/narvii/lib/R$id;->saturation_seek_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->saturationSeekBar:Landroid/widget/SeekBar;

    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$drawable;->hsv_color_picker_seekbar_icon_rect:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/narvii/widget/HSVColorPickerView;->saturationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->saturationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;

    iget-object v2, p0, Lcom/narvii/widget/HSVColorPickerView;->saturationSeekBar:Landroid/widget/SeekBar;

    invoke-direct {v1, p0, v2, v3}, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;-><init>(Lcom/narvii/widget/HSVColorPickerView;Landroid/widget/SeekBar;Lcom/narvii/widget/HSVColorPickerView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    sget v0, Lcom/narvii/lib/R$id;->value_seek_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->valueSeekBar:Landroid/widget/SeekBar;

    .line 61
    iget-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->valueSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;

    iget-object v2, p0, Lcom/narvii/widget/HSVColorPickerView;->valueSeekBar:Landroid/widget/SeekBar;

    invoke-direct {v1, p0, v2, v3}, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;-><init>(Lcom/narvii/widget/HSVColorPickerView;Landroid/widget/SeekBar;Lcom/narvii/widget/HSVColorPickerView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$drawable;->hsv_color_picker_seekbar_icon_rect:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/narvii/widget/HSVColorPickerView;->valueSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->hueSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/narvii/widget/HSVColorPickerView$1;

    invoke-direct {v1, p0}, Lcom/narvii/widget/HSVColorPickerView$1;-><init>(Lcom/narvii/widget/HSVColorPickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 83
    iget-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->saturationSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/narvii/widget/HSVColorPickerView$2;

    invoke-direct {v1, p0}, Lcom/narvii/widget/HSVColorPickerView$2;-><init>(Lcom/narvii/widget/HSVColorPickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 100
    iget-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->valueSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/narvii/widget/HSVColorPickerView$3;

    invoke-direct {v1, p0}, Lcom/narvii/widget/HSVColorPickerView$3;-><init>(Lcom/narvii/widget/HSVColorPickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, v0}, Lcom/narvii/widget/HSVColorPickerView;->setHue(F)V

    .line 118
    invoke-direct {p0, v0}, Lcom/narvii/widget/HSVColorPickerView;->setSaturation(F)V

    .line 119
    invoke-direct {p0, v0}, Lcom/narvii/widget/HSVColorPickerView;->setValue(F)V

    return-void
.end method

.method private onColorChanged()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 180
    iget v1, p0, Lcom/narvii/widget/HSVColorPickerView;->hue:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/narvii/widget/HSVColorPickerView;->saturation:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/narvii/widget/HSVColorPickerView;->value:F

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/narvii/widget/HSVColorPickerView;->colorChangedListener:Lcom/narvii/widget/HSVColorPickerView$OnColorChangedListener;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/narvii/widget/HSVColorPickerView;->isSetColor:Z

    if-nez v2, :cond_0

    .line 182
    invoke-interface {v1, v0}, Lcom/narvii/widget/HSVColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    return-void
.end method

.method private setHue(F)V
    .locals 10

    .line 140
    iput p1, p0, Lcom/narvii/widget/HSVColorPickerView;->hue:F

    const/4 v0, 0x3

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v1, v4

    .line 141
    iget v5, p0, Lcom/narvii/widget/HSVColorPickerView;->value:F

    const/4 v6, 0x2

    aput v5, v1, v6

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    new-array v5, v0, [F

    aput p1, v5, v2

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v4

    .line 142
    iget v8, p0, Lcom/narvii/widget/HSVColorPickerView;->value:F

    aput v8, v5, v6

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    .line 143
    iget-object v8, p0, Lcom/narvii/widget/HSVColorPickerView;->saturationSeekBar:Landroid/widget/SeekBar;

    new-array v9, v6, [I

    aput v1, v9, v2

    aput v5, v9, v4

    invoke-direct {p0, v8, v9}, Lcom/narvii/widget/HSVColorPickerView;->setSeekBarProgressDrawable(Landroid/widget/SeekBar;[I)V

    new-array v1, v0, [F

    aput p1, v1, v2

    .line 144
    iget v5, p0, Lcom/narvii/widget/HSVColorPickerView;->saturation:F

    aput v5, v1, v4

    aput v3, v1, v6

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    new-array v3, v0, [F

    aput p1, v3, v2

    .line 145
    iget v5, p0, Lcom/narvii/widget/HSVColorPickerView;->saturation:F

    aput v5, v3, v4

    aput v7, v3, v6

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    .line 146
    iget-object v5, p0, Lcom/narvii/widget/HSVColorPickerView;->valueSeekBar:Landroid/widget/SeekBar;

    new-array v8, v6, [I

    aput v1, v8, v2

    aput v3, v8, v4

    invoke-direct {p0, v5, v8}, Lcom/narvii/widget/HSVColorPickerView;->setSeekBarProgressDrawable(Landroid/widget/SeekBar;[I)V

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/narvii/lib/R$drawable;->hsv_color_picker_seekbar_icon_rect:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 149
    instance-of v3, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_0

    new-array v0, v0, [F

    aput p1, v0, v2

    aput v7, v0, v4

    aput v7, v0, v6

    .line 150
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    .line 151
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    .line 152
    :cond_0
    instance-of v3, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_1

    new-array v0, v0, [F

    aput p1, v0, v2

    aput v7, v0, v4

    aput v7, v0, v6

    .line 153
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    .line 154
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 155
    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_1

    .line 156
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 159
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/widget/HSVColorPickerView;->hueSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 160
    invoke-direct {p0}, Lcom/narvii/widget/HSVColorPickerView;->onColorChanged()V

    return-void
.end method

.method private setSaturation(F)V
    .locals 6

    .line 164
    iput p1, p0, Lcom/narvii/widget/HSVColorPickerView;->saturation:F

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 165
    iget v2, p0, Lcom/narvii/widget/HSVColorPickerView;->hue:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v5, v1, v4

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    new-array v0, v0, [F

    .line 166
    iget v5, p0, Lcom/narvii/widget/HSVColorPickerView;->hue:F

    aput v5, v0, v3

    aput p1, v0, v2

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, v0, v4

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    .line 167
    iget-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->valueSeekBar:Landroid/widget/SeekBar;

    new-array v4, v4, [I

    aput v1, v4, v3

    aput p1, v4, v2

    invoke-direct {p0, v0, v4}, Lcom/narvii/widget/HSVColorPickerView;->setSeekBarProgressDrawable(Landroid/widget/SeekBar;[I)V

    .line 168
    invoke-direct {p0}, Lcom/narvii/widget/HSVColorPickerView;->onColorChanged()V

    return-void
.end method

.method private setSeekBarProgressDrawable(Landroid/widget/SeekBar;[I)V
    .locals 7

    .line 187
    invoke-direct {p0, p2}, Lcom/narvii/widget/HSVColorPickerView;->getGradientDrawable([I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    .line 188
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 189
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 190
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    .line 191
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 192
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setValue(F)V
    .locals 6

    .line 172
    iput p1, p0, Lcom/narvii/widget/HSVColorPickerView;->value:F

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 173
    iget v2, p0, Lcom/narvii/widget/HSVColorPickerView;->hue:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v1, v2

    const/4 v4, 0x2

    aput p1, v1, v4

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    new-array v0, v0, [F

    .line 174
    iget v5, p0, Lcom/narvii/widget/HSVColorPickerView;->hue:F

    aput v5, v0, v3

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v0, v2

    aput p1, v0, v4

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    .line 175
    iget-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->saturationSeekBar:Landroid/widget/SeekBar;

    new-array v4, v4, [I

    aput v1, v4, v3

    aput p1, v4, v2

    invoke-direct {p0, v0, v4}, Lcom/narvii/widget/HSVColorPickerView;->setSeekBarProgressDrawable(Landroid/widget/SeekBar;[I)V

    .line 176
    invoke-direct {p0}, Lcom/narvii/widget/HSVColorPickerView;->onColorChanged()V

    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 124
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x0

    .line 125
    aget v1, v0, p1

    iput v1, p0, Lcom/narvii/widget/HSVColorPickerView;->hue:F

    const/4 v1, 0x1

    .line 126
    iput-boolean v1, p0, Lcom/narvii/widget/HSVColorPickerView;->isSetColor:Z

    .line 127
    iget-object v2, p0, Lcom/narvii/widget/HSVColorPickerView;->hueSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/narvii/widget/HSVColorPickerView;->hue:F

    mul-float v3, v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 128
    aget v1, v0, v1

    iput v1, p0, Lcom/narvii/widget/HSVColorPickerView;->saturation:F

    .line 129
    iget-object v1, p0, Lcom/narvii/widget/HSVColorPickerView;->saturationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/narvii/widget/HSVColorPickerView;->saturation:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    const/4 v1, 0x2

    .line 130
    aget v0, v0, v1

    iput v0, p0, Lcom/narvii/widget/HSVColorPickerView;->value:F

    .line 131
    iget-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->valueSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/narvii/widget/HSVColorPickerView;->value:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 132
    iput-boolean p1, p0, Lcom/narvii/widget/HSVColorPickerView;->isSetColor:Z

    return-void
.end method

.method public setColorChangedListener(Lcom/narvii/widget/HSVColorPickerView$OnColorChangedListener;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/narvii/widget/HSVColorPickerView;->colorChangedListener:Lcom/narvii/widget/HSVColorPickerView$OnColorChangedListener;

    return-void
.end method
