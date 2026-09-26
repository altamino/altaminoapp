.class public Landroidx/constraintlayout/core/motion/utils/TypedBundle;
.super Ljava/lang/Object;
.source "SourceFile"


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
.method public constructor <init>()V
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
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeInt:[I

    .line 10
    .line 11
    new-array v1, v0, [I

    .line 12
    .line 13
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueInt:[I

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountInt:I

    .line 17
    .line 18
    new-array v2, v0, [I

    .line 19
    .line 20
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeFloat:[I

    .line 21
    .line 22
    new-array v0, v0, [F

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueFloat:[F

    .line 25
    .line 26
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountFloat:I

    .line 27
    const/4 v0, 0x5

    .line 28
    .line 29
    new-array v2, v0, [I

    .line 30
    .line 31
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeString:[I

    .line 32
    .line 33
    new-array v0, v0, [Ljava/lang/String;

    .line 34
    .line 35
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueString:[Ljava/lang/String;

    .line 36
    .line 37
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountString:I

    .line 38
    const/4 v0, 0x4

    .line 39
    .line 40
    new-array v2, v0, [I

    .line 41
    .line 42
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeBoolean:[I

    .line 43
    .line 44
    new-array v0, v0, [Z

    .line 45
    .line 46
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueBoolean:[Z

    .line 47
    .line 48
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountBoolean:I

    .line 49
    return-void
.end method
