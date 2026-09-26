.class public final enum Lcom/bumptech/glide/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/e;

.field public static final enum HIGH:Lcom/bumptech/glide/e;

.field public static final enum LOW:Lcom/bumptech/glide/e;

.field public static final enum NORMAL:Lcom/bumptech/glide/e;


# instance fields
.field private final multiplier:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/e;

    .line 3
    .line 4
    const/high16 v1, 0x3f000000    # 0.5f

    .line 5
    .line 6
    const-string v2, "LOW"

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2, v3, v1}, Lcom/bumptech/glide/e;-><init>(Ljava/lang/String;IF)V

    .line 11
    .line 12
    sput-object v0, Lcom/bumptech/glide/e;->LOW:Lcom/bumptech/glide/e;

    .line 13
    .line 14
    new-instance v1, Lcom/bumptech/glide/e;

    .line 15
    .line 16
    const/high16 v2, 0x3f800000    # 1.0f

    .line 17
    .line 18
    const-string v4, "NORMAL"

    .line 19
    const/4 v5, 0x1

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v4, v5, v2}, Lcom/bumptech/glide/e;-><init>(Ljava/lang/String;IF)V

    .line 23
    .line 24
    sput-object v1, Lcom/bumptech/glide/e;->NORMAL:Lcom/bumptech/glide/e;

    .line 25
    .line 26
    new-instance v2, Lcom/bumptech/glide/e;

    .line 27
    .line 28
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 29
    .line 30
    const-string v6, "HIGH"

    .line 31
    const/4 v7, 0x2

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v6, v7, v4}, Lcom/bumptech/glide/e;-><init>(Ljava/lang/String;IF)V

    .line 35
    .line 36
    sput-object v2, Lcom/bumptech/glide/e;->HIGH:Lcom/bumptech/glide/e;

    .line 37
    const/4 v4, 0x3

    .line 38
    .line 39
    new-array v4, v4, [Lcom/bumptech/glide/e;

    .line 40
    .line 41
    aput-object v0, v4, v3

    .line 42
    .line 43
    aput-object v1, v4, v5

    .line 44
    .line 45
    aput-object v2, v4, v7

    .line 46
    .line 47
    sput-object v4, Lcom/bumptech/glide/e;->$VALUES:[Lcom/bumptech/glide/e;

    .line 48
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput p3, p0, Lcom/bumptech/glide/e;->multiplier:F

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/e;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/bumptech/glide/e;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/bumptech/glide/e;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/e;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/e;->$VALUES:[Lcom/bumptech/glide/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/bumptech/glide/e;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/bumptech/glide/e;

    .line 9
    return-object v0
.end method
