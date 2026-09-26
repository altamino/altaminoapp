.class public final enum Lcoil/size/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcoil/size/h;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcoil/size/h;

.field public static final enum FILL:Lcoil/size/h;

.field public static final enum FIT:Lcoil/size/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcoil/size/h;

    .line 3
    .line 4
    const-string v1, "FILL"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcoil/size/h;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lcoil/size/h;->FILL:Lcoil/size/h;

    .line 11
    .line 12
    new-instance v0, Lcoil/size/h;

    .line 13
    .line 14
    const-string v1, "FIT"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcoil/size/h;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Lcoil/size/h;->FIT:Lcoil/size/h;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcoil/size/h;->a()[Lcoil/size/h;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    sput-object v0, Lcoil/size/h;->$VALUES:[Lcoil/size/h;

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

.method private static final synthetic a()[Lcoil/size/h;
    .locals 3

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [Lcoil/size/h;

    const/4 v1, 0x0

    sget-object v2, Lcoil/size/h;->FILL:Lcoil/size/h;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcoil/size/h;->FIT:Lcoil/size/h;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcoil/size/h;
    .locals 1

    const-class v0, Lcoil/size/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcoil/size/h;

    return-object p0
.end method

.method public static values()[Lcoil/size/h;
    .locals 1

    sget-object v0, Lcoil/size/h;->$VALUES:[Lcoil/size/h;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcoil/size/h;

    return-object v0
.end method
