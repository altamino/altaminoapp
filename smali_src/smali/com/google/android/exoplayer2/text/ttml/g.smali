.class final Lcom/google/android/exoplayer2/text/ttml/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FONT_SIZE_UNIT_EM:I = 0x2

.field public static final FONT_SIZE_UNIT_PERCENT:I = 0x3

.field public static final FONT_SIZE_UNIT_PIXEL:I = 0x1

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field public static final RUBY_TYPE_BASE:I = 0x2

.field public static final RUBY_TYPE_CONTAINER:I = 0x1

.field public static final RUBY_TYPE_DELIMITER:I = 0x4

.field public static final RUBY_TYPE_TEXT:I = 0x3

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_BOLD_ITALIC:I = 0x3

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_NORMAL:I = 0x0

.field public static final UNSPECIFIED:I = -0x1

.field public static final UNSPECIFIED_SHEAR:F = 3.4028235E38f


# instance fields
.field private backgroundColor:I

.field private bold:I

.field private fontColor:I

.field private fontFamily:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fontSize:F

.field private fontSizeUnit:I

.field private hasBackgroundColor:Z

.field private hasFontColor:Z

.field private id:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private italic:I

.field private linethrough:I

.field private multiRowAlign:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private rubyPosition:I

.field private rubyType:I

.field private shearPercentage:F

.field private textAlign:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private textCombine:I

.field private textEmphasis:Lcom/google/android/exoplayer2/text/ttml/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private underline:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->linethrough:I

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->underline:I

    .line 9
    .line 10
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->bold:I

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->italic:I

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->fontSizeUnit:I

    .line 15
    .line 16
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->rubyType:I

    .line 17
    .line 18
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->rubyPosition:I

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->textCombine:I

    .line 21
    .line 22
    .line 23
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 24
    .line 25
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->shearPercentage:F

    .line 26
    return-void
.end method

.method private r(Lcom/google/android/exoplayer2/text/ttml/g;Z)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 3
    .param p1    # Lcom/google/android/exoplayer2/text/ttml/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_e

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->hasFontColor:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->hasFontColor:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->fontColor:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/ttml/g;->w(I)Lcom/google/android/exoplayer2/text/ttml/g;

    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->bold:I

    .line 18
    const/4 v1, -0x1

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->bold:I

    .line 23
    .line 24
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->bold:I

    .line 25
    .line 26
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->italic:I

    .line 27
    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->italic:I

    .line 31
    .line 32
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->italic:I

    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->fontFamily:Ljava/lang/String;

    .line 35
    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->fontFamily:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->fontFamily:Ljava/lang/String;

    .line 43
    .line 44
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->linethrough:I

    .line 45
    .line 46
    if-ne v0, v1, :cond_4

    .line 47
    .line 48
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->linethrough:I

    .line 49
    .line 50
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->linethrough:I

    .line 51
    .line 52
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->underline:I

    .line 53
    .line 54
    if-ne v0, v1, :cond_5

    .line 55
    .line 56
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->underline:I

    .line 57
    .line 58
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->underline:I

    .line 59
    .line 60
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->rubyPosition:I

    .line 61
    .line 62
    if-ne v0, v1, :cond_6

    .line 63
    .line 64
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->rubyPosition:I

    .line 65
    .line 66
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->rubyPosition:I

    .line 67
    .line 68
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->textAlign:Landroid/text/Layout$Alignment;

    .line 69
    .line 70
    if-nez v0, :cond_7

    .line 71
    .line 72
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->textAlign:Landroid/text/Layout$Alignment;

    .line 73
    .line 74
    if-eqz v0, :cond_7

    .line 75
    .line 76
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->textAlign:Landroid/text/Layout$Alignment;

    .line 77
    .line 78
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->multiRowAlign:Landroid/text/Layout$Alignment;

    .line 79
    .line 80
    if-nez v0, :cond_8

    .line 81
    .line 82
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->multiRowAlign:Landroid/text/Layout$Alignment;

    .line 83
    .line 84
    if-eqz v0, :cond_8

    .line 85
    .line 86
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->multiRowAlign:Landroid/text/Layout$Alignment;

    .line 87
    .line 88
    :cond_8
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->textCombine:I

    .line 89
    .line 90
    if-ne v0, v1, :cond_9

    .line 91
    .line 92
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->textCombine:I

    .line 93
    .line 94
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->textCombine:I

    .line 95
    .line 96
    :cond_9
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->fontSizeUnit:I

    .line 97
    .line 98
    if-ne v0, v1, :cond_a

    .line 99
    .line 100
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->fontSizeUnit:I

    .line 101
    .line 102
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->fontSizeUnit:I

    .line 103
    .line 104
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->fontSize:F

    .line 105
    .line 106
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->fontSize:F

    .line 107
    .line 108
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->textEmphasis:Lcom/google/android/exoplayer2/text/ttml/b;

    .line 109
    .line 110
    if-nez v0, :cond_b

    .line 111
    .line 112
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->textEmphasis:Lcom/google/android/exoplayer2/text/ttml/b;

    .line 113
    .line 114
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->textEmphasis:Lcom/google/android/exoplayer2/text/ttml/b;

    .line 115
    .line 116
    :cond_b
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->shearPercentage:F

    .line 117
    .line 118
    .line 119
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 120
    .line 121
    cmpl-float v0, v0, v2

    .line 122
    .line 123
    if-nez v0, :cond_c

    .line 124
    .line 125
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->shearPercentage:F

    .line 126
    .line 127
    iput v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->shearPercentage:F

    .line 128
    .line 129
    :cond_c
    if-eqz p2, :cond_d

    .line 130
    .line 131
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->hasBackgroundColor:Z

    .line 132
    .line 133
    if-nez v0, :cond_d

    .line 134
    .line 135
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->hasBackgroundColor:Z

    .line 136
    .line 137
    if-eqz v0, :cond_d

    .line 138
    .line 139
    iget v0, p1, Lcom/google/android/exoplayer2/text/ttml/g;->backgroundColor:I

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/ttml/g;->u(I)Lcom/google/android/exoplayer2/text/ttml/g;

    .line 143
    .line 144
    :cond_d
    if-eqz p2, :cond_e

    .line 145
    .line 146
    iget p2, p0, Lcom/google/android/exoplayer2/text/ttml/g;->rubyType:I

    .line 147
    .line 148
    if-ne p2, v1, :cond_e

    .line 149
    .line 150
    iget p1, p1, Lcom/google/android/exoplayer2/text/ttml/g;->rubyType:I

    .line 151
    .line 152
    if-eq p1, v1, :cond_e

    .line 153
    .line 154
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->rubyType:I

    .line 155
    :cond_e
    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->id:Ljava/lang/String;

    return-object p0
.end method

.method public B(Z)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->italic:I

    return-object p0
.end method

.method public C(Z)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->linethrough:I

    return-object p0
.end method

.method public D(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->multiRowAlign:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public E(I)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->rubyPosition:I

    return-object p0
.end method

.method public F(I)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->rubyType:I

    return-object p0
.end method

.method public G(F)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->shearPercentage:F

    return-object p0
.end method

.method public H(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->textAlign:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public I(Z)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->textCombine:I

    return-object p0
.end method

.method public J(Lcom/google/android/exoplayer2/text/ttml/b;)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/text/ttml/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->textEmphasis:Lcom/google/android/exoplayer2/text/ttml/b;

    return-object p0
.end method

.method public K(Z)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->underline:I

    return-object p0
.end method

.method public a(Lcom/google/android/exoplayer2/text/ttml/g;)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/text/ttml/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/text/ttml/g;->r(Lcom/google/android/exoplayer2/text/ttml/g;Z)Lcom/google/android/exoplayer2/text/ttml/g;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public b()I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->hasBackgroundColor:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->backgroundColor:I

    .line 7
    return v0

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "Background color has not been defined."

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    throw v0
.end method

.method public c()I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->hasFontColor:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->fontColor:I

    .line 7
    return v0

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "Font color has not been defined."

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public e()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->fontSize:F

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->fontSizeUnit:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->id:Ljava/lang/String;

    return-object v0
.end method

.method public h()Landroid/text/Layout$Alignment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->multiRowAlign:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->rubyPosition:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->rubyType:I

    return v0
.end method

.method public k()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->shearPercentage:F

    return v0
.end method

.method public l()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->bold:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lcom/google/android/exoplayer2/text/ttml/g;->italic:I

    if-ne v2, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/text/ttml/g;->italic:I

    if-ne v3, v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int/2addr v0, v1

    return v0
.end method

.method public m()Landroid/text/Layout$Alignment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->textAlign:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public n()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->textCombine:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public o()Lcom/google/android/exoplayer2/text/ttml/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->textEmphasis:Lcom/google/android/exoplayer2/text/ttml/b;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->hasBackgroundColor:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->hasFontColor:Z

    return v0
.end method

.method public s()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->linethrough:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public t()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/text/ttml/g;->underline:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public u(I)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->backgroundColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->hasBackgroundColor:Z

    return-object p0
.end method

.method public v(Z)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->bold:I

    return-object p0
.end method

.method public w(I)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->fontColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->hasFontColor:Z

    return-object p0
.end method

.method public x(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->fontFamily:Ljava/lang/String;

    return-object p0
.end method

.method public y(F)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->fontSize:F

    return-object p0
.end method

.method public z(I)Lcom/google/android/exoplayer2/text/ttml/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/g;->fontSizeUnit:I

    return-object p0
.end method
