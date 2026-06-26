.class Lcom/narvii/account/SignUpAddProfileFragment$1;
.super Ljava/lang/Object;
.source "SignUpAddProfileFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/SignUpAddProfileFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field logged:Z

.field final synthetic this$0:Lcom/narvii/account/SignUpAddProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/SignUpAddProfileFragment;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$1;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 176
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$1;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-static {p1}, Lcom/narvii/account/SignUpAddProfileFragment;->access$000(Lcom/narvii/account/SignUpAddProfileFragment;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 167
    iget-boolean p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$1;->logged:Z

    if-nez p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$1;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    const-string p2, "logging"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "AddScreenNameStarting"

    .line 169
    invoke-interface {p1, p3, p2}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 170
    iput-boolean p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$1;->logged:Z

    :cond_0
    return-void
.end method
