.class final Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/AdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UpdateOp"
.end annotation


# static fields
.field static final ADD:I = 0x1

.field static final MOVE:I = 0x8

.field static final POOL_SIZE:I = 0x1e

.field static final REMOVE:I = 0x2

.field static final UPDATE:I = 0x4


# instance fields
.field cmd:I

.field itemCount:I

.field payload:Ljava/lang/Object;

.field positionStart:I


# direct methods
.method constructor <init>(IIILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 6
    .line 7
    iput p2, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 8
    .line 9
    iput p3, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 10
    .line 11
    iput-object p4, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 12
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const-string v0, "??"

    return-object v0

    :cond_0
    const-string v0, "mv"

    return-object v0

    :cond_1
    const-string/jumbo v0, "up"

    return-object v0

    :cond_2
    const-string/jumbo v0, "rm"

    return-object v0

    :cond_3
    const-string v0, "add"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    .line 12
    :cond_1
    check-cast p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 13
    .line 14
    iget v1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 15
    .line 16
    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 17
    .line 18
    if-eq v1, v3, :cond_2

    .line 19
    return v2

    .line 20
    .line 21
    :cond_2
    const/16 v3, 0x8

    .line 22
    .line 23
    if-ne v1, v3, :cond_3

    .line 24
    .line 25
    iget v1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 26
    .line 27
    iget v3, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 28
    sub-int/2addr v1, v3

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 32
    move-result v1

    .line 33
    .line 34
    if-ne v1, v0, :cond_3

    .line 35
    .line 36
    iget v1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 37
    .line 38
    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 39
    .line 40
    if-ne v1, v3, :cond_3

    .line 41
    .line 42
    iget v1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 43
    .line 44
    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 45
    .line 46
    if-ne v1, v3, :cond_3

    .line 47
    return v0

    .line 48
    .line 49
    :cond_3
    iget v1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 50
    .line 51
    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 52
    .line 53
    if-eq v1, v3, :cond_4

    .line 54
    return v2

    .line 55
    .line 56
    :cond_4
    iget v1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 57
    .line 58
    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 59
    .line 60
    if-eq v1, v3, :cond_5

    .line 61
    return v2

    .line 62
    .line 63
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 64
    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    iget-object p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result p1

    .line 72
    .line 73
    if-nez p1, :cond_7

    .line 74
    return v2

    .line 75
    .line 76
    :cond_6
    iget-object p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 77
    .line 78
    if-eqz p1, :cond_7

    .line 79
    return v2

    .line 80
    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "["

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->a()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, ",s:"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    iget v1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v1, "c:"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    iget v1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v1, ",p:"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v1, "]"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method
