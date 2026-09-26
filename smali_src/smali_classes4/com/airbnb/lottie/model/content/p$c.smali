.class public final enum Lcom/airbnb/lottie/model/content/p$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/model/content/p$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/model/content/p$c;

.field public static final enum Butt:Lcom/airbnb/lottie/model/content/p$c;

.field public static final enum Round:Lcom/airbnb/lottie/model/content/p$c;

.field public static final enum Unknown:Lcom/airbnb/lottie/model/content/p$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/model/content/p$c;

    .line 3
    .line 4
    const-string v1, "Butt"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/content/p$c;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lcom/airbnb/lottie/model/content/p$c;->Butt:Lcom/airbnb/lottie/model/content/p$c;

    .line 11
    .line 12
    new-instance v1, Lcom/airbnb/lottie/model/content/p$c;

    .line 13
    .line 14
    const-string v3, "Round"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4}, Lcom/airbnb/lottie/model/content/p$c;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v1, Lcom/airbnb/lottie/model/content/p$c;->Round:Lcom/airbnb/lottie/model/content/p$c;

    .line 21
    .line 22
    new-instance v3, Lcom/airbnb/lottie/model/content/p$c;

    .line 23
    .line 24
    const-string v5, "Unknown"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6}, Lcom/airbnb/lottie/model/content/p$c;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v3, Lcom/airbnb/lottie/model/content/p$c;->Unknown:Lcom/airbnb/lottie/model/content/p$c;

    .line 31
    const/4 v5, 0x3

    .line 32
    .line 33
    new-array v5, v5, [Lcom/airbnb/lottie/model/content/p$c;

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
    sput-object v5, Lcom/airbnb/lottie/model/content/p$c;->$VALUES:[Lcom/airbnb/lottie/model/content/p$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/p$c;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/airbnb/lottie/model/content/p$c;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/airbnb/lottie/model/content/p$c;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/p$c;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/airbnb/lottie/model/content/p$c;->$VALUES:[Lcom/airbnb/lottie/model/content/p$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/p$c;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/airbnb/lottie/model/content/p$c;

    .line 9
    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Paint$Cap;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/airbnb/lottie/model/content/p$a;->$SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineCapType:[I

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
    if-eq v0, v1, :cond_1

    .line 12
    const/4 v1, 0x2

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    .line 17
    return-object v0

    .line 18
    .line 19
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 20
    return-object v0

    .line 21
    .line 22
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 23
    return-object v0
.end method
