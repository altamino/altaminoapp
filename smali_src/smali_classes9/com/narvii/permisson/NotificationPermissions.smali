.class public final enum Lcom/narvii/permisson/NotificationPermissions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/permisson/NotificationPermissions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lz7/a;

.field private static final synthetic $VALUES:[Lcom/narvii/permisson/NotificationPermissions;

.field public static final enum POST_NOTIFICATIONS:Lcom/narvii/permisson/NotificationPermissions;


# direct methods
.method private static final synthetic $values()[Lcom/narvii/permisson/NotificationPermissions;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/narvii/permisson/NotificationPermissions;

    const/4 v1, 0x0

    sget-object v2, Lcom/narvii/permisson/NotificationPermissions;->POST_NOTIFICATIONS:Lcom/narvii/permisson/NotificationPermissions;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/permisson/NotificationPermissions;

    .line 3
    .line 4
    const-string v1, "POST_NOTIFICATIONS"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/narvii/permisson/NotificationPermissions;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/permisson/NotificationPermissions;->POST_NOTIFICATIONS:Lcom/narvii/permisson/NotificationPermissions;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/permisson/NotificationPermissions;->$values()[Lcom/narvii/permisson/NotificationPermissions;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Lcom/narvii/permisson/NotificationPermissions;->$VALUES:[Lcom/narvii/permisson/NotificationPermissions;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lz7/b;->a([Ljava/lang/Enum;)Lz7/a;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    sput-object v0, Lcom/narvii/permisson/NotificationPermissions;->$ENTRIES:Lz7/a;

    .line 23
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

.method public static getEntries()Lz7/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz7/a<",
            "Lcom/narvii/permisson/NotificationPermissions;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/narvii/permisson/NotificationPermissions;->$ENTRIES:Lz7/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/permisson/NotificationPermissions;
    .locals 1

    const-class v0, Lcom/narvii/permisson/NotificationPermissions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/narvii/permisson/NotificationPermissions;

    return-object p0
.end method

.method public static values()[Lcom/narvii/permisson/NotificationPermissions;
    .locals 1

    sget-object v0, Lcom/narvii/permisson/NotificationPermissions;->$VALUES:[Lcom/narvii/permisson/NotificationPermissions;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/permisson/NotificationPermissions;

    return-object v0
.end method
