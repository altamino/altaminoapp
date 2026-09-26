.class public final enum Lcom/narvii/util/ABTest;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/narvii/util/ABTest;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/narvii/util/ABTest;

.field public static LOGGING_USER_PROPS:[Lcom/narvii/util/ABTest;


# direct methods
.method private static synthetic $values()[Lcom/narvii/util/ABTest;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/narvii/util/ABTest;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/ABTest;->$values()[Lcom/narvii/util/ABTest;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lcom/narvii/util/ABTest;->$VALUES:[Lcom/narvii/util/ABTest;

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    new-array v0, v0, [Lcom/narvii/util/ABTest;

    .line 10
    .line 11
    sput-object v0, Lcom/narvii/util/ABTest;->LOGGING_USER_PROPS:[Lcom/narvii/util/ABTest;

    .line 12
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

.method public static ab(Landroid/content/Context;Lcom/narvii/util/ABTest;)Z
    .locals 4

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/io/File;

    .line 9
    .line 10
    const-string v3, ""

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    const-string v3, "ab.txt"

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v1, v2

    .line 36
    :goto_0
    return v1

    .line 37
    .line 38
    :catch_0
    :cond_1
    sget-object p0, Lcom/narvii/util/ABTest$1;->$SwitchMap$com$narvii$util$ABTest:[I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 42
    move-result v0

    .line 43
    .line 44
    aget p0, p0, v0

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    const-string v0, "account"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    check-cast p0, Lcom/narvii/account/AccountService;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    .line 62
    if-nez p0, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-static {}, La0/b;->k()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    .line 68
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    .line 87
    .line 88
    invoke-static {p0}, Lcom/narvii/util/StringUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 93
    move-result p0

    .line 94
    .line 95
    rem-int/lit8 p0, p0, 0x2

    .line 96
    .line 97
    if-nez p0, :cond_3

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    move v1, v2

    .line 100
    :goto_1
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/narvii/util/ABTest;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/narvii/util/ABTest;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/narvii/util/ABTest;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/narvii/util/ABTest;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/ABTest;->$VALUES:[Lcom/narvii/util/ABTest;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/narvii/util/ABTest;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/narvii/util/ABTest;

    .line 9
    return-object v0
.end method
