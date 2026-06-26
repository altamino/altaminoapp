.class Lcom/narvii/util/debug/ResetProcessActivity$1;
.super Ljava/lang/Object;
.source "ResetProcessActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/debug/ResetProcessActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/debug/ResetProcessActivity;


# direct methods
.method constructor <init>(Lcom/narvii/util/debug/ResetProcessActivity;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/narvii/util/debug/ResetProcessActivity$1;->this$0:Lcom/narvii/util/debug/ResetProcessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 23
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
