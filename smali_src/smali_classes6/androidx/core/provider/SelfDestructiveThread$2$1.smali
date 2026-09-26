.class Landroidx/core/provider/SelfDestructiveThread$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/SelfDestructiveThread$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/core/provider/SelfDestructiveThread$2;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/core/provider/SelfDestructiveThread$2;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/core/provider/SelfDestructiveThread$2$1;->this$1:Landroidx/core/provider/SelfDestructiveThread$2;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/core/provider/SelfDestructiveThread$2$1;->val$result:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread$2$1;->this$1:Landroidx/core/provider/SelfDestructiveThread$2;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/core/provider/SelfDestructiveThread$2;->val$reply:Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread$2$1;->val$result:Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;->a(Ljava/lang/Object;)V

    .line 10
    return-void
.end method
