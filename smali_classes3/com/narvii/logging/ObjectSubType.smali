.class public final enum Lcom/narvii/logging/ObjectSubType;
.super Ljava/lang/Enum;
.source "ObjectSubType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/logging/ObjectSubType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/narvii/logging/ObjectSubType;

.field public static final enum external_post:Lcom/narvii/logging/ObjectSubType;

.field public static final enum image:Lcom/narvii/logging/ObjectSubType;

.field public static final enum link:Lcom/narvii/logging/ObjectSubType;

.field public static final enum normal:Lcom/narvii/logging/ObjectSubType;

.field public static final enum poll:Lcom/narvii/logging/ObjectSubType;

.field public static final enum question:Lcom/narvii/logging/ObjectSubType;

.field public static final enum quiz:Lcom/narvii/logging/ObjectSubType;

.field public static final enum repost:Lcom/narvii/logging/ObjectSubType;

.field public static final enum story:Lcom/narvii/logging/ObjectSubType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 7
    new-instance v0, Lcom/narvii/logging/ObjectSubType;

    const/4 v1, 0x0

    const-string v2, "story"

    invoke-direct {v0, v2, v1}, Lcom/narvii/logging/ObjectSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ObjectSubType;->story:Lcom/narvii/logging/ObjectSubType;

    new-instance v0, Lcom/narvii/logging/ObjectSubType;

    const/4 v2, 0x1

    const-string v3, "poll"

    invoke-direct {v0, v3, v2}, Lcom/narvii/logging/ObjectSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ObjectSubType;->poll:Lcom/narvii/logging/ObjectSubType;

    new-instance v0, Lcom/narvii/logging/ObjectSubType;

    const/4 v3, 0x2

    const-string v4, "quiz"

    invoke-direct {v0, v4, v3}, Lcom/narvii/logging/ObjectSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ObjectSubType;->quiz:Lcom/narvii/logging/ObjectSubType;

    new-instance v0, Lcom/narvii/logging/ObjectSubType;

    const/4 v4, 0x3

    const-string v5, "link"

    invoke-direct {v0, v5, v4}, Lcom/narvii/logging/ObjectSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ObjectSubType;->link:Lcom/narvii/logging/ObjectSubType;

    new-instance v0, Lcom/narvii/logging/ObjectSubType;

    const/4 v5, 0x4

    const-string v6, "image"

    invoke-direct {v0, v6, v5}, Lcom/narvii/logging/ObjectSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ObjectSubType;->image:Lcom/narvii/logging/ObjectSubType;

    new-instance v0, Lcom/narvii/logging/ObjectSubType;

    const/4 v6, 0x5

    const-string v7, "external_post"

    invoke-direct {v0, v7, v6}, Lcom/narvii/logging/ObjectSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ObjectSubType;->external_post:Lcom/narvii/logging/ObjectSubType;

    new-instance v0, Lcom/narvii/logging/ObjectSubType;

    const/4 v7, 0x6

    const-string v8, "normal"

    invoke-direct {v0, v8, v7}, Lcom/narvii/logging/ObjectSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ObjectSubType;->normal:Lcom/narvii/logging/ObjectSubType;

    new-instance v0, Lcom/narvii/logging/ObjectSubType;

    const/4 v8, 0x7

    const-string v9, "repost"

    invoke-direct {v0, v9, v8}, Lcom/narvii/logging/ObjectSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ObjectSubType;->repost:Lcom/narvii/logging/ObjectSubType;

    new-instance v0, Lcom/narvii/logging/ObjectSubType;

    const/16 v9, 0x8

    const-string v10, "question"

    invoke-direct {v0, v10, v9}, Lcom/narvii/logging/ObjectSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/logging/ObjectSubType;->question:Lcom/narvii/logging/ObjectSubType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/narvii/logging/ObjectSubType;

    .line 6
    sget-object v10, Lcom/narvii/logging/ObjectSubType;->story:Lcom/narvii/logging/ObjectSubType;

    aput-object v10, v0, v1

    sget-object v1, Lcom/narvii/logging/ObjectSubType;->poll:Lcom/narvii/logging/ObjectSubType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/narvii/logging/ObjectSubType;->quiz:Lcom/narvii/logging/ObjectSubType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/narvii/logging/ObjectSubType;->link:Lcom/narvii/logging/ObjectSubType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/narvii/logging/ObjectSubType;->image:Lcom/narvii/logging/ObjectSubType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/narvii/logging/ObjectSubType;->external_post:Lcom/narvii/logging/ObjectSubType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/narvii/logging/ObjectSubType;->normal:Lcom/narvii/logging/ObjectSubType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/narvii/logging/ObjectSubType;->repost:Lcom/narvii/logging/ObjectSubType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/narvii/logging/ObjectSubType;->question:Lcom/narvii/logging/ObjectSubType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/narvii/logging/ObjectSubType;->$VALUES:[Lcom/narvii/logging/ObjectSubType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/logging/ObjectSubType;
    .locals 1

    .line 6
    const-class v0, Lcom/narvii/logging/ObjectSubType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/narvii/logging/ObjectSubType;

    return-object p0
.end method

.method public static values()[Lcom/narvii/logging/ObjectSubType;
    .locals 1

    .line 6
    sget-object v0, Lcom/narvii/logging/ObjectSubType;->$VALUES:[Lcom/narvii/logging/ObjectSubType;

    invoke-virtual {v0}, [Lcom/narvii/logging/ObjectSubType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/logging/ObjectSubType;

    return-object v0
.end method
