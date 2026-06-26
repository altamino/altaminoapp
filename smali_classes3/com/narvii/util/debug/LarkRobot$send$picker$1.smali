.class public final Lcom/narvii/util/debug/LarkRobot$send$picker$1;
.super Lcom/narvii/util/debug/LarkUserPicker;
.source "LarkRobot.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/debug/LarkRobot;->send(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $text:Ljava/lang/String;

.field final synthetic $title:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/util/debug/LarkRobot;


# direct methods
.method constructor <init>(Lcom/narvii/util/debug/LarkRobot;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/app/NVContext;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/narvii/app/NVContext;",
            "I)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/narvii/util/debug/LarkRobot$send$picker$1;->this$0:Lcom/narvii/util/debug/LarkRobot;

    iput-object p2, p0, Lcom/narvii/util/debug/LarkRobot$send$picker$1;->$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/util/debug/LarkRobot$send$picker$1;->$text:Ljava/lang/String;

    invoke-direct {p0, p4, p5}, Lcom/narvii/util/debug/LarkUserPicker;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method


# virtual methods
.method protected onUserClicked(Ljava/lang/String;)V
    .locals 3

    .line 18
    invoke-super {p0, p1}, Lcom/narvii/util/debug/LarkUserPicker;->onUserClicked(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 20
    iget-object v0, p0, Lcom/narvii/util/debug/LarkRobot$send$picker$1;->this$0:Lcom/narvii/util/debug/LarkRobot;

    iget-object v1, p0, Lcom/narvii/util/debug/LarkRobot$send$picker$1;->$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/util/debug/LarkRobot$send$picker$1;->$text:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/narvii/util/debug/LarkRobot;->access$sendRequest(Lcom/narvii/util/debug/LarkRobot;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
