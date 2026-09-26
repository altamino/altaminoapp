.class Landroidx/browser/customtabs/CustomTabsClient$2$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$2;->k(IIIIILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

.field final synthetic val$bottom:I

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$state:I

.field final synthetic val$top:I


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$2;IIIIILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

    .line 3
    .line 4
    iput p2, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$left:I

    .line 5
    .line 6
    iput p3, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$top:I

    .line 7
    .line 8
    iput p4, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$right:I

    .line 9
    .line 10
    iput p5, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$bottom:I

    .line 11
    .line 12
    iput p6, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$state:I

    .line 13
    .line 14
    iput-object p7, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$extras:Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->this$1:Landroidx/browser/customtabs/CustomTabsClient$2;

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/browser/customtabs/CustomTabsClient$2;->val$callback:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 5
    .line 6
    iget v2, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$left:I

    .line 7
    .line 8
    iget v3, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$top:I

    .line 9
    .line 10
    iget v4, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$right:I

    .line 11
    .line 12
    iget v5, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$bottom:I

    .line 13
    .line 14
    iget v6, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$state:I

    .line 15
    .line 16
    iget-object v7, p0, Landroidx/browser/customtabs/CustomTabsClient$2$8;->val$extras:Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {v1 .. v7}, Landroidx/browser/customtabs/CustomTabsCallback;->onActivityLayout(IIIIILandroid/os/Bundle;)V

    .line 20
    return-void
.end method
