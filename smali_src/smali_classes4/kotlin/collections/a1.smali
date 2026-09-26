.class final enum Lkotlin/collections/a1;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/collections/a1;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lz7/a;

.field private static final synthetic $VALUES:[Lkotlin/collections/a1;

.field public static final enum Done:Lkotlin/collections/a1;

.field public static final enum Failed:Lkotlin/collections/a1;

.field public static final enum NotReady:Lkotlin/collections/a1;

.field public static final enum Ready:Lkotlin/collections/a1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lkotlin/collections/a1;

    .line 3
    .line 4
    const-string v1, "Ready"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lkotlin/collections/a1;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lkotlin/collections/a1;->Ready:Lkotlin/collections/a1;

    .line 11
    .line 12
    new-instance v0, Lkotlin/collections/a1;

    .line 13
    .line 14
    const-string v1, "NotReady"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lkotlin/collections/a1;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Lkotlin/collections/a1;->NotReady:Lkotlin/collections/a1;

    .line 21
    .line 22
    new-instance v0, Lkotlin/collections/a1;

    .line 23
    .line 24
    const-string v1, "Done"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lkotlin/collections/a1;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v0, Lkotlin/collections/a1;->Done:Lkotlin/collections/a1;

    .line 31
    .line 32
    new-instance v0, Lkotlin/collections/a1;

    .line 33
    .line 34
    const-string v1, "Failed"

    .line 35
    const/4 v2, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Lkotlin/collections/a1;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v0, Lkotlin/collections/a1;->Failed:Lkotlin/collections/a1;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lkotlin/collections/a1;->a()[Lkotlin/collections/a1;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    sput-object v0, Lkotlin/collections/a1;->$VALUES:[Lkotlin/collections/a1;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lz7/b;->a([Ljava/lang/Enum;)Lz7/a;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    sput-object v0, Lkotlin/collections/a1;->$ENTRIES:Lz7/a;

    .line 53
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

.method private static final synthetic a()[Lkotlin/collections/a1;
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/collections/a1;

    const/4 v1, 0x0

    sget-object v2, Lkotlin/collections/a1;->Ready:Lkotlin/collections/a1;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lkotlin/collections/a1;->NotReady:Lkotlin/collections/a1;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lkotlin/collections/a1;->Done:Lkotlin/collections/a1;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lkotlin/collections/a1;->Failed:Lkotlin/collections/a1;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/collections/a1;
    .locals 1

    const-class v0, Lkotlin/collections/a1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/collections/a1;

    return-object p0
.end method

.method public static values()[Lkotlin/collections/a1;
    .locals 1

    sget-object v0, Lkotlin/collections/a1;->$VALUES:[Lkotlin/collections/a1;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/collections/a1;

    return-object v0
.end method
