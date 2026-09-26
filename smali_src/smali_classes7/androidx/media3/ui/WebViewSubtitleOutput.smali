.class final Landroidx/media3/ui/WebViewSubtitleOutput;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/ui/SubtitleView$Output;


# static fields
.field private static final CSS_LINE_HEIGHT:F = 1.2f

.field private static final DEFAULT_BACKGROUND_CSS_CLASS:Ljava/lang/String; = "default_bg"


# instance fields
.field private bottomPaddingFraction:F

.field private final canvasSubtitleOutput:Landroidx/media3/ui/CanvasSubtitleOutput;

.field private defaultTextSize:F

.field private defaultTextSizeType:I

.field private style:Landroidx/media3/ui/CaptionStyleCompat;

.field private textCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/WebViewSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    .line 4
    sget-object v0, Landroidx/media3/ui/CaptionStyleCompat;->DEFAULT:Landroidx/media3/ui/CaptionStyleCompat;

    iput-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    const v0, 0x3d5a511a    # 0.0533f

    iput v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSize:F

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    const v1, 0x3da3d70a    # 0.08f

    iput v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    .line 5
    new-instance v1, Landroidx/media3/ui/CanvasSubtitleOutput;

    invoke-direct {v1, p1, p2}, Landroidx/media3/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->canvasSubtitleOutput:Landroidx/media3/ui/CanvasSubtitleOutput;

    .line 6
    new-instance v2, Landroidx/media3/ui/WebViewSubtitleOutput$1;

    invoke-direct {v2, p0, p1, p2}, Landroidx/media3/ui/WebViewSubtitleOutput$1;-><init>(Landroidx/media3/ui/WebViewSubtitleOutput;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->webView:Landroid/webkit/WebView;

    .line 7
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static b(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, -0x64

    return p0

    :cond_1
    const/16 p0, -0x32

    return p0
.end method

.method private static c(Landroid/text/Layout$Alignment;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "center"

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    sget-object v1, Landroidx/media3/ui/WebViewSubtitleOutput$2;->$SwitchMap$android$text$Layout$Alignment:[I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    move-result p0

    .line 12
    .line 13
    aget p0, v1, p0

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    if-eq p0, v1, :cond_2

    .line 17
    const/4 v1, 0x2

    .line 18
    .line 19
    if-eq p0, v1, :cond_1

    .line 20
    return-object v0

    .line 21
    .line 22
    :cond_1
    const-string p0, "end"

    .line 23
    return-object p0

    .line 24
    .line 25
    .line 26
    :cond_2
    const-string/jumbo p0, "start"

    .line 27
    return-object p0
.end method

.method private static d(Landroidx/media3/ui/CaptionStyleCompat;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/ui/CaptionStyleCompat;->edgeType:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-eq v0, v2, :cond_3

    .line 7
    const/4 v3, 0x2

    .line 8
    .line 9
    if-eq v0, v3, :cond_2

    .line 10
    const/4 v3, 0x3

    .line 11
    .line 12
    if-eq v0, v3, :cond_1

    .line 13
    const/4 v3, 0x4

    .line 14
    .line 15
    if-eq v0, v3, :cond_0

    .line 16
    .line 17
    .line 18
    const-string/jumbo p0, "unset"

    .line 19
    return-object p0

    .line 20
    .line 21
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 22
    .line 23
    iget p0, p0, Landroidx/media3/ui/CaptionStyleCompat;->edgeColor:I

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Landroidx/media3/ui/HtmlUtils;->b(I)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    aput-object p0, v0, v1

    .line 30
    .line 31
    const-string p0, "-0.05em -0.05em 0.15em %s"

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    .line 38
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    iget p0, p0, Landroidx/media3/ui/CaptionStyleCompat;->edgeColor:I

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Landroidx/media3/ui/HtmlUtils;->b(I)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    aput-object p0, v0, v1

    .line 47
    .line 48
    const-string p0, "0.06em 0.08em 0.15em %s"

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    .line 55
    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    .line 56
    .line 57
    iget p0, p0, Landroidx/media3/ui/CaptionStyleCompat;->edgeColor:I

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Landroidx/media3/ui/HtmlUtils;->b(I)Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    .line 63
    aput-object p0, v0, v1

    .line 64
    .line 65
    const-string p0, "0.1em 0.12em 0.15em %s"

    .line 66
    .line 67
    .line 68
    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    .line 72
    :cond_3
    new-array v0, v2, [Ljava/lang/Object;

    .line 73
    .line 74
    iget p0, p0, Landroidx/media3/ui/CaptionStyleCompat;->edgeColor:I

    .line 75
    .line 76
    .line 77
    invoke-static {p0}, Landroidx/media3/ui/HtmlUtils;->b(I)Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    aput-object p0, v0, v1

    .line 81
    .line 82
    const-string p0, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s"

    .line 83
    .line 84
    .line 85
    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    return-object p0
.end method

.method private e(IF)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 12
    move-result v2

    .line 13
    sub-int/2addr v1, v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 17
    move-result v2

    .line 18
    sub-int/2addr v1, v2

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2, v0, v1}, Landroidx/media3/ui/SubtitleViewUtils;->h(IFII)F

    .line 22
    move-result p1

    .line 23
    .line 24
    .line 25
    const p2, -0x800001

    .line 26
    .line 27
    cmpl-float p2, p1, p2

    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    .line 32
    const-string/jumbo p1, "unset"

    .line 33
    return-object p1

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 48
    div-float/2addr p1, p2

    .line 49
    const/4 p2, 0x1

    .line 50
    .line 51
    new-array p2, p2, [Ljava/lang/Object;

    .line 52
    const/4 v0, 0x0

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    aput-object p1, p2, v0

    .line 59
    .line 60
    const-string p1, "%.2fpx"

    .line 61
    .line 62
    .line 63
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    return-object p1
.end method

.method private static f(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "horizontal-tb"

    return-object p0

    :cond_0
    const-string/jumbo p0, "vertical-lr"

    return-object p0

    :cond_1
    const-string/jumbo p0, "vertical-rl"

    return-object p0
.end method

.method private static h(Landroidx/media3/common/text/Cue;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    cmpl-float v1, v0, v1

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget p0, p0, Landroidx/media3/common/text/Cue;->verticalType:I

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x2

    .line 12
    .line 13
    if-eq p0, v2, :cond_1

    .line 14
    .line 15
    if-ne p0, v1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    const-string/jumbo p0, "skewX"

    .line 20
    goto :goto_1

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    const-string/jumbo p0, "skewY"

    .line 24
    .line 25
    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    aput-object p0, v2, v3

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    aput-object p0, v2, v1

    .line 35
    .line 36
    const-string p0, "%s(%.2fdeg)"

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v2}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    .line 43
    :cond_2
    const-string p0, ""

    .line 44
    return-object p0
.end method

.method private i()V
    .locals 26

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const/4 v2, 0x4

    .line 9
    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v4, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    .line 13
    .line 14
    iget v4, v4, Landroidx/media3/ui/CaptionStyleCompat;->foregroundColor:I

    .line 15
    .line 16
    .line 17
    invoke-static {v4}, Landroidx/media3/ui/HtmlUtils;->b(I)Ljava/lang/String;

    .line 18
    move-result-object v4

    .line 19
    const/4 v5, 0x0

    .line 20
    .line 21
    aput-object v4, v3, v5

    .line 22
    .line 23
    iget v4, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    .line 24
    .line 25
    iget v6, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSize:F

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v4, v6}, Landroidx/media3/ui/WebViewSubtitleOutput;->e(IF)Ljava/lang/String;

    .line 29
    move-result-object v4

    .line 30
    const/4 v6, 0x1

    .line 31
    .line 32
    aput-object v4, v3, v6

    .line 33
    .line 34
    .line 35
    const v4, 0x3f99999a    # 1.2f

    .line 36
    .line 37
    .line 38
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 39
    move-result-object v7

    .line 40
    const/4 v8, 0x2

    .line 41
    .line 42
    aput-object v7, v3, v8

    .line 43
    .line 44
    iget-object v7, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    .line 45
    .line 46
    .line 47
    invoke-static {v7}, Landroidx/media3/ui/WebViewSubtitleOutput;->d(Landroidx/media3/ui/CaptionStyleCompat;)Ljava/lang/String;

    .line 48
    move-result-object v7

    .line 49
    const/4 v9, 0x3

    .line 50
    .line 51
    aput-object v7, v3, v9

    .line 52
    .line 53
    const-string v7, "<body><div style=\'-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;\'>"

    .line 54
    .line 55
    .line 56
    invoke-static {v7, v3}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    new-instance v3, Ljava/util/HashMap;

    .line 63
    .line 64
    .line 65
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 66
    .line 67
    const-string v7, "default_bg"

    .line 68
    .line 69
    .line 70
    invoke-static {v7}, Landroidx/media3/ui/HtmlUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v10

    .line 72
    .line 73
    new-array v11, v6, [Ljava/lang/Object;

    .line 74
    .line 75
    iget-object v12, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    .line 76
    .line 77
    iget v12, v12, Landroidx/media3/ui/CaptionStyleCompat;->backgroundColor:I

    .line 78
    .line 79
    .line 80
    invoke-static {v12}, Landroidx/media3/ui/HtmlUtils;->b(I)Ljava/lang/String;

    .line 81
    move-result-object v12

    .line 82
    .line 83
    aput-object v12, v11, v5

    .line 84
    .line 85
    const-string v12, "background-color:%s;"

    .line 86
    .line 87
    .line 88
    invoke-static {v12, v11}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    move-result-object v11

    .line 90
    .line 91
    .line 92
    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move v10, v5

    .line 94
    .line 95
    :goto_0
    iget-object v11, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    .line 96
    .line 97
    .line 98
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 99
    move-result v11

    .line 100
    .line 101
    if-ge v10, v11, :cond_12

    .line 102
    .line 103
    iget-object v11, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    .line 104
    .line 105
    .line 106
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object v11

    .line 108
    .line 109
    check-cast v11, Landroidx/media3/common/text/Cue;

    .line 110
    .line 111
    iget v12, v11, Landroidx/media3/common/text/Cue;->position:F

    .line 112
    .line 113
    .line 114
    const v13, -0x800001

    .line 115
    .line 116
    cmpl-float v14, v12, v13

    .line 117
    .line 118
    const/high16 v15, 0x42c80000    # 100.0f

    .line 119
    .line 120
    if-eqz v14, :cond_0

    .line 121
    mul-float/2addr v12, v15

    .line 122
    goto :goto_1

    .line 123
    .line 124
    :cond_0
    const/high16 v12, 0x42480000    # 50.0f

    .line 125
    .line 126
    :goto_1
    iget v14, v11, Landroidx/media3/common/text/Cue;->positionAnchor:I

    .line 127
    .line 128
    .line 129
    invoke-static {v14}, Landroidx/media3/ui/WebViewSubtitleOutput;->b(I)I

    .line 130
    move-result v14

    .line 131
    .line 132
    iget v2, v11, Landroidx/media3/common/text/Cue;->line:F

    .line 133
    .line 134
    cmpl-float v17, v2, v13

    .line 135
    .line 136
    const/high16 v18, 0x3f800000    # 1.0f

    .line 137
    .line 138
    const-string v9, "%.2f%%"

    .line 139
    .line 140
    if-eqz v17, :cond_4

    .line 141
    .line 142
    iget v8, v11, Landroidx/media3/common/text/Cue;->lineType:I

    .line 143
    .line 144
    if-eq v8, v6, :cond_2

    .line 145
    .line 146
    new-array v8, v6, [Ljava/lang/Object;

    .line 147
    mul-float/2addr v2, v15

    .line 148
    .line 149
    .line 150
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 151
    move-result-object v2

    .line 152
    .line 153
    aput-object v2, v8, v5

    .line 154
    .line 155
    .line 156
    invoke-static {v9, v8}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    move-result-object v2

    .line 158
    .line 159
    iget v8, v11, Landroidx/media3/common/text/Cue;->verticalType:I

    .line 160
    .line 161
    if-ne v8, v6, :cond_1

    .line 162
    .line 163
    iget v8, v11, Landroidx/media3/common/text/Cue;->lineAnchor:I

    .line 164
    .line 165
    .line 166
    invoke-static {v8}, Landroidx/media3/ui/WebViewSubtitleOutput;->b(I)I

    .line 167
    move-result v8

    .line 168
    neg-int v8, v8

    .line 169
    goto :goto_2

    .line 170
    .line 171
    :cond_1
    iget v8, v11, Landroidx/media3/common/text/Cue;->lineAnchor:I

    .line 172
    .line 173
    .line 174
    invoke-static {v8}, Landroidx/media3/ui/WebViewSubtitleOutput;->b(I)I

    .line 175
    move-result v8

    .line 176
    :goto_2
    move v13, v5

    .line 177
    goto :goto_3

    .line 178
    :cond_2
    const/4 v8, 0x0

    .line 179
    .line 180
    cmpl-float v8, v2, v8

    .line 181
    .line 182
    const-string v13, "%.2fem"

    .line 183
    .line 184
    if-ltz v8, :cond_3

    .line 185
    .line 186
    new-array v8, v6, [Ljava/lang/Object;

    .line 187
    mul-float/2addr v2, v4

    .line 188
    .line 189
    .line 190
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 191
    move-result-object v2

    .line 192
    .line 193
    aput-object v2, v8, v5

    .line 194
    .line 195
    .line 196
    invoke-static {v13, v8}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    move-result-object v2

    .line 198
    move v8, v5

    .line 199
    move v13, v8

    .line 200
    goto :goto_3

    .line 201
    .line 202
    :cond_3
    new-array v8, v6, [Ljava/lang/Object;

    .line 203
    neg-float v2, v2

    .line 204
    .line 205
    sub-float v2, v2, v18

    .line 206
    mul-float/2addr v2, v4

    .line 207
    .line 208
    .line 209
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 210
    move-result-object v2

    .line 211
    .line 212
    aput-object v2, v8, v5

    .line 213
    .line 214
    .line 215
    invoke-static {v13, v8}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 216
    move-result-object v2

    .line 217
    move v8, v5

    .line 218
    move v13, v6

    .line 219
    goto :goto_3

    .line 220
    .line 221
    :cond_4
    new-array v2, v6, [Ljava/lang/Object;

    .line 222
    .line 223
    iget v8, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    .line 224
    .line 225
    sub-float v18, v18, v8

    .line 226
    .line 227
    mul-float v18, v18, v15

    .line 228
    .line 229
    .line 230
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 231
    move-result-object v8

    .line 232
    .line 233
    aput-object v8, v2, v5

    .line 234
    .line 235
    .line 236
    invoke-static {v9, v2}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 237
    move-result-object v2

    .line 238
    .line 239
    const/16 v8, -0x64

    .line 240
    goto :goto_2

    .line 241
    .line 242
    :goto_3
    iget v4, v11, Landroidx/media3/common/text/Cue;->size:F

    .line 243
    .line 244
    .line 245
    const v19, -0x800001

    .line 246
    .line 247
    cmpl-float v19, v4, v19

    .line 248
    .line 249
    if-eqz v19, :cond_5

    .line 250
    .line 251
    new-array v5, v6, [Ljava/lang/Object;

    .line 252
    mul-float/2addr v4, v15

    .line 253
    .line 254
    .line 255
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 256
    move-result-object v4

    .line 257
    const/4 v15, 0x0

    .line 258
    .line 259
    aput-object v4, v5, v15

    .line 260
    .line 261
    .line 262
    invoke-static {v9, v5}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 263
    move-result-object v4

    .line 264
    goto :goto_4

    .line 265
    .line 266
    :cond_5
    const-string v4, "fit-content"

    .line 267
    .line 268
    :goto_4
    iget-object v5, v11, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 269
    .line 270
    .line 271
    invoke-static {v5}, Landroidx/media3/ui/WebViewSubtitleOutput;->c(Landroid/text/Layout$Alignment;)Ljava/lang/String;

    .line 272
    move-result-object v5

    .line 273
    .line 274
    iget v9, v11, Landroidx/media3/common/text/Cue;->verticalType:I

    .line 275
    .line 276
    .line 277
    invoke-static {v9}, Landroidx/media3/ui/WebViewSubtitleOutput;->f(I)Ljava/lang/String;

    .line 278
    move-result-object v9

    .line 279
    .line 280
    iget v15, v11, Landroidx/media3/common/text/Cue;->textSizeType:I

    .line 281
    .line 282
    iget v6, v11, Landroidx/media3/common/text/Cue;->textSize:F

    .line 283
    .line 284
    .line 285
    invoke-direct {v0, v15, v6}, Landroidx/media3/ui/WebViewSubtitleOutput;->e(IF)Ljava/lang/String;

    .line 286
    move-result-object v6

    .line 287
    .line 288
    iget-boolean v15, v11, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    .line 289
    .line 290
    if-eqz v15, :cond_6

    .line 291
    .line 292
    iget v15, v11, Landroidx/media3/common/text/Cue;->windowColor:I

    .line 293
    goto :goto_5

    .line 294
    .line 295
    :cond_6
    iget-object v15, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    .line 296
    .line 297
    iget v15, v15, Landroidx/media3/ui/CaptionStyleCompat;->windowColor:I

    .line 298
    .line 299
    .line 300
    :goto_5
    invoke-static {v15}, Landroidx/media3/ui/HtmlUtils;->b(I)Ljava/lang/String;

    .line 301
    move-result-object v15

    .line 302
    .line 303
    move/from16 v20, v8

    .line 304
    .line 305
    iget v8, v11, Landroidx/media3/common/text/Cue;->verticalType:I

    .line 306
    .line 307
    .line 308
    const-string/jumbo v21, "right"

    .line 309
    .line 310
    .line 311
    const-string/jumbo v22, "top"

    .line 312
    .line 313
    const-string v23, "left"

    .line 314
    .line 315
    move/from16 v24, v14

    .line 316
    const/4 v14, 0x1

    .line 317
    .line 318
    if-eq v8, v14, :cond_b

    .line 319
    const/4 v14, 0x2

    .line 320
    .line 321
    if-eq v8, v14, :cond_8

    .line 322
    .line 323
    if-eqz v13, :cond_7

    .line 324
    .line 325
    const-string v22, "bottom"

    .line 326
    :cond_7
    const/4 v13, 0x2

    .line 327
    goto :goto_8

    .line 328
    .line 329
    :cond_8
    if-eqz v13, :cond_9

    .line 330
    goto :goto_7

    .line 331
    .line 332
    :cond_9
    :goto_6
    move-object/from16 v21, v23

    .line 333
    .line 334
    :cond_a
    :goto_7
    move-object/from16 v23, v22

    .line 335
    const/4 v13, 0x2

    .line 336
    .line 337
    move-object/from16 v22, v21

    .line 338
    goto :goto_8

    .line 339
    .line 340
    :cond_b
    if-eqz v13, :cond_a

    .line 341
    goto :goto_6

    .line 342
    .line 343
    :goto_8
    if-eq v8, v13, :cond_d

    .line 344
    const/4 v13, 0x1

    .line 345
    .line 346
    if-ne v8, v13, :cond_c

    .line 347
    goto :goto_9

    .line 348
    .line 349
    .line 350
    :cond_c
    const-string/jumbo v8, "width"

    .line 351
    .line 352
    move/from16 v14, v24

    .line 353
    goto :goto_a

    .line 354
    .line 355
    :cond_d
    :goto_9
    const-string v8, "height"

    .line 356
    .line 357
    move/from16 v14, v20

    .line 358
    .line 359
    move/from16 v20, v24

    .line 360
    .line 361
    :goto_a
    iget-object v13, v11, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    .line 362
    .line 363
    .line 364
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 365
    move-result-object v21

    .line 366
    .line 367
    .line 368
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 369
    move-result-object v21

    .line 370
    .line 371
    .line 372
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 373
    move-result-object v0

    .line 374
    .line 375
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 376
    .line 377
    .line 378
    invoke-static {v13, v0}, Landroidx/media3/ui/SpannedToHtmlConverter;->a(Ljava/lang/CharSequence;F)Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;

    .line 379
    move-result-object v0

    .line 380
    .line 381
    .line 382
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 383
    move-result-object v13

    .line 384
    .line 385
    .line 386
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 387
    move-result-object v13

    .line 388
    .line 389
    .line 390
    :goto_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 391
    move-result v21

    .line 392
    .line 393
    if-eqz v21, :cond_10

    .line 394
    .line 395
    .line 396
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 397
    move-result-object v21

    .line 398
    .line 399
    move-object/from16 v24, v13

    .line 400
    .line 401
    move-object/from16 v13, v21

    .line 402
    .line 403
    check-cast v13, Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    move-result-object v21

    .line 408
    .line 409
    move-object/from16 v25, v0

    .line 410
    .line 411
    move-object/from16 v0, v21

    .line 412
    .line 413
    check-cast v0, Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    invoke-interface {v3, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    move-result-object v0

    .line 418
    .line 419
    check-cast v0, Ljava/lang/String;

    .line 420
    .line 421
    if-eqz v0, :cond_f

    .line 422
    .line 423
    .line 424
    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    move-result-object v13

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    move-result v0

    .line 430
    .line 431
    if-eqz v0, :cond_e

    .line 432
    goto :goto_c

    .line 433
    :cond_e
    const/4 v0, 0x0

    .line 434
    goto :goto_d

    .line 435
    :cond_f
    :goto_c
    const/4 v0, 0x1

    .line 436
    .line 437
    .line 438
    :goto_d
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 439
    .line 440
    move-object/from16 v13, v24

    .line 441
    .line 442
    move-object/from16 v0, v25

    .line 443
    goto :goto_b

    .line 444
    .line 445
    :cond_10
    move-object/from16 v25, v0

    .line 446
    .line 447
    const/16 v0, 0xe

    .line 448
    .line 449
    new-array v0, v0, [Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 453
    move-result-object v13

    .line 454
    .line 455
    const/16 v19, 0x0

    .line 456
    .line 457
    aput-object v13, v0, v19

    .line 458
    const/4 v13, 0x1

    .line 459
    .line 460
    aput-object v23, v0, v13

    .line 461
    .line 462
    .line 463
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 464
    move-result-object v12

    .line 465
    const/4 v13, 0x2

    .line 466
    .line 467
    aput-object v12, v0, v13

    .line 468
    const/4 v12, 0x3

    .line 469
    .line 470
    aput-object v22, v0, v12

    .line 471
    .line 472
    const/16 v16, 0x4

    .line 473
    .line 474
    aput-object v2, v0, v16

    .line 475
    const/4 v2, 0x5

    .line 476
    .line 477
    aput-object v8, v0, v2

    .line 478
    const/4 v2, 0x6

    .line 479
    .line 480
    aput-object v4, v0, v2

    .line 481
    const/4 v2, 0x7

    .line 482
    .line 483
    aput-object v5, v0, v2

    .line 484
    .line 485
    const/16 v2, 0x8

    .line 486
    .line 487
    aput-object v9, v0, v2

    .line 488
    .line 489
    const/16 v2, 0x9

    .line 490
    .line 491
    aput-object v6, v0, v2

    .line 492
    .line 493
    const/16 v2, 0xa

    .line 494
    .line 495
    aput-object v15, v0, v2

    .line 496
    .line 497
    const/16 v2, 0xb

    .line 498
    .line 499
    .line 500
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 501
    move-result-object v4

    .line 502
    .line 503
    aput-object v4, v0, v2

    .line 504
    .line 505
    const/16 v2, 0xc

    .line 506
    .line 507
    .line 508
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 509
    move-result-object v4

    .line 510
    .line 511
    aput-object v4, v0, v2

    .line 512
    .line 513
    const/16 v2, 0xd

    .line 514
    .line 515
    .line 516
    invoke-static {v11}, Landroidx/media3/ui/WebViewSubtitleOutput;->h(Landroidx/media3/common/text/Cue;)Ljava/lang/String;

    .line 517
    move-result-object v4

    .line 518
    .line 519
    aput-object v4, v0, v2

    .line 520
    .line 521
    const-string v2, "<div style=\'position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;\'>"

    .line 522
    .line 523
    .line 524
    invoke-static {v2, v0}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 525
    move-result-object v0

    .line 526
    .line 527
    .line 528
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const/4 v0, 0x1

    .line 530
    .line 531
    new-array v2, v0, [Ljava/lang/Object;

    .line 532
    const/4 v4, 0x0

    .line 533
    .line 534
    aput-object v7, v2, v4

    .line 535
    .line 536
    const-string v5, "<span class=\'%s\'>"

    .line 537
    .line 538
    .line 539
    invoke-static {v5, v2}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 540
    move-result-object v2

    .line 541
    .line 542
    .line 543
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    iget-object v2, v11, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 546
    .line 547
    const-string v5, "</span>"

    .line 548
    .line 549
    if-eqz v2, :cond_11

    .line 550
    .line 551
    new-array v6, v0, [Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    invoke-static {v2}, Landroidx/media3/ui/WebViewSubtitleOutput;->c(Landroid/text/Layout$Alignment;)Ljava/lang/String;

    .line 555
    move-result-object v0

    .line 556
    .line 557
    aput-object v0, v6, v4

    .line 558
    .line 559
    const-string v0, "<span style=\'display:inline-block; text-align:%s;\'>"

    .line 560
    .line 561
    .line 562
    invoke-static {v0, v6}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 563
    move-result-object v0

    .line 564
    .line 565
    .line 566
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    move-object/from16 v0, v25

    .line 569
    .line 570
    iget-object v0, v0, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;->html:Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    goto :goto_e

    .line 578
    .line 579
    :cond_11
    move-object/from16 v0, v25

    .line 580
    .line 581
    iget-object v0, v0, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;->html:Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    :goto_e
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    const-string v0, "</div>"

    .line 590
    .line 591
    .line 592
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    add-int/lit8 v10, v10, 0x1

    .line 595
    .line 596
    .line 597
    const v4, 0x3f99999a    # 1.2f

    .line 598
    const/4 v5, 0x0

    .line 599
    .line 600
    move-object/from16 v0, p0

    .line 601
    move v9, v12

    .line 602
    move v8, v13

    .line 603
    .line 604
    move/from16 v2, v16

    .line 605
    const/4 v6, 0x1

    .line 606
    .line 607
    goto/16 :goto_0

    .line 608
    .line 609
    :cond_12
    const-string v0, "</div></body></html>"

    .line 610
    .line 611
    .line 612
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .line 619
    const-string v2, "<html><head><style>"

    .line 620
    .line 621
    .line 622
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 626
    move-result-object v2

    .line 627
    .line 628
    .line 629
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 630
    move-result-object v2

    .line 631
    .line 632
    .line 633
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 634
    move-result v4

    .line 635
    .line 636
    if-eqz v4, :cond_13

    .line 637
    .line 638
    .line 639
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 640
    move-result-object v4

    .line 641
    .line 642
    check-cast v4, Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    const-string/jumbo v5, "{"

    .line 649
    .line 650
    .line 651
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    move-result-object v4

    .line 656
    .line 657
    check-cast v4, Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    const-string/jumbo v4, "}"

    .line 664
    .line 665
    .line 666
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    goto :goto_f

    .line 668
    .line 669
    :cond_13
    const-string v2, "</style></head>"

    .line 670
    .line 671
    .line 672
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 676
    move-result-object v0

    .line 677
    const/4 v2, 0x0

    .line 678
    .line 679
    .line 680
    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    move-object/from16 v0, p0

    .line 683
    .line 684
    iget-object v2, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->webView:Landroid/webkit/WebView;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 688
    move-result-object v1

    .line 689
    .line 690
    sget-object v3, Lcom/google/common/base/e;->UTF_8:Ljava/nio/charset/Charset;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 694
    move-result-object v1

    .line 695
    const/4 v3, 0x1

    .line 696
    .line 697
    .line 698
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 699
    move-result-object v1

    .line 700
    .line 701
    .line 702
    const-string/jumbo v3, "text/html"

    .line 703
    .line 704
    const-string v4, "base64"

    .line 705
    .line 706
    .line 707
    invoke-virtual {v2, v1, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Landroidx/media3/ui/CaptionStyleCompat;FIF)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;",
            "Landroidx/media3/ui/CaptionStyleCompat;",
            "FIF)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p2, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->style:Landroidx/media3/ui/CaptionStyleCompat;

    .line 3
    .line 4
    iput p3, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSize:F

    .line 5
    .line 6
    iput p4, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    .line 7
    .line 8
    iput p5, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    move-result v3

    .line 24
    .line 25
    if-ge v2, v3, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Landroidx/media3/common/text/Cue;

    .line 32
    .line 33
    iget-object v4, v3, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    iget-object p1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 51
    move-result p1

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 57
    move-result p1

    .line 58
    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    :cond_2
    iput-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->i()V

    .line 65
    .line 66
    :cond_3
    iget-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->canvasSubtitleOutput:Landroidx/media3/ui/CanvasSubtitleOutput;

    .line 67
    move-object v2, p2

    .line 68
    move v3, p3

    .line 69
    move v4, p4

    .line 70
    move v5, p5

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/ui/CanvasSubtitleOutput;->a(Ljava/util/List;Landroidx/media3/ui/CaptionStyleCompat;FIF)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 77
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->webView:Landroid/webkit/WebView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 6
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->i()V

    .line 17
    :cond_0
    return-void
.end method
