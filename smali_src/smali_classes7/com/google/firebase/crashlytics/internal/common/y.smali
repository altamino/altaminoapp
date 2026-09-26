.class public final enum Lcom/google/firebase/crashlytics/internal/common/y;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/crashlytics/internal/common/y;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/crashlytics/internal/common/y;

.field public static final enum APP_STORE:Lcom/google/firebase/crashlytics/internal/common/y;

.field public static final enum DEVELOPER:Lcom/google/firebase/crashlytics/internal/common/y;

.field public static final enum TEST_DISTRIBUTION:Lcom/google/firebase/crashlytics/internal/common/y;

.field public static final enum USER_SIDELOAD:Lcom/google/firebase/crashlytics/internal/common/y;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/y;

    .line 3
    .line 4
    const-string v1, "DEVELOPER"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/common/y;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/y;->DEVELOPER:Lcom/google/firebase/crashlytics/internal/common/y;

    .line 12
    .line 13
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/y;

    .line 14
    .line 15
    const-string v4, "USER_SIDELOAD"

    .line 16
    const/4 v5, 0x2

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v4, v3, v5}, Lcom/google/firebase/crashlytics/internal/common/y;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    sput-object v1, Lcom/google/firebase/crashlytics/internal/common/y;->USER_SIDELOAD:Lcom/google/firebase/crashlytics/internal/common/y;

    .line 22
    .line 23
    new-instance v4, Lcom/google/firebase/crashlytics/internal/common/y;

    .line 24
    .line 25
    const-string v6, "TEST_DISTRIBUTION"

    .line 26
    const/4 v7, 0x3

    .line 27
    .line 28
    .line 29
    invoke-direct {v4, v6, v5, v7}, Lcom/google/firebase/crashlytics/internal/common/y;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    sput-object v4, Lcom/google/firebase/crashlytics/internal/common/y;->TEST_DISTRIBUTION:Lcom/google/firebase/crashlytics/internal/common/y;

    .line 32
    .line 33
    new-instance v6, Lcom/google/firebase/crashlytics/internal/common/y;

    .line 34
    .line 35
    const-string v8, "APP_STORE"

    .line 36
    const/4 v9, 0x4

    .line 37
    .line 38
    .line 39
    invoke-direct {v6, v8, v7, v9}, Lcom/google/firebase/crashlytics/internal/common/y;-><init>(Ljava/lang/String;II)V

    .line 40
    .line 41
    sput-object v6, Lcom/google/firebase/crashlytics/internal/common/y;->APP_STORE:Lcom/google/firebase/crashlytics/internal/common/y;

    .line 42
    .line 43
    new-array v8, v9, [Lcom/google/firebase/crashlytics/internal/common/y;

    .line 44
    .line 45
    aput-object v0, v8, v2

    .line 46
    .line 47
    aput-object v1, v8, v3

    .line 48
    .line 49
    aput-object v4, v8, v5

    .line 50
    .line 51
    aput-object v6, v8, v7

    .line 52
    .line 53
    sput-object v8, Lcom/google/firebase/crashlytics/internal/common/y;->$VALUES:[Lcom/google/firebase/crashlytics/internal/common/y;

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
    iput p3, p0, Lcom/google/firebase/crashlytics/internal/common/y;->id:I

    .line 6
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/y;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/firebase/crashlytics/internal/common/y;->APP_STORE:Lcom/google/firebase/crashlytics/internal/common/y;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/firebase/crashlytics/internal/common/y;->DEVELOPER:Lcom/google/firebase/crashlytics/internal/common/y;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/y;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/google/firebase/crashlytics/internal/common/y;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/google/firebase/crashlytics/internal/common/y;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/firebase/crashlytics/internal/common/y;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/y;->$VALUES:[Lcom/google/firebase/crashlytics/internal/common/y;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/google/firebase/crashlytics/internal/common/y;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/google/firebase/crashlytics/internal/common/y;

    .line 9
    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/common/y;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/common/y;->id:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
