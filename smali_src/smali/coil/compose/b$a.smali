.class final Lcoil/compose/b$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/compose/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Lcoil/compose/b$c;",
        "Lcoil/compose/b$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcoil/compose/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcoil/compose/b$a;

    invoke-direct {v0}, Lcoil/compose/b$a;-><init>()V

    sput-object v0, Lcoil/compose/b$a;->INSTANCE:Lcoil/compose/b$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcoil/compose/b$c;)Lcoil/compose/b$c;
    .locals 0
    .param p1    # Lcoil/compose/b$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcoil/compose/b$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcoil/compose/b$a;->a(Lcoil/compose/b$c;)Lcoil/compose/b$c;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
