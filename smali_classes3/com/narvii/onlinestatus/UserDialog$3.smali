.class Lcom/narvii/onlinestatus/UserDialog$3;
.super Ljava/lang/Object;
.source "UserDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/onlinestatus/UserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onlinestatus/UserDialog;


# direct methods
.method constructor <init>(Lcom/narvii/onlinestatus/UserDialog;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$3;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0907bf

    if-ne v0, v1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$3;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    const-string v0, "StartChat"

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 162
    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$3;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    iget-object v0, p1, Lcom/narvii/onlinestatus/UserDialog;->clickListener:Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 163
    iget-object p1, p1, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    invoke-interface {v0, v1, p1}, Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;->onClicked(ILcom/narvii/model/NVObject;)V

    goto :goto_1

    .line 165
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0907be

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900e4

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090478

    if-ne p1, v0, :cond_3

    .line 171
    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$3;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    iget-object p1, p1, Lcom/narvii/onlinestatus/UserDialog;->clickListener:Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

    if-eqz p1, :cond_3

    const/4 v0, 0x3

    .line 172
    invoke-interface {p1, v0, v2}, Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;->onClicked(ILcom/narvii/model/NVObject;)V

    goto :goto_1

    .line 166
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$3;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "ProfileButton"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog$3;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    iget-object v0, v0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 167
    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$3;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    iget-object p1, p1, Lcom/narvii/onlinestatus/UserDialog;->clickListener:Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    .line 168
    invoke-interface {p1, v0, v2}, Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;->onClicked(ILcom/narvii/model/NVObject;)V

    .line 175
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$3;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
