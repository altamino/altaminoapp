.class public final enum Lcom/narvii/util/ABTest2;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/util/ABTest2;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/narvii/util/ABTest2;

.field public static final enum A:Lcom/narvii/util/ABTest2;

.field public static final enum B:Lcom/narvii/util/ABTest2;

.field public static final enum C:Lcom/narvii/util/ABTest2;

.field public static final enum D:Lcom/narvii/util/ABTest2;

.field public static final enum None:Lcom/narvii/util/ABTest2;


# direct methods
.method private static synthetic $values()[Lcom/narvii/util/ABTest2;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/narvii/util/ABTest2;

    const/4 v1, 0x0

    sget-object v2, Lcom/narvii/util/ABTest2;->None:Lcom/narvii/util/ABTest2;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/narvii/util/ABTest2;->A:Lcom/narvii/util/ABTest2;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/narvii/util/ABTest2;->B:Lcom/narvii/util/ABTest2;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/narvii/util/ABTest2;->C:Lcom/narvii/util/ABTest2;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/narvii/util/ABTest2;->D:Lcom/narvii/util/ABTest2;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/ABTest2;

    .line 3
    .line 4
    const-string v1, "None"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/narvii/util/ABTest2;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/util/ABTest2;->None:Lcom/narvii/util/ABTest2;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/ABTest2;

    .line 13
    .line 14
    const-string v1, "A"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/narvii/util/ABTest2;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Lcom/narvii/util/ABTest2;->A:Lcom/narvii/util/ABTest2;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/util/ABTest2;

    .line 23
    .line 24
    const-string v1, "B"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lcom/narvii/util/ABTest2;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v0, Lcom/narvii/util/ABTest2;->B:Lcom/narvii/util/ABTest2;

    .line 31
    .line 32
    new-instance v0, Lcom/narvii/util/ABTest2;

    .line 33
    .line 34
    const-string v1, "C"

    .line 35
    const/4 v2, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Lcom/narvii/util/ABTest2;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v0, Lcom/narvii/util/ABTest2;->C:Lcom/narvii/util/ABTest2;

    .line 41
    .line 42
    new-instance v0, Lcom/narvii/util/ABTest2;

    .line 43
    .line 44
    const-string v1, "D"

    .line 45
    const/4 v2, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1, v2}, Lcom/narvii/util/ABTest2;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    sput-object v0, Lcom/narvii/util/ABTest2;->D:Lcom/narvii/util/ABTest2;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/narvii/util/ABTest2;->$values()[Lcom/narvii/util/ABTest2;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    sput-object v0, Lcom/narvii/util/ABTest2;->$VALUES:[Lcom/narvii/util/ABTest2;

    .line 57
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

.method public static allTags(Lcom/narvii/app/NVContext;Ljava/lang/StringBuilder;)Z
    .locals 6

    .line 1
    .line 2
    const/16 v0, 0x2c

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    sget-object v1, Lcom/narvii/util/ABTest;->LOGGING_USER_PROPS:[Lcom/narvii/util/ABTest;

    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    :goto_0
    if-ge v3, v2, :cond_1

    .line 12
    .line 13
    aget-object v4, v1, v3

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v5, "_"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v5

    .line 26
    .line 27
    .line 28
    invoke-static {v5, v4}, Lcom/narvii/util/ABTest;->ab(Landroid/content/Context;Lcom/narvii/util/ABTest;)Z

    .line 29
    move-result v4

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    const-string v4, "A"

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    const-string v4, "B"

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p0, 0x1

    .line 47
    return p0
.end method

.method public static logLogging(Lcom/narvii/app/NVContext;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 0

    return-void
.end method

.method public static logTea(Lcom/narvii/app/NVContext;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/narvii/util/ABTest2;->allTags(Lcom/narvii/app/NVContext;Ljava/lang/StringBuilder;)Z

    .line 9
    move-result p0

    .line 10
    .line 11
    const-string v1, "ab_groups"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/util/ABTest2;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/narvii/util/ABTest2;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/narvii/util/ABTest2;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/narvii/util/ABTest2;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/ABTest2;->$VALUES:[Lcom/narvii/util/ABTest2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/narvii/util/ABTest2;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/narvii/util/ABTest2;

    .line 9
    return-object v0
.end method
