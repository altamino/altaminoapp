.class public Lcom/fasterxml/jackson/core/util/ArraysCompat;
.super Ljava/lang/Object;
.source "ArraysCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyOf([CI)[C
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-static {p0, v0, p1}, Lcom/fasterxml/jackson/core/util/ArraysCompat;->copyOfRange([CII)[C

    move-result-object p0

    return-object p0
.end method

.method public static copyOf([II)[I
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, v0, p1}, Lcom/fasterxml/jackson/core/util/ArraysCompat;->copyOfRange([III)[I

    move-result-object p0

    return-object p0
.end method

.method public static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    invoke-static {p0, v0, p1}, Lcom/fasterxml/jackson/core/util/ArraysCompat;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static copyOfRange([CII)[C
    .locals 2

    .line 69
    array-length v0, p0

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    .line 71
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 72
    new-array p2, p2, [C

    const/4 v1, 0x0

    .line 73
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public static copyOfRange([III)[I
    .locals 2

    .line 92
    array-length v0, p0

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    .line 94
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 95
    new-array p2, p2, [I

    const/4 v1, 0x0

    .line 96
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 116
    array-length v0, p0

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    .line 118
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 120
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method
