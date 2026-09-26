.class final Lcom/narvii/video/MediaSplitFragment$splitTimeStack$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/MediaSplitFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Ljava/util/Stack<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/video/MediaSplitFragment$splitTimeStack$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/video/MediaSplitFragment$splitTimeStack$2;

    invoke-direct {v0}, Lcom/narvii/video/MediaSplitFragment$splitTimeStack$2;-><init>()V

    sput-object v0, Lcom/narvii/video/MediaSplitFragment$splitTimeStack$2;->INSTANCE:Lcom/narvii/video/MediaSplitFragment$splitTimeStack$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/video/MediaSplitFragment$splitTimeStack$2;->invoke()Ljava/util/Stack;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    return-object v0
.end method
