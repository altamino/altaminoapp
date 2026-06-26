.class public final enum Lcom/narvii/theme/ThemePackService$ThemeObject;
.super Ljava/lang/Enum;
.source "ThemePackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/theme/ThemePackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThemeObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/theme/ThemePackService$ThemeObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/narvii/theme/ThemePackService$ThemeObject;

.field public static final enum BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

.field public static final enum ICON:Lcom/narvii/theme/ThemePackService$ThemeObject;

.field public static final enum LOGO:Lcom/narvii/theme/ThemePackService$ThemeObject;

.field public static final enum OLDTITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

.field public static final enum TITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 80
    new-instance v0, Lcom/narvii/theme/ThemePackService$ThemeObject;

    const/4 v1, 0x0

    const-string v2, "BACKGROUND"

    invoke-direct {v0, v2, v1}, Lcom/narvii/theme/ThemePackService$ThemeObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/theme/ThemePackService$ThemeObject;->BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 81
    new-instance v0, Lcom/narvii/theme/ThemePackService$ThemeObject;

    const/4 v2, 0x1

    const-string v3, "ICON"

    invoke-direct {v0, v3, v2}, Lcom/narvii/theme/ThemePackService$ThemeObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/theme/ThemePackService$ThemeObject;->ICON:Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 82
    new-instance v0, Lcom/narvii/theme/ThemePackService$ThemeObject;

    const/4 v3, 0x2

    const-string v4, "LOGO"

    invoke-direct {v0, v4, v3}, Lcom/narvii/theme/ThemePackService$ThemeObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/theme/ThemePackService$ThemeObject;->LOGO:Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 83
    new-instance v0, Lcom/narvii/theme/ThemePackService$ThemeObject;

    const/4 v4, 0x3

    const-string v5, "TITLEBAR"

    invoke-direct {v0, v5, v4}, Lcom/narvii/theme/ThemePackService$ThemeObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/theme/ThemePackService$ThemeObject;->TITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 84
    new-instance v0, Lcom/narvii/theme/ThemePackService$ThemeObject;

    const/4 v5, 0x4

    const-string v6, "OLDTITLEBAR"

    invoke-direct {v0, v6, v5}, Lcom/narvii/theme/ThemePackService$ThemeObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/theme/ThemePackService$ThemeObject;->OLDTITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 79
    sget-object v6, Lcom/narvii/theme/ThemePackService$ThemeObject;->BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

    aput-object v6, v0, v1

    sget-object v1, Lcom/narvii/theme/ThemePackService$ThemeObject;->ICON:Lcom/narvii/theme/ThemePackService$ThemeObject;

    aput-object v1, v0, v2

    sget-object v1, Lcom/narvii/theme/ThemePackService$ThemeObject;->LOGO:Lcom/narvii/theme/ThemePackService$ThemeObject;

    aput-object v1, v0, v3

    sget-object v1, Lcom/narvii/theme/ThemePackService$ThemeObject;->TITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    aput-object v1, v0, v4

    sget-object v1, Lcom/narvii/theme/ThemePackService$ThemeObject;->OLDTITLEBAR:Lcom/narvii/theme/ThemePackService$ThemeObject;

    aput-object v1, v0, v5

    sput-object v0, Lcom/narvii/theme/ThemePackService$ThemeObject;->$VALUES:[Lcom/narvii/theme/ThemePackService$ThemeObject;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/theme/ThemePackService$ThemeObject;
    .locals 1

    .line 79
    const-class v0, Lcom/narvii/theme/ThemePackService$ThemeObject;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/narvii/theme/ThemePackService$ThemeObject;

    return-object p0
.end method

.method public static values()[Lcom/narvii/theme/ThemePackService$ThemeObject;
    .locals 1

    .line 79
    sget-object v0, Lcom/narvii/theme/ThemePackService$ThemeObject;->$VALUES:[Lcom/narvii/theme/ThemePackService$ThemeObject;

    invoke-virtual {v0}, [Lcom/narvii/theme/ThemePackService$ThemeObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/theme/ThemePackService$ThemeObject;

    return-object v0
.end method
