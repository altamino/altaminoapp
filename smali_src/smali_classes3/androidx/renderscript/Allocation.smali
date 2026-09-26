.class public Landroidx/renderscript/Allocation;
.super Landroidx/renderscript/BaseObj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/Allocation$MipmapControl;
    }
.end annotation


# static fields
.field public static final USAGE_GRAPHICS_TEXTURE:I = 0x2

.field public static final USAGE_IO_INPUT:I = 0x20

.field public static final USAGE_IO_OUTPUT:I = 0x40

.field public static final USAGE_SCRIPT:I = 0x1

.field public static final USAGE_SHARED:I = 0x80

.field static mBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field mAdaptedAllocation:Landroidx/renderscript/Allocation;

.field mAutoPadding:Z

.field mBitmap:Landroid/graphics/Bitmap;

.field mByteBuffer:Ljava/nio/ByteBuffer;

.field mByteBufferStride:J

.field mConstrainedFace:Z

.field mConstrainedLOD:Z

.field mConstrainedY:Z

.field mConstrainedZ:Z

.field mCurrentCount:I

.field mCurrentDimX:I

.field mCurrentDimY:I

.field mCurrentDimZ:I

.field mIncAllocDestroyed:Z

.field mIncCompatAllocation:J

.field mReadAllowed:Z

.field mSelectedFace:Landroidx/renderscript/Type$CubemapFace;

.field mSelectedLOD:I

.field mSelectedY:I

.field mSelectedZ:I

.field mSize:I

.field mType:Landroidx/renderscript/Type;

.field mUsage:I

.field mWriteAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 11
    return-void
.end method

.method constructor <init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Type;I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/BaseObj;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    const-wide/16 p1, 0x0

    .line 9
    .line 10
    iput-wide p1, p0, Landroidx/renderscript/Allocation;->mByteBufferStride:J

    .line 11
    const/4 p3, 0x1

    .line 12
    .line 13
    iput-boolean p3, p0, Landroidx/renderscript/Allocation;->mReadAllowed:Z

    .line 14
    .line 15
    iput-boolean p3, p0, Landroidx/renderscript/Allocation;->mWriteAllowed:Z

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    iput-boolean v0, p0, Landroidx/renderscript/Allocation;->mAutoPadding:Z

    .line 19
    .line 20
    sget-object v1, Landroidx/renderscript/Type$CubemapFace;->POSITIVE_X:Landroidx/renderscript/Type$CubemapFace;

    .line 21
    .line 22
    iput-object v1, p0, Landroidx/renderscript/Allocation;->mSelectedFace:Landroidx/renderscript/Type$CubemapFace;

    .line 23
    .line 24
    and-int/lit16 v1, p5, -0xe4

    .line 25
    .line 26
    if-nez v1, :cond_4

    .line 27
    .line 28
    and-int/lit8 v1, p5, 0x20

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iput-boolean v0, p0, Landroidx/renderscript/Allocation;->mWriteAllowed:Z

    .line 33
    .line 34
    and-int/lit8 v1, p5, -0x24

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 40
    .line 41
    const-string p2, "Invalid usage combination."

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p1

    .line 46
    .line 47
    :cond_1
    :goto_0
    iput-object p4, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 48
    .line 49
    iput p5, p0, Landroidx/renderscript/Allocation;->mUsage:I

    .line 50
    .line 51
    iput-wide p1, p0, Landroidx/renderscript/Allocation;->mIncCompatAllocation:J

    .line 52
    .line 53
    iput-boolean v0, p0, Landroidx/renderscript/Allocation;->mIncAllocDestroyed:Z

    .line 54
    .line 55
    if-eqz p4, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p4}, Landroidx/renderscript/Type;->getCount()I

    .line 59
    move-result p1

    .line 60
    .line 61
    iget-object p2, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Landroidx/renderscript/Element;->getBytesSize()I

    .line 69
    move-result p2

    .line 70
    mul-int/2addr p1, p2

    .line 71
    .line 72
    iput p1, p0, Landroidx/renderscript/Allocation;->mSize:I

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, p4}, Landroidx/renderscript/Allocation;->updateCacheInfo(Landroidx/renderscript/Type;)V

    .line 76
    .line 77
    :cond_2
    sget-boolean p1, Landroidx/renderscript/RenderScript;->sUseGCHooks:Z

    .line 78
    .line 79
    if-ne p1, p3, :cond_3

    .line 80
    .line 81
    :try_start_0
    sget-object p1, Landroidx/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    .line 82
    .line 83
    sget-object p2, Landroidx/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    .line 84
    .line 85
    new-array p3, p3, [Ljava/lang/Object;

    .line 86
    .line 87
    iget p4, p0, Landroidx/renderscript/Allocation;->mSize:I

    .line 88
    .line 89
    .line 90
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object p4

    .line 92
    .line 93
    aput-object p4, p3, v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_1

    .line 98
    :catch_0
    move-exception p1

    .line 99
    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    const-string p3, "Couldn\'t invoke registerNativeAllocation:"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p2

    .line 116
    .line 117
    const-string p4, "RenderScript_jni"

    .line 118
    .line 119
    .line 120
    invoke-static {p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    new-instance p2, Landroidx/renderscript/RSRuntimeException;

    .line 123
    .line 124
    new-instance p4, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    .line 140
    invoke-direct {p2, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 141
    throw p2

    .line 142
    :cond_3
    :goto_1
    return-void

    .line 143
    .line 144
    :cond_4
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 145
    .line 146
    const-string p2, "Unknown usage specified."

    .line 147
    .line 148
    .line 149
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 150
    throw p1
.end method

.method private copy1DRangeFromUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V
    .locals 18

    move-object/from16 v6, p0

    iget-object v0, v6, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 1
    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    invoke-virtual {v0}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v14, v0, p2

    iget-boolean v0, v6, Landroidx/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v0, :cond_0

    iget-object v0, v6, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 2
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Element;->getVectorSize()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move-object/from16 v15, p4

    move/from16 v17, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :goto_1
    iget v0, v15, Landroidx/renderscript/Element$DataType;->mSize:I

    mul-int v3, p5, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v4, v14

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;->data1DChecks(IIIIZ)V

    iget-object v7, v6, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 4
    invoke-direct/range {p0 .. p0}, Landroidx/renderscript/Allocation;->getIDSafe()J

    move-result-wide v8

    iget v11, v6, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    iget-object v0, v6, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    iget v0, v0, Landroidx/renderscript/Element$DataType;->mSize:I

    move/from16 v10, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v15, p4

    move/from16 v16, v0

    invoke-virtual/range {v7 .. v17}, Landroidx/renderscript/RenderScript;->nAllocationData1D(JIIILjava/lang/Object;ILandroidx/renderscript/Element$DataType;IZ)V

    return-void
.end method

.method private copy1DRangeToUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V
    .locals 18

    move-object/from16 v6, p0

    iget-object v0, v6, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 1
    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    invoke-virtual {v0}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v14, v0, p2

    iget-boolean v0, v6, Landroidx/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v0, :cond_0

    iget-object v0, v6, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 2
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Element;->getVectorSize()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move-object/from16 v15, p4

    move/from16 v17, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :goto_1
    iget v0, v15, Landroidx/renderscript/Element$DataType;->mSize:I

    mul-int v3, p5, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v4, v14

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;->data1DChecks(IIIIZ)V

    iget-object v7, v6, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 4
    invoke-direct/range {p0 .. p0}, Landroidx/renderscript/Allocation;->getIDSafe()J

    move-result-wide v8

    iget v11, v6, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    iget-object v0, v6, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    iget v0, v0, Landroidx/renderscript/Element$DataType;->mSize:I

    move/from16 v10, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v15, p4

    move/from16 v16, v0

    invoke-virtual/range {v7 .. v17}, Landroidx/renderscript/RenderScript;->nAllocationRead1D(JIIILjava/lang/Object;ILandroidx/renderscript/Element$DataType;IZ)V

    return-void
.end method

.method private copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/renderscript/RenderScript;->validate()V

    .line 8
    .line 9
    .line 10
    invoke-direct/range {p0 .. p6}, Landroidx/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 11
    .line 12
    iget-object v1, v0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/renderscript/Element;->getBytesSize()I

    .line 18
    move-result v1

    .line 19
    .line 20
    mul-int v1, v1, p4

    .line 21
    .line 22
    mul-int v1, v1, p5

    .line 23
    .line 24
    mul-int v1, v1, p6

    .line 25
    .line 26
    move-object/from16 v14, p8

    .line 27
    .line 28
    iget v2, v14, Landroidx/renderscript/Element$DataType;->mSize:I

    .line 29
    .line 30
    mul-int v2, v2, p9

    .line 31
    .line 32
    iget-boolean v3, v0, Landroidx/renderscript/Allocation;->mAutoPadding:Z

    .line 33
    .line 34
    const-string v4, "Array too small for allocation type."

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    iget-object v3, v0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Landroidx/renderscript/Element;->getVectorSize()I

    .line 46
    move-result v3

    .line 47
    const/4 v5, 0x3

    .line 48
    .line 49
    if-ne v3, v5, :cond_1

    .line 50
    .line 51
    div-int/lit8 v3, v1, 0x4

    .line 52
    mul-int/2addr v3, v5

    .line 53
    .line 54
    if-gt v3, v2, :cond_0

    .line 55
    const/4 v2, 0x1

    .line 56
    move v13, v1

    .line 57
    .line 58
    move/from16 v16, v2

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_0
    new-instance v1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, v4}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    throw v1

    .line 66
    .line 67
    :cond_1
    if-gt v1, v2, :cond_2

    .line 68
    const/4 v1, 0x0

    .line 69
    .line 70
    move/from16 v16, v1

    .line 71
    move v13, v2

    .line 72
    .line 73
    :goto_0
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 74
    .line 75
    .line 76
    invoke-direct/range {p0 .. p0}, Landroidx/renderscript/Allocation;->getIDSafe()J

    .line 77
    move-result-wide v3

    .line 78
    .line 79
    iget v8, v0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    .line 80
    .line 81
    iget-object v1, v0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 82
    .line 83
    iget-object v1, v1, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 84
    .line 85
    iget-object v1, v1, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 86
    .line 87
    iget v15, v1, Landroidx/renderscript/Element$DataType;->mSize:I

    .line 88
    .line 89
    move/from16 v5, p1

    .line 90
    .line 91
    move/from16 v6, p2

    .line 92
    .line 93
    move/from16 v7, p3

    .line 94
    .line 95
    move/from16 v9, p4

    .line 96
    .line 97
    move/from16 v10, p5

    .line 98
    .line 99
    move/from16 v11, p6

    .line 100
    .line 101
    move-object/from16 v12, p7

    .line 102
    .line 103
    move-object/from16 v14, p8

    .line 104
    .line 105
    .line 106
    invoke-virtual/range {v2 .. v16}, Landroidx/renderscript/RenderScript;->nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroidx/renderscript/Element$DataType;IZ)V

    .line 107
    return-void

    .line 108
    .line 109
    :cond_2
    new-instance v1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 110
    .line 111
    .line 112
    invoke-direct {v1, v4}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    throw v1
.end method

.method private copyFromUnchecked(Ljava/lang/Object;Landroidx/renderscript/Element$DataType;I)V
    .locals 10

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 1
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    iget v6, p0, Landroidx/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v6, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    .line 2
    invoke-direct/range {v0 .. v9}, Landroidx/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    goto :goto_0

    :cond_0
    iget v4, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    if-lez v4, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    .line 3
    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iget v2, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 4
    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    :goto_0
    return-void
.end method

.method private copyTo(Ljava/lang/Object;Landroidx/renderscript/Element$DataType;I)V
    .locals 9

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 5
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    iget-boolean v0, p0, Landroidx/renderscript/Allocation;->mAutoPadding:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 6
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Element;->getVectorSize()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v8, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const-string v0, "Size of output array cannot be smaller than size of allocation."

    if-eqz v8, :cond_2

    .line 7
    iget v2, p2, Landroidx/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v2, p3

    iget p3, p0, Landroidx/renderscript/Allocation;->mSize:I

    div-int/lit8 p3, p3, 0x4

    mul-int/2addr p3, v1

    if-lt v2, p3, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    iget v1, p2, Landroidx/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v1, p3

    iget p3, p0, Landroidx/renderscript/Allocation;->mSize:I

    if-lt v1, p3, :cond_3

    :goto_2
    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 10
    invoke-virtual {p0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    iget-object p3, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    iget-object p3, p3, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object p3, p3, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    iget v7, p3, Landroidx/renderscript/Element$DataType;->mSize:I

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Landroidx/renderscript/RenderScript;->nAllocationRead(JLjava/lang/Object;Landroidx/renderscript/Element$DataType;IZ)V

    return-void

    .line 11
    :cond_3
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createCubemapFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroidx/renderscript/Allocation;
    .locals 2

    .line 19
    sget-object v0, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->createCubemapFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createCubemapFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 4
    rem-int/lit8 v3, v2, 0x6

    if-nez v3, :cond_4

    .line 5
    div-int/lit8 v2, v2, 0x6

    if-ne v2, v1, :cond_3

    add-int/lit8 v2, v1, -0x1

    and-int/2addr v2, v1

    if-nez v2, :cond_2

    .line 6
    invoke-static {p0, p1}, Landroidx/renderscript/Allocation;->elementFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroidx/renderscript/Element;

    move-result-object v6

    .line 7
    new-instance v2, Landroidx/renderscript/Type$Builder;

    invoke-direct {v2, p0, v6}, Landroidx/renderscript/Type$Builder;-><init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)V

    .line 8
    invoke-virtual {v2, v1}, Landroidx/renderscript/Type$Builder;->setX(I)Landroidx/renderscript/Type$Builder;

    .line 9
    invoke-virtual {v2, v1}, Landroidx/renderscript/Type$Builder;->setY(I)Landroidx/renderscript/Type$Builder;

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v2, v1}, Landroidx/renderscript/Type$Builder;->setFaces(Z)Landroidx/renderscript/Type$Builder;

    .line 11
    sget-object v3, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroidx/renderscript/Allocation$MipmapControl;

    if-ne p2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroidx/renderscript/Type$Builder;->setMipmaps(Z)Landroidx/renderscript/Type$Builder;

    .line 12
    invoke-virtual {v2}, Landroidx/renderscript/Type$Builder;->create()Landroidx/renderscript/Type;

    move-result-object v7

    .line 13
    invoke-virtual {v7, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    iget v3, p2, Landroidx/renderscript/Allocation$MipmapControl;->mID:I

    move-object v0, p0

    move-object v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    .line 14
    new-instance v6, Landroidx/renderscript/Allocation;

    move-object v0, v6

    move-object v3, p0

    move-object v4, v7

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;-><init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Type;I)V

    return-object v6

    .line 15
    :cond_1
    new-instance v0, Landroidx/renderscript/RSRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load failed for bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_2
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v1, "Only power of 2 cube faces supported"

    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_3
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v1, "Only square cube map faces supported"

    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_4
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v1, "Cubemap height must be multiple of 6"

    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createCubemapFromCubeFaces(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroidx/renderscript/Allocation;
    .locals 9

    .line 2
    sget-object v7, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v8}, Landroidx/renderscript/Allocation;->createCubemapFromCubeFaces(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createCubemapFromCubeFaces(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroidx/renderscript/Allocation;
    .locals 2

    .line 18
    sget-object v0, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    const/16 v1, 0x83

    invoke-static {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_1

    and-int/lit16 v0, p3, 0x80

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 6
    invoke-static {p0, v0, p2, p3}, Landroidx/renderscript/Allocation;->createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p1, "USAGE_SHARED cannot be used with a Bitmap that has a null config."

    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/renderscript/Allocation;->typeFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;)Landroidx/renderscript/Type;

    move-result-object v4

    .line 9
    sget-object v0, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    const-string v1, "Load failed."

    const-wide/16 v2, 0x0

    if-ne p2, v0, :cond_3

    .line 10
    invoke-virtual {v4}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-static {p0}, Landroidx/renderscript/Element;->RGBA_8888(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x83

    if-ne p3, v0, :cond_3

    .line 11
    invoke-virtual {v4, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    iget v8, p2, Landroidx/renderscript/Allocation$MipmapControl;->mID:I

    move-object v5, p0

    move-object v9, p1

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Landroidx/renderscript/RenderScript;->nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J

    move-result-wide v5

    cmp-long p2, v5, v2

    if-eqz p2, :cond_2

    .line 12
    new-instance p2, Landroidx/renderscript/Allocation;

    move-object v0, p2

    move-wide v1, v5

    move-object v3, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;-><init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Type;I)V

    .line 13
    invoke-direct {p2, p1}, Landroidx/renderscript/Allocation;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p2

    .line 14
    :cond_2
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_3
    invoke-virtual {v4, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    iget v8, p2, Landroidx/renderscript/Allocation$MipmapControl;->mID:I

    move-object v5, p0

    move-object v9, p1

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Landroidx/renderscript/RenderScript;->nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_4

    .line 16
    new-instance v6, Landroidx/renderscript/Allocation;

    move-object v0, v6

    move-wide v1, p1

    move-object v3, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;-><init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Type;I)V

    return-object v6

    .line 17
    :cond_4
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p0, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromBitmapResource(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroidx/renderscript/Allocation;
    .locals 2

    .line 6
    sget-object v0, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x3

    invoke-static {p0, p1, p2, v0, v1}, Landroidx/renderscript/Allocation;->createFromBitmapResource(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;ILandroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createFromBitmapResource(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;ILandroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    and-int/lit16 v0, p4, 0xe0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    invoke-static {p0, p1, p3, p4}, Landroidx/renderscript/Allocation;->createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p1, "Unsupported usage specified."

    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromString(Landroidx/renderscript/RenderScript;Ljava/lang/String;I)Landroidx/renderscript/Allocation;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    :try_start_0
    const-string v0, "UTF-8"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Landroidx/renderscript/Element;->U8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 13
    move-result-object v0

    .line 14
    array-length v1, p1

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0, v1, p2}, Landroidx/renderscript/Allocation;->createSized(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;II)Landroidx/renderscript/Allocation;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroidx/renderscript/Allocation;->copyFrom([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    .line 24
    :catch_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    .line 25
    .line 26
    const-string p1, "Could not convert string to utf-8."

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0
.end method

.method public static createSized(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;I)Landroidx/renderscript/Allocation;
    .locals 1

    const/4 v0, 0x1

    .line 8
    invoke-static {p0, p1, p2, v0}, Landroidx/renderscript/Allocation;->createSized(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;II)Landroidx/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createSized(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;II)Landroidx/renderscript/Allocation;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    new-instance v0, Landroidx/renderscript/Type$Builder;

    invoke-direct {v0, p0, p1}, Landroidx/renderscript/Type$Builder;-><init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)V

    .line 3
    invoke-virtual {v0, p2}, Landroidx/renderscript/Type$Builder;->setX(I)Landroidx/renderscript/Type$Builder;

    .line 4
    invoke-virtual {v0}, Landroidx/renderscript/Type$Builder;->create()Landroidx/renderscript/Type;

    move-result-object v7

    .line 5
    invoke-virtual {v7, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    sget-object v0, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    iget v3, v0, Landroidx/renderscript/Allocation$MipmapControl;->mID:I

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 6
    new-instance v6, Landroidx/renderscript/Allocation;

    move-object v0, v6

    move-object v3, p0

    move-object v4, v7

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;-><init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Type;I)V

    return-object v6

    .line 7
    :cond_0
    new-instance v0, Landroidx/renderscript/RSRuntimeException;

    const-string v1, "Allocation creation failed."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;)Landroidx/renderscript/Allocation;
    .locals 2

    .line 10
    sget-object v0, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;I)Landroidx/renderscript/Allocation;
    .locals 1

    .line 9
    sget-object v0, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    invoke-static {p0, p1, v0, p2}, Landroidx/renderscript/Allocation;->createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    invoke-virtual {p1, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v0

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->usingIO()Z

    move-result v0

    if-nez v0, :cond_1

    and-int/lit8 v0, p3, 0x20

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroidx/renderscript/RSRuntimeException;

    const-string v1, "USAGE_IO not supported, Allocation creation failed."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    iget v3, p2, Landroidx/renderscript/Allocation$MipmapControl;->mID:I

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v1

    cmp-long v0, v1, v7

    if-eqz v0, :cond_2

    .line 6
    new-instance v6, Landroidx/renderscript/Allocation;

    move-object v0, v6

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;-><init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Type;I)V

    return-object v6

    .line 7
    :cond_2
    new-instance v0, Landroidx/renderscript/RSRuntimeException;

    const-string v1, "Allocation creation failed."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_3
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    const-string v1, "Bad Type"

    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private data1DChecks(IIIIZ)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 6
    .line 7
    if-ltz p1, :cond_5

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    if-lt p2, v0, :cond_4

    .line 11
    .line 12
    add-int v0, p1, p2

    .line 13
    .line 14
    iget v1, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    .line 15
    .line 16
    if-gt v0, v1, :cond_3

    .line 17
    .line 18
    const-string p1, "Array too small for allocation type."

    .line 19
    .line 20
    if-eqz p5, :cond_1

    .line 21
    .line 22
    div-int/lit8 p4, p4, 0x4

    .line 23
    .line 24
    mul-int/lit8 p4, p4, 0x3

    .line 25
    .line 26
    if-lt p3, p4, :cond_0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    new-instance p2, Landroidx/renderscript/RSIllegalArgumentException;

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p2

    .line 34
    .line 35
    :cond_1
    if-lt p3, p4, :cond_2

    .line 36
    :goto_0
    return-void

    .line 37
    .line 38
    :cond_2
    new-instance p2, Landroidx/renderscript/RSIllegalArgumentException;

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p2

    .line 43
    .line 44
    :cond_3
    new-instance p3, Landroidx/renderscript/RSIllegalArgumentException;

    .line 45
    .line 46
    new-instance p4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    const-string p5, "Overflow, Available count "

    .line 52
    .line 53
    .line 54
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    iget p5, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string p5, ", got "

    .line 62
    .line 63
    .line 64
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string p2, " at offset "

    .line 70
    .line 71
    .line 72
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string p1, "."

    .line 78
    .line 79
    .line 80
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-direct {p3, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p3

    .line 89
    .line 90
    :cond_4
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 91
    .line 92
    const-string p2, "Count must be >= 1."

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p1

    .line 97
    .line 98
    :cond_5
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 99
    .line 100
    const-string p2, "Offset must be >= 0."

    .line 101
    .line 102
    .line 103
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    throw p1
.end method

.method static elementFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroidx/renderscript/Element;->A_8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    .line 15
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Landroidx/renderscript/Element;->RGBA_4444(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    .line 24
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 25
    .line 26
    if-ne p1, v0, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Landroidx/renderscript/Element;->RGBA_8888(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    .line 33
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 34
    .line 35
    if-ne p1, v0, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Landroidx/renderscript/Element;->RGB_565(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    .line 42
    :cond_3
    new-instance p0, Landroidx/renderscript/RSInvalidStateException;

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    const-string v1, "Bad bitmap type: "

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0
.end method

.method private getIDSafe()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mAdaptedAllocation:Landroidx/renderscript/Allocation;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 17
    move-result-wide v0

    .line 18
    return-wide v0
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Landroidx/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static typeFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;)Landroidx/renderscript/Type;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/renderscript/Allocation;->elementFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroidx/renderscript/Element;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Landroidx/renderscript/Type$Builder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0, v0}, Landroidx/renderscript/Type$Builder;-><init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 13
    move-result p0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p0}, Landroidx/renderscript/Type$Builder;->setX(I)Landroidx/renderscript/Type$Builder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 20
    move-result p0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0}, Landroidx/renderscript/Type$Builder;->setY(I)Landroidx/renderscript/Type$Builder;

    .line 24
    .line 25
    sget-object p0, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroidx/renderscript/Allocation$MipmapControl;

    .line 26
    .line 27
    if-ne p2, p0, :cond_0

    .line 28
    const/4 p0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {v1, p0}, Landroidx/renderscript/Type$Builder;->setMipmaps(Z)Landroidx/renderscript/Type$Builder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/renderscript/Type$Builder;->create()Landroidx/renderscript/Type;

    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method private updateCacheInfo(Landroidx/renderscript/Type;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getX()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iput v0, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getY()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iput v0, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/renderscript/Type;->getZ()I

    .line 16
    move-result p1

    .line 17
    .line 18
    iput p1, p0, Landroidx/renderscript/Allocation;->mCurrentDimZ:I

    .line 19
    .line 20
    iget v0, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    .line 21
    .line 22
    iput v0, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    .line 23
    .line 24
    iget v1, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    .line 25
    const/4 v2, 0x1

    .line 26
    .line 27
    if-le v1, v2, :cond_0

    .line 28
    mul-int/2addr v0, v1

    .line 29
    .line 30
    iput v0, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    .line 31
    .line 32
    :cond_0
    if-le p1, v2, :cond_1

    .line 33
    .line 34
    iget v0, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    .line 35
    mul-int/2addr v0, p1

    .line 36
    .line 37
    iput v0, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    .line 38
    :cond_1
    return-void
.end method

.method private validate2DRange(IIII)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mAdaptedAllocation:Landroidx/renderscript/Allocation;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    if-ltz p1, :cond_3

    .line 8
    .line 9
    if-ltz p2, :cond_3

    .line 10
    .line 11
    if-ltz p4, :cond_2

    .line 12
    .line 13
    if-ltz p3, :cond_2

    .line 14
    add-int/2addr p1, p3

    .line 15
    .line 16
    iget p3, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    .line 17
    .line 18
    if-gt p1, p3, :cond_1

    .line 19
    add-int/2addr p2, p4

    .line 20
    .line 21
    iget p1, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    .line 22
    .line 23
    if-gt p2, p1, :cond_1

    .line 24
    :goto_0
    return-void

    .line 25
    .line 26
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 27
    .line 28
    const-string p2, "Updated region larger than allocation."

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1

    .line 33
    .line 34
    :cond_2
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 35
    .line 36
    const-string p2, "Height or width cannot be negative."

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p1

    .line 41
    .line 42
    :cond_3
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 43
    .line 44
    const-string p2, "Offset cannot be negative."

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p1
.end method

.method private validate3DRange(IIIIII)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mAdaptedAllocation:Landroidx/renderscript/Allocation;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    if-ltz p1, :cond_3

    .line 8
    .line 9
    if-ltz p2, :cond_3

    .line 10
    .line 11
    if-ltz p3, :cond_3

    .line 12
    .line 13
    if-ltz p5, :cond_2

    .line 14
    .line 15
    if-ltz p4, :cond_2

    .line 16
    .line 17
    if-ltz p6, :cond_2

    .line 18
    add-int/2addr p1, p4

    .line 19
    .line 20
    iget p4, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    .line 21
    .line 22
    if-gt p1, p4, :cond_1

    .line 23
    add-int/2addr p2, p5

    .line 24
    .line 25
    iget p1, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    .line 26
    .line 27
    if-gt p2, p1, :cond_1

    .line 28
    add-int/2addr p3, p6

    .line 29
    .line 30
    iget p1, p0, Landroidx/renderscript/Allocation;->mCurrentDimZ:I

    .line 31
    .line 32
    if-gt p3, p1, :cond_1

    .line 33
    :goto_0
    return-void

    .line 34
    .line 35
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 36
    .line 37
    const-string p2, "Updated region larger than allocation."

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p1

    .line 42
    .line 43
    :cond_2
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 44
    .line 45
    const-string p2, "Height or width cannot be negative."

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1

    .line 50
    .line 51
    :cond_3
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 52
    .line 53
    const-string p2, "Offset cannot be negative."

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p1
.end method

.method private validateBitmapFormat(Landroid/graphics/Bitmap;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_8

    .line 7
    .line 8
    sget-object v0, Landroidx/renderscript/Allocation$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result v1

    .line 13
    .line 14
    aget v0, v0, v1

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    const-string v2, " bytes, passed bitmap was "

    .line 18
    .line 19
    const-string v3, " of "

    .line 20
    .line 21
    const-string v4, ", type "

    .line 22
    .line 23
    const-string v5, "Allocation kind is "

    .line 24
    .line 25
    if-eq v0, v1, :cond_6

    .line 26
    const/4 v1, 0x4

    .line 27
    const/4 v6, 0x2

    .line 28
    .line 29
    if-eq v0, v6, :cond_4

    .line 30
    const/4 v7, 0x3

    .line 31
    .line 32
    if-eq v0, v7, :cond_2

    .line 33
    .line 34
    if-eq v0, v1, :cond_0

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    iget-object v0, v0, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    .line 45
    .line 46
    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    .line 47
    .line 48
    if-ne v0, v1, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/renderscript/Element;->getBytesSize()I

    .line 58
    move-result v0

    .line 59
    .line 60
    if-ne v0, v6, :cond_1

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :cond_1
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    iget-object v5, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 78
    move-result-object v5

    .line 79
    .line 80
    iget-object v5, v5, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    iget-object v4, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 92
    move-result-object v4

    .line 93
    .line 94
    iget-object v4, v4, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    iget-object v3, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 106
    move-result-object v3

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Landroidx/renderscript/Element;->getBytesSize()I

    .line 110
    move-result v3

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 127
    throw v0

    .line 128
    .line 129
    :cond_2
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    iget-object v0, v0, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    .line 136
    .line 137
    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_RGB:Landroidx/renderscript/Element$DataKind;

    .line 138
    .line 139
    if-ne v0, v1, :cond_3

    .line 140
    .line 141
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Landroidx/renderscript/Element;->getBytesSize()I

    .line 149
    move-result v0

    .line 150
    .line 151
    if-ne v0, v6, :cond_3

    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_3
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 156
    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    iget-object v5, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 169
    move-result-object v5

    .line 170
    .line 171
    iget-object v5, v5, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    iget-object v4, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 183
    move-result-object v4

    .line 184
    .line 185
    iget-object v4, v4, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    iget-object v3, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 197
    move-result-object v3

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3}, Landroidx/renderscript/Element;->getBytesSize()I

    .line 201
    move-result v3

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object p1

    .line 215
    .line 216
    .line 217
    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 218
    throw v0

    .line 219
    .line 220
    :cond_4
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 224
    move-result-object v0

    .line 225
    .line 226
    iget-object v0, v0, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    .line 227
    .line 228
    sget-object v6, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    .line 229
    .line 230
    if-ne v0, v6, :cond_5

    .line 231
    .line 232
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 236
    move-result-object v0

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Landroidx/renderscript/Element;->getBytesSize()I

    .line 240
    move-result v0

    .line 241
    .line 242
    if-ne v0, v1, :cond_5

    .line 243
    goto :goto_0

    .line 244
    .line 245
    :cond_5
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 246
    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    iget-object v5, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 259
    move-result-object v5

    .line 260
    .line 261
    iget-object v5, v5, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    iget-object v4, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 273
    move-result-object v4

    .line 274
    .line 275
    iget-object v4, v4, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    iget-object v3, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 287
    move-result-object v3

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3}, Landroidx/renderscript/Element;->getBytesSize()I

    .line 291
    move-result v3

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    move-result-object p1

    .line 305
    .line 306
    .line 307
    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 308
    throw v0

    .line 309
    .line 310
    :cond_6
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 314
    move-result-object v0

    .line 315
    .line 316
    iget-object v0, v0, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    .line 317
    .line 318
    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_A:Landroidx/renderscript/Element$DataKind;

    .line 319
    .line 320
    if-ne v0, v1, :cond_7

    .line 321
    :goto_0
    return-void

    .line 322
    .line 323
    :cond_7
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 324
    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    iget-object v5, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v5}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 337
    move-result-object v5

    .line 338
    .line 339
    iget-object v5, v5, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    iget-object v4, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 351
    move-result-object v4

    .line 352
    .line 353
    iget-object v4, v4, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    iget-object v3, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 365
    move-result-object v3

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3}, Landroidx/renderscript/Element;->getBytesSize()I

    .line 369
    move-result v3

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    move-result-object p1

    .line 383
    .line 384
    .line 385
    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 386
    throw v0

    .line 387
    .line 388
    :cond_8
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 389
    .line 390
    const-string v0, "Bitmap has an unsupported format for this operation"

    .line 391
    .line 392
    .line 393
    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 394
    throw p1
.end method

.method private validateBitmapSize(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 6
    move-result v1

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget v0, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 14
    move-result p1

    .line 15
    .line 16
    if-ne v0, p1, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "Cannot update allocation from bitmap, sizes mismatch"

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1
.end method

.method private validateIsFloat32()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    sget-object v1, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string v2, "32 bit float source does not match allocation type "

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 26
    .line 27
    iget-object v2, v2, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 28
    .line 29
    iget-object v2, v2, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0
.end method

.method private validateIsFloat64()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    sget-object v1, Landroidx/renderscript/Element$DataType;->FLOAT_64:Landroidx/renderscript/Element$DataType;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string v2, "64 bit float source does not match allocation type "

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 26
    .line 27
    iget-object v2, v2, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 28
    .line 29
    iget-object v2, v2, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0
.end method

.method private validateIsInt16()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    sget-object v1, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    sget-object v1, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string v2, "16 bit integer source does not match allocation type "

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 30
    .line 31
    iget-object v2, v2, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 32
    .line 33
    iget-object v2, v2, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    throw v0

    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method private validateIsInt32()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    sget-object v1, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    sget-object v1, Landroidx/renderscript/Element$DataType;->UNSIGNED_32:Landroidx/renderscript/Element$DataType;

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string v2, "32 bit integer source does not match allocation type "

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 30
    .line 31
    iget-object v2, v2, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 32
    .line 33
    iget-object v2, v2, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    throw v0

    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method private validateIsInt64()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    sget-object v1, Landroidx/renderscript/Element$DataType;->SIGNED_64:Landroidx/renderscript/Element$DataType;

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    sget-object v1, Landroidx/renderscript/Element$DataType;->UNSIGNED_64:Landroidx/renderscript/Element$DataType;

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string v2, "64 bit integer source does not match allocation type "

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 30
    .line 31
    iget-object v2, v2, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 32
    .line 33
    iget-object v2, v2, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    throw v0

    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method private validateIsInt8()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    sget-object v1, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    sget-object v1, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string v2, "8 bit integer source does not match allocation type "

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 30
    .line 31
    iget-object v2, v2, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 32
    .line 33
    iget-object v2, v2, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    throw v0

    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method private validateIsObject()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    sget-object v1, Landroidx/renderscript/Element$DataType;->RS_ELEMENT:Landroidx/renderscript/Element$DataType;

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    sget-object v1, Landroidx/renderscript/Element$DataType;->RS_TYPE:Landroidx/renderscript/Element$DataType;

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    sget-object v1, Landroidx/renderscript/Element$DataType;->RS_ALLOCATION:Landroidx/renderscript/Element$DataType;

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    sget-object v1, Landroidx/renderscript/Element$DataType;->RS_SAMPLER:Landroidx/renderscript/Element$DataType;

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    sget-object v1, Landroidx/renderscript/Element$DataType;->RS_SCRIPT:Landroidx/renderscript/Element$DataType;

    .line 25
    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    const-string v2, "Object source does not match allocation type "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    iget-object v2, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 42
    .line 43
    iget-object v2, v2, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 44
    .line 45
    iget-object v2, v2, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    throw v0

    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method private validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroidx/renderscript/Element$DataType;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_d

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_c

    .line 21
    .line 22
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt64()V

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 32
    .line 33
    iget-object p1, p1, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 34
    .line 35
    iget-object p1, p1, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 36
    return-object p1

    .line 37
    .line 38
    :cond_0
    sget-object p1, Landroidx/renderscript/Element$DataType;->SIGNED_64:Landroidx/renderscript/Element$DataType;

    .line 39
    return-object p1

    .line 40
    .line 41
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    if-ne p1, v0, :cond_3

    .line 44
    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt32()V

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 51
    .line 52
    iget-object p1, p1, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 53
    .line 54
    iget-object p1, p1, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 55
    return-object p1

    .line 56
    .line 57
    :cond_2
    sget-object p1, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    .line 58
    return-object p1

    .line 59
    .line 60
    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 61
    .line 62
    if-ne p1, v0, :cond_5

    .line 63
    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt16()V

    .line 68
    .line 69
    iget-object p1, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 70
    .line 71
    iget-object p1, p1, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 72
    .line 73
    iget-object p1, p1, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 74
    return-object p1

    .line 75
    .line 76
    :cond_4
    sget-object p1, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    .line 77
    return-object p1

    .line 78
    .line 79
    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 80
    .line 81
    if-ne p1, v0, :cond_7

    .line 82
    .line 83
    if-eqz p2, :cond_6

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt8()V

    .line 87
    .line 88
    iget-object p1, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 89
    .line 90
    iget-object p1, p1, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 91
    .line 92
    iget-object p1, p1, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 93
    return-object p1

    .line 94
    .line 95
    :cond_6
    sget-object p1, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    .line 96
    return-object p1

    .line 97
    .line 98
    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 99
    .line 100
    if-ne p1, v0, :cond_9

    .line 101
    .line 102
    if-eqz p2, :cond_8

    .line 103
    .line 104
    .line 105
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsFloat32()V

    .line 106
    .line 107
    :cond_8
    sget-object p1, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    .line 108
    return-object p1

    .line 109
    .line 110
    :cond_9
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 111
    .line 112
    if-ne p1, v0, :cond_b

    .line 113
    .line 114
    if-eqz p2, :cond_a

    .line 115
    .line 116
    .line 117
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsFloat64()V

    .line 118
    .line 119
    :cond_a
    sget-object p1, Landroidx/renderscript/Element$DataType;->FLOAT_64:Landroidx/renderscript/Element$DataType;

    .line 120
    return-object p1

    .line 121
    :cond_b
    const/4 p1, 0x0

    .line 122
    return-object p1

    .line 123
    .line 124
    :cond_c
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 125
    .line 126
    const-string p2, "Object passed is not an Array of primitives."

    .line 127
    .line 128
    .line 129
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    throw p1

    .line 131
    .line 132
    :cond_d
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 133
    .line 134
    const-string p2, "Object passed is not an array of primitives."

    .line 135
    .line 136
    .line 137
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 138
    throw p1
.end method


# virtual methods
.method public copy1DRangeFrom(IILandroidx/renderscript/Allocation;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 12
    invoke-direct/range {p0 .. p0}, Landroidx/renderscript/Allocation;->getIDSafe()J

    move-result-wide v3

    const/4 v5, 0x0

    iget v6, v0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    iget-object v7, v0, Landroidx/renderscript/Allocation;->mSelectedFace:Landroidx/renderscript/Type$CubemapFace;

    iget v7, v7, Landroidx/renderscript/Type$CubemapFace;->mID:I

    const/4 v9, 0x1

    iget-object v8, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 13
    invoke-virtual {v1, v8}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v10

    const/4 v13, 0x0

    iget v14, v1, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    iget-object v1, v1, Landroidx/renderscript/Allocation;->mSelectedFace:Landroidx/renderscript/Type$CubemapFace;

    iget v15, v1, Landroidx/renderscript/Type$CubemapFace;->mID:I

    move-object v1, v2

    move-wide v2, v3

    move/from16 v4, p1

    move/from16 v8, p2

    move/from16 v12, p4

    .line 14
    invoke-virtual/range {v1 .. v15}, Landroidx/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V

    return-void
.end method

.method public copy1DRangeFrom(IILjava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p3, v0}, Landroidx/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroidx/renderscript/Element$DataType;

    move-result-object v5

    .line 2
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 3
    invoke-direct/range {v1 .. v6}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFrom(II[B)V
    .locals 6

    .line 8
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt8()V

    .line 9
    sget-object v4, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFrom(II[F)V
    .locals 6

    .line 10
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsFloat32()V

    .line 11
    sget-object v4, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFrom(II[I)V
    .locals 6

    .line 4
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt32()V

    .line 5
    sget-object v4, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFrom(II[S)V
    .locals 6

    .line 6
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt16()V

    .line 7
    sget-object v4, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(IILjava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p3, v0}, Landroidx/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroidx/renderscript/Element$DataType;

    move-result-object v5

    .line 6
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 7
    invoke-direct/range {v1 .. v6}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(II[B)V
    .locals 6

    .line 10
    sget-object v4, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(II[F)V
    .locals 6

    .line 11
    sget-object v4, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(II[I)V
    .locals 6

    .line 8
    sget-object v4, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(II[S)V
    .locals 6

    .line 9
    sget-object v4, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeTo(IILjava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p3, v0}, Landroidx/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroidx/renderscript/Element$DataType;

    move-result-object v5

    .line 2
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 3
    invoke-direct/range {v1 .. v6}, Landroidx/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeTo(II[B)V
    .locals 6

    .line 8
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt8()V

    .line 9
    sget-object v4, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeTo(II[F)V
    .locals 6

    .line 10
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsFloat32()V

    .line 11
    sget-object v4, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeTo(II[I)V
    .locals 6

    .line 4
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt32()V

    .line 5
    sget-object v4, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeTo(II[S)V
    .locals 6

    .line 6
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt16()V

    .line 7
    sget-object v4, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeToUnchecked(IILjava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p3, v0}, Landroidx/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroidx/renderscript/Element$DataType;

    move-result-object v5

    .line 6
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 7
    invoke-direct/range {v1 .. v6}, Landroidx/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeToUnchecked(II[B)V
    .locals 6

    .line 10
    sget-object v4, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeToUnchecked(II[F)V
    .locals 6

    .line 11
    sget-object v4, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeToUnchecked(II[I)V
    .locals 6

    .line 8
    sget-object v4, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeToUnchecked(II[S)V
    .locals 6

    .line 9
    sget-object v4, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IIIILandroidx/renderscript/Allocation;II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 12
    invoke-virtual {v2}, Landroidx/renderscript/RenderScript;->validate()V

    .line 13
    invoke-direct/range {p0 .. p4}, Landroidx/renderscript/Allocation;->validate2DRange(IIII)V

    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 14
    invoke-direct/range {p0 .. p0}, Landroidx/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    iget v8, v0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, v0, Landroidx/renderscript/Allocation;->mSelectedFace:Landroidx/renderscript/Type$CubemapFace;

    iget v9, v2, Landroidx/renderscript/Type$CubemapFace;->mID:I

    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 15
    invoke-virtual {v1, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v12

    iget v2, v1, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    iget-object v1, v1, Landroidx/renderscript/Allocation;->mSelectedFace:Landroidx/renderscript/Type$CubemapFace;

    iget v1, v1, Landroidx/renderscript/Type$CubemapFace;->mID:I

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, v2

    move/from16 v17, v1

    .line 16
    invoke-virtual/range {v3 .. v17}, Landroidx/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V

    return-void
.end method

.method public copy2DRangeFrom(IIIILjava/lang/Object;)V
    .locals 9

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p5, v0}, Landroidx/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroidx/renderscript/Element$DataType;

    move-result-object v7

    .line 2
    invoke-static {p5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 3
    invoke-virtual/range {v1 .. v8}, Landroidx/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IIII[B)V
    .locals 8

    .line 4
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt8()V

    .line 5
    sget-object v6, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IIII[F)V
    .locals 8

    .line 10
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsFloat32()V

    .line 11
    sget-object v6, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IIII[I)V
    .locals 8

    .line 8
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt32()V

    .line 9
    sget-object v6, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IIII[S)V
    .locals 8

    .line 6
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt16()V

    .line 7
    sget-object v6, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    .locals 10

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 17
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 18
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_0

    .line 19
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 20
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 21
    invoke-virtual {v1, p3, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 22
    invoke-virtual {p0, p1, p2, v0}, Landroidx/renderscript/Allocation;->copy2DRangeFrom(IILandroid/graphics/Bitmap;)V

    return-void

    .line 23
    :cond_0
    invoke-direct {p0, p3}, Landroidx/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 24
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/renderscript/Allocation;->validate2DRange(IIII)V

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 25
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->getIDSafe()J

    move-result-wide v3

    iget v7, p0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    iget-object v0, p0, Landroidx/renderscript/Allocation;->mSelectedFace:Landroidx/renderscript/Type$CubemapFace;

    iget v8, v0, Landroidx/renderscript/Type$CubemapFace;->mID:I

    move v5, p1

    move v6, p2

    move-object v9, p3

    invoke-virtual/range {v2 .. v9}, Landroidx/renderscript/RenderScript;->nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V

    return-void
.end method

.method copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/renderscript/RenderScript;->validate()V

    .line 8
    .line 9
    .line 10
    invoke-direct/range {p0 .. p4}, Landroidx/renderscript/Allocation;->validate2DRange(IIII)V

    .line 11
    .line 12
    iget-object v1, v0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/renderscript/Element;->getBytesSize()I

    .line 18
    move-result v1

    .line 19
    .line 20
    mul-int v1, v1, p3

    .line 21
    .line 22
    mul-int v1, v1, p4

    .line 23
    .line 24
    move-object/from16 v13, p6

    .line 25
    .line 26
    iget v2, v13, Landroidx/renderscript/Element$DataType;->mSize:I

    .line 27
    .line 28
    mul-int v2, v2, p7

    .line 29
    .line 30
    iget-boolean v3, v0, Landroidx/renderscript/Allocation;->mAutoPadding:Z

    .line 31
    .line 32
    const-string v4, "Array too small for allocation type."

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    iget-object v3, v0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Landroidx/renderscript/Element;->getVectorSize()I

    .line 44
    move-result v3

    .line 45
    const/4 v5, 0x3

    .line 46
    .line 47
    if-ne v3, v5, :cond_1

    .line 48
    .line 49
    div-int/lit8 v3, v1, 0x4

    .line 50
    mul-int/2addr v3, v5

    .line 51
    .line 52
    if-gt v3, v2, :cond_0

    .line 53
    const/4 v2, 0x1

    .line 54
    move v12, v1

    .line 55
    move v15, v2

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_0
    new-instance v1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v4}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    throw v1

    .line 63
    .line 64
    :cond_1
    if-gt v1, v2, :cond_2

    .line 65
    const/4 v1, 0x0

    .line 66
    move v15, v1

    .line 67
    move v12, v2

    .line 68
    .line 69
    :goto_0
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 70
    .line 71
    .line 72
    invoke-direct/range {p0 .. p0}, Landroidx/renderscript/Allocation;->getIDSafe()J

    .line 73
    move-result-wide v3

    .line 74
    .line 75
    iget v7, v0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    .line 76
    .line 77
    iget-object v1, v0, Landroidx/renderscript/Allocation;->mSelectedFace:Landroidx/renderscript/Type$CubemapFace;

    .line 78
    .line 79
    iget v8, v1, Landroidx/renderscript/Type$CubemapFace;->mID:I

    .line 80
    .line 81
    iget-object v1, v0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 82
    .line 83
    iget-object v1, v1, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 84
    .line 85
    iget-object v1, v1, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 86
    .line 87
    iget v14, v1, Landroidx/renderscript/Element$DataType;->mSize:I

    .line 88
    .line 89
    move/from16 v5, p1

    .line 90
    .line 91
    move/from16 v6, p2

    .line 92
    .line 93
    move/from16 v9, p3

    .line 94
    .line 95
    move/from16 v10, p4

    .line 96
    .line 97
    move-object/from16 v11, p5

    .line 98
    .line 99
    move-object/from16 v13, p6

    .line 100
    .line 101
    .line 102
    invoke-virtual/range {v2 .. v15}, Landroidx/renderscript/RenderScript;->nAllocationData2D(JIIIIIILjava/lang/Object;ILandroidx/renderscript/Element$DataType;IZ)V

    .line 103
    return-void

    .line 104
    .line 105
    :cond_2
    new-instance v1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 106
    .line 107
    .line 108
    invoke-direct {v1, v4}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    throw v1
.end method

.method public copy2DRangeTo(IIIILjava/lang/Object;)V
    .locals 9

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p5, v0}, Landroidx/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroidx/renderscript/Element$DataType;

    move-result-object v7

    .line 2
    invoke-static {p5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 3
    invoke-virtual/range {v1 .. v8}, Landroidx/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeTo(IIII[B)V
    .locals 8

    .line 4
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt8()V

    .line 5
    sget-object v6, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeTo(IIII[F)V
    .locals 8

    .line 10
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsFloat32()V

    .line 11
    sget-object v6, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeTo(IIII[I)V
    .locals 8

    .line 8
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt32()V

    .line 9
    sget-object v6, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeTo(IIII[S)V
    .locals 8

    .line 6
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt16()V

    .line 7
    sget-object v6, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/renderscript/RenderScript;->validate()V

    .line 8
    .line 9
    .line 10
    invoke-direct/range {p0 .. p4}, Landroidx/renderscript/Allocation;->validate2DRange(IIII)V

    .line 11
    .line 12
    iget-object v1, v0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/renderscript/Element;->getBytesSize()I

    .line 18
    move-result v1

    .line 19
    .line 20
    mul-int v1, v1, p3

    .line 21
    .line 22
    mul-int v1, v1, p4

    .line 23
    .line 24
    move-object/from16 v13, p6

    .line 25
    .line 26
    iget v2, v13, Landroidx/renderscript/Element$DataType;->mSize:I

    .line 27
    .line 28
    mul-int v2, v2, p7

    .line 29
    .line 30
    iget-boolean v3, v0, Landroidx/renderscript/Allocation;->mAutoPadding:Z

    .line 31
    .line 32
    const-string v4, "Array too small for allocation type."

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    iget-object v3, v0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Landroidx/renderscript/Element;->getVectorSize()I

    .line 44
    move-result v3

    .line 45
    const/4 v5, 0x3

    .line 46
    .line 47
    if-ne v3, v5, :cond_1

    .line 48
    .line 49
    div-int/lit8 v3, v1, 0x4

    .line 50
    mul-int/2addr v3, v5

    .line 51
    .line 52
    if-gt v3, v2, :cond_0

    .line 53
    const/4 v2, 0x1

    .line 54
    move v12, v1

    .line 55
    move v15, v2

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_0
    new-instance v1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v4}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    throw v1

    .line 63
    .line 64
    :cond_1
    if-gt v1, v2, :cond_2

    .line 65
    const/4 v1, 0x0

    .line 66
    move v15, v1

    .line 67
    move v12, v2

    .line 68
    .line 69
    :goto_0
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 70
    .line 71
    .line 72
    invoke-direct/range {p0 .. p0}, Landroidx/renderscript/Allocation;->getIDSafe()J

    .line 73
    move-result-wide v3

    .line 74
    .line 75
    iget v7, v0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    .line 76
    .line 77
    iget-object v1, v0, Landroidx/renderscript/Allocation;->mSelectedFace:Landroidx/renderscript/Type$CubemapFace;

    .line 78
    .line 79
    iget v8, v1, Landroidx/renderscript/Type$CubemapFace;->mID:I

    .line 80
    .line 81
    iget-object v1, v0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 82
    .line 83
    iget-object v1, v1, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 84
    .line 85
    iget-object v1, v1, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 86
    .line 87
    iget v14, v1, Landroidx/renderscript/Element$DataType;->mSize:I

    .line 88
    .line 89
    move/from16 v5, p1

    .line 90
    .line 91
    move/from16 v6, p2

    .line 92
    .line 93
    move/from16 v9, p3

    .line 94
    .line 95
    move/from16 v10, p4

    .line 96
    .line 97
    move-object/from16 v11, p5

    .line 98
    .line 99
    move-object/from16 v13, p6

    .line 100
    .line 101
    .line 102
    invoke-virtual/range {v2 .. v15}, Landroidx/renderscript/RenderScript;->nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroidx/renderscript/Element$DataType;IZ)V

    .line 103
    return-void

    .line 104
    .line 105
    :cond_2
    new-instance v1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 106
    .line 107
    .line 108
    invoke-direct {v1, v4}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    throw v1
.end method

.method public copy3DRangeFrom(IIIIIILandroidx/renderscript/Allocation;III)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 4
    invoke-virtual {v2}, Landroidx/renderscript/RenderScript;->validate()V

    .line 5
    invoke-direct/range {p0 .. p6}, Landroidx/renderscript/Allocation;->validate3DRange(IIIIII)V

    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 6
    invoke-direct/range {p0 .. p0}, Landroidx/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    iget v9, v0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 7
    invoke-virtual {v1, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    iget v1, v1, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, p10

    move/from16 v18, v1

    .line 8
    invoke-virtual/range {v3 .. v18}, Landroidx/renderscript/RenderScript;->nAllocationData3D(JIIIIIIIJIIII)V

    return-void
.end method

.method public copy3DRangeFrom(IIIIIILjava/lang/Object;)V
    .locals 12

    const/4 v0, 0x1

    move-object v11, p0

    move-object/from16 v8, p7

    .line 1
    invoke-direct {p0, v8, v0}, Landroidx/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroidx/renderscript/Element$DataType;

    move-result-object v9

    .line 2
    invoke-static/range {p7 .. p7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 3
    invoke-direct/range {v1 .. v10}, Landroidx/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFrom(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 25
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 28
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 29
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 30
    invoke-virtual {p0, v0}, Landroidx/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    return-void

    .line 31
    :cond_0
    invoke-direct {p0, p1}, Landroidx/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    .line 32
    invoke-direct {p0, p1}, Landroidx/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 33
    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroidx/renderscript/RenderScript;->nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public copyFrom(Landroidx/renderscript/Allocation;)V
    .locals 9

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 34
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 35
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/BaseObj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Landroidx/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroidx/renderscript/Allocation;->mCurrentDimY:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v6, p1

    .line 36
    invoke-virtual/range {v1 .. v8}, Landroidx/renderscript/Allocation;->copy2DRangeFrom(IIIILandroidx/renderscript/Allocation;II)V

    return-void

    .line 37
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Types of allocations must match."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyFrom(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, p1, v0}, Landroidx/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroidx/renderscript/Element$DataType;

    move-result-object v0

    .line 15
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 16
    invoke-direct {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFrom([B)V
    .locals 2

    .line 21
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt8()V

    .line 22
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFrom([F)V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsFloat32()V

    .line 24
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFrom([I)V
    .locals 2

    .line 17
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt32()V

    .line 18
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFrom([Landroidx/renderscript/BaseObj;)V
    .locals 6

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 1
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsObject()V

    .line 3
    array-length v0, p1

    iget v1, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    if-ne v0, v1, :cond_3

    .line 4
    sget v0, Landroidx/renderscript/RenderScript;->sPointerSize:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 5
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [J

    move v1, v2

    .line 6
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    mul-int/lit8 v3, v1, 0x4

    .line 7
    aget-object v4, p1, v1

    iget-object v5, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v4, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    aput-wide v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    .line 8
    invoke-virtual {p0, v2, p1, v0}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;)V

    goto :goto_2

    .line 9
    :cond_1
    array-length v0, p1

    new-array v0, v0, [I

    move v1, v2

    .line 10
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 11
    aget-object v3, p1, v1

    iget-object v4, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v3, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    long-to-int v3, v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget p1, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    .line 12
    invoke-virtual {p0, v2, p1, v0}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V

    :goto_2
    return-void

    .line 13
    :cond_3
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array size mismatch, allocation sizeX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", array length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyFrom([S)V
    .locals 2

    .line 19
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt16()V

    .line 20
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFromUnchecked(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Landroidx/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroidx/renderscript/Element$DataType;

    move-result-object v0

    .line 6
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 7
    invoke-direct {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFromUnchecked([B)V
    .locals 2

    .line 10
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFromUnchecked([F)V
    .locals 2

    .line 11
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFromUnchecked([I)V
    .locals 2

    .line 8
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFromUnchecked([S)V
    .locals 2

    .line 9
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyTo(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 1
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 2
    invoke-direct {p0, p1}, Landroidx/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 3
    invoke-direct {p0, p1}, Landroidx/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 4
    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroidx/renderscript/RenderScript;->nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public copyTo(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    .line 12
    invoke-direct {p0, p1, v0}, Landroidx/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroidx/renderscript/Element$DataType;

    move-result-object v0

    .line 13
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 14
    invoke-direct {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyTo([B)V
    .locals 2

    .line 15
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt8()V

    .line 16
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyTo([F)V
    .locals 2

    .line 21
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsFloat32()V

    .line 22
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyTo([I)V
    .locals 2

    .line 19
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt32()V

    .line 20
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyTo([S)V
    .locals 2

    .line 17
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->validateIsInt16()V

    .line 18
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroidx/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    return-void
.end method

.method public destroy()V
    .locals 6

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/renderscript/Allocation;->mIncCompatAllocation:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    monitor-enter p0

    .line 10
    .line 11
    :try_start_0
    iget-boolean v0, p0, Landroidx/renderscript/Allocation;->mIncAllocDestroyed:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    iput-boolean v0, p0, Landroidx/renderscript/Allocation;->mIncAllocDestroyed:Z

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroidx/renderscript/RenderScript;->isAlive()Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 45
    .line 46
    iget-wide v4, p0, Landroidx/renderscript/Allocation;->mIncCompatAllocation:J

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v4, v5}, Landroidx/renderscript/RenderScript;->nIncObjDestroy(J)V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 53
    .line 54
    iput-wide v2, p0, Landroidx/renderscript/Allocation;->mIncCompatAllocation:J

    .line 55
    goto :goto_2

    .line 56
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw v0

    .line 58
    .line 59
    :cond_2
    :goto_2
    iget v0, p0, Landroidx/renderscript/Allocation;->mUsage:I

    .line 60
    .line 61
    and-int/lit8 v0, v0, 0x60

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    const/4 v0, 0x0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroidx/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-super {p0}, Landroidx/renderscript/BaseObj;->destroy()V

    .line 71
    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    .line 2
    sget-boolean v0, Landroidx/renderscript/RenderScript;->sUseGCHooks:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroidx/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;

    .line 8
    .line 9
    sget-object v2, Landroidx/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    .line 10
    .line 11
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    .line 13
    iget v3, p0, Landroidx/renderscript/Allocation;->mSize:I

    .line 14
    .line 15
    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x0

    .line 19
    .line 20
    aput-object v3, v1, v4

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-super {p0}, Landroidx/renderscript/BaseObj;->finalize()V

    .line 27
    return-void
.end method

.method public generateMipmaps()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroidx/renderscript/RenderScript;->nAllocationGenerateMipmaps(J)V

    .line 10
    return-void
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/renderscript/Element;->getBytesSize()I

    .line 16
    move-result v1

    .line 17
    .line 18
    mul-int v5, v0, v1

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->getDispatchAPILevel()I

    .line 24
    move-result v0

    .line 25
    .line 26
    const/16 v1, 0x15

    .line 27
    .line 28
    if-ge v0, v1, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getZ()I

    .line 34
    move-result v0

    .line 35
    .line 36
    if-lez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 38
    return-object v0

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getY()I

    .line 44
    move-result v0

    .line 45
    .line 46
    if-lez v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getY()I

    .line 52
    move-result v0

    .line 53
    mul-int/2addr v0, v5

    .line 54
    .line 55
    new-array v0, v0, [B

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    .line 59
    iget-object v1, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 63
    move-result v9

    .line 64
    .line 65
    iget-object v1, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 69
    move-result v10

    .line 70
    .line 71
    sget-object v12, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    .line 72
    .line 73
    iget-object v1, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    .line 77
    move-result v1

    .line 78
    .line 79
    mul-int v13, v5, v1

    .line 80
    move-object v6, p0

    .line 81
    move-object v11, v0

    .line 82
    .line 83
    .line 84
    invoke-virtual/range {v6 .. v13}, Landroidx/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroidx/renderscript/Element$DataType;I)V

    .line 85
    goto :goto_0

    .line 86
    .line 87
    :cond_1
    new-array v0, v5, [B

    .line 88
    .line 89
    iget-object v1, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    .line 93
    move-result v1

    .line 94
    const/4 v2, 0x0

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v2, v1, v0}, Landroidx/renderscript/Allocation;->copy1DRangeToUnchecked(II[B)V

    .line 98
    .line 99
    .line 100
    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 105
    move-result-object v0

    .line 106
    int-to-long v1, v5

    .line 107
    .line 108
    iput-wide v1, p0, Landroidx/renderscript/Allocation;->mByteBufferStride:J

    .line 109
    return-object v0

    .line 110
    .line 111
    :cond_2
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 112
    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    iget v0, p0, Landroidx/renderscript/Allocation;->mUsage:I

    .line 116
    .line 117
    and-int/lit8 v0, v0, 0x20

    .line 118
    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    :cond_3
    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 125
    move-result-wide v3

    .line 126
    .line 127
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getY()I

    .line 131
    move-result v6

    .line 132
    .line 133
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getZ()I

    .line 137
    move-result v7

    .line 138
    .line 139
    .line 140
    invoke-virtual/range {v2 .. v7}, Landroidx/renderscript/RenderScript;->nAllocationGetByteBuffer(JIII)Ljava/nio/ByteBuffer;

    .line 141
    move-result-object v0

    .line 142
    .line 143
    iput-object v0, p0, Landroidx/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 144
    .line 145
    :cond_4
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 146
    return-object v0
.end method

.method public getBytesSize()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 3
    .line 4
    iget v1, v0, Landroidx/renderscript/Type;->mDimYuv:I

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getCount()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/renderscript/Element;->getBytesSize()I

    .line 20
    move-result v1

    .line 21
    mul-int/2addr v0, v1

    .line 22
    int-to-double v0, v0

    .line 23
    .line 24
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 25
    mul-double/2addr v0, v2

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 29
    move-result-wide v0

    .line 30
    double-to-int v0, v0

    .line 31
    return v0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getCount()I

    .line 35
    move-result v0

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Landroidx/renderscript/Element;->getBytesSize()I

    .line 45
    move-result v1

    .line 46
    mul-int/2addr v0, v1

    .line 47
    return v0
.end method

.method public getElement()Landroidx/renderscript/Element;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getIncAllocID()J
    .locals 2

    iget-wide v0, p0, Landroidx/renderscript/Allocation;->mIncCompatAllocation:J

    return-wide v0
.end method

.method public getStride()J
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/renderscript/Allocation;->mByteBufferStride:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->getDispatchAPILevel()I

    .line 14
    move-result v0

    .line 15
    .line 16
    const/16 v1, 0x15

    .line 17
    .line 18
    if-le v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 24
    move-result-wide v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroidx/renderscript/RenderScript;->nAllocationGetStride(J)J

    .line 28
    move-result-wide v0

    .line 29
    .line 30
    iput-wide v0, p0, Landroidx/renderscript/Allocation;->mByteBufferStride:J

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    .line 37
    move-result v0

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/renderscript/Element;->getBytesSize()I

    .line 47
    move-result v1

    .line 48
    mul-int/2addr v0, v1

    .line 49
    int-to-long v0, v0

    .line 50
    .line 51
    iput-wide v0, p0, Landroidx/renderscript/Allocation;->mByteBufferStride:J

    .line 52
    .line 53
    :cond_1
    :goto_0
    iget-wide v0, p0, Landroidx/renderscript/Allocation;->mByteBufferStride:J

    .line 54
    return-wide v0
.end method

.method public getType()Landroidx/renderscript/Type;
    .locals 1

    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    return-object v0
.end method

.method public getUsage()I
    .locals 1

    iget v0, p0, Landroidx/renderscript/Allocation;->mUsage:I

    return v0
.end method

.method public ioReceive()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/renderscript/Allocation;->mUsage:I

    .line 3
    .line 4
    and-int/lit8 v0, v0, 0x20

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 17
    move-result-wide v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroidx/renderscript/RenderScript;->nAllocationIoReceive(J)V

    .line 21
    return-void

    .line 22
    .line 23
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 24
    .line 25
    const-string v1, "Can only receive if IO_INPUT usage specified."

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw v0
.end method

.method public ioSend()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/renderscript/Allocation;->mUsage:I

    .line 3
    .line 4
    and-int/lit8 v0, v0, 0x40

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 17
    move-result-wide v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroidx/renderscript/RenderScript;->nAllocationIoSend(J)V

    .line 21
    return-void

    .line 22
    .line 23
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 24
    .line 25
    const-string v1, "Can only send buffer if IO_OUTPUT usage specified."

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw v0
.end method

.method public ioSendOutput()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/Allocation;->ioSend()V

    .line 4
    return-void
.end method

.method public setAutoPadding(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/renderscript/Allocation;->mAutoPadding:Z

    return-void
.end method

.method public setFromFieldPacker(IILandroidx/renderscript/FieldPacker;)V
    .locals 9

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 8
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 9
    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v0, v0, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    array-length v0, v0

    if-ge p2, v0, :cond_2

    if-ltz p1, :cond_1

    .line 10
    invoke-virtual {p3}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v7

    .line 11
    invoke-virtual {p3}, Landroidx/renderscript/FieldPacker;->getPos()I

    move-result v8

    iget-object p3, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 12
    iget-object p3, p3, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object p3, p3, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    aget-object p3, p3, p2

    invoke-virtual {p3}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result p3

    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 13
    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    iget-object v0, v0, Landroidx/renderscript/Element;->mArraySizes:[I

    aget v0, v0, p2

    mul-int/2addr p3, v0

    if-ne v8, p3, :cond_0

    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 14
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->getIDSafe()J

    move-result-wide v2

    iget v5, p0, Landroidx/renderscript/Allocation;->mSelectedLOD:I

    move v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v8}, Landroidx/renderscript/RenderScript;->nAllocationElementData1D(JIII[BI)V

    return-void

    .line 15
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Field packer sizelength "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does not match component size "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Offset must be >= 0."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Component_number "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " out of range."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFromFieldPacker(ILandroidx/renderscript/FieldPacker;)V
    .locals 4

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 1
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroidx/renderscript/Allocation;->mType:Landroidx/renderscript/Type;

    .line 2
    iget-object v0, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    invoke-virtual {v0}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result v0

    .line 3
    invoke-virtual {p2}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    .line 4
    invoke-virtual {p2}, Landroidx/renderscript/FieldPacker;->getPos()I

    move-result p2

    .line 5
    div-int v2, p2, v0

    mul-int v3, v0, v2

    if-ne v3, p2, :cond_0

    .line 6
    invoke-virtual {p0, p1, v2, v1}, Landroidx/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field packer length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not divisible by element size "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIncAllocID(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/renderscript/Allocation;->mIncCompatAllocation:J

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 6
    .line 7
    iget v0, p0, Landroidx/renderscript/Allocation;->mUsage:I

    .line 8
    .line 9
    and-int/lit8 v0, v0, 0x40

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 17
    move-result-wide v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, p1}, Landroidx/renderscript/RenderScript;->nAllocationSetSurface(JLandroid/view/Surface;)V

    .line 21
    return-void

    .line 22
    .line 23
    :cond_0
    new-instance p1, Landroidx/renderscript/RSInvalidStateException;

    .line 24
    .line 25
    const-string v0, "Allocation is not USAGE_IO_OUTPUT."

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v0}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1
.end method

.method public syncAll(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "Source must be exactly one usage type."

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p1

    .line 16
    .line 17
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroidx/renderscript/Allocation;->getIDSafe()J

    .line 26
    move-result-wide v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2, p1}, Landroidx/renderscript/RenderScript;->nAllocationSyncAll(JI)V

    .line 30
    return-void
.end method
