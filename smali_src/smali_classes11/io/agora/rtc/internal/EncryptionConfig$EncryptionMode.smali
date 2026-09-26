.class public final enum Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/EncryptionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncryptionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

.field public static final enum AES_128_ECB:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

.field public static final enum AES_128_XTS:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

.field public static final enum AES_256_XTS:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

.field public static final enum MODE_END:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

.field public static final enum SM4_128_ECB:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    .line 2
    new-instance v0, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 3
    .line 4
    const-string v1, "AES_128_XTS"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    sput-object v0, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;->AES_128_XTS:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 12
    .line 13
    new-instance v1, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 14
    .line 15
    const-string v4, "AES_128_ECB"

    .line 16
    const/4 v5, 0x2

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v4, v3, v5}, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    sput-object v1, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;->AES_128_ECB:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 22
    .line 23
    new-instance v4, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 24
    .line 25
    const-string v6, "AES_256_XTS"

    .line 26
    const/4 v7, 0x3

    .line 27
    .line 28
    .line 29
    invoke-direct {v4, v6, v5, v7}, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    sput-object v4, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;->AES_256_XTS:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 32
    .line 33
    new-instance v6, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 34
    .line 35
    const-string v8, "SM4_128_ECB"

    .line 36
    const/4 v9, 0x4

    .line 37
    .line 38
    .line 39
    invoke-direct {v6, v8, v7, v9}, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;-><init>(Ljava/lang/String;II)V

    .line 40
    .line 41
    sput-object v6, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;->SM4_128_ECB:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 42
    .line 43
    new-instance v8, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 44
    .line 45
    const-string v10, "MODE_END"

    .line 46
    const/4 v11, 0x5

    .line 47
    .line 48
    .line 49
    invoke-direct {v8, v10, v9, v11}, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;-><init>(Ljava/lang/String;II)V

    .line 50
    .line 51
    sput-object v8, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;->MODE_END:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 52
    .line 53
    new-array v10, v11, [Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 54
    .line 55
    aput-object v0, v10, v2

    .line 56
    .line 57
    aput-object v1, v10, v3

    .line 58
    .line 59
    aput-object v4, v10, v5

    .line 60
    .line 61
    aput-object v6, v10, v7

    .line 62
    .line 63
    aput-object v8, v10, v9

    .line 64
    .line 65
    sput-object v10, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;->$VALUES:[Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 66
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "v"
        }
    .end annotation

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
    iput p3, p0, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;->value:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 9
    return-object p0
.end method

.method public static values()[Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;->$VALUES:[Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;->value:I

    return v0
.end method
