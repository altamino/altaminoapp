.class public final enum Lcom/airbnb/lottie/model/content/p$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/model/content/p$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/model/content/p$d;

.field public static final enum Bevel:Lcom/airbnb/lottie/model/content/p$d;

.field public static final enum Miter:Lcom/airbnb/lottie/model/content/p$d;

.field public static final enum Round:Lcom/airbnb/lottie/model/content/p$d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/model/content/p$d;

    .line 3
    .line 4
    const-string v1, "Miter"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/content/p$d;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lcom/airbnb/lottie/model/content/p$d;->Miter:Lcom/airbnb/lottie/model/content/p$d;

    .line 11
    .line 12
    new-instance v1, Lcom/airbnb/lottie/model/content/p$d;

    .line 13
    .line 14
    const-string v3, "Round"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4}, Lcom/airbnb/lottie/model/content/p$d;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v1, Lcom/airbnb/lottie/model/content/p$d;->Round:Lcom/airbnb/lottie/model/content/p$d;

    .line 21
    .line 22
    new-instance v3, Lcom/airbnb/lottie/model/content/p$d;

    .line 23
    .line 24
    const-string v5, "Bevel"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6}, Lcom/airbnb/lottie/model/content/p$d;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v3, Lcom/airbnb/lottie/model/content/p$d;->Bevel:Lcom/airbnb/lottie/model/content/p$d;

    .line 31
    const/4 v5, 0x3

    .line 32
    .line 33
    new-array v5, v5, [Lcom/airbnb/lottie/model/content/p$d;

    .line 34
    .line 35
    aput-object v0, v5, v2

    .line 36
    .line 37
    aput-object v1, v5, v4

    .line 38
    .line 39
    aput-object v3, v5, v6

    .line 40
    .line 41
    sput-object v5, Lcom/airbnb/lottie/model/content/p$d;->$VALUES:[Lcom/airbnb/lottie/model/content/p$d;

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/p$d;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/airbnb/lottie/model/content/p$d;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/airbnb/lottie/model/content/p$d;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/p$d;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/airbnb/lottie/model/content/p$d;->$VALUES:[Lcom/airbnb/lottie/model/content/p$d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/p$d;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/airbnb/lottie/model/content/p$d;

    .line 9
    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Paint$Join;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/airbnb/lottie/model/content/p$a;->$SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineJoinType:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    const/4 v1, 0x2

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    const/4 v0, 0x0

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 22
    return-object v0

    .line 23
    .line 24
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_2
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    .line 28
    return-object v0
.end method
