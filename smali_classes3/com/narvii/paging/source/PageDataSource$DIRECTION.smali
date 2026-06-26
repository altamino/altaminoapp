.class public final enum Lcom/narvii/paging/source/PageDataSource$DIRECTION;
.super Ljava/lang/Enum;
.source "PageDataSource.kt"


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
.field private static final synthetic $VALUES:[Lcom/narvii/paging/source/PageDataSource$DIRECTION;

.field public static final enum DIRECTION_NEXT:Lcom/narvii/paging/source/PageDataSource$DIRECTION;

.field public static final enum DIRECTION_NONE:Lcom/narvii/paging/source/PageDataSource$DIRECTION;

.field public static final enum DIRECTION_PRE:Lcom/narvii/paging/source/PageDataSource$DIRECTION;

.field public static final enum DIRECTION_REFRESH:Lcom/narvii/paging/source/PageDataSource$DIRECTION;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    new-instance v1, Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    const/4 v2, 0x0

    const-string v3, "DIRECTION_NONE"

    .line 34
    invoke-direct {v1, v3, v2, v2}, Lcom/narvii/paging/source/PageDataSource$DIRECTION;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->DIRECTION_NONE:Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    const/4 v2, 0x1

    const-string v3, "DIRECTION_PRE"

    const/4 v4, -0x1

    invoke-direct {v1, v3, v2, v4}, Lcom/narvii/paging/source/PageDataSource$DIRECTION;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->DIRECTION_PRE:Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    aput-object v1, v0, v2

    new-instance v1, Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    const/4 v3, 0x2

    const-string v4, "DIRECTION_NEXT"

    invoke-direct {v1, v4, v3, v2}, Lcom/narvii/paging/source/PageDataSource$DIRECTION;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->DIRECTION_NEXT:Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    aput-object v1, v0, v3

    new-instance v1, Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    const/4 v2, 0x3

    const-string v4, "DIRECTION_REFRESH"

    invoke-direct {v1, v4, v2, v3}, Lcom/narvii/paging/source/PageDataSource$DIRECTION;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->DIRECTION_REFRESH:Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->$VALUES:[Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->d:I

    return-void
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

    invoke-virtual {v0}, [Lcom/narvii/paging/source/PageDataSource$DIRECTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/paging/source/PageDataSource$DIRECTION;

    return-object v0
.end method


# virtual methods
.method public final getD()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/narvii/paging/source/PageDataSource$DIRECTION;->d:I

    return v0
.end method
