.class Lcom/narvii/onlinestatus/OnlineDialogHelper$1;
.super Ljava/lang/Object;
.source "OnlineDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 46
    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper$1;->this$0:Lcom/narvii/onlinestatus/OnlineDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 49
    iget-object p1, p0, Lcom/narvii/onlinestatus/OnlineDialogHelper$1;->this$0:Lcom/narvii/onlinestatus/OnlineDialogHelper;

    iget-object p1, p1, Lcom/narvii/onlinestatus/OnlineDialogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "login"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return-void
.end method
