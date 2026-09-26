.class public final enum Lkotlin/text/i;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkotlin/text/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/text/i;",
        ">;",
        "Lkotlin/text/f;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lz7/a;

.field private static final synthetic $VALUES:[Lkotlin/text/i;

.field public static final enum CANON_EQ:Lkotlin/text/i;

.field public static final enum COMMENTS:Lkotlin/text/i;

.field public static final enum DOT_MATCHES_ALL:Lkotlin/text/i;

.field public static final enum IGNORE_CASE:Lkotlin/text/i;

.field public static final enum LITERAL:Lkotlin/text/i;

.field public static final enum MULTILINE:Lkotlin/text/i;

.field public static final enum UNIX_LINES:Lkotlin/text/i;


# instance fields
.field private final mask:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    .line 2
    new-instance v7, Lkotlin/text/i;

    .line 3
    .line 4
    const-string v1, "IGNORE_CASE"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x2

    .line 9
    const/4 v6, 0x0

    .line 10
    move-object v0, v7

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v0 .. v6}, Lkotlin/text/i;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/k;)V

    .line 14
    .line 15
    sput-object v7, Lkotlin/text/i;->IGNORE_CASE:Lkotlin/text/i;

    .line 16
    .line 17
    new-instance v0, Lkotlin/text/i;

    .line 18
    .line 19
    const-string v9, "MULTILINE"

    .line 20
    const/4 v10, 0x1

    .line 21
    .line 22
    const/16 v11, 0x8

    .line 23
    const/4 v12, 0x0

    .line 24
    const/4 v13, 0x2

    .line 25
    const/4 v14, 0x0

    .line 26
    move-object v8, v0

    .line 27
    .line 28
    .line 29
    invoke-direct/range {v8 .. v14}, Lkotlin/text/i;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/k;)V

    .line 30
    .line 31
    sput-object v0, Lkotlin/text/i;->MULTILINE:Lkotlin/text/i;

    .line 32
    .line 33
    new-instance v0, Lkotlin/text/i;

    .line 34
    .line 35
    const-string v2, "LITERAL"

    .line 36
    .line 37
    const/16 v4, 0x10

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x2

    .line 40
    const/4 v7, 0x0

    .line 41
    move-object v1, v0

    .line 42
    .line 43
    .line 44
    invoke-direct/range {v1 .. v7}, Lkotlin/text/i;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/k;)V

    .line 45
    .line 46
    sput-object v0, Lkotlin/text/i;->LITERAL:Lkotlin/text/i;

    .line 47
    .line 48
    new-instance v0, Lkotlin/text/i;

    .line 49
    .line 50
    const-string v9, "UNIX_LINES"

    .line 51
    const/4 v10, 0x3

    .line 52
    const/4 v11, 0x1

    .line 53
    move-object v8, v0

    .line 54
    .line 55
    .line 56
    invoke-direct/range {v8 .. v14}, Lkotlin/text/i;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/k;)V

    .line 57
    .line 58
    sput-object v0, Lkotlin/text/i;->UNIX_LINES:Lkotlin/text/i;

    .line 59
    .line 60
    new-instance v0, Lkotlin/text/i;

    .line 61
    .line 62
    const-string v2, "COMMENTS"

    .line 63
    const/4 v3, 0x4

    .line 64
    const/4 v4, 0x4

    .line 65
    move-object v1, v0

    .line 66
    .line 67
    .line 68
    invoke-direct/range {v1 .. v7}, Lkotlin/text/i;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/k;)V

    .line 69
    .line 70
    sput-object v0, Lkotlin/text/i;->COMMENTS:Lkotlin/text/i;

    .line 71
    .line 72
    new-instance v0, Lkotlin/text/i;

    .line 73
    .line 74
    const-string v9, "DOT_MATCHES_ALL"

    .line 75
    const/4 v10, 0x5

    .line 76
    .line 77
    const/16 v11, 0x20

    .line 78
    move-object v8, v0

    .line 79
    .line 80
    .line 81
    invoke-direct/range {v8 .. v14}, Lkotlin/text/i;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/k;)V

    .line 82
    .line 83
    sput-object v0, Lkotlin/text/i;->DOT_MATCHES_ALL:Lkotlin/text/i;

    .line 84
    .line 85
    new-instance v0, Lkotlin/text/i;

    .line 86
    .line 87
    const-string v2, "CANON_EQ"

    .line 88
    const/4 v3, 0x6

    .line 89
    .line 90
    const/16 v4, 0x80

    .line 91
    move-object v1, v0

    .line 92
    .line 93
    .line 94
    invoke-direct/range {v1 .. v7}, Lkotlin/text/i;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/k;)V

    .line 95
    .line 96
    sput-object v0, Lkotlin/text/i;->CANON_EQ:Lkotlin/text/i;

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lkotlin/text/i;->a()[Lkotlin/text/i;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    sput-object v0, Lkotlin/text/i;->$VALUES:[Lkotlin/text/i;

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Lz7/b;->a([Ljava/lang/Enum;)Lz7/a;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    sput-object v0, Lkotlin/text/i;->$ENTRIES:Lz7/a;

    .line 109
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkotlin/text/i;->value:I

    iput p4, p0, Lkotlin/text/i;->mask:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    move p4, p3

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/text/i;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method private static final synthetic a()[Lkotlin/text/i;
    .locals 3

    .line 1
    const/4 v0, 0x7

    new-array v0, v0, [Lkotlin/text/i;

    const/4 v1, 0x0

    sget-object v2, Lkotlin/text/i;->IGNORE_CASE:Lkotlin/text/i;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lkotlin/text/i;->MULTILINE:Lkotlin/text/i;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lkotlin/text/i;->LITERAL:Lkotlin/text/i;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lkotlin/text/i;->UNIX_LINES:Lkotlin/text/i;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lkotlin/text/i;->COMMENTS:Lkotlin/text/i;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lkotlin/text/i;->DOT_MATCHES_ALL:Lkotlin/text/i;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lkotlin/text/i;->CANON_EQ:Lkotlin/text/i;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/text/i;
    .locals 1

    const-class v0, Lkotlin/text/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/text/i;

    return-object p0
.end method

.method public static values()[Lkotlin/text/i;
    .locals 1

    sget-object v0, Lkotlin/text/i;->$VALUES:[Lkotlin/text/i;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/text/i;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lkotlin/text/i;->value:I

    return v0
.end method
