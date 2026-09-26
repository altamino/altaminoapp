.class public Landroidx/renderscript/Element;
.super Landroidx/renderscript/BaseObj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/Element$Builder;,
        Landroidx/renderscript/Element$DataKind;,
        Landroidx/renderscript/Element$DataType;
    }
.end annotation


# instance fields
.field mArraySizes:[I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroidx/renderscript/Element;

.field mKind:Landroidx/renderscript/Element$DataKind;

.field mNormalized:Z

.field mOffsetInBytes:[I

.field mSize:I

.field mType:Landroidx/renderscript/Element$DataType;

.field mVectorSize:I

.field mVisibleElementMap:[I


# direct methods
.method constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/BaseObj;-><init>(JLandroidx/renderscript/RenderScript;)V

    return-void
.end method

.method constructor <init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;ZI)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/BaseObj;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 10
    sget-object p1, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroidx/renderscript/Element$DataType;

    if-eq p4, p1, :cond_1

    sget-object p1, Landroidx/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroidx/renderscript/Element$DataType;

    if-eq p4, p1, :cond_1

    sget-object p1, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroidx/renderscript/Element$DataType;

    if-eq p4, p1, :cond_1

    const/4 p1, 0x3

    if-ne p7, p1, :cond_0

    .line 11
    iget p1, p4, Landroidx/renderscript/Element$DataType;->mSize:I

    mul-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroidx/renderscript/Element;->mSize:I

    goto :goto_0

    .line 12
    :cond_0
    iget p1, p4, Landroidx/renderscript/Element$DataType;->mSize:I

    mul-int/2addr p1, p7

    iput p1, p0, Landroidx/renderscript/Element;->mSize:I

    goto :goto_0

    .line 13
    :cond_1
    iget p1, p4, Landroidx/renderscript/Element$DataType;->mSize:I

    iput p1, p0, Landroidx/renderscript/Element;->mSize:I

    :goto_0
    iput-object p4, p0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    iput-object p5, p0, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    iput-boolean p6, p0, Landroidx/renderscript/Element;->mNormalized:Z

    iput p7, p0, Landroidx/renderscript/Element;->mVectorSize:I

    return-void
.end method

.method constructor <init>(JLandroidx/renderscript/RenderScript;[Landroidx/renderscript/Element;[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/BaseObj;-><init>(JLandroidx/renderscript/RenderScript;)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/renderscript/Element;->mSize:I

    const/4 p2, 0x1

    iput p2, p0, Landroidx/renderscript/Element;->mVectorSize:I

    iput-object p4, p0, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    iput-object p5, p0, Landroidx/renderscript/Element;->mElementNames:[Ljava/lang/String;

    iput-object p6, p0, Landroidx/renderscript/Element;->mArraySizes:[I

    .line 2
    sget-object p2, Landroidx/renderscript/Element$DataType;->NONE:Landroidx/renderscript/Element$DataType;

    iput-object p2, p0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 3
    sget-object p2, Landroidx/renderscript/Element$DataKind;->USER:Landroidx/renderscript/Element$DataKind;

    iput-object p2, p0, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    .line 4
    array-length p2, p4

    new-array p2, p2, [I

    iput-object p2, p0, Landroidx/renderscript/Element;->mOffsetInBytes:[I

    :goto_0
    iget-object p2, p0, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    .line 5
    array-length p3, p2

    if-ge p1, p3, :cond_0

    iget-object p3, p0, Landroidx/renderscript/Element;->mOffsetInBytes:[I

    iget p4, p0, Landroidx/renderscript/Element;->mSize:I

    .line 6
    aput p4, p3, p1

    .line 7
    aget-object p2, p2, p1

    iget p2, p2, Landroidx/renderscript/Element;->mSize:I

    iget-object p3, p0, Landroidx/renderscript/Element;->mArraySizes:[I

    aget p3, p3, p1

    mul-int/2addr p2, p3

    add-int/2addr p4, p2

    iput p4, p0, Landroidx/renderscript/Element;->mSize:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Landroidx/renderscript/Element;->updateVisibleSubElements()V

    return-void
.end method

.method public static ALLOCATION(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ALLOCATION:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->RS_ALLOCATION:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ALLOCATION:Landroidx/renderscript/Element;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_ALLOCATION:Landroidx/renderscript/Element;

    .line 15
    return-object p0
.end method

.method public static A_8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_A_8:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_A:Landroidx/renderscript/Element$DataKind;

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_A_8:Landroidx/renderscript/Element;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_A_8:Landroidx/renderscript/Element;

    .line 17
    return-object p0
.end method

.method public static BOOLEAN(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_BOOLEAN:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->BOOLEAN:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_BOOLEAN:Landroidx/renderscript/Element;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_BOOLEAN:Landroidx/renderscript/Element;

    .line 15
    return-object p0
.end method

.method public static ELEMENT(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ELEMENT:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->RS_ELEMENT:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ELEMENT:Landroidx/renderscript/Element;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_ELEMENT:Landroidx/renderscript/Element;

    .line 15
    return-object p0
.end method

.method public static F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_F32:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_F32:Landroidx/renderscript/Element;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_F32:Landroidx/renderscript/Element;

    .line 15
    return-object p0
.end method

.method public static F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_2:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_2:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_2:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static F32_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_3:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x3

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_3:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_3:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static F32_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_4:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_32:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_4:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_FLOAT_4:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static F64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_F64:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_64:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_F64:Landroidx/renderscript/Element;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_F64:Landroidx/renderscript/Element;

    .line 15
    return-object p0
.end method

.method public static F64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_2:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_64:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_2:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_2:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static F64_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_3:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_64:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x3

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_3:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_3:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static F64_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_4:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->FLOAT_64:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_4:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_DOUBLE_4:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static I16(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I16:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I16:Landroidx/renderscript/Element;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_I16:Landroidx/renderscript/Element;

    .line 15
    return-object p0
.end method

.method public static I16_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_2:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_2:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_2:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static I16_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_3:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x3

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_3:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_3:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static I16_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_4:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_16:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_4:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_SHORT_4:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static I32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I32:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I32:Landroidx/renderscript/Element;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_I32:Landroidx/renderscript/Element;

    .line 15
    return-object p0
.end method

.method public static I32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_2:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_2:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_2:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static I32_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_3:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x3

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_3:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_3:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static I32_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_4:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_32:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_4:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_INT_4:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static I64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I64:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_64:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I64:Landroidx/renderscript/Element;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_I64:Landroidx/renderscript/Element;

    .line 15
    return-object p0
.end method

.method public static I64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_2:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_64:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_2:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_2:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static I64_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_3:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_64:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x3

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_3:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_3:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static I64_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_4:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_64:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_4:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_LONG_4:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static I8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I8:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_I8:Landroidx/renderscript/Element;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_I8:Landroidx/renderscript/Element;

    .line 15
    return-object p0
.end method

.method public static I8_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_2:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_2:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_2:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static I8_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_3:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x3

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_3:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_3:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static I8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_4:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->SIGNED_8:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_4:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_CHAR_4:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static MATRIX_2X2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->MATRIX_2X2:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroidx/renderscript/Element;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroidx/renderscript/Element;

    .line 15
    return-object p0
.end method

.method public static MATRIX_3X3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->MATRIX_3X3:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroidx/renderscript/Element;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroidx/renderscript/Element;

    .line 15
    return-object p0
.end method

.method public static MATRIX_4X4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->MATRIX_4X4:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroidx/renderscript/Element;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroidx/renderscript/Element;

    .line 15
    return-object p0
.end method

.method public static RGBA_4444(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_4444:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_4444:Landroidx/renderscript/Element;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_4444:Landroidx/renderscript/Element;

    .line 17
    return-object p0
.end method

.method public static RGBA_5551(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_5551:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_5551:Landroidx/renderscript/Element;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_5551:Landroidx/renderscript/Element;

    .line 17
    return-object p0
.end method

.method public static RGBA_8888(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_8888:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_8888:Landroidx/renderscript/Element;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_RGBA_8888:Landroidx/renderscript/Element;

    .line 17
    return-object p0
.end method

.method public static RGB_565(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGB_565:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_RGB:Landroidx/renderscript/Element$DataKind;

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGB_565:Landroidx/renderscript/Element;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_RGB_565:Landroidx/renderscript/Element;

    .line 17
    return-object p0
.end method

.method public static RGB_888(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGB_888:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    sget-object v1, Landroidx/renderscript/Element$DataKind;->PIXEL_RGB:Landroidx/renderscript/Element$DataKind;

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_RGB_888:Landroidx/renderscript/Element;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_RGB_888:Landroidx/renderscript/Element;

    .line 17
    return-object p0
.end method

.method public static SAMPLER(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SAMPLER:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->RS_SAMPLER:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SAMPLER:Landroidx/renderscript/Element;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_SAMPLER:Landroidx/renderscript/Element;

    .line 15
    return-object p0
.end method

.method public static SCRIPT(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SCRIPT:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->RS_SCRIPT:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_SCRIPT:Landroidx/renderscript/Element;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_SCRIPT:Landroidx/renderscript/Element;

    .line 15
    return-object p0
.end method

.method public static TYPE(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_TYPE:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->RS_TYPE:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_TYPE:Landroidx/renderscript/Element;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_TYPE:Landroidx/renderscript/Element;

    .line 15
    return-object p0
.end method

.method public static U16(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U16:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U16:Landroidx/renderscript/Element;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_U16:Landroidx/renderscript/Element;

    .line 15
    return-object p0
.end method

.method public static U16_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_2:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_2:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_2:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static U16_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_3:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x3

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_3:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_3:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static U16_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_4:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_4:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_USHORT_4:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static U32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U32:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_32:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U32:Landroidx/renderscript/Element;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_U32:Landroidx/renderscript/Element;

    .line 15
    return-object p0
.end method

.method public static U32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_2:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_32:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_2:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_2:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static U32_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_3:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_32:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x3

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_3:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_3:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static U32_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_4:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_32:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_4:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_UINT_4:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static U64(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U64:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_64:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U64:Landroidx/renderscript/Element;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_U64:Landroidx/renderscript/Element;

    .line 15
    return-object p0
.end method

.method public static U64_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_2:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_64:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_2:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_2:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static U64_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_3:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_64:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x3

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_3:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_3:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static U64_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_4:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_64:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_4:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_ULONG_4:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static U8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U8:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/renderscript/Element;->createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_U8:Landroidx/renderscript/Element;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_U8:Landroidx/renderscript/Element;

    .line 15
    return-object p0
.end method

.method public static U8_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_2:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_2:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_2:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static U8_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_3:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x3

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_3:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_3:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_4:Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Element;->createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_4:Landroidx/renderscript/Element;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/renderscript/RenderScript;->mElement_UCHAR_4:Landroidx/renderscript/Element;

    .line 16
    return-object p0
.end method

.method public static createPixel(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;)Landroidx/renderscript/Element;
    .locals 10

    .line 1
    .line 2
    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_L:Landroidx/renderscript/Element$DataKind;

    .line 3
    .line 4
    if-eq p2, v0, :cond_1

    .line 5
    .line 6
    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_A:Landroidx/renderscript/Element$DataKind;

    .line 7
    .line 8
    if-eq p2, v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_LA:Landroidx/renderscript/Element$DataKind;

    .line 11
    .line 12
    if-eq p2, v0, :cond_1

    .line 13
    .line 14
    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_RGB:Landroidx/renderscript/Element$DataKind;

    .line 15
    .line 16
    if-eq p2, v0, :cond_1

    .line 17
    .line 18
    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    .line 19
    .line 20
    if-eq p2, v0, :cond_1

    .line 21
    .line 22
    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroidx/renderscript/Element$DataKind;

    .line 23
    .line 24
    if-eq p2, v0, :cond_1

    .line 25
    .line 26
    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_YUV:Landroidx/renderscript/Element$DataKind;

    .line 27
    .line 28
    if-ne p2, v0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 32
    .line 33
    const-string p1, "Unsupported DataKind"

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0

    .line 38
    .line 39
    :cond_1
    :goto_0
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_8:Landroidx/renderscript/Element$DataType;

    .line 40
    .line 41
    if-eq p1, v0, :cond_3

    .line 42
    .line 43
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    .line 44
    .line 45
    if-eq p1, v0, :cond_3

    .line 46
    .line 47
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroidx/renderscript/Element$DataType;

    .line 48
    .line 49
    if-eq p1, v0, :cond_3

    .line 50
    .line 51
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroidx/renderscript/Element$DataType;

    .line 52
    .line 53
    if-eq p1, v0, :cond_3

    .line 54
    .line 55
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroidx/renderscript/Element$DataType;

    .line 56
    .line 57
    if-ne p1, v0, :cond_2

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_2
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 61
    .line 62
    const-string p1, "Unsupported DataType"

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    throw p0

    .line 67
    .line 68
    :cond_3
    :goto_1
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroidx/renderscript/Element$DataType;

    .line 69
    .line 70
    const-string v1, "Bad kind and type combo"

    .line 71
    .line 72
    if-ne p1, v0, :cond_5

    .line 73
    .line 74
    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_RGB:Landroidx/renderscript/Element$DataKind;

    .line 75
    .line 76
    if-ne p2, v0, :cond_4

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :cond_4
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p0

    .line 84
    .line 85
    :cond_5
    :goto_2
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroidx/renderscript/Element$DataType;

    .line 86
    .line 87
    if-ne p1, v0, :cond_7

    .line 88
    .line 89
    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    .line 90
    .line 91
    if-ne p2, v0, :cond_6

    .line 92
    goto :goto_3

    .line 93
    .line 94
    :cond_6
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    throw p0

    .line 99
    .line 100
    :cond_7
    :goto_3
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroidx/renderscript/Element$DataType;

    .line 101
    .line 102
    if-ne p1, v0, :cond_9

    .line 103
    .line 104
    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_RGBA:Landroidx/renderscript/Element$DataKind;

    .line 105
    .line 106
    if-ne p2, v0, :cond_8

    .line 107
    goto :goto_4

    .line 108
    .line 109
    :cond_8
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    throw p0

    .line 114
    .line 115
    :cond_9
    :goto_4
    sget-object v0, Landroidx/renderscript/Element$DataType;->UNSIGNED_16:Landroidx/renderscript/Element$DataType;

    .line 116
    .line 117
    if-ne p1, v0, :cond_b

    .line 118
    .line 119
    sget-object v0, Landroidx/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroidx/renderscript/Element$DataKind;

    .line 120
    .line 121
    if-ne p2, v0, :cond_a

    .line 122
    goto :goto_5

    .line 123
    .line 124
    :cond_a
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 125
    .line 126
    .line 127
    invoke-direct {p0, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    throw p0

    .line 129
    .line 130
    :cond_b
    :goto_5
    sget-object v0, Landroidx/renderscript/Element$1;->$SwitchMap$androidx$renderscript$Element$DataKind:[I

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 134
    move-result v1

    .line 135
    .line 136
    aget v0, v0, v1

    .line 137
    const/4 v1, 0x2

    .line 138
    const/4 v2, 0x1

    .line 139
    .line 140
    if-eq v0, v2, :cond_d

    .line 141
    const/4 v3, 0x3

    .line 142
    .line 143
    if-eq v0, v1, :cond_e

    .line 144
    .line 145
    if-eq v0, v3, :cond_c

    .line 146
    move v9, v2

    .line 147
    goto :goto_6

    .line 148
    :cond_c
    const/4 v1, 0x4

    .line 149
    :cond_d
    move v9, v1

    .line 150
    goto :goto_6

    .line 151
    :cond_e
    move v9, v3

    .line 152
    :goto_6
    const/4 v8, 0x1

    .line 153
    .line 154
    iget v0, p1, Landroidx/renderscript/Element$DataType;->mID:I

    .line 155
    int-to-long v3, v0

    .line 156
    .line 157
    iget v5, p2, Landroidx/renderscript/Element$DataKind;->mID:I

    .line 158
    move-object v2, p0

    .line 159
    move v6, v8

    .line 160
    move v7, v9

    .line 161
    .line 162
    .line 163
    invoke-virtual/range {v2 .. v7}, Landroidx/renderscript/RenderScript;->nElementCreate(JIZI)J

    .line 164
    move-result-wide v3

    .line 165
    .line 166
    new-instance v0, Landroidx/renderscript/Element;

    .line 167
    move-object v2, v0

    .line 168
    move-object v5, p0

    .line 169
    move-object v6, p1

    .line 170
    move-object v7, p2

    .line 171
    .line 172
    .line 173
    invoke-direct/range {v2 .. v9}, Landroidx/renderscript/Element;-><init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;ZI)V

    .line 174
    return-object v0
.end method

.method static createUser(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;)Landroidx/renderscript/Element;
    .locals 14

    .line 1
    .line 2
    sget-object v5, Landroidx/renderscript/Element$DataKind;->USER:Landroidx/renderscript/Element$DataKind;

    .line 3
    const/4 v12, 0x0

    .line 4
    const/4 v13, 0x1

    .line 5
    .line 6
    iget v0, p1, Landroidx/renderscript/Element$DataType;->mID:I

    .line 7
    int-to-long v7, v0

    .line 8
    .line 9
    iget v9, v5, Landroidx/renderscript/Element$DataKind;->mID:I

    .line 10
    move-object v6, p0

    .line 11
    move v10, v12

    .line 12
    move v11, v13

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {v6 .. v11}, Landroidx/renderscript/RenderScript;->nElementCreate(JIZI)J

    .line 16
    move-result-wide v1

    .line 17
    .line 18
    new-instance v8, Landroidx/renderscript/Element;

    .line 19
    move-object v0, v8

    .line 20
    move-object v3, p0

    .line 21
    move-object v4, p1

    .line 22
    move v6, v12

    .line 23
    move v7, v13

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v0 .. v7}, Landroidx/renderscript/Element;-><init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;ZI)V

    .line 27
    return-object v8
.end method

.method public static createVector(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;I)Landroidx/renderscript/Element;
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    if-lt p2, v0, :cond_0

    .line 4
    const/4 v0, 0x4

    .line 5
    .line 6
    if-gt p2, v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Landroidx/renderscript/Element$1;->$SwitchMap$androidx$renderscript$Element$DataType:[I

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
    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 20
    .line 21
    const-string p1, "Cannot create vector of non-primitive type."

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0

    .line 26
    .line 27
    :pswitch_0
    sget-object v5, Landroidx/renderscript/Element$DataKind;->USER:Landroidx/renderscript/Element$DataKind;

    .line 28
    const/4 v12, 0x0

    .line 29
    .line 30
    iget v0, p1, Landroidx/renderscript/Element$DataType;->mID:I

    .line 31
    int-to-long v7, v0

    .line 32
    .line 33
    iget v9, v5, Landroidx/renderscript/Element$DataKind;->mID:I

    .line 34
    move-object v6, p0

    .line 35
    move v10, v12

    .line 36
    move v11, p2

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {v6 .. v11}, Landroidx/renderscript/RenderScript;->nElementCreate(JIZI)J

    .line 40
    move-result-wide v1

    .line 41
    .line 42
    new-instance v8, Landroidx/renderscript/Element;

    .line 43
    move-object v0, v8

    .line 44
    move-object v3, p0

    .line 45
    move-object v4, p1

    .line 46
    move v6, v12

    .line 47
    move v7, p2

    .line 48
    .line 49
    .line 50
    invoke-direct/range {v0 .. v7}, Landroidx/renderscript/Element;-><init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Element$DataType;Landroidx/renderscript/Element$DataKind;ZI)V

    .line 51
    return-object v8

    .line 52
    .line 53
    :cond_0
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 54
    .line 55
    const-string p1, "Vector size out of range 2-4."

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0

    .line 60
    nop

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateVisibleSubElements()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/Element;->mElementNames:[Ljava/lang/String;

    .line 8
    array-length v0, v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    move v3, v2

    .line 12
    .line 13
    :goto_0
    const/16 v4, 0x23

    .line 14
    .line 15
    if-ge v2, v0, :cond_2

    .line 16
    .line 17
    iget-object v5, p0, Landroidx/renderscript/Element;->mElementNames:[Ljava/lang/String;

    .line 18
    .line 19
    aget-object v5, v5, v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    .line 23
    move-result v5

    .line 24
    .line 25
    if-eq v5, v4, :cond_1

    .line 26
    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_2
    new-array v2, v3, [I

    .line 33
    .line 34
    iput-object v2, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    .line 35
    move v2, v1

    .line 36
    move v3, v2

    .line 37
    .line 38
    :goto_1
    if-ge v2, v0, :cond_4

    .line 39
    .line 40
    iget-object v5, p0, Landroidx/renderscript/Element;->mElementNames:[Ljava/lang/String;

    .line 41
    .line 42
    aget-object v5, v5, v2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    .line 46
    move-result v5

    .line 47
    .line 48
    if-eq v5, v4, :cond_3

    .line 49
    .line 50
    iget-object v5, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    .line 51
    .line 52
    add-int/lit8 v6, v3, 0x1

    .line 53
    .line 54
    aput v2, v5, v3

    .line 55
    move v3, v6

    .line 56
    .line 57
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    return-void
.end method


# virtual methods
.method public getBytesSize()I
    .locals 1

    iget v0, p0, Landroidx/renderscript/Element;->mSize:I

    return v0
.end method

.method public getDataKind()Landroidx/renderscript/Element$DataKind;
    .locals 1

    iget-object v0, p0, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    return-object v0
.end method

.method public getDataType()Landroidx/renderscript/Element$DataType;
    .locals 1

    iget-object v0, p0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    return-object v0
.end method

.method public getDummyElement(Landroidx/renderscript/RenderScript;)J
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 3
    .line 4
    iget v0, v0, Landroidx/renderscript/Element$DataType;->mID:I

    .line 5
    int-to-long v2, v0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/renderscript/Element;->mKind:Landroidx/renderscript/Element$DataKind;

    .line 8
    .line 9
    iget v4, v0, Landroidx/renderscript/Element$DataKind;->mID:I

    .line 10
    .line 11
    iget-boolean v5, p0, Landroidx/renderscript/Element;->mNormalized:Z

    .line 12
    .line 13
    iget v6, p0, Landroidx/renderscript/Element;->mVectorSize:I

    .line 14
    move-object v1, p1

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {v1 .. v6}, Landroidx/renderscript/RenderScript;->nIncElementCreate(JIZI)J

    .line 18
    move-result-wide v0

    .line 19
    return-wide v0
.end method

.method public getSubElement(I)Landroidx/renderscript/Element;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    array-length v1, v0

    .line 8
    .line 9
    if-ge p1, v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    .line 12
    .line 13
    aget p1, v0, p1

    .line 14
    .line 15
    aget-object p1, v1, p1

    .line 16
    return-object p1

    .line 17
    .line 18
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "Illegal sub-element index"

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p1

    .line 25
    .line 26
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "Element contains no sub-elements"

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1
.end method

.method public getSubElementArraySize(I)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    array-length v1, v0

    .line 8
    .line 9
    if-ge p1, v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/renderscript/Element;->mArraySizes:[I

    .line 12
    .line 13
    aget p1, v0, p1

    .line 14
    .line 15
    aget p1, v1, p1

    .line 16
    return p1

    .line 17
    .line 18
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "Illegal sub-element index"

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p1

    .line 25
    .line 26
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "Element contains no sub-elements"

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1
.end method

.method public getSubElementCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    array-length v0, v0

    .line 8
    return v0
.end method

.method public getSubElementName(I)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    array-length v1, v0

    .line 8
    .line 9
    if-ge p1, v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/renderscript/Element;->mElementNames:[Ljava/lang/String;

    .line 12
    .line 13
    aget p1, v0, p1

    .line 14
    .line 15
    aget-object p1, v1, p1

    .line 16
    return-object p1

    .line 17
    .line 18
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "Illegal sub-element index"

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p1

    .line 25
    .line 26
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "Element contains no sub-elements"

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1
.end method

.method public getSubElementOffsetBytes(I)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Element;->mVisibleElementMap:[I

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    array-length v1, v0

    .line 8
    .line 9
    if-ge p1, v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/renderscript/Element;->mOffsetInBytes:[I

    .line 12
    .line 13
    aget p1, v0, p1

    .line 14
    .line 15
    aget p1, v1, p1

    .line 16
    return p1

    .line 17
    .line 18
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "Illegal sub-element index"

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p1

    .line 25
    .line 26
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "Element contains no sub-elements"

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1
.end method

.method public getVectorSize()I
    .locals 1

    iget v0, p0, Landroidx/renderscript/Element;->mVectorSize:I

    return v0
.end method

.method public isCompatible(Landroidx/renderscript/Element;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/renderscript/BaseObj;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget v0, p0, Landroidx/renderscript/Element;->mSize:I

    .line 11
    .line 12
    iget v2, p1, Landroidx/renderscript/Element;->mSize:I

    .line 13
    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 17
    .line 18
    sget-object v2, Landroidx/renderscript/Element$DataType;->NONE:Landroidx/renderscript/Element$DataType;

    .line 19
    .line 20
    if-eq v0, v2, :cond_1

    .line 21
    .line 22
    iget-object v2, p1, Landroidx/renderscript/Element;->mType:Landroidx/renderscript/Element$DataType;

    .line 23
    .line 24
    if-ne v0, v2, :cond_1

    .line 25
    .line 26
    iget v0, p0, Landroidx/renderscript/Element;->mVectorSize:I

    .line 27
    .line 28
    iget p1, p1, Landroidx/renderscript/Element;->mVectorSize:I

    .line 29
    .line 30
    if-ne v0, p1, :cond_1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    :goto_0
    return v1
.end method

.method public isComplex()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    move v0, v1

    .line 8
    .line 9
    :goto_0
    iget-object v2, p0, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    .line 10
    array-length v3, v2

    .line 11
    .line 12
    if-ge v0, v3, :cond_2

    .line 13
    .line 14
    aget-object v2, v2, v0

    .line 15
    .line 16
    iget-object v2, v2, Landroidx/renderscript/Element;->mElements:[Landroidx/renderscript/Element;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    .line 22
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    return v1
.end method
