.class public final Landroidx/core/text/util/LinkifyCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/util/LinkifyCompat$Api24Impl;,
        Landroidx/core/text/util/LinkifyCompat$LinkSpec;,
        Landroidx/core/text/util/LinkifyCompat$LinkifyMask;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_STRING:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    .line 5
    sput-object v0, Landroidx/core/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    .line 6
    .line 7
    new-instance v0, Landroidx/core/text/util/a;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/core/text/util/a;-><init>()V

    .line 11
    .line 12
    sput-object v0, Landroidx/core/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(Landroidx/core/text/util/LinkifyCompat$LinkSpec;Landroidx/core/text/util/LinkifyCompat$LinkSpec;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/core/text/util/LinkifyCompat;->b(Landroidx/core/text/util/LinkifyCompat$LinkSpec;Landroidx/core/text/util/LinkifyCompat$LinkSpec;)I

    move-result p0

    return p0
.end method

.method private static synthetic b(Landroidx/core/text/util/LinkifyCompat$LinkSpec;Landroidx/core/text/util/LinkifyCompat$LinkSpec;)I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 3
    .line 4
    iget v1, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    .line 10
    :cond_0
    if-le v0, v1, :cond_1

    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    .line 14
    :cond_1
    iget p1, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 15
    .line 16
    iget p0, p0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    .line 20
    move-result p0

    .line 21
    return p0
.end method
