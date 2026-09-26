.class public final Lcoil/util/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcoil/util/t;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static provider:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcoil/util/t;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcoil/util/t;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcoil/util/t;->INSTANCE:Lcoil/util/t;

    .line 8
    .line 9
    sget-object v0, Lcoil/util/t$a;->INSTANCE:Lcoil/util/t$a;

    .line 10
    .line 11
    sput-object v0, Lcoil/util/t;->provider:Le8/a;

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcoil/util/t;->provider:Le8/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method
