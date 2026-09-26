.class Lpl/droidsonroids/gif/b$a;
.super Lpl/droidsonroids/gif/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/droidsonroids/gif/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/droidsonroids/gif/b;


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/b;Lpl/droidsonroids/gif/b;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lpl/droidsonroids/gif/b$a;->this$0:Lpl/droidsonroids/gif/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lpl/droidsonroids/gif/l;-><init>(Lpl/droidsonroids/gif/b;)V

    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/b$a;->this$0:Lpl/droidsonroids/gif/b;

    .line 3
    .line 4
    iget-object v0, v0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->q()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lpl/droidsonroids/gif/b$a;->this$0:Lpl/droidsonroids/gif/b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lpl/droidsonroids/gif/b;->start()V

    .line 16
    :cond_0
    return-void
.end method
