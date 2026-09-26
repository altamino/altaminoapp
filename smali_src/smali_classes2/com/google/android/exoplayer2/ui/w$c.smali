.class final Lcom/google/android/exoplayer2/ui/w$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final FOR_CLOSING_TAGS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/ui/w$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final FOR_OPENING_TAGS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/ui/w$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final closingTag:Ljava/lang/String;

.field public final end:I

.field public final openingTag:Ljava/lang/String;

.field public final start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/ui/x;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/ui/x;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/ui/w$c;->FOR_OPENING_TAGS:Ljava/util/Comparator;

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/exoplayer2/ui/y;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/google/android/exoplayer2/ui/y;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/google/android/exoplayer2/ui/w$c;->FOR_CLOSING_TAGS:Ljava/util/Comparator;

    .line 15
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/ui/w$c;->start:I

    iput p2, p0, Lcom/google/android/exoplayer2/ui/w$c;->end:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/w$c;->openingTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/w$c;->closingTag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/ui/w$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ui/w$c;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/ui/w$c;Lcom/google/android/exoplayer2/ui/w$c;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/w$c;->e(Lcom/google/android/exoplayer2/ui/w$c;Lcom/google/android/exoplayer2/ui/w$c;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/ui/w$c;Lcom/google/android/exoplayer2/ui/w$c;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/w$c;->f(Lcom/google/android/exoplayer2/ui/w$c;Lcom/google/android/exoplayer2/ui/w$c;)I

    move-result p0

    return p0
.end method

.method static synthetic c()Ljava/util/Comparator;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/ui/w$c;->FOR_CLOSING_TAGS:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic d()Ljava/util/Comparator;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/ui/w$c;->FOR_OPENING_TAGS:Ljava/util/Comparator;

    return-object v0
.end method

.method private static synthetic e(Lcom/google/android/exoplayer2/ui/w$c;Lcom/google/android/exoplayer2/ui/w$c;)I
    .locals 2

    .line 1
    .line 2
    iget v0, p1, Lcom/google/android/exoplayer2/ui/w$c;->end:I

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/ui/w$c;->end:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w$c;->openingTag:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p1, Lcom/google/android/exoplayer2/ui/w$c;->openingTag:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    return v0

    .line 23
    .line 24
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/w$c;->closingTag:Ljava/lang/String;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/w$c;->closingTag:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method private static synthetic f(Lcom/google/android/exoplayer2/ui/w$c;Lcom/google/android/exoplayer2/ui/w$c;)I
    .locals 2

    .line 1
    .line 2
    iget v0, p1, Lcom/google/android/exoplayer2/ui/w$c;->start:I

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/ui/w$c;->start:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/w$c;->openingTag:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/w$c;->openingTag:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    return v0

    .line 23
    .line 24
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/w$c;->closingTag:Ljava/lang/String;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/w$c;->closingTag:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 30
    move-result p0

    .line 31
    return p0
.end method
