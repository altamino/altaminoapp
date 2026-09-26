.class Landroidx/browser/customtabs/PostMessageService$1;
.super Landroid/support/customtabs/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/PostMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/browser/customtabs/PostMessageService;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/PostMessageService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/browser/customtabs/PostMessageService$1;->this$0:Landroidx/browser/customtabs/PostMessageService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/support/customtabs/d$a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public f1(Landroid/support/customtabs/a;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/support/customtabs/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p2, p3}, Landroid/support/customtabs/a;->p1(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public u(Landroid/support/customtabs/a;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/support/customtabs/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p2}, Landroid/support/customtabs/a;->r1(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method
