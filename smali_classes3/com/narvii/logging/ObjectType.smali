.class public final enum Lcom/narvii/logging/ObjectType;
.super Ljava/lang/Enum;
.source "ObjectType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/logging/ObjectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/narvii/logging/ObjectType;

.field public static final enum blog:Lcom/narvii/logging/ObjectType;

.field public static final enum chat:Lcom/narvii/logging/ObjectType;

.field public static final enum comment:Lcom/narvii/logging/ObjectType;

.field public static final enum community:Lcom/narvii/logging/ObjectType;

.field public static final enum interest:Lcom/narvii/logging/ObjectType;

.field public static final enum item:Lcom/narvii/logging/ObjectType;

.field public static final enum query:Lcom/narvii/logging/ObjectType;

.field public static final enum suggest_query:Lcom/narvii/logging/ObjectType;

.field public static final enum topic:Lcom/narvii/logging/ObjectType;

.field public static final enum user:Lcom/narvii/logging/ObjectType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 7
    new-instance v0, Lcom/narvii/logging/ObjectType;

    const/4 v1, 0x0

    const-string v2, "community"

    invoke-direct {v0, v2, v1}, Lcom/narvii/logging/ObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ObjectType;->community:Lcom/narvii/logging/ObjectType;

    .line 8
    new-instance v0, Lcom/narvii/logging/ObjectType;

    const/4 v2, 0x1

    const-string v3, "blog"

    invoke-direct {v0, v3, v2}, Lcom/narvii/logging/ObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ObjectType;->blog:Lcom/narvii/logging/ObjectType;

    .line 9
    new-instance v0, Lcom/narvii/logging/ObjectType;

    const/4 v3, 0x2

    const-string v4, "chat"

    invoke-direct {v0, v4, v3}, Lcom/narvii/logging/ObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ObjectType;->chat:Lcom/narvii/logging/ObjectType;

    .line 10
    new-instance v0, Lcom/narvii/logging/ObjectType;

    const/4 v4, 0x3

    const-string v5, "user"

    invoke-direct {v0, v5, v4}, Lcom/narvii/logging/ObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ObjectType;->user:Lcom/narvii/logging/ObjectType;

    .line 11
    new-instance v0, Lcom/narvii/logging/ObjectType;

    const/4 v5, 0x4

    const-string v6, "suggest_query"

    invoke-direct {v0, v6, v5}, Lcom/narvii/logging/ObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ObjectType;->suggest_query:Lcom/narvii/logging/ObjectType;

    .line 12
    new-instance v0, Lcom/narvii/logging/ObjectType;

    const/4 v6, 0x5

    const-string v7, "topic"

    invoke-direct {v0, v7, v6}, Lcom/narvii/logging/ObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ObjectType;->topic:Lcom/narvii/logging/ObjectType;

    .line 13
    new-instance v0, Lcom/narvii/logging/ObjectType;

    const/4 v7, 0x6

    const-string v8, "query"

    invoke-direct {v0, v8, v7}, Lcom/narvii/logging/ObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ObjectType;->query:Lcom/narvii/logging/ObjectType;

    .line 14
    new-instance v0, Lcom/narvii/logging/ObjectType;

    const/4 v8, 0x7

    const-string v9, "comment"

    invoke-direct {v0, v9, v8}, Lcom/narvii/logging/ObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ObjectType;->comment:Lcom/narvii/logging/ObjectType;

    .line 15
    new-instance v0, Lcom/narvii/logging/ObjectType;

    const/16 v9, 0x8

    const-string v10, "item"

    invoke-direct {v0, v10, v9}, Lcom/narvii/logging/ObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ObjectType;->item:Lcom/narvii/logging/ObjectType;

    .line 16
    new-instance v0, Lcom/narvii/logging/ObjectType;

    const/16 v10, 0x9

    const-string v11, "interest"

    invoke-direct {v0, v11, v10}, Lcom/narvii/logging/ObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ObjectType;->interest:Lcom/narvii/logging/ObjectType;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/narvii/logging/ObjectType;

    .line 6
    sget-object v11, Lcom/narvii/logging/ObjectType;->community:Lcom/narvii/logging/ObjectType;

    aput-object v11, v0, v1

    sget-object v1, Lcom/narvii/logging/ObjectType;->blog:Lcom/narvii/logging/ObjectType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/narvii/logging/ObjectType;->chat:Lcom/narvii/logging/ObjectType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/narvii/logging/ObjectType;->user:Lcom/narvii/logging/ObjectType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/narvii/logging/ObjectType;->suggest_query:Lcom/narvii/logging/ObjectType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/narvii/logging/ObjectType;->topic:Lcom/narvii/logging/ObjectType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/narvii/logging/ObjectType;->query:Lcom/narvii/logging/ObjectType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/narvii/logging/ObjectType;->comment:Lcom/narvii/logging/ObjectType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/narvii/logging/ObjectType;->item:Lcom/narvii/logging/ObjectType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/narvii/logging/ObjectType;->interest:Lcom/narvii/logging/ObjectType;

    aput-object v1, v0, v10

    sput-object v0, Lcom/narvii/logging/ObjectType;->$VALUES:[Lcom/narvii/logging/ObjectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/logging/ObjectType;
    .locals 1

    .line 6
    const-class v0, Lcom/narvii/logging/ObjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/narvii/logging/ObjectType;

    return-object p0
.end method

.method public static values()[Lcom/narvii/logging/ObjectType;
    .locals 1

    .line 6
    sget-object v0, Lcom/narvii/logging/ObjectType;->$VALUES:[Lcom/narvii/logging/ObjectType;

    invoke-virtual {v0}, [Lcom/narvii/logging/ObjectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/logging/ObjectType;

    return-object v0
.end method
