.class final Landroidx/compose/ui/semantics/SemanticsProperties$Text$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/semantics/SemanticsProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Ljava/util/List<",
        "+",
        "Landroidx/compose/ui/text/AnnotatedString;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Landroidx/compose/ui/text/AnnotatedString;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Landroidx/compose/ui/text/AnnotatedString;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSemanticsProperties.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SemanticsProperties.kt\nandroidx/compose/ui/semantics/SemanticsProperties$Text$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1087:1\n1#2:1088\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$Text$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsProperties$Text$1;

    invoke-direct {v0}, Landroidx/compose/ui/semantics/SemanticsProperties$Text$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties$Text$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$Text$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "childValue"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    check-cast p1, Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/collections/t;->W0(Ljava/util/Collection;)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    check-cast p2, Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    move-object p2, p1

    .line 22
    :cond_0
    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/util/List;

    .line 3
    .line 4
    check-cast p2, Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsProperties$Text$1;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
