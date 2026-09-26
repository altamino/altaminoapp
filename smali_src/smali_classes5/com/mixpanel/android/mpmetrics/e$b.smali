.class public final enum Lcom/mixpanel/android/mpmetrics/e$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mixpanel/android/mpmetrics/e$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mixpanel/android/mpmetrics/e$b;

.field public static final enum ANONYMOUS_PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

.field public static final enum EVENTS:Lcom/mixpanel/android/mpmetrics/e$b;

.field public static final enum GROUPS:Lcom/mixpanel/android/mpmetrics/e$b;

.field public static final enum PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;


# instance fields
.field private final mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    .line 2
    new-instance v0, Lcom/mixpanel/android/mpmetrics/e$b;

    .line 3
    .line 4
    const-string v1, "events"

    .line 5
    .line 6
    const-string v2, "EVENTS"

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2, v3, v1}, Lcom/mixpanel/android/mpmetrics/e$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    .line 12
    sput-object v0, Lcom/mixpanel/android/mpmetrics/e$b;->EVENTS:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 13
    .line 14
    new-instance v1, Lcom/mixpanel/android/mpmetrics/e$b;

    .line 15
    .line 16
    const-string v2, "people"

    .line 17
    .line 18
    const-string v4, "PEOPLE"

    .line 19
    const/4 v5, 0x1

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v4, v5, v2}, Lcom/mixpanel/android/mpmetrics/e$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    .line 24
    sput-object v1, Lcom/mixpanel/android/mpmetrics/e$b;->PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 25
    .line 26
    new-instance v2, Lcom/mixpanel/android/mpmetrics/e$b;

    .line 27
    .line 28
    const-string v4, "anonymous_people"

    .line 29
    .line 30
    const-string v6, "ANONYMOUS_PEOPLE"

    .line 31
    const/4 v7, 0x2

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v6, v7, v4}, Lcom/mixpanel/android/mpmetrics/e$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    .line 36
    sput-object v2, Lcom/mixpanel/android/mpmetrics/e$b;->ANONYMOUS_PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 37
    .line 38
    new-instance v4, Lcom/mixpanel/android/mpmetrics/e$b;

    .line 39
    .line 40
    const-string v6, "groups"

    .line 41
    .line 42
    const-string v8, "GROUPS"

    .line 43
    const/4 v9, 0x3

    .line 44
    .line 45
    .line 46
    invoke-direct {v4, v8, v9, v6}, Lcom/mixpanel/android/mpmetrics/e$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    .line 48
    sput-object v4, Lcom/mixpanel/android/mpmetrics/e$b;->GROUPS:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 49
    const/4 v6, 0x4

    .line 50
    .line 51
    new-array v6, v6, [Lcom/mixpanel/android/mpmetrics/e$b;

    .line 52
    .line 53
    aput-object v0, v6, v3

    .line 54
    .line 55
    aput-object v1, v6, v5

    .line 56
    .line 57
    aput-object v2, v6, v7

    .line 58
    .line 59
    aput-object v4, v6, v9

    .line 60
    .line 61
    sput-object v6, Lcom/mixpanel/android/mpmetrics/e$b;->$VALUES:[Lcom/mixpanel/android/mpmetrics/e$b;

    .line 62
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/e$b;->mTableName:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/e$b;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/mixpanel/android/mpmetrics/e$b;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/mixpanel/android/mpmetrics/e$b;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/mixpanel/android/mpmetrics/e$b;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/mixpanel/android/mpmetrics/e$b;->$VALUES:[Lcom/mixpanel/android/mpmetrics/e$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/mixpanel/android/mpmetrics/e$b;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/mixpanel/android/mpmetrics/e$b;

    .line 9
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e$b;->mTableName:Ljava/lang/String;

    return-object v0
.end method
