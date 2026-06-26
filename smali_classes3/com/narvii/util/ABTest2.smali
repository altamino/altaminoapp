.class public final enum Lcom/narvii/util/ABTest2;
.super Ljava/lang/Enum;
.source "ABTest2.java"


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
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lcom/narvii/util/ABTest2;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1}, Lcom/narvii/util/ABTest2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/util/ABTest2;->None:Lcom/narvii/util/ABTest2;

    .line 12
    new-instance v0, Lcom/narvii/util/ABTest2;

    const/4 v2, 0x1

    const-string v3, "A"

    invoke-direct {v0, v3, v2}, Lcom/narvii/util/ABTest2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/util/ABTest2;->A:Lcom/narvii/util/ABTest2;

    .line 13
    new-instance v0, Lcom/narvii/util/ABTest2;

    const/4 v3, 0x2

    const-string v4, "B"

    invoke-direct {v0, v4, v3}, Lcom/narvii/util/ABTest2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/util/ABTest2;->B:Lcom/narvii/util/ABTest2;

    .line 14
    new-instance v0, Lcom/narvii/util/ABTest2;

    const/4 v4, 0x3

    const-string v5, "C"

    invoke-direct {v0, v5, v4}, Lcom/narvii/util/ABTest2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/util/ABTest2;->C:Lcom/narvii/util/ABTest2;

    .line 15
    new-instance v0, Lcom/narvii/util/ABTest2;

    const/4 v5, 0x4

    const-string v6, "D"

    invoke-direct {v0, v6, v5}, Lcom/narvii/util/ABTest2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/util/ABTest2;->D:Lcom/narvii/util/ABTest2;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/narvii/util/ABTest2;

    .line 9
    sget-object v6, Lcom/narvii/util/ABTest2;->None:Lcom/narvii/util/ABTest2;

    aput-object v6, v0, v1

    sget-object v1, Lcom/narvii/util/ABTest2;->A:Lcom/narvii/util/ABTest2;

    aput-object v1, v0, v2

    sget-object v1, Lcom/narvii/util/ABTest2;->B:Lcom/narvii/util/ABTest2;

    aput-object v1, v0, v3

    sget-object v1, Lcom/narvii/util/ABTest2;->C:Lcom/narvii/util/ABTest2;

    aput-object v1, v0, v4

    sget-object v1, Lcom/narvii/util/ABTest2;->D:Lcom/narvii/util/ABTest2;

    aput-object v1, v0, v5

    sput-object v0, Lcom/narvii/util/ABTest2;->$VALUES:[Lcom/narvii/util/ABTest2;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static allTags(Lcom/narvii/app/NVContext;Ljava/lang/StringBuilder;)Z
    .locals 5

    const/16 p0, 0x2c

    .line 60
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    sget-object v0, Lcom/narvii/util/ABTest;->LOGGING_USER_PROPS:[Lcom/narvii/util/ABTest;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 63
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/narvii/util/ABTest;->ab(Lcom/narvii/util/ABTest;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "A"

    goto :goto_1

    :cond_0
    const-string v3, "B"

    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static logAmplitude(Lcom/narvii/app/NVContext;Lcom/amplitude/api/Identify;)Z
    .locals 0

    const/4 p0, 0x1

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

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    invoke-static {p0, v0}, Lcom/narvii/util/ABTest2;->allTags(Lcom/narvii/app/NVContext;Ljava/lang/StringBuilder;)Z

    move-result p0

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ab_groups"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/util/ABTest2;
    .locals 1

    .line 9
    const-class v0, Lcom/narvii/util/ABTest2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/narvii/util/ABTest2;

    return-object p0
.end method

.method public static values()[Lcom/narvii/util/ABTest2;
    .locals 1

    .line 9
    sget-object v0, Lcom/narvii/util/ABTest2;->$VALUES:[Lcom/narvii/util/ABTest2;

    invoke-virtual {v0}, [Lcom/narvii/util/ABTest2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/util/ABTest2;

    return-object v0
.end method
