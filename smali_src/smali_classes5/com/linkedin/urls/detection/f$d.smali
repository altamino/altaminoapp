.class public final enum Lcom/linkedin/urls/detection/f$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkedin/urls/detection/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkedin/urls/detection/f$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkedin/urls/detection/f$d;

.field public static final enum InvalidUrl:Lcom/linkedin/urls/detection/f$d;

.field public static final enum ValidUrl:Lcom/linkedin/urls/detection/f$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/linkedin/urls/detection/f$d;

    .line 3
    .line 4
    const-string v1, "ValidUrl"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/linkedin/urls/detection/f$d;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lcom/linkedin/urls/detection/f$d;->ValidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 11
    .line 12
    new-instance v0, Lcom/linkedin/urls/detection/f$d;

    .line 13
    .line 14
    const-string v1, "InvalidUrl"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/linkedin/urls/detection/f$d;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Lcom/linkedin/urls/detection/f$d;->InvalidUrl:Lcom/linkedin/urls/detection/f$d;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/linkedin/urls/detection/f$d;->a()[Lcom/linkedin/urls/detection/f$d;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    sput-object v0, Lcom/linkedin/urls/detection/f$d;->$VALUES:[Lcom/linkedin/urls/detection/f$d;

    .line 27
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

.method private static synthetic a()[Lcom/linkedin/urls/detection/f$d;
    .locals 3

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/linkedin/urls/detection/f$d;

    const/4 v1, 0x0

    sget-object v2, Lcom/linkedin/urls/detection/f$d;->ValidUrl:Lcom/linkedin/urls/detection/f$d;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/linkedin/urls/detection/f$d;->InvalidUrl:Lcom/linkedin/urls/detection/f$d;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkedin/urls/detection/f$d;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/linkedin/urls/detection/f$d;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/linkedin/urls/detection/f$d;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/linkedin/urls/detection/f$d;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/linkedin/urls/detection/f$d;->$VALUES:[Lcom/linkedin/urls/detection/f$d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/linkedin/urls/detection/f$d;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/linkedin/urls/detection/f$d;

    .line 9
    return-object v0
.end method
