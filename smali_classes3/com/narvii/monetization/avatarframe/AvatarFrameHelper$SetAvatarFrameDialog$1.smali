.class Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog$1;
.super Ljava/lang/Object;
.source "AvatarFrameHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog$1;->this$1:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 6

    .line 285
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 286
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog$1;->this$1:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 288
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog$1;->this$1:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;

    iget-object p1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->access$100(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_0

    .line 290
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog$1;->this$1:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;

    iget-object p1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->access$100(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/narvii/app/NVActivity;

    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog$1;->this$1:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f080148

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog$1;->this$1:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;

    iget-object p1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->access$100(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f0f0f8f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f01004c

    const-wide/16 v4, 0x258

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/app/NVActivity;->toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog$1;->this$1:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f1083

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 295
    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog$1;->this$1:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;

    iget-object p1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->access$300(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$OnAvatarFrameChangedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 296
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog$1;->this$1:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;

    iget-object p1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->access$300(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$OnAvatarFrameChangedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$OnAvatarFrameChangedListener;->onAvatarFrameChanged()V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 282
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$SetAvatarFrameDialog$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
