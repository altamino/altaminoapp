.class public final enum Lorg/jsoup/select/NodeFilter$FilterResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/NodeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jsoup/select/NodeFilter$FilterResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jsoup/select/NodeFilter$FilterResult;

.field public static final enum CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

.field public static final enum REMOVE:Lorg/jsoup/select/NodeFilter$FilterResult;

.field public static final enum SKIP_CHILDREN:Lorg/jsoup/select/NodeFilter$FilterResult;

.field public static final enum SKIP_ENTIRELY:Lorg/jsoup/select/NodeFilter$FilterResult;

.field public static final enum STOP:Lorg/jsoup/select/NodeFilter$FilterResult;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    .line 2
    new-instance v0, Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 3
    .line 4
    const-string v1, "CONTINUE"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lorg/jsoup/select/NodeFilter$FilterResult;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 11
    .line 12
    new-instance v1, Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 13
    .line 14
    const-string v3, "SKIP_CHILDREN"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4}, Lorg/jsoup/select/NodeFilter$FilterResult;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v1, Lorg/jsoup/select/NodeFilter$FilterResult;->SKIP_CHILDREN:Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 21
    .line 22
    new-instance v3, Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 23
    .line 24
    const-string v5, "SKIP_ENTIRELY"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6}, Lorg/jsoup/select/NodeFilter$FilterResult;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->SKIP_ENTIRELY:Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 31
    .line 32
    new-instance v5, Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 33
    .line 34
    const-string v7, "REMOVE"

    .line 35
    const/4 v8, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v7, v8}, Lorg/jsoup/select/NodeFilter$FilterResult;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v5, Lorg/jsoup/select/NodeFilter$FilterResult;->REMOVE:Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 41
    .line 42
    new-instance v7, Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 43
    .line 44
    const-string v9, "STOP"

    .line 45
    const/4 v10, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v7, v9, v10}, Lorg/jsoup/select/NodeFilter$FilterResult;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    sput-object v7, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 51
    const/4 v9, 0x5

    .line 52
    .line 53
    new-array v9, v9, [Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 54
    .line 55
    aput-object v0, v9, v2

    .line 56
    .line 57
    aput-object v1, v9, v4

    .line 58
    .line 59
    aput-object v3, v9, v6

    .line 60
    .line 61
    aput-object v5, v9, v8

    .line 62
    .line 63
    aput-object v7, v9, v10

    .line 64
    .line 65
    sput-object v9, Lorg/jsoup/select/NodeFilter$FilterResult;->$VALUES:[Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 66
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

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/select/NodeFilter$FilterResult;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 9
    return-object p0
.end method

.method public static values()[Lorg/jsoup/select/NodeFilter$FilterResult;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/jsoup/select/NodeFilter$FilterResult;->$VALUES:[Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lorg/jsoup/select/NodeFilter$FilterResult;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 9
    return-object v0
.end method
