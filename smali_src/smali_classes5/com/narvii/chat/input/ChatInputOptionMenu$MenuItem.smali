.class public final enum Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/input/ChatInputOptionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MenuItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

.field public static final enum PERMISSION:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

.field public static final enum REPORT:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

.field public static final enum SPEAKER:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;


# instance fields
.field private final icon:I

.field private final string:I


# direct methods
.method private static synthetic $values()[Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    const/4 v1, 0x0

    sget-object v2, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->PERMISSION:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->SPEAKER:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->REPORT:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0803f1

    .line 6
    .line 7
    .line 8
    const v2, 0x7f120e63

    .line 9
    .line 10
    const-string v3, "PERMISSION"

    .line 11
    const/4 v4, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;-><init>(Ljava/lang/String;III)V

    .line 15
    .line 16
    sput-object v0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->PERMISSION:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 19
    .line 20
    .line 21
    const v1, 0x7f08094b

    .line 22
    .line 23
    .line 24
    const v2, 0x7f12111d

    .line 25
    .line 26
    const-string v3, "SPEAKER"

    .line 27
    const/4 v4, 0x1

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;-><init>(Ljava/lang/String;III)V

    .line 31
    .line 32
    sput-object v0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->SPEAKER:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 33
    .line 34
    new-instance v0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 35
    .line 36
    .line 37
    const v1, 0x7f08062d

    .line 38
    .line 39
    .line 40
    const v2, 0x7f120ff8

    .line 41
    .line 42
    const-string v3, "REPORT"

    .line 43
    const/4 v4, 0x2

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;-><init>(Ljava/lang/String;III)V

    .line 47
    .line 48
    sput-object v0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->REPORT:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->$values()[Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    sput-object v0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->$VALUES:[Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 55
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput p3, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->icon:I

    .line 6
    .line 7
    iput p4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->string:I

    .line 8
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->icon:I

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->string:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->$VALUES:[Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 9
    return-object v0
.end method
