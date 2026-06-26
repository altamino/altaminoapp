.class public final enum Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;
.super Ljava/lang/Enum;
.source "Calculation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemonkeylabs/fpslibrary/Calculation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Metric"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;

.field public static final enum BAD:Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;

.field public static final enum GOOD:Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;

.field public static final enum MEDIUM:Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;

    const/4 v1, 0x0

    const-string v2, "GOOD"

    invoke-direct {v0, v2, v1}, Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;->GOOD:Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;

    new-instance v0, Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;

    const/4 v2, 0x1

    const-string v3, "BAD"

    invoke-direct {v0, v3, v2}, Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;->BAD:Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;

    new-instance v0, Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;

    const/4 v3, 0x2

    const-string v4, "MEDIUM"

    invoke-direct {v0, v4, v3}, Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;->MEDIUM:Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;

    sget-object v4, Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;->GOOD:Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;

    aput-object v4, v0, v1

    sget-object v1, Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;->BAD:Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;

    aput-object v1, v0, v2

    sget-object v1, Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;->MEDIUM:Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;

    aput-object v1, v0, v3

    sput-object v0, Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;->$VALUES:[Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;

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

.method public static valueOf(Ljava/lang/String;)Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;
    .locals 1

    .line 9
    const-class v0, Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;

    return-object p0
.end method

.method public static values()[Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;
    .locals 1

    .line 9
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;->$VALUES:[Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;

    invoke-virtual {v0}, [Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;

    return-object v0
.end method
