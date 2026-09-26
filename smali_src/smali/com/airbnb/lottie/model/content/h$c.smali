.class public final enum Lcom/airbnb/lottie/model/content/h$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/model/content/h$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/model/content/h$c;

.field public static final enum Add:Lcom/airbnb/lottie/model/content/h$c;

.field public static final enum ExcludeIntersections:Lcom/airbnb/lottie/model/content/h$c;

.field public static final enum Intersect:Lcom/airbnb/lottie/model/content/h$c;

.field public static final enum Merge:Lcom/airbnb/lottie/model/content/h$c;

.field public static final enum Subtract:Lcom/airbnb/lottie/model/content/h$c;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/model/content/h$c;

    .line 3
    .line 4
    const-string v1, "Merge"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/content/h$c;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lcom/airbnb/lottie/model/content/h$c;->Merge:Lcom/airbnb/lottie/model/content/h$c;

    .line 11
    .line 12
    new-instance v1, Lcom/airbnb/lottie/model/content/h$c;

    .line 13
    .line 14
    const-string v3, "Add"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4}, Lcom/airbnb/lottie/model/content/h$c;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v1, Lcom/airbnb/lottie/model/content/h$c;->Add:Lcom/airbnb/lottie/model/content/h$c;

    .line 21
    .line 22
    new-instance v3, Lcom/airbnb/lottie/model/content/h$c;

    .line 23
    .line 24
    const-string v5, "Subtract"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6}, Lcom/airbnb/lottie/model/content/h$c;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v3, Lcom/airbnb/lottie/model/content/h$c;->Subtract:Lcom/airbnb/lottie/model/content/h$c;

    .line 31
    .line 32
    new-instance v5, Lcom/airbnb/lottie/model/content/h$c;

    .line 33
    .line 34
    const-string v7, "Intersect"

    .line 35
    const/4 v8, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v7, v8}, Lcom/airbnb/lottie/model/content/h$c;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v5, Lcom/airbnb/lottie/model/content/h$c;->Intersect:Lcom/airbnb/lottie/model/content/h$c;

    .line 41
    .line 42
    new-instance v7, Lcom/airbnb/lottie/model/content/h$c;

    .line 43
    .line 44
    const-string v9, "ExcludeIntersections"

    .line 45
    const/4 v10, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v7, v9, v10}, Lcom/airbnb/lottie/model/content/h$c;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    sput-object v7, Lcom/airbnb/lottie/model/content/h$c;->ExcludeIntersections:Lcom/airbnb/lottie/model/content/h$c;

    .line 51
    const/4 v9, 0x5

    .line 52
    .line 53
    new-array v9, v9, [Lcom/airbnb/lottie/model/content/h$c;

    .line 54
    .line 55
    aput-object v0, v9, v2

    .line 56
    .line 57
    aput-object v1, v9, v4

    .line 58
    .line 59
    aput-object v3, v9, v6

    .line 60
    .line 61
    aput-object v5, v9, v8

    .line 62
    .line 63
    aput-object v7, v9, v10

    .line 64
    .line 65
    sput-object v9, Lcom/airbnb/lottie/model/content/h$c;->$VALUES:[Lcom/airbnb/lottie/model/content/h$c;

    .line 66
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

.method static synthetic a(I)Lcom/airbnb/lottie/model/content/h$c;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/airbnb/lottie/model/content/h$c;->b(I)Lcom/airbnb/lottie/model/content/h$c;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static b(I)Lcom/airbnb/lottie/model/content/h$c;
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/airbnb/lottie/model/content/h$c;->Merge:Lcom/airbnb/lottie/model/content/h$c;

    return-object p0

    :cond_0
    sget-object p0, Lcom/airbnb/lottie/model/content/h$c;->ExcludeIntersections:Lcom/airbnb/lottie/model/content/h$c;

    return-object p0

    :cond_1
    sget-object p0, Lcom/airbnb/lottie/model/content/h$c;->Intersect:Lcom/airbnb/lottie/model/content/h$c;

    return-object p0

    :cond_2
    sget-object p0, Lcom/airbnb/lottie/model/content/h$c;->Subtract:Lcom/airbnb/lottie/model/content/h$c;

    return-object p0

    :cond_3
    sget-object p0, Lcom/airbnb/lottie/model/content/h$c;->Add:Lcom/airbnb/lottie/model/content/h$c;

    return-object p0

    :cond_4
    sget-object p0, Lcom/airbnb/lottie/model/content/h$c;->Merge:Lcom/airbnb/lottie/model/content/h$c;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/h$c;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/airbnb/lottie/model/content/h$c;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/airbnb/lottie/model/content/h$c;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/h$c;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/airbnb/lottie/model/content/h$c;->$VALUES:[Lcom/airbnb/lottie/model/content/h$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/h$c;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/airbnb/lottie/model/content/h$c;

    .line 9
    return-object v0
.end method
