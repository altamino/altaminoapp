.class Landroidx/browser/customtabs/CustomTabsClient$2$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$2;->c1(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$2;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$2$9;->this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient$2$9;->val$extras:Landroid/os/Bundle;

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
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2$9;->this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsClient$2$9;->val$extras:Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsCallback;->onMinimized(Landroid/os/Bundle;)V

    .line 10
    return-void
.end method
