.class public final enum Lcom/google/firebase/sessions/s;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/json/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/sessions/s;",
        ">;",
        "Lcom/google/firebase/encoders/json/f;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/sessions/s;

.field public static final enum LOG_ENVIRONMENT_AUTOPUSH:Lcom/google/firebase/sessions/s;

.field public static final enum LOG_ENVIRONMENT_PROD:Lcom/google/firebase/sessions/s;

.field public static final enum LOG_ENVIRONMENT_STAGING:Lcom/google/firebase/sessions/s;

.field public static final enum LOG_ENVIRONMENT_UNKNOWN:Lcom/google/firebase/sessions/s;


# instance fields
.field private final number:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/sessions/s;

    .line 3
    .line 4
    const-string v1, "LOG_ENVIRONMENT_UNKNOWN"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/sessions/s;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    sput-object v0, Lcom/google/firebase/sessions/s;->LOG_ENVIRONMENT_UNKNOWN:Lcom/google/firebase/sessions/s;

    .line 11
    .line 12
    new-instance v0, Lcom/google/firebase/sessions/s;

    .line 13
    .line 14
    const-string v1, "LOG_ENVIRONMENT_AUTOPUSH"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/sessions/s;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    sput-object v0, Lcom/google/firebase/sessions/s;->LOG_ENVIRONMENT_AUTOPUSH:Lcom/google/firebase/sessions/s;

    .line 21
    .line 22
    new-instance v0, Lcom/google/firebase/sessions/s;

    .line 23
    .line 24
    const-string v1, "LOG_ENVIRONMENT_STAGING"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/sessions/s;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    sput-object v0, Lcom/google/firebase/sessions/s;->LOG_ENVIRONMENT_STAGING:Lcom/google/firebase/sessions/s;

    .line 31
    .line 32
    new-instance v0, Lcom/google/firebase/sessions/s;

    .line 33
    .line 34
    const-string v1, "LOG_ENVIRONMENT_PROD"

    .line 35
    const/4 v2, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/sessions/s;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    sput-object v0, Lcom/google/firebase/sessions/s;->LOG_ENVIRONMENT_PROD:Lcom/google/firebase/sessions/s;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/google/firebase/sessions/s;->a()[Lcom/google/firebase/sessions/s;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    sput-object v0, Lcom/google/firebase/sessions/s;->$VALUES:[Lcom/google/firebase/sessions/s;

    .line 47
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
    iput p3, p0, Lcom/google/firebase/sessions/s;->number:I

    .line 6
    return-void
.end method

.method private static final synthetic a()[Lcom/google/firebase/sessions/s;
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/firebase/sessions/s;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/firebase/sessions/s;->LOG_ENVIRONMENT_UNKNOWN:Lcom/google/firebase/sessions/s;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/firebase/sessions/s;->LOG_ENVIRONMENT_AUTOPUSH:Lcom/google/firebase/sessions/s;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/firebase/sessions/s;->LOG_ENVIRONMENT_STAGING:Lcom/google/firebase/sessions/s;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/firebase/sessions/s;->LOG_ENVIRONMENT_PROD:Lcom/google/firebase/sessions/s;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/sessions/s;
    .locals 1

    const-class v0, Lcom/google/firebase/sessions/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/sessions/s;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/sessions/s;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/s;->$VALUES:[Lcom/google/firebase/sessions/s;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/sessions/s;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/sessions/s;->number:I

    return v0
.end method
