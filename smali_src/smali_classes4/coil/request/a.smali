.class public final enum Lcoil/request/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcoil/request/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcoil/request/a;

.field public static final enum DISABLED:Lcoil/request/a;

.field public static final enum ENABLED:Lcoil/request/a;

.field public static final enum READ_ONLY:Lcoil/request/a;

.field public static final enum WRITE_ONLY:Lcoil/request/a;


# instance fields
.field private final readEnabled:Z

.field private final writeEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcoil/request/a;

    .line 3
    .line 4
    const-string v1, "ENABLED"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, v3}, Lcoil/request/a;-><init>(Ljava/lang/String;IZZ)V

    .line 10
    .line 11
    sput-object v0, Lcoil/request/a;->ENABLED:Lcoil/request/a;

    .line 12
    .line 13
    new-instance v0, Lcoil/request/a;

    .line 14
    .line 15
    const-string v1, "READ_ONLY"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v3, v3, v2}, Lcoil/request/a;-><init>(Ljava/lang/String;IZZ)V

    .line 19
    .line 20
    sput-object v0, Lcoil/request/a;->READ_ONLY:Lcoil/request/a;

    .line 21
    .line 22
    new-instance v0, Lcoil/request/a;

    .line 23
    .line 24
    const-string v1, "WRITE_ONLY"

    .line 25
    const/4 v4, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v4, v2, v3}, Lcoil/request/a;-><init>(Ljava/lang/String;IZZ)V

    .line 29
    .line 30
    sput-object v0, Lcoil/request/a;->WRITE_ONLY:Lcoil/request/a;

    .line 31
    .line 32
    new-instance v0, Lcoil/request/a;

    .line 33
    .line 34
    const-string v1, "DISABLED"

    .line 35
    const/4 v3, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, v3, v2, v2}, Lcoil/request/a;-><init>(Ljava/lang/String;IZZ)V

    .line 39
    .line 40
    sput-object v0, Lcoil/request/a;->DISABLED:Lcoil/request/a;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcoil/request/a;->a()[Lcoil/request/a;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    sput-object v0, Lcoil/request/a;->$VALUES:[Lcoil/request/a;

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-boolean p3, p0, Lcoil/request/a;->readEnabled:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lcoil/request/a;->writeEnabled:Z

    .line 8
    return-void
.end method

.method private static final synthetic a()[Lcoil/request/a;
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Lcoil/request/a;

    const/4 v1, 0x0

    sget-object v2, Lcoil/request/a;->ENABLED:Lcoil/request/a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcoil/request/a;->READ_ONLY:Lcoil/request/a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcoil/request/a;->WRITE_ONLY:Lcoil/request/a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcoil/request/a;->DISABLED:Lcoil/request/a;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcoil/request/a;
    .locals 1

    const-class v0, Lcoil/request/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcoil/request/a;

    return-object p0
.end method

.method public static values()[Lcoil/request/a;
    .locals 1

    sget-object v0, Lcoil/request/a;->$VALUES:[Lcoil/request/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcoil/request/a;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcoil/request/a;->readEnabled:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcoil/request/a;->writeEnabled:Z

    return v0
.end method
