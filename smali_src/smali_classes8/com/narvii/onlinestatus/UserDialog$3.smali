.class Lcom/narvii/onlinestatus/UserDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$3;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a0a63

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$3;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    .line 12
    .line 13
    const-string v0, "StartChat"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$3;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    .line 23
    .line 24
    iget-object v0, p1, Lcom/narvii/onlinestatus/UserDialog;->clickListener:Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    const/4 v1, 0x1

    .line 28
    .line 29
    iget-object p1, p1, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1, p1}, Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;->onClicked(ILcom/narvii/model/NVObject;)V

    .line 33
    goto :goto_1

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 37
    move-result v0

    .line 38
    .line 39
    .line 40
    const v1, 0x7f0a0a62

    .line 41
    const/4 v2, 0x0

    .line 42
    .line 43
    if-eq v0, v1, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 47
    move-result v0

    .line 48
    .line 49
    .line 50
    const v1, 0x7f0a0171

    .line 51
    .line 52
    if-ne v0, v1, :cond_1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 57
    move-result p1

    .line 58
    .line 59
    .line 60
    const v0, 0x7f0a05b8

    .line 61
    .line 62
    if-ne p1, v0, :cond_3

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$3;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/narvii/onlinestatus/UserDialog;->clickListener:Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    const/4 v0, 0x3

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v0, v2}, Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;->onClicked(ILcom/narvii/model/NVObject;)V

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$3;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    .line 76
    .line 77
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    const-string v0, "ProfileButton"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    iget-object v0, p0, Lcom/narvii/onlinestatus/UserDialog$3;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 99
    .line 100
    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$3;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    .line 101
    .line 102
    iget-object p1, p1, Lcom/narvii/onlinestatus/UserDialog;->clickListener:Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;

    .line 103
    .line 104
    if-eqz p1, :cond_3

    .line 105
    const/4 v0, 0x2

    .line 106
    .line 107
    .line 108
    invoke-interface {p1, v0, v2}, Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;->onClicked(ILcom/narvii/model/NVObject;)V

    .line 109
    .line 110
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$3;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 114
    return-void
.end method
