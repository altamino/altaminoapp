.class public final enum Lcom/linkedin/urls/Entity$Type;
.super Ljava/lang/Enum;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkedin/urls/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkedin/urls/Entity$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkedin/urls/Entity$Type;

.field public static final enum CASHTAG:Lcom/linkedin/urls/Entity$Type;

.field public static final enum HASHTAG:Lcom/linkedin/urls/Entity$Type;

.field public static final enum URL:Lcom/linkedin/urls/Entity$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lcom/linkedin/urls/Entity$Type;

    const/4 v1, 0x0

    const-string v2, "URL"

    invoke-direct {v0, v2, v1}, Lcom/linkedin/urls/Entity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/urls/Entity$Type;->URL:Lcom/linkedin/urls/Entity$Type;

    new-instance v0, Lcom/linkedin/urls/Entity$Type;

    const/4 v2, 0x1

    const-string v3, "HASHTAG"

    invoke-direct {v0, v3, v2}, Lcom/linkedin/urls/Entity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/urls/Entity$Type;->HASHTAG:Lcom/linkedin/urls/Entity$Type;

    new-instance v0, Lcom/linkedin/urls/Entity$Type;

    const/4 v3, 0x2

    const-string v4, "CASHTAG"

    invoke-direct {v0, v4, v3}, Lcom/linkedin/urls/Entity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/urls/Entity$Type;->CASHTAG:Lcom/linkedin/urls/Entity$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/linkedin/urls/Entity$Type;

    .line 8
    sget-object v4, Lcom/linkedin/urls/Entity$Type;->URL:Lcom/linkedin/urls/Entity$Type;

    aput-object v4, v0, v1

    sget-object v1, Lcom/linkedin/urls/Entity$Type;->HASHTAG:Lcom/linkedin/urls/Entity$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/linkedin/urls/Entity$Type;->CASHTAG:Lcom/linkedin/urls/Entity$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/linkedin/urls/Entity$Type;->$VALUES:[Lcom/linkedin/urls/Entity$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkedin/urls/Entity$Type;
    .locals 1

    .line 8
    const-class v0, Lcom/linkedin/urls/Entity$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linkedin/urls/Entity$Type;

    return-object p0
.end method

.method public static values()[Lcom/linkedin/urls/Entity$Type;
    .locals 1

    .line 8
    sget-object v0, Lcom/linkedin/urls/Entity$Type;->$VALUES:[Lcom/linkedin/urls/Entity$Type;

    invoke-virtual {v0}, [Lcom/linkedin/urls/Entity$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkedin/urls/Entity$Type;

    return-object v0
.end method
