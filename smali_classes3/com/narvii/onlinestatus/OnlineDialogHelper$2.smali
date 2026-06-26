.class Lcom/narvii/onlinestatus/OnlineDialogHelper$2;
.super Ljava/lang/Object;
.source "OnlineDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/onlinestatus/OnlineDialogHelper;->checkOnlineStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onlinestatus/OnlineDialogHelper;


# direct methods
.method constructor <init>(Lcom/narvii/onlinestatus/OnlineDialogHelper;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper$2;->this$0:Lcom/narvii/onlinestatus/OnlineDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper$2;->this$0:Lcom/narvii/onlinestatus/OnlineDialogHelper;

    iget-object p1, p1, Lcom/narvii/onlinestatus/OnlineDialogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
