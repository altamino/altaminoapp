.class final Lcoil/compose/g$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/compose/g;->b(Landroidx/compose/runtime/ProvidableCompositionLocal;ILkotlin/jvm/internal/k;)Landroidx/compose/runtime/ProvidableCompositionLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcoil/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcoil/compose/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcoil/compose/g$a;

    invoke-direct {v0}, Lcoil/compose/g$a;-><init>()V

    sput-object v0, Lcoil/compose/g$a;->INSTANCE:Lcoil/compose/g$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lcoil/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcoil/compose/g$a;->b()Lcoil/e;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
