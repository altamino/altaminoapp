.class final Lkotlin/text/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/g$b$a;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/text/g$b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private final flags:I

.field private final pattern:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/text/g$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/text/g$b$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lkotlin/text/g$b;->Companion:Lkotlin/text/g$b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "pattern"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lkotlin/text/g$b;->pattern:Ljava/lang/String;

    .line 11
    .line 12
    iput p2, p0, Lkotlin/text/g$b;->flags:I

    .line 13
    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lkotlin/text/g;

    .line 3
    .line 4
    iget-object v1, p0, Lkotlin/text/g$b;->pattern:Ljava/lang/String;

    .line 5
    .line 6
    iget v2, p0, Lkotlin/text/g$b;->flags:I

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    const-string v2, "compile(...)"

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lkotlin/text/g;-><init>(Ljava/util/regex/Pattern;)V

    .line 19
    return-object v0
.end method
