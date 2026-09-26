.class public final Lcom/narvii/util/debug/LarkRobot$send$picker$1;
.super Lcom/narvii/util/debug/LarkUserPicker;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/debug/LarkRobot$send$picker$1;->this$0:Lcom/narvii/util/debug/LarkRobot;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/debug/LarkRobot$send$picker$1;->$title:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/util/debug/LarkRobot$send$picker$1;->$text:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p4, p5}, Lcom/narvii/util/debug/LarkUserPicker;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 10
    return-void
.end method


# virtual methods
.method protected onUserClicked(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/util/debug/LarkUserPicker;->onUserClicked(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/util/debug/LarkRobot$send$picker$1;->this$0:Lcom/narvii/util/debug/LarkRobot;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/util/debug/LarkRobot$send$picker$1;->$title:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/narvii/util/debug/LarkRobot$send$picker$1;->$text:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p1, v2}, Lcom/narvii/util/debug/LarkRobot;->access$sendRequest(Lcom/narvii/util/debug/LarkRobot;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method
