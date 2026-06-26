.class public final enum Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;
.super Ljava/lang/Enum;
.source "ChatInputOptionMenu.java"


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
.method static constructor <clinit>()V
    .locals 7

    .line 314
    new-instance v0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    const/4 v1, 0x0

    const-string v2, "PERMISSION"

    const v3, 0x7f0802e7

    const v4, 0x7f0f0d3e

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->PERMISSION:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 315
    new-instance v0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    const/4 v2, 0x1

    const-string v3, "SPEAKER"

    const v4, 0x7f08074e

    const v5, 0x7f0f1006

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->SPEAKER:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 316
    new-instance v0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    const/4 v3, 0x2

    const-string v4, "REPORT"

    const v5, 0x7f0804fe

    const v6, 0x7f0f0edf

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->REPORT:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    .line 313
    sget-object v4, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->PERMISSION:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    aput-object v4, v0, v1

    sget-object v1, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->SPEAKER:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    aput-object v1, v0, v2

    sget-object v1, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->REPORT:Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    aput-object v1, v0, v3

    sput-object v0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->$VALUES:[Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 320
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 321
    iput p3, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->icon:I

    .line 322
    iput p4, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->string:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;)I
    .locals 0

    .line 313
    iget p0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->icon:I

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;)I
    .locals 0

    .line 313
    iget p0, p0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->string:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;
    .locals 1

    .line 313
    const-class v0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    return-object p0
.end method

.method public static values()[Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;
    .locals 1

    .line 313
    sget-object v0, Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->$VALUES:[Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    invoke-virtual {v0}, [Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/chat/input/ChatInputOptionMenu$MenuItem;

    return-object v0
.end method
