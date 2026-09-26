.class Lcom/narvii/account/SignUpAddProfileFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$1;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$1;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/account/SignUpAddProfileFragment;->G(Lcom/narvii/account/SignUpAddProfileFragment;)V

    .line 6
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$1;->logged:Z

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$1;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 7
    .line 8
    const-string p2, "logging"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    .line 15
    const/4 p2, 0x0

    .line 16
    .line 17
    new-array p2, p2, [Ljava/lang/Object;

    .line 18
    .line 19
    const-string p3, "AddScreenNameStarting"

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p3, p2}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    const/4 p1, 0x1

    .line 24
    .line 25
    iput-boolean p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$1;->logged:Z

    .line 26
    :cond_0
    return-void
.end method
