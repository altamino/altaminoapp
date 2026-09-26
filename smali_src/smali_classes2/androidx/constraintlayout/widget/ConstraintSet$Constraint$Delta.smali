.class Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Delta"
.end annotation


# static fields
.field private static final INITIAL_BOOLEAN:I = 0x4

.field private static final INITIAL_FLOAT:I = 0xa

.field private static final INITIAL_INT:I = 0xa

.field private static final INITIAL_STRING:I = 0x5


# instance fields
.field mCountBoolean:I

.field mCountFloat:I

.field mCountInt:I

.field mCountString:I

.field mTypeBoolean:[I

.field mTypeFloat:[I

.field mTypeInt:[I

.field mTypeString:[I

.field mValueBoolean:[Z

.field mValueFloat:[F

.field mValueInt:[I

.field mValueString:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    new-array v1, v0, [I

    .line 8
    .line 9
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeInt:[I

    .line 10
    .line 11
    new-array v1, v0, [I

    .line 12
    .line 13
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueInt:[I

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountInt:I

    .line 17
    .line 18
    new-array v2, v0, [I

    .line 19
    .line 20
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeFloat:[I

    .line 21
    .line 22
    new-array v0, v0, [F

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueFloat:[F

    .line 25
    .line 26
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountFloat:I

    .line 27
    const/4 v0, 0x5

    .line 28
    .line 29
    new-array v2, v0, [I

    .line 30
    .line 31
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeString:[I

    .line 32
    .line 33
    new-array v0, v0, [Ljava/lang/String;

    .line 34
    .line 35
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueString:[Ljava/lang/String;

    .line 36
    .line 37
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountString:I

    .line 38
    const/4 v0, 0x4

    .line 39
    .line 40
    new-array v2, v0, [I

    .line 41
    .line 42
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeBoolean:[I

    .line 43
    .line 44
    new-array v0, v0, [Z

    .line 45
    .line 46
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueBoolean:[Z

    .line 47
    .line 48
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountBoolean:I

    .line 49
    return-void
.end method


# virtual methods
.method a(IF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "value"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountFloat:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeFloat:[I

    .line 5
    array-length v2, v1

    .line 6
    .line 7
    if-lt v0, v2, :cond_0

    .line 8
    array-length v0, v1

    .line 9
    .line 10
    mul-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeFloat:[I

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueFloat:[F

    .line 19
    array-length v1, v0

    .line 20
    .line 21
    mul-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueFloat:[F

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeFloat:[I

    .line 30
    .line 31
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountFloat:I

    .line 32
    .line 33
    aput p1, v0, v1

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueFloat:[F

    .line 36
    .line 37
    add-int/lit8 v0, v1, 0x1

    .line 38
    .line 39
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountFloat:I

    .line 40
    .line 41
    aput p2, p1, v1

    .line 42
    return-void
.end method

.method b(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "value"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountInt:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeInt:[I

    .line 5
    array-length v2, v1

    .line 6
    .line 7
    if-lt v0, v2, :cond_0

    .line 8
    array-length v0, v1

    .line 9
    .line 10
    mul-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeInt:[I

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueInt:[I

    .line 19
    array-length v1, v0

    .line 20
    .line 21
    mul-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueInt:[I

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeInt:[I

    .line 30
    .line 31
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountInt:I

    .line 32
    .line 33
    aput p1, v0, v1

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueInt:[I

    .line 36
    .line 37
    add-int/lit8 v0, v1, 0x1

    .line 38
    .line 39
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountInt:I

    .line 40
    .line 41
    aput p2, p1, v1

    .line 42
    return-void
.end method

.method c(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "value"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountString:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeString:[I

    .line 5
    array-length v2, v1

    .line 6
    .line 7
    if-lt v0, v2, :cond_0

    .line 8
    array-length v0, v1

    .line 9
    .line 10
    mul-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeString:[I

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueString:[Ljava/lang/String;

    .line 19
    array-length v1, v0

    .line 20
    .line 21
    mul-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, [Ljava/lang/String;

    .line 28
    .line 29
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueString:[Ljava/lang/String;

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeString:[I

    .line 32
    .line 33
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountString:I

    .line 34
    .line 35
    aput p1, v0, v1

    .line 36
    .line 37
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueString:[Ljava/lang/String;

    .line 38
    .line 39
    add-int/lit8 v0, v1, 0x1

    .line 40
    .line 41
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountString:I

    .line 42
    .line 43
    aput-object p2, p1, v1

    .line 44
    return-void
.end method

.method d(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "value"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountBoolean:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeBoolean:[I

    .line 5
    array-length v2, v1

    .line 6
    .line 7
    if-lt v0, v2, :cond_0

    .line 8
    array-length v0, v1

    .line 9
    .line 10
    mul-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeBoolean:[I

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueBoolean:[Z

    .line 19
    array-length v1, v0

    .line 20
    .line 21
    mul-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueBoolean:[Z

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeBoolean:[I

    .line 30
    .line 31
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountBoolean:I

    .line 32
    .line 33
    aput p1, v0, v1

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueBoolean:[Z

    .line 36
    .line 37
    add-int/lit8 v0, v1, 0x1

    .line 38
    .line 39
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountBoolean:I

    .line 40
    .line 41
    aput-boolean p2, p1, v1

    .line 42
    return-void
.end method

.method e(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountInt:I

    .line 5
    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeInt:[I

    .line 9
    .line 10
    aget v2, v2, v1

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueInt:[I

    .line 13
    .line 14
    aget v3, v3, v1

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->c(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;II)V

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v0

    .line 22
    .line 23
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountFloat:I

    .line 24
    .line 25
    if-ge v1, v2, :cond_1

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeFloat:[I

    .line 28
    .line 29
    aget v2, v2, v1

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueFloat:[F

    .line 32
    .line 33
    aget v3, v3, v1

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->d(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;IF)V

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v1, v0

    .line 41
    .line 42
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountString:I

    .line 43
    .line 44
    if-ge v1, v2, :cond_2

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeString:[I

    .line 47
    .line 48
    aget v2, v2, v1

    .line 49
    .line 50
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueString:[Ljava/lang/String;

    .line 51
    .line 52
    aget-object v3, v3, v1

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->e(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILjava/lang/String;)V

    .line 56
    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 58
    goto :goto_2

    .line 59
    .line 60
    :cond_2
    :goto_3
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountBoolean:I

    .line 61
    .line 62
    if-ge v0, v1, :cond_3

    .line 63
    .line 64
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeBoolean:[I

    .line 65
    .line 66
    aget v1, v1, v0

    .line 67
    .line 68
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueBoolean:[Z

    .line 69
    .line 70
    aget-boolean v2, v2, v0

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->f(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;IZ)V

    .line 74
    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 76
    goto :goto_3

    .line 77
    :cond_3
    return-void
.end method
