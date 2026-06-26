.class Lcom/narvii/master/MasterActivity$3;
.super Ljava/lang/Object;
.source "MasterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/MasterActivity;->updateBlockingProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MasterActivity;


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterActivity;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/narvii/master/MasterActivity$3;->this$0:Lcom/narvii/master/MasterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 360
    iget-object p1, p0, Lcom/narvii/master/MasterActivity$3;->this$0:Lcom/narvii/master/MasterActivity;

    invoke-virtual {p1}, Lcom/narvii/master/MasterActivity;->gotoDefaultTab()V

    return-void
.end method
