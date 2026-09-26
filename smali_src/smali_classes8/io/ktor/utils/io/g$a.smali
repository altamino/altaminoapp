.class public final Lio/ktor/utils/io/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lio/ktor/utils/io/g$a;

.field private static final Empty$delegate:Lw7/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/m<",
            "Lio/ktor/utils/io/c;",
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
    new-instance v0, Lio/ktor/utils/io/g$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lio/ktor/utils/io/g$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lio/ktor/utils/io/g$a;->$$INSTANCE:Lio/ktor/utils/io/g$a;

    .line 8
    .line 9
    sget-object v0, Lio/ktor/utils/io/g$a$a;->INSTANCE:Lio/ktor/utils/io/g$a$a;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    sput-object v0, Lio/ktor/utils/io/g$a;->Empty$delegate:Lw7/m;

    .line 16
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
.method public final a()Lio/ktor/utils/io/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lio/ktor/utils/io/g$a;->Empty$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lio/ktor/utils/io/g;

    .line 9
    return-object v0
.end method
