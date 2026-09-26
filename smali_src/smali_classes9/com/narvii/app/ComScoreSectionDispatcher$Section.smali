.class public final enum Lcom/narvii/app/ComScoreSectionDispatcher$Section;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/ComScoreSectionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Section"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/app/ComScoreSectionDispatcher$Section;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lz7/a;

.field private static final synthetic $VALUES:[Lcom/narvii/app/ComScoreSectionDispatcher$Section;

.field public static final enum CHAT:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

.field public static final enum COMMUNITY:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

.field public static final enum EXPLORE:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

.field public static final enum LIVE:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

.field public static final enum NONE:Lcom/narvii/app/ComScoreSectionDispatcher$Section;


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/narvii/app/ComScoreSectionDispatcher$Section;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    const/4 v1, 0x0

    sget-object v2, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->CHAT:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->COMMUNITY:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->EXPLORE:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->LIVE:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->NONE:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const-string v2, "Chat"

    .line 6
    .line 7
    const-string v3, "CHAT"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v3, v1, v2}, Lcom/narvii/app/ComScoreSectionDispatcher$Section;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    .line 12
    sput-object v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->CHAT:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    const-string v2, "Community"

    .line 18
    .line 19
    const-string v3, "COMMUNITY"

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v3, v1, v2}, Lcom/narvii/app/ComScoreSectionDispatcher$Section;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    .line 24
    sput-object v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->COMMUNITY:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 27
    const/4 v1, 0x2

    .line 28
    .line 29
    const-string v2, "Explore"

    .line 30
    .line 31
    const-string v3, "EXPLORE"

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v3, v1, v2}, Lcom/narvii/app/ComScoreSectionDispatcher$Section;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    .line 36
    sput-object v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->EXPLORE:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 39
    const/4 v1, 0x3

    .line 40
    .line 41
    const-string v2, "Live"

    .line 42
    .line 43
    const-string v3, "LIVE"

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v3, v1, v2}, Lcom/narvii/app/ComScoreSectionDispatcher$Section;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    .line 48
    sput-object v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->LIVE:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 49
    .line 50
    new-instance v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 51
    const/4 v1, 0x4

    .line 52
    .line 53
    const-string v2, ""

    .line 54
    .line 55
    const-string v3, "NONE"

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v3, v1, v2}, Lcom/narvii/app/ComScoreSectionDispatcher$Section;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    .line 60
    sput-object v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->NONE:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->$values()[Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    sput-object v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->$VALUES:[Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lz7/b;->a([Ljava/lang/Enum;)Lz7/a;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    sput-object v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->$ENTRIES:Lz7/a;

    .line 73
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-object p3, p0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->value:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static getEntries()Lz7/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz7/a<",
            "Lcom/narvii/app/ComScoreSectionDispatcher$Section;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->$ENTRIES:Lz7/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/app/ComScoreSectionDispatcher$Section;
    .locals 1

    const-class v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    return-object p0
.end method

.method public static values()[Lcom/narvii/app/ComScoreSectionDispatcher$Section;
    .locals 1

    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->$VALUES:[Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->value:Ljava/lang/String;

    return-object v0
.end method
