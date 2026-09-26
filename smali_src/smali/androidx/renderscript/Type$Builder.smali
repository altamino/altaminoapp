.class public Landroidx/renderscript/Type$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroidx/renderscript/Element;

.field mRS:Landroidx/renderscript/RenderScript;

.field mYuv:I


# direct methods
.method public constructor <init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Landroidx/renderscript/Type$Builder;->mDimX:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroidx/renderscript/BaseObj;->checkValid()V

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/renderscript/Type$Builder;->mRS:Landroidx/renderscript/RenderScript;

    .line 12
    .line 13
    iput-object p2, p0, Landroidx/renderscript/Type$Builder;->mElement:Landroidx/renderscript/Element;

    .line 14
    return-void
.end method


# virtual methods
.method public create()Landroidx/renderscript/Type;
    .locals 11

    .line 1
    .line 2
    iget v0, p0, Landroidx/renderscript/Type$Builder;->mDimZ:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-lez v0, :cond_2

    .line 6
    .line 7
    iget v2, p0, Landroidx/renderscript/Type$Builder;->mDimX:I

    .line 8
    .line 9
    if-lt v2, v1, :cond_1

    .line 10
    .line 11
    iget v2, p0, Landroidx/renderscript/Type$Builder;->mDimY:I

    .line 12
    .line 13
    if-lt v2, v1, :cond_1

    .line 14
    .line 15
    iget-boolean v2, p0, Landroidx/renderscript/Type$Builder;->mDimFaces:Z

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    .line 21
    .line 22
    const-string v1, "Cube maps not supported with 3D types."

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 26
    throw v0

    .line 27
    .line 28
    :cond_1
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    .line 29
    .line 30
    const-string v1, "Both X and Y dimension required when Z is present."

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 34
    throw v0

    .line 35
    .line 36
    :cond_2
    :goto_0
    iget v2, p0, Landroidx/renderscript/Type$Builder;->mDimY:I

    .line 37
    .line 38
    if-lez v2, :cond_4

    .line 39
    .line 40
    iget v3, p0, Landroidx/renderscript/Type$Builder;->mDimX:I

    .line 41
    .line 42
    if-lt v3, v1, :cond_3

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_3
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    .line 46
    .line 47
    const-string v1, "X dimension required when Y is present."

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 51
    throw v0

    .line 52
    .line 53
    :cond_4
    :goto_1
    iget-boolean v3, p0, Landroidx/renderscript/Type$Builder;->mDimFaces:Z

    .line 54
    .line 55
    if-eqz v3, :cond_6

    .line 56
    .line 57
    if-lt v2, v1, :cond_5

    .line 58
    goto :goto_2

    .line 59
    .line 60
    :cond_5
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    .line 61
    .line 62
    const-string v1, "Cube maps require 2D Types."

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 66
    throw v0

    .line 67
    .line 68
    :cond_6
    :goto_2
    iget v1, p0, Landroidx/renderscript/Type$Builder;->mYuv:I

    .line 69
    .line 70
    if-eqz v1, :cond_8

    .line 71
    .line 72
    if-nez v0, :cond_7

    .line 73
    .line 74
    if-nez v3, :cond_7

    .line 75
    .line 76
    iget-boolean v0, p0, Landroidx/renderscript/Type$Builder;->mDimMipmaps:Z

    .line 77
    .line 78
    if-nez v0, :cond_7

    .line 79
    goto :goto_3

    .line 80
    .line 81
    :cond_7
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    .line 82
    .line 83
    const-string v1, "YUV only supports basic 2D."

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 87
    throw v0

    .line 88
    .line 89
    :cond_8
    :goto_3
    iget-object v2, p0, Landroidx/renderscript/Type$Builder;->mRS:Landroidx/renderscript/RenderScript;

    .line 90
    .line 91
    iget-object v0, p0, Landroidx/renderscript/Type$Builder;->mElement:Landroidx/renderscript/Element;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 95
    move-result-wide v3

    .line 96
    .line 97
    iget v5, p0, Landroidx/renderscript/Type$Builder;->mDimX:I

    .line 98
    .line 99
    iget v6, p0, Landroidx/renderscript/Type$Builder;->mDimY:I

    .line 100
    .line 101
    iget v7, p0, Landroidx/renderscript/Type$Builder;->mDimZ:I

    .line 102
    .line 103
    iget-boolean v8, p0, Landroidx/renderscript/Type$Builder;->mDimMipmaps:Z

    .line 104
    .line 105
    iget-boolean v9, p0, Landroidx/renderscript/Type$Builder;->mDimFaces:Z

    .line 106
    .line 107
    iget v10, p0, Landroidx/renderscript/Type$Builder;->mYuv:I

    .line 108
    .line 109
    .line 110
    invoke-virtual/range {v2 .. v10}, Landroidx/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    .line 111
    move-result-wide v0

    .line 112
    .line 113
    new-instance v2, Landroidx/renderscript/Type;

    .line 114
    .line 115
    iget-object v3, p0, Landroidx/renderscript/Type$Builder;->mRS:Landroidx/renderscript/RenderScript;

    .line 116
    .line 117
    .line 118
    invoke-direct {v2, v0, v1, v3}, Landroidx/renderscript/Type;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 119
    .line 120
    iget-object v0, p0, Landroidx/renderscript/Type$Builder;->mElement:Landroidx/renderscript/Element;

    .line 121
    .line 122
    iput-object v0, v2, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 123
    .line 124
    iget v0, p0, Landroidx/renderscript/Type$Builder;->mDimX:I

    .line 125
    .line 126
    iput v0, v2, Landroidx/renderscript/Type;->mDimX:I

    .line 127
    .line 128
    iget v0, p0, Landroidx/renderscript/Type$Builder;->mDimY:I

    .line 129
    .line 130
    iput v0, v2, Landroidx/renderscript/Type;->mDimY:I

    .line 131
    .line 132
    iget v0, p0, Landroidx/renderscript/Type$Builder;->mDimZ:I

    .line 133
    .line 134
    iput v0, v2, Landroidx/renderscript/Type;->mDimZ:I

    .line 135
    .line 136
    iget-boolean v0, p0, Landroidx/renderscript/Type$Builder;->mDimMipmaps:Z

    .line 137
    .line 138
    iput-boolean v0, v2, Landroidx/renderscript/Type;->mDimMipmaps:Z

    .line 139
    .line 140
    iget-boolean v0, p0, Landroidx/renderscript/Type$Builder;->mDimFaces:Z

    .line 141
    .line 142
    iput-boolean v0, v2, Landroidx/renderscript/Type;->mDimFaces:Z

    .line 143
    .line 144
    iget v0, p0, Landroidx/renderscript/Type$Builder;->mYuv:I

    .line 145
    .line 146
    iput v0, v2, Landroidx/renderscript/Type;->mDimYuv:I

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Landroidx/renderscript/Type;->calcElementCount()V

    .line 150
    return-object v2
.end method

.method public setFaces(Z)Landroidx/renderscript/Type$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/renderscript/Type$Builder;->mDimFaces:Z

    return-object p0
.end method

.method public setMipmaps(Z)Landroidx/renderscript/Type$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/renderscript/Type$Builder;->mDimMipmaps:Z

    return-object p0
.end method

.method public setX(I)Landroidx/renderscript/Type$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroidx/renderscript/Type$Builder;->mDimX:I

    .line 6
    return-object p0

    .line 7
    .line 8
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "Values of less than 1 for Dimension X are not valid."

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    throw p1
.end method

.method public setY(I)Landroidx/renderscript/Type$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroidx/renderscript/Type$Builder;->mDimY:I

    .line 6
    return-object p0

    .line 7
    .line 8
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "Values of less than 1 for Dimension Y are not valid."

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    throw p1
.end method

.method public setYuvFormat(I)Landroidx/renderscript/Type$Builder;
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x11

    .line 3
    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    .line 7
    const v0, 0x32315659

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "Only NV21 and YV12 are supported.."

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1

    .line 19
    .line 20
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/renderscript/Type$Builder;->mYuv:I

    .line 21
    return-object p0
.end method

.method public setZ(I)Landroidx/renderscript/Type$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroidx/renderscript/Type$Builder;->mDimZ:I

    .line 6
    return-object p0

    .line 7
    .line 8
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "Values of less than 1 for Dimension Z are not valid."

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    throw p1
.end method
