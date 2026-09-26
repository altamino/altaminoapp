.class public final enum Lcom/narvii/paging/source/PageDataSource$DIRECTION;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/paging/source/PageDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DIRECTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/paging/source/PageDataSource$DIRECTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lz7/a;

.field private static final synthetic $VALUES:[Lcom/narvii/paging/source/PageDataSource$DIRECTION;

.field public static final enum DIRECTION_NEXT:Lcom/narvii/paging/source/PageDataSource$DIRECTION;

.field public static final enum DIRECTION_NONE:Lcom/narvii/paging/source/PageDataSource$DIRECTION;

.field public static final enum DIRECTION_PRE:Lcom/narvii/paging/source/PageDataSource$DIRECTION;

.field public static final enum DIRECTION_REFRESH:Lcom/narvii/paging/source/PageDataSource$DIRECTION;


# instance fields
.field private final d:I


# direct methods
.method private static final synthetic $values()[Lcom/narvii/paging/source/PageDataSource$DIRECTION;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    const/4 v1, 0x0

    sget-object v2, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->DIRECTION_NONE:Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->DIRECTION_PRE:Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->DIRECTION_NEXT:Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->DIRECTION_REFRESH:Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    .line 3
    .line 4
    const-string v1, "DIRECTION_NONE"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v2}, Lcom/narvii/paging/source/PageDataSource$DIRECTION;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->DIRECTION_NONE:Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    .line 13
    const/4 v1, -0x1

    .line 14
    .line 15
    const-string v2, "DIRECTION_PRE"

    .line 16
    const/4 v3, 0x1

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v2, v3, v1}, Lcom/narvii/paging/source/PageDataSource$DIRECTION;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    sput-object v0, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->DIRECTION_PRE:Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    .line 24
    .line 25
    const-string v1, "DIRECTION_NEXT"

    .line 26
    const/4 v2, 0x2

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1, v2, v3}, Lcom/narvii/paging/source/PageDataSource$DIRECTION;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    sput-object v0, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->DIRECTION_NEXT:Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    .line 32
    .line 33
    new-instance v0, Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    .line 34
    .line 35
    const-string v1, "DIRECTION_REFRESH"

    .line 36
    const/4 v3, 0x3

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1, v3, v2}, Lcom/narvii/paging/source/PageDataSource$DIRECTION;-><init>(Ljava/lang/String;II)V

    .line 40
    .line 41
    sput-object v0, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->DIRECTION_REFRESH:Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->$values()[Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    sput-object v0, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->$VALUES:[Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lz7/b;->a([Ljava/lang/Enum;)Lz7/a;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    sput-object v0, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->$ENTRIES:Lz7/a;

    .line 54
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
    iput p3, p0, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->d:I

    .line 6
    return-void
.end method

.method public static getEntries()Lz7/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz7/a<",
            "Lcom/narvii/paging/source/PageDataSource$DIRECTION;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->$ENTRIES:Lz7/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/paging/source/PageDataSource$DIRECTION;
    .locals 1

    const-class v0, Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    return-object p0
.end method

.method public static values()[Lcom/narvii/paging/source/PageDataSource$DIRECTION;
    .locals 1

    sget-object v0, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->$VALUES:[Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    return-object v0
.end method


# virtual methods
.method public final getD()I
    .locals 1

    iget v0, p0, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->d:I

    return v0
.end method
