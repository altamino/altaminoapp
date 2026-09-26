.class public final enum Lcom/narvii/permisson/GranularMediaPermissions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/permisson/GranularMediaPermissions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lz7/a;

.field private static final synthetic $VALUES:[Lcom/narvii/permisson/GranularMediaPermissions;

.field public static final enum READ_MEDIA_AUDIO:Lcom/narvii/permisson/GranularMediaPermissions;

.field public static final enum READ_MEDIA_IMAGES:Lcom/narvii/permisson/GranularMediaPermissions;

.field public static final enum READ_MEDIA_VIDEO:Lcom/narvii/permisson/GranularMediaPermissions;


# direct methods
.method private static final synthetic $values()[Lcom/narvii/permisson/GranularMediaPermissions;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/narvii/permisson/GranularMediaPermissions;

    const/4 v1, 0x0

    sget-object v2, Lcom/narvii/permisson/GranularMediaPermissions;->READ_MEDIA_IMAGES:Lcom/narvii/permisson/GranularMediaPermissions;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/narvii/permisson/GranularMediaPermissions;->READ_MEDIA_VIDEO:Lcom/narvii/permisson/GranularMediaPermissions;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/narvii/permisson/GranularMediaPermissions;->READ_MEDIA_AUDIO:Lcom/narvii/permisson/GranularMediaPermissions;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/permisson/GranularMediaPermissions;

    .line 3
    .line 4
    const-string v1, "READ_MEDIA_IMAGES"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/narvii/permisson/GranularMediaPermissions;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/permisson/GranularMediaPermissions;->READ_MEDIA_IMAGES:Lcom/narvii/permisson/GranularMediaPermissions;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/permisson/GranularMediaPermissions;

    .line 13
    .line 14
    const-string v1, "READ_MEDIA_VIDEO"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/narvii/permisson/GranularMediaPermissions;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Lcom/narvii/permisson/GranularMediaPermissions;->READ_MEDIA_VIDEO:Lcom/narvii/permisson/GranularMediaPermissions;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/permisson/GranularMediaPermissions;

    .line 23
    .line 24
    const-string v1, "READ_MEDIA_AUDIO"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lcom/narvii/permisson/GranularMediaPermissions;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v0, Lcom/narvii/permisson/GranularMediaPermissions;->READ_MEDIA_AUDIO:Lcom/narvii/permisson/GranularMediaPermissions;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/narvii/permisson/GranularMediaPermissions;->$values()[Lcom/narvii/permisson/GranularMediaPermissions;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    sput-object v0, Lcom/narvii/permisson/GranularMediaPermissions;->$VALUES:[Lcom/narvii/permisson/GranularMediaPermissions;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lz7/b;->a([Ljava/lang/Enum;)Lz7/a;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    sput-object v0, Lcom/narvii/permisson/GranularMediaPermissions;->$ENTRIES:Lz7/a;

    .line 43
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
            "Lcom/narvii/permisson/GranularMediaPermissions;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/narvii/permisson/GranularMediaPermissions;->$ENTRIES:Lz7/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/permisson/GranularMediaPermissions;
    .locals 1

    const-class v0, Lcom/narvii/permisson/GranularMediaPermissions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/narvii/permisson/GranularMediaPermissions;

    return-object p0
.end method

.method public static values()[Lcom/narvii/permisson/GranularMediaPermissions;
    .locals 1

    sget-object v0, Lcom/narvii/permisson/GranularMediaPermissions;->$VALUES:[Lcom/narvii/permisson/GranularMediaPermissions;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/permisson/GranularMediaPermissions;

    return-object v0
.end method
