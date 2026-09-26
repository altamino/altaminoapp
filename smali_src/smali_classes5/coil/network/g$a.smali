.class public final Lcoil/network/g$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/network/g;-><init>(Landroid/net/ConnectivityManager;Lcoil/network/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcoil/network/g;


# direct methods
.method constructor <init>(Lcoil/network/g;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcoil/network/g$a;->this$0:Lcoil/network/g;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1    # Landroid/net/Network;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/network/g$a;->this$0:Lcoil/network/g;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcoil/network/g;->b(Lcoil/network/g;Landroid/net/Network;Z)V

    .line 7
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1    # Landroid/net/Network;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/network/g$a;->this$0:Lcoil/network/g;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcoil/network/g;->b(Lcoil/network/g;Landroid/net/Network;Z)V

    .line 7
    return-void
.end method
