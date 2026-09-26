.class final Landroidx/compose/runtime/ExpectKt$ThreadLocal$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/ExpectKt$ThreadLocal$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/ExpectKt$ThreadLocal$1;

    invoke-direct {v0}, Landroidx/compose/runtime/ExpectKt$ThreadLocal$1;-><init>()V

    sput-object v0, Landroidx/compose/runtime/ExpectKt$ThreadLocal$1;->INSTANCE:Landroidx/compose/runtime/ExpectKt$ThreadLocal$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
