.class Landroidx/browser/trusted/TrustedWebActivityServiceConnection$1;
.super Landroid/support/customtabs/trusted/a$a;
.source "SourceFile"


# instance fields
.field final synthetic val$callback:Landroidx/browser/trusted/TrustedWebActivityCallback;


# virtual methods
.method public q1(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$1;->val$callback:Landroidx/browser/trusted/TrustedWebActivityCallback;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/browser/trusted/TrustedWebActivityCallback;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    return-void
.end method
