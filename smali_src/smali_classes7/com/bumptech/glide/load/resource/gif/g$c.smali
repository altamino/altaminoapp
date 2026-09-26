.class Lcom/bumptech/glide/load/resource/gif/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# static fields
.field static final MSG_CLEAR:I = 0x2

.field static final MSG_DELAY:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/resource/gif/g;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/resource/gif/g;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/g$c;->this$0:Lcom/bumptech/glide/load/resource/gif/g;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lcom/bumptech/glide/load/resource/gif/g$a;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g$c;->this$0:Lcom/bumptech/glide/load/resource/gif/g;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/gif/g;->m(Lcom/bumptech/glide/load/resource/gif/g$a;)V

    .line 15
    return v1

    .line 16
    :cond_0
    const/4 v1, 0x2

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lcom/bumptech/glide/load/resource/gif/g$a;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/g$c;->this$0:Lcom/bumptech/glide/load/resource/gif/g;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/g;->requestManager:Lcom/bumptech/glide/j;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->l(Lcom/bumptech/glide/request/target/e;)V

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    return p1
.end method
