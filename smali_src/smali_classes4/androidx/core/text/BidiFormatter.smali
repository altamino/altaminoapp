.class public final Landroidx/core/text/BidiFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/BidiFormatter$DirectionalityEstimator;,
        Landroidx/core/text/BidiFormatter$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_FLAGS:I = 0x2

.field static final DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

.field static final DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

.field static final DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicCompat;

.field private static final DIR_LTR:I = -0x1

.field private static final DIR_RTL:I = 0x1

.field private static final DIR_UNKNOWN:I = 0x0

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final FLAG_STEREO_RESET:I = 0x2

.field private static final LRE:C = '\u202a'

.field private static final LRM:C = '\u200e'

.field private static final LRM_STRING:Ljava/lang/String;

.field private static final PDF:C = '\u202c'

.field private static final RLE:C = '\u202b'

.field private static final RLM:C = '\u200f'

.field private static final RLM_STRING:Ljava/lang/String;


# instance fields
.field private final mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

.field private final mFlags:I

.field private final mIsRtlContext:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 3
    .line 4
    sput-object v0, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 5
    .line 6
    const/16 v1, 0x200e

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    sput-object v1, Landroidx/core/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    .line 13
    .line 14
    const/16 v1, 0x200f

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    sput-object v1, Landroidx/core/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Landroidx/core/text/BidiFormatter;

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x2

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2, v3, v0}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V

    .line 28
    .line 29
    sput-object v1, Landroidx/core/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

    .line 30
    .line 31
    new-instance v1, Landroidx/core/text/BidiFormatter;

    .line 32
    const/4 v2, 0x1

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2, v3, v0}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V

    .line 36
    .line 37
    sput-object v1, Landroidx/core/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

    .line 38
    return-void
.end method

.method constructor <init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    .line 6
    .line 7
    iput p2, p0, Landroidx/core/text/BidiFormatter;->mFlags:I

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 10
    return-void
.end method

.method private static a(Ljava/lang/CharSequence;)I
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->d()I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static b(Ljava/lang/CharSequence;)I
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->e()I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static c()Landroidx/core/text/BidiFormatter;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/core/text/BidiFormatter$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/core/text/BidiFormatter$Builder;->a()Landroidx/core/text/BidiFormatter;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method static e(Ljava/util/Locale;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/text/TextUtilsCompat;->a(Ljava/util/Locale;)I

    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private f(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, p1, v1, v0}, Landroidx/core/text/TextDirectionHeuristicCompat;->a(Ljava/lang/CharSequence;II)Z

    .line 9
    move-result p2

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->b(Ljava/lang/CharSequence;)I

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    :cond_0
    sget-object p1, Landroidx/core/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    .line 25
    return-object p1

    .line 26
    .line 27
    :cond_1
    iget-boolean v0, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->b(Ljava/lang/CharSequence;)I

    .line 35
    move-result p1

    .line 36
    const/4 p2, -0x1

    .line 37
    .line 38
    if-ne p1, p2, :cond_3

    .line 39
    .line 40
    :cond_2
    sget-object p1, Landroidx/core/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    .line 41
    return-object p1

    .line 42
    .line 43
    :cond_3
    const-string p1, ""

    .line 44
    return-object p1
.end method

.method private g(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, p1, v1, v0}, Landroidx/core/text/TextDirectionHeuristicCompat;->a(Ljava/lang/CharSequence;II)Z

    .line 9
    move-result p2

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->a(Ljava/lang/CharSequence;)I

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    :cond_0
    sget-object p1, Landroidx/core/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    .line 25
    return-object p1

    .line 26
    .line 27
    :cond_1
    iget-boolean v0, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->a(Ljava/lang/CharSequence;)I

    .line 35
    move-result p1

    .line 36
    const/4 p2, -0x1

    .line 37
    .line 38
    if-ne p1, p2, :cond_3

    .line 39
    .line 40
    :cond_2
    sget-object p1, Landroidx/core/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    .line 41
    return-object p1

    .line 42
    .line 43
    :cond_3
    const-string p1, ""

    .line 44
    return-object p1
.end method


# virtual methods
.method public d()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/text/BidiFormatter;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0, v1}, Landroidx/core/text/BidiFormatter;->i(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public i(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-interface {p2, p1, v0, v1}, Landroidx/core/text/TextDirectionHeuristicCompat;->a(Ljava/lang/CharSequence;II)Z

    .line 13
    move-result p2

    .line 14
    .line 15
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/core/text/BidiFormatter;->d()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    if-eqz p3, :cond_2

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    sget-object v1, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    sget-object v1, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-direct {p0, p1, v1}, Landroidx/core/text/BidiFormatter;->g(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 41
    .line 42
    :cond_2
    iget-boolean v1, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    .line 43
    .line 44
    if-eq p2, v1, :cond_4

    .line 45
    .line 46
    if-eqz p2, :cond_3

    .line 47
    .line 48
    const/16 v1, 0x202b

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_3
    const/16 v1, 0x202a

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 58
    .line 59
    const/16 v1, 0x202c

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 63
    goto :goto_2

    .line 64
    .line 65
    .line 66
    :cond_4
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 67
    .line 68
    :goto_2
    if-eqz p3, :cond_6

    .line 69
    .line 70
    if-eqz p2, :cond_5

    .line 71
    .line 72
    sget-object p2, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 73
    goto :goto_3

    .line 74
    .line 75
    :cond_5
    sget-object p2, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 76
    .line 77
    .line 78
    :goto_3
    invoke-direct {p0, p1, p2}, Landroidx/core/text/BidiFormatter;->f(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 83
    :cond_6
    return-object v0
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0, v1}, Landroidx/core/text/BidiFormatter;->k(Ljava/lang/String;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public k(Ljava/lang/String;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/text/BidiFormatter;->i(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
