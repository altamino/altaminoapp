.class public final enum Lm4/j$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm4/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm4/j$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lm4/j$a;

.field public static final enum COMBINED:Lm4/j$a;

.field public static final enum GLOBAL:Lm4/j$a;

.field public static final enum NONE:Lm4/j$a;

.field public static final enum SDK:Lm4/j$a;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    .line 2
    new-instance v0, Lm4/j$a;

    .line 3
    .line 4
    const-string v1, "NONE"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v2}, Lm4/j$a;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    sput-object v0, Lm4/j$a;->NONE:Lm4/j$a;

    .line 11
    .line 12
    new-instance v1, Lm4/j$a;

    .line 13
    .line 14
    const-string v3, "SDK"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4, v4}, Lm4/j$a;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    sput-object v1, Lm4/j$a;->SDK:Lm4/j$a;

    .line 21
    .line 22
    new-instance v3, Lm4/j$a;

    .line 23
    .line 24
    const-string v5, "GLOBAL"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6, v6}, Lm4/j$a;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    sput-object v3, Lm4/j$a;->GLOBAL:Lm4/j$a;

    .line 31
    .line 32
    new-instance v5, Lm4/j$a;

    .line 33
    .line 34
    const-string v7, "COMBINED"

    .line 35
    const/4 v8, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v7, v8, v8}, Lm4/j$a;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    sput-object v5, Lm4/j$a;->COMBINED:Lm4/j$a;

    .line 41
    const/4 v7, 0x4

    .line 42
    .line 43
    new-array v7, v7, [Lm4/j$a;

    .line 44
    .line 45
    aput-object v0, v7, v2

    .line 46
    .line 47
    aput-object v1, v7, v4

    .line 48
    .line 49
    aput-object v3, v7, v6

    .line 50
    .line 51
    aput-object v5, v7, v8

    .line 52
    .line 53
    sput-object v7, Lm4/j$a;->$VALUES:[Lm4/j$a;

    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput p3, p0, Lm4/j$a;->code:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lm4/j$a;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lm4/j$a;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lm4/j$a;

    .line 9
    return-object p0
.end method

.method public static values()[Lm4/j$a;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lm4/j$a;->$VALUES:[Lm4/j$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lm4/j$a;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lm4/j$a;

    .line 9
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lm4/j$a;->code:I

    return v0
.end method
