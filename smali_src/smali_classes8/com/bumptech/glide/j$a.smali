.class Lcom/bumptech/glide/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/j;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/j;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/j$a;->this$0:Lcom/bumptech/glide/j;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/j$a;->this$0:Lcom/bumptech/glide/j;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/bumptech/glide/j;->lifecycle:Lcom/bumptech/glide/manager/h;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1, v0}, Lcom/bumptech/glide/manager/h;->b(Lcom/bumptech/glide/manager/i;)V

    .line 8
    return-void
.end method
