.class public final enum Lw7/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw7/q;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lz7/a;

.field private static final synthetic $VALUES:[Lw7/q;

.field public static final enum NONE:Lw7/q;

.field public static final enum PUBLICATION:Lw7/q;

.field public static final enum SYNCHRONIZED:Lw7/q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lw7/q;

    .line 3
    .line 4
    const-string v1, "SYNCHRONIZED"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lw7/q;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lw7/q;->SYNCHRONIZED:Lw7/q;

    .line 11
    .line 12
    new-instance v0, Lw7/q;

    .line 13
    .line 14
    const-string v1, "PUBLICATION"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lw7/q;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Lw7/q;->PUBLICATION:Lw7/q;

    .line 21
    .line 22
    new-instance v0, Lw7/q;

    .line 23
    .line 24
    const-string v1, "NONE"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lw7/q;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v0, Lw7/q;->NONE:Lw7/q;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lw7/q;->a()[Lw7/q;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    sput-object v0, Lw7/q;->$VALUES:[Lw7/q;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lz7/b;->a([Ljava/lang/Enum;)Lz7/a;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    sput-object v0, Lw7/q;->$ENTRIES:Lz7/a;

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

.method private static final synthetic a()[Lw7/q;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Lw7/q;

    const/4 v1, 0x0

    sget-object v2, Lw7/q;->SYNCHRONIZED:Lw7/q;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lw7/q;->PUBLICATION:Lw7/q;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lw7/q;->NONE:Lw7/q;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lw7/q;
    .locals 1

    .line 1
    const-class v0, Lw7/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw7/q;

    return-object p0
.end method

.method public static values()[Lw7/q;
    .locals 1

    .line 1
    sget-object v0, Lw7/q;->$VALUES:[Lw7/q;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw7/q;

    return-object v0
.end method
