.class Landroidx/core/provider/FontRequestWorker$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/FontRequestWorker;->d(Landroid/content/Context;Landroidx/core/provider/FontRequest;ILjava/util/concurrent/Executor;Landroidx/core/provider/CallbackWithHandler;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroidx/core/provider/FontRequestWorker$TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$request:Landroidx/core/provider/FontRequest;

.field final synthetic val$style:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/core/provider/FontRequestWorker$3;->val$id:Ljava/lang/String;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/core/provider/FontRequestWorker$3;->val$context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/core/provider/FontRequestWorker$3;->val$request:Landroidx/core/provider/FontRequest;

    .line 7
    .line 8
    iput p4, p0, Landroidx/core/provider/FontRequestWorker$3;->val$style:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public a()Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    .locals 4

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/core/provider/FontRequestWorker$3;->val$id:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/core/provider/FontRequestWorker$3;->val$context:Landroid/content/Context;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/core/provider/FontRequestWorker$3;->val$request:Landroidx/core/provider/FontRequest;

    .line 7
    .line 8
    iget v3, p0, Landroidx/core/provider/FontRequestWorker$3;->val$style:I

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3}, Landroidx/core/provider/FontRequestWorker;->c(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 12
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    return-object v0

    .line 14
    .line 15
    :catchall_0
    new-instance v0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 16
    const/4 v1, -0x3

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    .line 20
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/core/provider/FontRequestWorker$3;->a()Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
