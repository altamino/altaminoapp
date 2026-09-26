.class final Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/ScriptGroup$Closure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValueAndSize"
.end annotation


# instance fields
.field public size:I

.field public value:J


# direct methods
.method public constructor <init>(Landroidx/renderscript/RenderScript;Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    instance-of v0, p2, Landroidx/renderscript/Allocation;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p2, Landroidx/renderscript/Allocation;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 13
    move-result-wide p1

    .line 14
    .line 15
    iput-wide p1, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 16
    const/4 p1, -0x1

    .line 17
    .line 18
    iput p1, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    instance-of p1, p2, Ljava/lang/Boolean;

    .line 22
    const/4 v0, 0x4

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    check-cast p2, Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const-wide/16 p1, 0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    const-wide/16 p1, 0x0

    .line 38
    .line 39
    :goto_0
    iput-wide p1, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 40
    .line 41
    iput v0, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_2
    instance-of p1, p2, Ljava/lang/Integer;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    check-cast p2, Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/Integer;->longValue()J

    .line 52
    move-result-wide p1

    .line 53
    .line 54
    iput-wide p1, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 55
    .line 56
    iput v0, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_3
    instance-of p1, p2, Ljava/lang/Long;

    .line 60
    .line 61
    const/16 v1, 0x8

    .line 62
    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    check-cast p2, Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 69
    move-result-wide p1

    .line 70
    .line 71
    iput-wide p1, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 72
    .line 73
    iput v1, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_4
    instance-of p1, p2, Ljava/lang/Float;

    .line 77
    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    check-cast p2, Ljava/lang/Float;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 84
    move-result p1

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 88
    move-result p1

    .line 89
    int-to-long p1, p1

    .line 90
    .line 91
    iput-wide p1, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 92
    .line 93
    iput v0, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 94
    goto :goto_1

    .line 95
    .line 96
    :cond_5
    instance-of p1, p2, Ljava/lang/Double;

    .line 97
    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    check-cast p2, Ljava/lang/Double;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 104
    move-result-wide p1

    .line 105
    .line 106
    .line 107
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 108
    move-result-wide p1

    .line 109
    .line 110
    iput-wide p1, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 111
    .line 112
    iput v1, p0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 113
    :cond_6
    :goto_1
    return-void
.end method
