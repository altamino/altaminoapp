.class public final enum Ll5/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ll5/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ll5/a;

.field private static final FOR_BITS:[Ll5/a;

.field public static final enum H:Ll5/a;

.field public static final enum L:Ll5/a;

.field public static final enum M:Ll5/a;

.field public static final enum Q:Ll5/a;


# instance fields
.field private final bits:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    .line 2
    new-instance v0, Ll5/a;

    .line 3
    .line 4
    const-string v1, "L"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Ll5/a;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    sput-object v0, Ll5/a;->L:Ll5/a;

    .line 12
    .line 13
    new-instance v1, Ll5/a;

    .line 14
    .line 15
    const-string v4, "M"

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v4, v3, v2}, Ll5/a;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    sput-object v1, Ll5/a;->M:Ll5/a;

    .line 21
    .line 22
    new-instance v4, Ll5/a;

    .line 23
    .line 24
    const-string v5, "Q"

    .line 25
    const/4 v6, 0x2

    .line 26
    const/4 v7, 0x3

    .line 27
    .line 28
    .line 29
    invoke-direct {v4, v5, v6, v7}, Ll5/a;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    sput-object v4, Ll5/a;->Q:Ll5/a;

    .line 32
    .line 33
    new-instance v5, Ll5/a;

    .line 34
    .line 35
    const-string v8, "H"

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v8, v7, v6}, Ll5/a;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    sput-object v5, Ll5/a;->H:Ll5/a;

    .line 41
    const/4 v8, 0x4

    .line 42
    .line 43
    new-array v9, v8, [Ll5/a;

    .line 44
    .line 45
    aput-object v0, v9, v2

    .line 46
    .line 47
    aput-object v1, v9, v3

    .line 48
    .line 49
    aput-object v4, v9, v6

    .line 50
    .line 51
    aput-object v5, v9, v7

    .line 52
    .line 53
    sput-object v9, Ll5/a;->$VALUES:[Ll5/a;

    .line 54
    .line 55
    new-array v8, v8, [Ll5/a;

    .line 56
    .line 57
    aput-object v1, v8, v2

    .line 58
    .line 59
    aput-object v0, v8, v3

    .line 60
    .line 61
    aput-object v5, v8, v6

    .line 62
    .line 63
    aput-object v4, v8, v7

    .line 64
    .line 65
    sput-object v8, Ll5/a;->FOR_BITS:[Ll5/a;

    .line 66
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput p3, p0, Ll5/a;->bits:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ll5/a;
    .locals 1

    .line 1
    .line 2
    const-class v0, Ll5/a;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Ll5/a;

    .line 9
    return-object p0
.end method

.method public static values()[Ll5/a;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Ll5/a;->$VALUES:[Ll5/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Ll5/a;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Ll5/a;

    .line 9
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Ll5/a;->bits:I

    return v0
.end method
