.class public Lcom/narvii/widget/HSVColorPickerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/HSVColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/HSVColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/widget/HSVColorPickerView;->isSetColor:Z

    .line 4
    invoke-direct {p0}, Lcom/narvii/widget/HSVColorPickerView;->init()V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/HSVColorPickerView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/HSVColorPickerView;->setHue(F)V

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/widget/HSVColorPickerView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/HSVColorPickerView;->setSaturation(F)V

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/widget/HSVColorPickerView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/HSVColorPickerView;->setValue(F)V

    return-void
.end method

.method private getGradientDrawable([I)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 3
    .line 4
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 12
    return-object v0
.end method

.method private init()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$layout;->hsv_color_picker_layout:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    sget v0, Lcom/narvii/lib/R$id;->hue_seek_bar:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Landroid/widget/SeekBar;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->hueSeekBar:Landroid/widget/SeekBar;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Landroid/view/View;

    .line 26
    .line 27
    new-instance v1, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/narvii/widget/HSVColorPickerView;->hueSeekBar:Landroid/widget/SeekBar;

    .line 30
    const/4 v3, 0x0

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p0, v2, v3}, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;-><init>(Lcom/narvii/widget/HSVColorPickerView;Landroid/widget/SeekBar;Lcom/narvii/widget/g;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->hueSeekBar:Landroid/widget/SeekBar;

    .line 39
    .line 40
    sget-object v1, Lcom/narvii/widget/HSVColorPickerView;->COLORS:[I

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/HSVColorPickerView;->setSeekBarProgressDrawable(Landroid/widget/SeekBar;[I)V

    .line 44
    .line 45
    sget v0, Lcom/narvii/lib/R$id;->saturation_seek_bar:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    check-cast v0, Landroid/widget/SeekBar;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->saturationSeekBar:Landroid/widget/SeekBar;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    sget v1, Lcom/narvii/lib/R$drawable;->hsv_color_picker_seekbar_icon_rect:I

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    iget-object v2, p0, Lcom/narvii/widget/HSVColorPickerView;->saturationSeekBar:Landroid/widget/SeekBar;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->saturationSeekBar:Landroid/widget/SeekBar;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    check-cast v0, Landroid/view/View;

    .line 77
    .line 78
    new-instance v2, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;

    .line 79
    .line 80
    iget-object v4, p0, Lcom/narvii/widget/HSVColorPickerView;->saturationSeekBar:Landroid/widget/SeekBar;

    .line 81
    .line 82
    .line 83
    invoke-direct {v2, p0, v4, v3}, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;-><init>(Lcom/narvii/widget/HSVColorPickerView;Landroid/widget/SeekBar;Lcom/narvii/widget/g;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 87
    .line 88
    sget v0, Lcom/narvii/lib/R$id;->value_seek_bar:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    check-cast v0, Landroid/widget/SeekBar;

    .line 95
    .line 96
    iput-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->valueSeekBar:Landroid/widget/SeekBar;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    check-cast v0, Landroid/view/View;

    .line 103
    .line 104
    new-instance v2, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;

    .line 105
    .line 106
    iget-object v4, p0, Lcom/narvii/widget/HSVColorPickerView;->valueSeekBar:Landroid/widget/SeekBar;

    .line 107
    .line 108
    .line 109
    invoke-direct {v2, p0, v4, v3}, Lcom/narvii/widget/HSVColorPickerView$SeekbarTouchArea;-><init>(Lcom/narvii/widget/HSVColorPickerView;Landroid/widget/SeekBar;Lcom/narvii/widget/g;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    iget-object v1, p0, Lcom/narvii/widget/HSVColorPickerView;->valueSeekBar:Landroid/widget/SeekBar;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 126
    .line 127
    iget-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->hueSeekBar:Landroid/widget/SeekBar;

    .line 128
    .line 129
    new-instance v1, Lcom/narvii/widget/HSVColorPickerView$1;

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, p0}, Lcom/narvii/widget/HSVColorPickerView$1;-><init>(Lcom/narvii/widget/HSVColorPickerView;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 136
    .line 137
    iget-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->saturationSeekBar:Landroid/widget/SeekBar;

    .line 138
    .line 139
    new-instance v1, Lcom/narvii/widget/HSVColorPickerView$2;

    .line 140
    .line 141
    .line 142
    invoke-direct {v1, p0}, Lcom/narvii/widget/HSVColorPickerView$2;-><init>(Lcom/narvii/widget/HSVColorPickerView;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 146
    .line 147
    iget-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->valueSeekBar:Landroid/widget/SeekBar;

    .line 148
    .line 149
    new-instance v1, Lcom/narvii/widget/HSVColorPickerView$3;

    .line 150
    .line 151
    .line 152
    invoke-direct {v1, p0}, Lcom/narvii/widget/HSVColorPickerView$3;-><init>(Lcom/narvii/widget/HSVColorPickerView;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 156
    const/4 v0, 0x0

    .line 157
    .line 158
    .line 159
    invoke-direct {p0, v0}, Lcom/narvii/widget/HSVColorPickerView;->setHue(F)V

    .line 160
    .line 161
    .line 162
    invoke-direct {p0, v0}, Lcom/narvii/widget/HSVColorPickerView;->setSaturation(F)V

    .line 163
    .line 164
    .line 165
    invoke-direct {p0, v0}, Lcom/narvii/widget/HSVColorPickerView;->setValue(F)V

    .line 166
    return-void
.end method

.method private onColorChanged()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    iget v2, p0, Lcom/narvii/widget/HSVColorPickerView;->hue:F

    .line 7
    .line 8
    aput v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    iget v2, p0, Lcom/narvii/widget/HSVColorPickerView;->saturation:F

    .line 12
    .line 13
    aput v2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    .line 16
    iget v2, p0, Lcom/narvii/widget/HSVColorPickerView;->value:F

    .line 17
    .line 18
    aput v2, v0, v1

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 22
    move-result v0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/widget/HSVColorPickerView;->colorChangedListener:Lcom/narvii/widget/HSVColorPickerView$OnColorChangedListener;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-boolean v2, p0, Lcom/narvii/widget/HSVColorPickerView;->isSetColor:Z

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v0}, Lcom/narvii/widget/HSVColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 34
    :cond_0
    return-void
.end method

.method private setHue(F)V
    .locals 9

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/HSVColorPickerView;->hue:F

    .line 3
    const/4 v0, 0x3

    .line 4
    .line 5
    new-array v1, v0, [F

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    aput p1, v1, v2

    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    .line 12
    aput v4, v1, v3

    .line 13
    .line 14
    iget v5, p0, Lcom/narvii/widget/HSVColorPickerView;->value:F

    .line 15
    const/4 v6, 0x2

    .line 16
    .line 17
    aput v5, v1, v6

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 21
    move-result v1

    .line 22
    .line 23
    new-array v5, v0, [F

    .line 24
    .line 25
    aput p1, v5, v2

    .line 26
    .line 27
    const/high16 v7, 0x3f800000    # 1.0f

    .line 28
    .line 29
    aput v7, v5, v3

    .line 30
    .line 31
    iget v8, p0, Lcom/narvii/widget/HSVColorPickerView;->value:F

    .line 32
    .line 33
    aput v8, v5, v6

    .line 34
    .line 35
    .line 36
    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 37
    move-result v5

    .line 38
    .line 39
    iget-object v8, p0, Lcom/narvii/widget/HSVColorPickerView;->saturationSeekBar:Landroid/widget/SeekBar;

    .line 40
    .line 41
    .line 42
    filled-new-array {v1, v5}, [I

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v8, v1}, Lcom/narvii/widget/HSVColorPickerView;->setSeekBarProgressDrawable(Landroid/widget/SeekBar;[I)V

    .line 47
    .line 48
    new-array v1, v0, [F

    .line 49
    .line 50
    aput p1, v1, v2

    .line 51
    .line 52
    iget v5, p0, Lcom/narvii/widget/HSVColorPickerView;->saturation:F

    .line 53
    .line 54
    aput v5, v1, v3

    .line 55
    .line 56
    aput v4, v1, v6

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 60
    move-result v1

    .line 61
    .line 62
    new-array v4, v0, [F

    .line 63
    .line 64
    aput p1, v4, v2

    .line 65
    .line 66
    iget v5, p0, Lcom/narvii/widget/HSVColorPickerView;->saturation:F

    .line 67
    .line 68
    aput v5, v4, v3

    .line 69
    .line 70
    aput v7, v4, v6

    .line 71
    .line 72
    .line 73
    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 74
    move-result v4

    .line 75
    .line 76
    iget-object v5, p0, Lcom/narvii/widget/HSVColorPickerView;->valueSeekBar:Landroid/widget/SeekBar;

    .line 77
    .line 78
    .line 79
    filled-new-array {v1, v4}, [I

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v5, v1}, Lcom/narvii/widget/HSVColorPickerView;->setSeekBarProgressDrawable(Landroid/widget/SeekBar;[I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    sget v4, Lcom/narvii/lib/R$drawable;->hsv_color_picker_seekbar_icon_rect:I

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    instance-of v4, v1, Landroid/graphics/drawable/GradientDrawable;

    .line 100
    .line 101
    if-eqz v4, :cond_0

    .line 102
    .line 103
    new-array v0, v0, [F

    .line 104
    .line 105
    aput p1, v0, v2

    .line 106
    .line 107
    aput v7, v0, v3

    .line 108
    .line 109
    aput v7, v0, v6

    .line 110
    .line 111
    .line 112
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 113
    move-result p1

    .line 114
    move-object v0, v1

    .line 115
    .line 116
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 120
    goto :goto_0

    .line 121
    .line 122
    :cond_0
    instance-of v4, v1, Landroid/graphics/drawable/LayerDrawable;

    .line 123
    .line 124
    if-eqz v4, :cond_1

    .line 125
    .line 126
    new-array v0, v0, [F

    .line 127
    .line 128
    aput p1, v0, v2

    .line 129
    .line 130
    aput v7, v0, v3

    .line 131
    .line 132
    aput v7, v0, v6

    .line 133
    .line 134
    .line 135
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 136
    move-result p1

    .line 137
    move-object v0, v1

    .line 138
    .line 139
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 143
    move-result-object v0

    .line 144
    .line 145
    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    .line 146
    .line 147
    if-eqz v2, :cond_1

    .line 148
    .line 149
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 153
    .line 154
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/widget/HSVColorPickerView;->hueSeekBar:Landroid/widget/SeekBar;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 158
    .line 159
    .line 160
    invoke-direct {p0}, Lcom/narvii/widget/HSVColorPickerView;->onColorChanged()V

    .line 161
    return-void
.end method

.method private setSaturation(F)V
    .locals 6

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/HSVColorPickerView;->saturation:F

    .line 3
    const/4 v0, 0x3

    .line 4
    .line 5
    new-array v1, v0, [F

    .line 6
    .line 7
    iget v2, p0, Lcom/narvii/widget/HSVColorPickerView;->hue:F

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    aput v2, v1, v3

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    aput p1, v1, v2

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x2

    .line 16
    .line 17
    aput v4, v1, v5

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 21
    move-result v1

    .line 22
    .line 23
    new-array v0, v0, [F

    .line 24
    .line 25
    iget v4, p0, Lcom/narvii/widget/HSVColorPickerView;->hue:F

    .line 26
    .line 27
    aput v4, v0, v3

    .line 28
    .line 29
    aput p1, v0, v2

    .line 30
    .line 31
    const/high16 p1, 0x3f800000    # 1.0f

    .line 32
    .line 33
    aput p1, v0, v5

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 37
    move-result p1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->valueSeekBar:Landroid/widget/SeekBar;

    .line 40
    .line 41
    .line 42
    filled-new-array {v1, p1}, [I

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v0, p1}, Lcom/narvii/widget/HSVColorPickerView;->setSeekBarProgressDrawable(Landroid/widget/SeekBar;[I)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/narvii/widget/HSVColorPickerView;->onColorChanged()V

    .line 50
    return-void
.end method

.method private setSeekBarProgressDrawable(Landroid/widget/SeekBar;[I)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/narvii/widget/HSVColorPickerView;->getGradientDrawable([I)Landroid/graphics/drawable/GradientDrawable;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const/high16 v1, 0x3f000000    # 0.5f

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const/high16 v1, 0x40a00000    # 5.0f

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 32
    .line 33
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .line 34
    const/4 v1, 0x1

    .line 35
    .line 36
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 37
    const/4 v2, 0x0

    .line 38
    .line 39
    aput-object p2, v1, v2

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    move-object v1, v0

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    return-void
.end method

.method private setValue(F)V
    .locals 6

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/HSVColorPickerView;->value:F

    .line 3
    const/4 v0, 0x3

    .line 4
    .line 5
    new-array v1, v0, [F

    .line 6
    .line 7
    iget v2, p0, Lcom/narvii/widget/HSVColorPickerView;->hue:F

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    aput v2, v1, v3

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    .line 14
    aput v2, v1, v4

    .line 15
    const/4 v2, 0x2

    .line 16
    .line 17
    aput p1, v1, v2

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 21
    move-result v1

    .line 22
    .line 23
    new-array v0, v0, [F

    .line 24
    .line 25
    iget v5, p0, Lcom/narvii/widget/HSVColorPickerView;->hue:F

    .line 26
    .line 27
    aput v5, v0, v3

    .line 28
    .line 29
    const/high16 v3, 0x3f800000    # 1.0f

    .line 30
    .line 31
    aput v3, v0, v4

    .line 32
    .line 33
    aput p1, v0, v2

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 37
    move-result p1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->saturationSeekBar:Landroid/widget/SeekBar;

    .line 40
    .line 41
    .line 42
    filled-new-array {v1, p1}, [I

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v0, p1}, Lcom/narvii/widget/HSVColorPickerView;->setSeekBarProgressDrawable(Landroid/widget/SeekBar;[I)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/narvii/widget/HSVColorPickerView;->onColorChanged()V

    .line 50
    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    aget v1, v0, p1

    .line 10
    .line 11
    iput v1, p0, Lcom/narvii/widget/HSVColorPickerView;->hue:F

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/narvii/widget/HSVColorPickerView;->isSetColor:Z

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/widget/HSVColorPickerView;->hueSeekBar:Landroid/widget/SeekBar;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    .line 20
    move-result v3

    .line 21
    int-to-float v3, v3

    .line 22
    .line 23
    iget v4, p0, Lcom/narvii/widget/HSVColorPickerView;->hue:F

    .line 24
    mul-float/2addr v3, v4

    .line 25
    .line 26
    const/high16 v4, 0x43b40000    # 360.0f

    .line 27
    div-float/2addr v3, v4

    .line 28
    float-to-int v3, v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 32
    .line 33
    aget v1, v0, v1

    .line 34
    .line 35
    iput v1, p0, Lcom/narvii/widget/HSVColorPickerView;->saturation:F

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/widget/HSVColorPickerView;->saturationSeekBar:Landroid/widget/SeekBar;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    .line 41
    move-result v2

    .line 42
    int-to-float v2, v2

    .line 43
    .line 44
    iget v3, p0, Lcom/narvii/widget/HSVColorPickerView;->saturation:F

    .line 45
    mul-float/2addr v2, v3

    .line 46
    float-to-int v2, v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 50
    const/4 v1, 0x2

    .line 51
    .line 52
    aget v0, v0, v1

    .line 53
    .line 54
    iput v0, p0, Lcom/narvii/widget/HSVColorPickerView;->value:F

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/widget/HSVColorPickerView;->valueSeekBar:Landroid/widget/SeekBar;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 60
    move-result v1

    .line 61
    int-to-float v1, v1

    .line 62
    .line 63
    iget v2, p0, Lcom/narvii/widget/HSVColorPickerView;->value:F

    .line 64
    mul-float/2addr v1, v2

    .line 65
    float-to-int v1, v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 69
    .line 70
    iput-boolean p1, p0, Lcom/narvii/widget/HSVColorPickerView;->isSetColor:Z

    .line 71
    return-void
.end method

.method public setColorChangedListener(Lcom/narvii/widget/HSVColorPickerView$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/HSVColorPickerView;->colorChangedListener:Lcom/narvii/widget/HSVColorPickerView$OnColorChangedListener;

    return-void
.end method
